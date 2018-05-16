unit storesForm;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  IWCompLabel, IWGrids, IWCompButton, IWControl,
  IWCompRectangle, IWContainer, IWRegion, IWExtCtrls,
  IWBaseControl, IWVCLBaseControl, IWBaseHTMLControl, IWAppForm,
  IWCompListbox, siComp, siLngLnk, IWHTMLControls, IWSiLink, admintitle,
  IWVCLBaseContainer, IWHTMLContainer, footer_user, IWHTML40Container,
  upipes, IWBaseComponent, IWBaseHTMLComponent, IWBaseHTML40Component, Pipes;

type
  TformStores = class(TIWAppForm)
    siLangLinked1: TsiLangLinked;
    IWRegion1: TIWRegion;
    IWRegion2: TIWRegion;
    StoreGrid: TIWGrid;
    StoreLabel: TIWLabel;
    InsertBtn: TIWButton;
    RefreshBtn: TIWButton;
    IWLabel1: TIWLabel;
    IWLabel3: TIWLabel;
    OffCombo: TIWComboBox;
    IWLabel2: TIWLabel;
    userfooter1: Tuserfooter;
    IWRectangle1: TIWRectangle;
    IWRectangle2: TIWRectangle;
    IWSiLink1: TIWSiLink;
    AdminFrameTitle1: TAdminFrameTitle;
    refreshtimer: TIWTimer;
    VersionLbl: TIWLabel;
    procedure IWAppFormCreate(Sender: TObject);
    procedure StoreGridRenderCell(ACell: TIWGridCell; const ARow,
      AColumn: Integer);
    procedure InsertBtnClick(Sender: TObject);
    procedure StoreGridCellClick(ASender: TObject;const ARow, AColumn: Integer);
    procedure IWAppFormDestroy(Sender: TObject);
    procedure AdminFrameTitle1StoreLinkClick(Sender: TObject);
    procedure userfooter1CancelClick(Sender: TObject);
    procedure cfgpipePipeMessage(Sender: TObject; Pipe: HPIPE; Stream: TStream);
    procedure refreshtimerAsyncTimer(Sender: TObject; EventParams: TStringList);
    procedure RefreshBtnClick(Sender: TObject);
  private
    { Private declarations }
    IList : TList;
    last_status : string;
    procedure PublishClick(Sender: TObject);
    procedure check_co_status (first : boolean);
  public
    { Public declarations }
    procedure EditStore (ID : String; isnew : boolean);
    procedure EditCreds (ID : String; name : string);
    procedure RefreshGrid;
  end;

var
  formStores: TformStores;

implementation

uses datamod, db, servercontroller, IWInit, storeForm, credsForm, roleform,
     cfgtypes, global, IWTypes, SuperObject;

{$R *.DFM}

type
   SRObj = class
                LastComms : TDateTime;
                Log : Integer;
                Enabled : boolean;
           end;

procedure TFormStores.EditStore (ID : String; isnew : boolean);
var
  FS : TFormStore;
begin
  with RcDataModule.CurrentStoreQuery do begin
    Close;
    ParamByName ('COMPANY').AsString:=TUserSession(WebApplication.Data).Company;
    ParamByName ('ID').AsString:=ID;
    RcDataModule.Trans.Active:=True;
    Open;
    TIWAppForm(WebApplication.ActiveForm).Release;
    FS:=TFormStore.Create (WebApplication);
    FS.referedby:=TFormStores;
    FS.AutoBox.Visible:=isnew;
    FS.AutoBox.Checked:=isnew;
    FS.show;
  end;
end;

var
  piperx : string;

procedure TformStores.cfgpipePipeMessage(Sender: TObject; Pipe: HPIPE;
  Stream: TStream);
var
  msg : string;
  cmd : ISuperObject;
  s : string;
begin
  try
    SetLength(Msg, Stream.Size div SizeOf(Char));
    Stream.Position := 0;
    Stream.Read(Msg[1], Stream.Size);
    piperx:=msg;
    //cmd:=SO(msg);
  except
    piperx:='';
  end;
end;

procedure TFormStores.EditCreds (ID : String; name : string);
var
  FC : TFormCreds;
begin
  with RcDataModule.CredQuery do begin
    Close;
    ParamByName ('STORE_ID').AsString:=ID;
    RcDataModule.CredQuery.Transaction.Active:=False;
    TIWAppForm(WebApplication.ActiveForm).Release;
  end;
  FC:=TFormCreds.Create (WebApplication);
  FC.storenamelbl.caption:=name;
  FC.referedby:=TFormStores;
  FC.show;
end;

procedure TformStores.RefreshGrid;
var
  i : integer;
  SRO : SRObj;
begin
  RcDataModule.Log('Refresh start');
  RcDataModule.StoreQuery.Transaction.Active:=False;
  RcDataModule.StoreQuery.Transaction.StartTransaction;
  RcDataModule.StoreQuery.Close;
  RcDataModule.StoreQuery.ParamByName('COMPANY').AsString:=
     UserSession.Company;
  RcDataModule.Log('Refresh open');
  RcDataModule.StoreQuery.Open;
  with StoreGrid do begin
    i:=1;
    RowCount:=1;
    if (UserSession.privilege and PRIV_SUPER)<>0 then begin
      ColumnCount:=16;
      Cell[0, 0].Text := SiLangLinked1.GetTextOrDefault ('Grid.Id');
      Cell[0, 1].Text := SiLangLinked1.GetTextOrDefault ('Grid.Name');
      Cell[0, 2].Text := '';
      Cell[0, 3].Text := SiLangLinked1.GetTextOrDefault ('Grid.POS');
      Cell[0, 4].Text := SiLangLinked1.GetTextOrDefault ('Grid.Enabled');
      Cell[0, 5].Text := SiLangLinked1.GetTextOrDefault ('Grid.Printer');
      Cell[0, 6].Text := SiLangLinked1.GetTextOrDefault ('Grid.Cfg');
      Cell[0, 7].Text := SiLangLinked1.GetTextOrDefault ('Grid.BuildError');
      Cell[0, 8].Text := SiLangLinked1.GetTextOrDefault ('Grid.Sent');
      Cell[0, 9].Text := SiLangLinked1.GetTextOrDefault ('Grid.Size');
      Cell[0, 10].Text := SiLangLinked1.GetTextOrDefault ('Grid.Ver');
      Cell[0, 11].Text := SiLangLinked1.GetTextOrDefault ('');
      Cell[0, 12].Text := SiLangLinked1.GetTextOrDefault ('Grid.Published');
      Cell[0, 13].Text := SiLangLinked1.GetTextOrDefault ('Grid.MAC');
      Cell[0, 14].Text := SiLangLinked1.GetTextOrDefault ('Grid.Publishat');
      Cell[0, 15].Text := SiLangLinked1.GetTextOrDefault ('Grid.BuildMsg');
    end else begin
      ColumnCount:=15;
      Cell[0, 0].Text := SiLangLinked1.GetTextOrDefault ('Grid.Id');
      Cell[0, 1].Text := SiLangLinked1.GetTextOrDefault ('Grid.Name');
      Cell[0, 2].Text := SiLangLinked1.GetTextOrDefault ('Grid.POS');
      Cell[0, 3].Text := SiLangLinked1.GetTextOrDefault ('Grid.Enabled');
      Cell[0, 4].Text := SiLangLinked1.GetTextOrDefault ('Grid.Printer');
      Cell[0, 5].Text := SiLangLinked1.GetTextOrDefault ('Grid.Cfg');
      Cell[0, 6].Text := SiLangLinked1.GetTextOrDefault ('Grid.BuildError');
      Cell[0, 7].Text := SiLangLinked1.GetTextOrDefault ('Grid.Sent');
      Cell[0, 8].Text := SiLangLinked1.GetTextOrDefault ('Grid.Size');
      Cell[0, 9].Text := SiLangLinked1.GetTextOrDefault ('Grid.Ver');
      Cell[0, 10].Text := SiLangLinked1.GetTextOrDefault ('');
      Cell[0, 11].Text := SiLangLinked1.GetTextOrDefault ('Grid.Published');
      Cell[0, 12].Text := SiLangLinked1.GetTextOrDefault ('Grid.MAC');
      Cell[0, 13].Text := SiLangLinked1.GetTextOrDefault ('Grid.Publishat');
      Cell[0, 14].Text := SiLangLinked1.GetTextOrDefault ('Grid.BuildMsg');
    end;
    RcDataModule.Log('Refresh iterate');
    while not RcDataModule.StoreQuery.Eof do begin
      RcDataModule.Log('Refresh Read');
      RowCount:=RowCount+1;
      if (UserSession.privilege and PRIV_SUPER)<>0 then begin
          with Cell[i, 0] do begin
            Clickable := True;
            Text := RcDataModule.StoreQuery.FieldByName('ID').AsString;
          end;
          with Cell[i, 1] do begin
            Text := RcDataModule.StoreQuery.FieldByName('Name').AsString;
          end;
          with Cell[i, 2] do begin
            Text := SiLangLinked1.GetTextOrDefault ('Grid.Credentials');
            Clickable := true;
          end;
          with Cell[i, 3] do begin
            if RcDataModule.StoreQuery.FieldByName('FromCo').IsNull then
               Text := RcDataModule.StoreQuery.FieldByName('POSName').AsString
            else
               Text := RcDataModule.StoreQuery.FieldByName('POSName').AsString+' ('+RcDataModule.StoreQuery.FieldByName('FromCo').AsString+')'
          end;
          with Cell[i, 4] do begin
            if (RcDataModule.StoreQuery.FieldByName('Enabled').AsInteger=0) then
               Text:='No' else Text:='Yes';
          end;
          with Cell[i, 5] do begin
            Text := RcDataModule.StoreQuery.FieldByName('Printer').AsString;
          end;
          with Cell[i, 6] do begin
            Text := RcDataModule.StoreQuery.FieldByName('ConfigId').AsString;
            if RcDataModule.StoreQuery.FieldByName ('ConfigUpdate').AsString>='1' then
               Text:=Text+'*';
          end;
          with Cell[i, 7] do begin
            text:='Ok';
            if RcDataModule.StoreQuery.FieldByName('BuildError').AsString='Y' then
               text:='Error';
          end;
          with Cell[i, 8] do begin
            Text := RcDataModule.StoreQuery.FieldByName('ConfigIdTx').AsString;
          end;
          with Cell[i, 9] do begin
            Text:=RcDataModule.StoreQuery.FieldByName('ConfigSize').AsString;
            if not RcDataModule.StoreQuery.FieldByName('BuildMS').isnull then text:=text+' ('+RcDataModule.StoreQuery.FieldByName('BuildMS').AsString+' ms)';
          end;
          with Cell[i, 10] do begin
            Text := RcDataModule.StoreQuery.FieldByName('Ver').AsString;
          end;
          with Cell[i, 12] do begin
            Text := RcDataModule.StoreQuery.FieldByName('ConfigDate').AsString;
          end;
          with Cell[i, 13] do begin
            Text := RcDataModule.StoreQuery.FieldByName('MAC').AsString;
          end;
          with Cell[i, 14] do begin
            Text := RcDataModule.StoreQuery.FieldByName('BuildTime').AsString;
          end;
          with Cell[i, 15] do begin
            Text := RcDataModule.StoreQuery.FieldByName('BuildMsg').AsString;
          end;
          with Cell[i, 11] do begin
            Control := TIWButton.Create(Self);
            with TIWButton(Control) do begin
              Caption := SiLangLinked1.GetTextOrDefault ('Grid.Publishnow');
              Width := 80;
              Height:= 20;
              Confirmation:='Publish now to '+RcDataModule.StoreQuery.FieldByName('Name').AsString;;
              onClick:=PublishClick;
              tag:=RcDataModule.StoreQuery.FieldByName('ID').AsInteger;
            end;
          end;
      end else begin
          with Cell[i, 0] do begin
            Clickable := True;
            Text := RcDataModule.StoreQuery.FieldByName('ID').AsString;
          end;
          with Cell[i, 1] do begin
            Text := RcDataModule.StoreQuery.FieldByName('Name').AsString;
          end;
          with Cell[i, 2] do begin
            Text := RcDataModule.StoreQuery.FieldByName('POSName').AsString;
          end;
          with Cell[i, 3] do begin
            if (RcDataModule.StoreQuery.FieldByName('Enabled').AsInteger=0) then
               Text:='No' else Text:='Yes';
          end;
          with Cell[i, 4] do begin
            Text := RcDataModule.StoreQuery.FieldByName('Printer').AsString;
          end;
          with Cell[i, 5] do begin
            Text := RcDataModule.StoreQuery.FieldByName('ConfigId').AsString;
            if RcDataModule.StoreQuery.FieldByName ('ConfigUpdate').AsString='1' then
               Text:=Text+'*';
          end;
          with Cell[i, 6] do begin
            Text := RcDataModule.StoreQuery.FieldByName('BuildError').AsString;
          end;
          with Cell[i, 7] do begin
            Text := RcDataModule.StoreQuery.FieldByName('ConfigIdTx').AsString;
          end;
          with Cell[i, 8] do begin
            Text:=RcDataModule.StoreQuery.FieldByName('ConfigSize').AsString;
            if not RcDataModule.StoreQuery.FieldByName('BuildMS').isnull then text:=text+' ('+RcDataModule.StoreQuery.FieldByName('BuildMS').AsString+' ms)';
          end;
          with Cell[i, 9] do begin
            Text := RcDataModule.StoreQuery.FieldByName('Ver').AsString;
          end;
          with Cell[i, 11] do begin
            Text := RcDataModule.StoreQuery.FieldByName('ConfigDate').AsString;
          end;
          with Cell[i, 12] do begin
            Text := RcDataModule.StoreQuery.FieldByName('MAC').AsString;
          end;
          with Cell[i, 13] do begin
            Text := RcDataModule.StoreQuery.FieldByName('BuildTime').AsString;
          end;
          with Cell[i, 14] do begin
            Text := RcDataModule.StoreQuery.FieldByName('BuildMsg').AsString;
          end;
          with Cell[i, 10] do begin
            Control := TIWButton.Create(Self);
            with TIWButton(Control) do begin
              Caption := SiLangLinked1.GetTextOrDefault ('Grid.Publishnow');
              Width := 80;
              Height:= 20;
              Confirmation:='Publish now to '+RcDataModule.StoreQuery.FieldByName('Name').AsString;;
              onClick:=PublishClick;
              tag:=RcDataModule.StoreQuery.FieldByName('ID').AsInteger;
            end;
          end;
      end;

      SRO:=SRObj.create;
      if not RcDataModule.StoreQuery.FieldByName('LastComms').IsNull then
         SRO.lastcomms:=RcDataModule.StoreQuery.FieldByName('LastComms').AsDateTime
         else
         SRO.lastcomms:=0;
      if not RcDataModule.StoreQuery.FieldByName('Log').IsNull then
         SRO.Log:=RcDataModule.StoreQuery.FieldByName('Log').AsInteger
         else
         SRO.Log:=0;
      SRO.Enabled:=RcDataModule.StoreQuery.FieldByName('Enabled').AsInteger=1;
      ilist.Add (SRO);
      inc (i);
      RcDataModule.Log('Refresh Next');
      RcDataModule.StoreQuery.Next;
    end;
  end;
  RcDataModule.Log('Refresh close');
  RcDataModule.StoreQuery.Close;
  RcDataModule.StoreQuery.Transaction.Active:=False;
  RcDataModule.Log('Refresh done');
end;

procedure TformStores.check_co_status (first : boolean);
var
  pc : TUPipeClient;
  sobj : ISuperObject;
  reply : string;
begin
  try
    pc:=TUPipeClient.Create('','ConfigPipe');
    try
      sobj:=SO;
      sobj.S['command']:='queryco';
      sobj.S['co']:=UserSession.Company;
      reply:=pc.SendString(sobj.AsJSon());
      if first then begin
         last_status:=reply;
         exit;
      end;
      if reply<>last_status then
         refreshbtn.Color:=clYellow;
      last_status:=reply;
    finally
      pc.Free;
    end;
  except
  end;
end;

procedure TformStores.refreshtimerAsyncTimer(Sender: TObject;
  EventParams: TStringList);
begin
  check_co_status(false);
end;

procedure TformStores.IWAppFormCreate(Sender: TObject);
begin
  IWSiLink1.InitForm;
  IList:=TList.Create;
  RefreshGrid;
  check_co_status(true);
end;

procedure TformStores.StoreGridRenderCell(ACell: TIWGridCell; const ARow,
  AColumn: Integer);
var
  cfgcol : integer;
  namecol : integer;
  enabledcol : integer;
begin
  with ACell do begin
    // Title Row
    if odd(ARow) then begin
      BGColor := clLtGray;
    end else begin
      BGColor := clNone;
    end;
    if ARow = 0 then begin
      Alignment := taCenter;
      BGColor := clBlue;
      Font.Style := [fsBold];
      Font.Color := clWhite;
    end else begin
      namecol:=1;
      enabledcol:=3;
      if (UserSession.privilege and PRIV_SUPER)<>0 then begin
        cfgcol:=8;
      end else begin
        cfgcol:=7;
      end;
      if AColumn=cfgcol then begin
         if (StoreGrid.Cell[ARow,cfgcol-2].Text<>StoreGrid.Cell[ARow,cfgcol].Text) then begin
            BGColor := clYellow;
         end;
      end else if AColumn=cfgcol-1 then begin
         if (StoreGrid.Cell[ARow,AColumn].Text<>'Ok') then begin
            BGColor := clRed;
         end else begin
            BGColor := clGreen;
         end;
      end else if AColumn=namecol then begin
          with SRObj(IList.Items[ARow-1]) do begin
            if enabled then begin
              if (lastcomms<utcnow - strtoint(offcombo.text)/(60*24)) and enabled then begin
                BGColor := clRed;
              end else if log>0 then begin
                BGColor := TColor($c000c0);
                Font.Color := clWhite;
              end else begin
                BGColor := TColor($60C060);
              end;
            end;
          end;
      end else if AColumn=enabledcol then begin
          if not SRObj(IList.Items[ARow-1]).enabled then begin
               BGColor := clBlack;
               Font.Color := clWhite;
          end;
      end;
    end;
  end;
end;

procedure TformStores.InsertBtnClick(Sender: TObject);
var
  storeId : integer;
begin
  storeId:=RcDataModule.nextID;
  RcDataModule.Trans.Active:=false;
  RcDataModule.Trans.StartTransaction;
  RcDataModule.storeInsertQuery.Transaction.Active:=True;
  RcDataModule.storeInsertQuery.ParamByName('ID').AsInteger:=
    storeId;
  RcDataModule.storeInsertQuery.ParamByName('PHONE').AsString:='';
  RcDataModule.storeInsertQuery.ParamByName('PRINTER').AsString:='';
  RcDataModule.storeInsertQuery.ParamByName('NAME').AsString:=
    'New Store';
  RcDataModule.storeInsertQuery.ParamByName('COMPANY').AsString:=
    UserSession.Company;
  RcDataModule.storeInsertQuery.ExecSQL;

  RcDataModule.configInsertQuery.ParamByName('ID').AsInteger:=
    storeId;
  RcDataModule.configInsertQuery.ParamByName('COMPANY').AsString:=
    UserSession.Company;
  RcDataModule.configInsertQuery.ExecSQL;

  EditStore (IntToStr(storeID), true);
end;

procedure TformStores.StoreGridCellClick(ASender: TObject;const ARow, AColumn: Integer);
begin
  RcDataModule.Trans.Active:=False;
  if AColumn=0 then
    EditStore (StoreGrid.Cell[ARow,0].Text,false)
  else
    EditCreds (StoreGrid.Cell[ARow,0].Text,StoreGrid.Cell[ARow,1].Text);
end;

procedure TformStores.RefreshBtnClick(Sender: TObject);
begin
  RefreshBtn.Color:=clBtnFace;
  RefreshGrid;
end;

var
  cfgpipe: THandle;

const
  BufSize = 1024;

function notifyconfigd (s : ansistring) : boolean;
var
  pc : TUPipeClient;
  sobj : ISuperObject;
  reply : string;
begin
  result:=false;
  try
    pc:=TUPipeClient.Create('','ConfigPipe');
    try
      reply:=pc.SendString(s);
      result:=true;
    finally
      pc.Free;
    end;
  except
  end;
end;

procedure TformStores.PublishClick(Sender: TObject);
var
  ss : ISuperObject;
  s : string;
begin
    ss:=SO;
    ss.S['command']:='buildconfig';
    ss.I['siteid']:=(Sender as TIWButton).Tag;
    ss.I['co']:=strtoint(UserSession.Company);
    s:=ss.AsJSon();
    if notifyconfigd (s) then begin
       WebApplication.ShowMessage('Immediate Update Requested', smAlert);
       exit;
    end;
    with RcDataModule.RequestUpdateStore do begin
      try
        Transaction.Active:=False;
        Transaction.StartTransaction;
        ParamByName('BUILDTIME').Clear; // Immediate. Should really be the local time now at site
        ParamByName('COMPANY').AsString:=UserSession.Company;
        ParamByName('STOREID').AsInteger:=(Sender as TIWButton).Tag;
        ExecSQL;
        Transaction.Commit;
        WebApplication.ShowMessage(SiLangLinked1.GetTextOrDefault('UpdateRequested'), smAlert);
        RefreshGrid;
      except
        Transaction.Active:=False;
        WebApplication.ShowMessage(SiLangLinked1.GetTextOrDefault('UpdateRejected'), smAlert);
      end;
    end;
end;

procedure TformStores.IWAppFormDestroy(Sender: TObject);
begin
   while (IList.Count>0) do begin
      SRObj(IList.Items[0]).free;
      IList.Delete(0);
   end;
   IList.free;
end;

procedure TformStores.AdminFrameTitle1StoreLinkClick(Sender: TObject);
begin
//  AdminFrameTitle1.StoreLinkClick(Sender);
end;

procedure TformStores.userfooter1CancelClick(Sender: TObject);
begin
   TIWAppForm(WebApplication.ActiveForm).Release;
   Tsu_formrole.Create(WebApplication).Show;
end;

end.
