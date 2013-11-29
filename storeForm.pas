unit storeForm;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  IWCompEdit, IWCompListbox, IWCompCheckbox, IWCompLabel,
  IWCompButton, IWControl, IWCompRectangle, IWGrids,
  IWHTMLControls, IWContainer, IWRegion, IWExtCtrls, IWBaseControl,
  IWVCLBaseControl, IWVCLBaseContainer, IWBaseHTMLControl, IWAppForm,
  IWSiLink, siComp, siLngLnk, footer_user, baretitle, IWHTMLContainer,
  ReferredClass, IWHTML40Container;

type
  PosObj = class
     name : string;
     id : integer;
     constructor Create (aName : string; aId : integer);
  end;

  PrnObj = class
     dt : TDateTime;
  end;

  TformStore = class(TIWAppForm)
    siLangLinked1: TsiLangLinked;
    IWRegion1: TIWRegion;
    IWRegion2: TIWRegion;
    StoreLabel: TIWLabel;
    IWLabel1: TIWLabel;
    NewNameEdit: TIWEdit;
    NewIDEdit: TIWEdit;
    IWLabel2: TIWLabel;
    IWLabel4: TIWLabel;
    PrinterCombo: TIWComboBox;
    PromoCombo: TIWComboBox;
    IWLabel7: TIWLabel;
    IWLabel9: TIWLabel;
    POSCombo: TIWComboBox;
    UTCEdit: TIWEdit;
    IWLabel5: TIWLabel;
    EnabledBox: TIWCheckBox;
    IWLabel11: TIWLabel;
    IWLabel10: TIWLabel;
    zonecombo: TIWComboBox;
    IWLabel8: TIWLabel;
    IWLabel12: TIWLabel;
    langcombo: TIWComboBox;
    ConfigIdEdit: TIWEdit;
    IWLabel14: TIWLabel;
    IWLabel6: TIWLabel;
    PrinterGrid: TIWGrid;
    setupcombo: TIWComboBox;
    IWLabel13: TIWLabel;
    GrpGrid: TIWGrid;
    GroupCombo: TIWComboBox;
    IWLabel3: TIWLabel;
    AddGrpBtn: TIWButton;
    IWSiLink1: TIWSiLink;
    FrameBareTitle1: TFrameBareTitle;
    userfooter1: Tuserfooter;
    IWRectangle1: TIWRectangle;
    IWRectangle2: TIWRectangle;
    LogEdit: TIWEdit;
    IWLabel15: TIWLabel;
    IWLabel16: TIWLabel;
    MacEdit: TIWEdit;
    CleanBtn: TIWButton;
    IWLabel17: TIWLabel;
    ParamEdit: TIWEdit;
    IWLabel18: TIWLabel;
    ErrataEdit: TIWEdit;
    AuxPromoCombo: TIWComboBox;
    AuxPrinterCombo: TIWComboBox;
    IWLabel19: TIWLabel;
    auxpromolbl: TIWLabel;
    IWLabel20: TIWLabel;
    TestBox: TIWCheckBox;
    AutoBox: TIWCheckBox;
    IWLabel21: TIWLabel;
    SerialEdit: TIWEdit;
    IWLabel22: TIWLabel;
    PhoneEdit: TIWEdit;
    procedure CancelBtnClick(Sender: TObject);
    procedure DelBtnClick(Sender: TObject);
    procedure PostButtonClick(Sender: TObject);
    procedure IWAppFormCreate(Sender: TObject);
    procedure PrinterGridRenderCell(ACell: TIWGridCell; const ARow,
      AColumn: Integer);
    procedure EditPrinter (ID : String);
    procedure PrinterGridCellClick(ASender: TObject;const ARow, AColumn: Integer);
    procedure IWAppFormDestroy(Sender: TObject);
    procedure AddGrpBtnClick(Sender: TObject);
    procedure GrpGridCellClick(ASender: TObject; const ARow,
      AColumn: Integer);
    procedure IWAppFormDefaultAction(Sender: TObject);
    procedure CleanBtnClick(Sender: TObject);
  private
    PosList : TList;
    PrnList : TList;
    GrpList : TStringList;
    GList : TStringList;
    procedure loadPrinterList (list : TStrings);
    procedure loadPOSList (co : String; list : TList);
    procedure freePOSList;
    procedure freePrnList;
    function findPos (ID : String) : integer;
    procedure drawPrinterGrid;
    procedure drawGroupGrid;
    function GetGroupName (ID : Integer; Co : Integer) : String;
    procedure loadZoneList (list : TStrings);
    procedure loadLangList (list : TStrings);
    procedure loadSetupList (list : TStrings);
    { Private declarations }
  public
    { Public declarations }
    referedby : referer_class;
  end;

implementation

uses datamod, db, servercontroller, IWInit, PrinterForm, cfgtypes, global, parse_utils, IWTypes, dateutils;

{$R *.DFM}


procedure GoReferer(referedby : referer_class);
begin
   RcDataModule.Trans.Active:=False;
   RcDataModule.Trans.StartTransaction;
   TIWAppForm(WebApplication.ActiveForm).Release;
   referedby.Create(WebApplication).Show;
end;

constructor posObj.Create(aName : string; aId : integer);
begin
  name:=aname;
  id:=aid;
end;

procedure TformStore.freePOSList;
var
  i : integer;
begin
  for i:=0 to PosList.Count-1 do begin
     TObject(PosList.Items[i]).free;
  end;
  PosList.free;
end;

procedure TformStore.freePrnList;
var
  i : integer;
begin
  for i:=0 to PrnList.Count-1 do begin
     TObject(PrnList.Items[i]).free;
  end;
  PrnList.free;
end;

procedure TformStore.CancelBtnClick(Sender: TObject);
begin
  RcDataModule.CurrentStoreQuery.Transaction.Active:=False;
  GoReferer (ReferedBy);
end;

procedure TformStore.DelBtnClick(Sender: TObject);
begin
    RcDataModule.StoreDeleteQuery.ParamByName('ID').AsString:=
      RcDataModule.CurrentStoreQuery.FieldByName('ID').AsString;
    RcDataModule.StoreDeleteQuery.ParamByName('COMPANY').AsString:=
      RcDataModule.CurrentStoreQuery.FieldByName('COMPANY').AsString;
    RcDataModule.StoreDeleteQuery.ExecSQL;
    RcDataModule.StoreDeleteQuery.Transaction.Commit;
    GoReferer (ReferedBy);
end;

procedure TformStore.PostButtonClick(Sender: TObject);
var
  newgroup : integer;
begin
  if (length(errataedit.text)>0) then begin
     if check_errata (errataEdit.Text)=false then begin
        WebApplication.ShowMessage(SiLangLinked1.GetTextOrDefault('InvalidErrata'), smAlert);
        exit;
     end;
  end;
  errataedit.text:=clean_errata (errataedit.text);

  try
    RcDataModule.storeUpdateQuery.ParamByName('OLD_ID').AsString:=
      RcDataModule.CurrentstoreQuery.FieldByName('ID').AsString;
    RcDataModule.storeUpdateQuery.ParamByName('ID').AsString:=
      NewIDEdit.Text;
    RcDataModule.storeUpdateQuery.ParamByName('PARAMS').AsString:=
      ParamEdit.Text;
    RcDataModule.storeUpdateQuery.ParamByName('PRNERRATA').AsString:=
      ErrataEdit.Text;
    RcDataModule.storeUpdateQuery.ParamByName('TIMEOFFSET').AsString:=
      UTCEdit.Text;
    RcDataModule.storeUpdateQuery.ParamByName('PRINTER').AsString:=
      PrinterCombo.Text;
    RcDataModule.storeUpdateQuery.ParamByName('PROMOPRN').AsString:=
      PromoCombo.Text;
    RcDataModule.storeUpdateQuery.ParamByName('AUXPRINTER').AsString:=
      AuxPrinterCombo.Text;
    RcDataModule.storeUpdateQuery.ParamByName('AUXPROMOPRN').AsString:=
      AuxPromoCombo.Text;
    if ZoneCombo.ItemIndex>=0 then
       RcDataModule.storeUpdateQuery.ParamByName('TIMEZONE').AsString:=ZoneCombo.Text
       else
       RcDataModule.storeUpdateQuery.ParamByName('TIMEZONE').Clear;
    if SetupCombo.ItemIndex>=0 then
       RcDataModule.storeUpdateQuery.ParamByName('SETUPLANG').AsString:=SetupCombo.Text
       else
       RcDataModule.storeUpdateQuery.ParamByName('SETUPLANG').Clear;
    if LangCombo.ItemIndex>=0 then
       RcDataModule.storeUpdateQuery.ParamByName('PRINTLANG').AsString:=LangCombo.Text
       else
       RcDataModule.storeUpdateQuery.ParamByName('PRINTLANG').Clear;
    if (PosCombo.ItemIndex>=0) then begin
      RcDataModule.storeUpdateQuery.ParamByName('POSID').AsInteger:=
        PosObj (PosList.Items[PosCombo.ItemIndex]).id;
    end else begin
      RcDataModule.storeUpdateQuery.ParamByName('POSID').Clear;
    end;
    RcDataModule.storeUpdateQuery.ParamByName('ENABLED').AsInteger:=
      ord(EnabledBox.Checked);
    RcDataModule.storeUpdateQuery.ParamByName('TEST').AsInteger:=
      ord(TestBox.Checked);
    RcDataModule.storeUpdateQuery.ParamByName('OLD_COMPANY').AsString:=
      RcDataModule.CurrentstoreQuery.FieldByName('COMPANY').AsString;
    RcDataModule.storeUpdateQuery.ParamByName('NAME').AsString:=
      NewNameEdit.Text;
    RcDataModule.storeUpdateQuery.ParamByName('SERIAL').AsString:=
      SerialEdit.Text;
    RcDataModule.storeUpdateQuery.ParamByName('PHONE').AsString:=
      PhoneEdit.Text;
    RcDataModule.storeUpdateQuery.ExecSQL;
    RcDataModule.storeUpdateQuery.Transaction.CommitRetaining;
  except
    on e : exception do begin
       showmessage (e.Message);
       WebApplication.ShowMessage(userfooter1.silink_footer.GetTextOrDefault('DBError'));
       exit;
    end;
  end;

  if (autobox.checked) then try
    newgroup:=RcDataModule.nextID;
    with RcDataModule.GroupInsertQuery do begin
       Transaction.Active:=True;
       ParamByName('NAME').AsString:=NewNameEdit.Text;
       ParamByName('ID').AsInteger:=newgroup;
       ParamByName('COMPANY').AsString:=UserSession.Company;
       if (testbox.checked) then ParamByName('TESTGROUP').AsString:='Y'
          else ParamByName('TESTGROUP').AsString:='N';
       ExecSQL;
     end;
     with RcDataModule.GrpAllocInsertQuery do begin
       ParamByName ('ID').AsInteger:=RcDataModule.NextId;
       ParamByName ('GROUPID').AsInteger:=newgroup;
       ParamByName ('ITEMID').AsString:=NewIDEdit.Text;
       ParamByName ('COMPANY').AsString:=UserSession.Company;
       ParamByName ('ITEMKIND').AsInteger:=1;
       ExecSQL;
       transaction.commitretaining;
    end;
  except
  end;

  try
    RcDataModule.NotifyStoreOfChanges (RcDataModule.CurrentstoreQuery.FieldByName('ID').AsString,false);
  except
  end;

  GoReferer (ReferedBy);
end;

procedure TformStore.loadPrinterList (list : TStrings);
var
  sr: TSearchRec;
begin
  List.Clear;
  if FindFirst(PrinterDir + '*.rdx', faAnyFile, sr) = 0 then
  begin
    List.add(stripext(sr.name));
    while FindNext(sr) = 0 do
      List.Add(stripext(sr.Name));
    SysUtils.FindClose(sr);
  end;
end;

procedure TformStore.loadZoneList (list : TStrings);
var
  sr: TSearchRec;
begin
  List.Clear;
  if FindFirst(ZoneDir + '*.dst', faAnyFile, sr) = 0 then
  begin
    List.add(stripext(sr.name));
    while FindNext(sr) = 0 do
      List.Add(stripext(sr.Name));
    SysUtils.FindClose(sr);
  end;
end;

procedure TformStore.loadLangList (list : TStrings);
var
  sr: TSearchRec;
begin
  List.Clear;
  if FindFirst(LangDir + '*.ptx', faAnyFile, sr) = 0 then
  begin
    List.add(stripext(sr.name));
    while FindNext(sr) = 0 do
      List.Add(stripext(sr.Name));
    SysUtils.FindClose(sr);
  end;
end;

procedure TformStore.loadSetupList (list : TStrings);
var
  sr: TSearchRec;
begin
  List.Clear;
  if FindFirst(LangDir + '*.stx', faAnyFile, sr) = 0 then
  begin
    List.add(stripext(sr.name));
    while FindNext(sr) = 0 do
      List.Add(stripext(sr.Name));
    SysUtils.FindClose(sr);
  end;
end;

procedure TformStore.loadPOSList (co : String; list : TList);
begin
  List.Clear;
  with RcDataModule do begin
    POSQuery.ParamByName('COMPANY').AsString:=co;
    POSQuery.Open;
    While not POSQuery.Eof do begin
       list.Add (PosObj.Create (PosQuery.FieldByName ('NAME').AsString,
                                PosQuery.FieldByName ('ID').AsInteger));
       PosQuery.next;
    end;
    POSQuery.Close;
  end;
end;

function TformStore.findPos (ID : String) : integer;
var
  index : integer;
  i : integer;
begin
  try
    i:=strtoint (ID);
  except
    result:=-1;
    exit;
  end;
  for index:=0 to PosList.Count-1 do begin
     if (PosObj(PosList.Items[index]).id=i) then begin
        result:=index;
        exit;
     end;
  end;
  result:=-1;
end;

procedure TformStore.DrawPrinterGrid;
var
  i : integer;
  dt : TDateTime;
  PRO : PrnObj;
begin
  freePrnList;
  PrnList:=TList.Create;
  with RcDataModule.PrnNameQuery do begin
        close;
        ParamByName('COMPANY').AsString:=TUserSession(WebApplication.Data).Company;
        ParamByName('STORE').AsString:=
           RcDataModule.CurrentstoreQuery.FieldByName ('ID').AsString;
        open;
  end;

  // NB: The PrinterQuery is a different transaction to the main edit transaction context. It is only active for the
  // generation of the printer grid.
  RcDataModule.CurrentPrinterCfgQuery.Transaction.StartTransaction;

  With RcDataModule.CurrentStoreCfgQuery do begin
     ParamByName('COMPANY').AsString:=TUserSession(WebApplication.Data).Company;
     ParamByName('ID').AsString:=RcDataModule.CurrentstoreQuery.FieldByName ('ID').AsString;
     close;
     open;
     ConfigIdEdit.text:=FieldByName ('ConfigId').AsString;
     LogEdit.text:=FieldByName ('Log').AsString;
     MacEdit.text:=FieldByName ('Mac').AsString;
     close;
  end;

  RcDataModule.CurrentPrinterCfgQuery.ParamByName('COMPANY').AsString:=TUserSession(WebApplication.Data).Company;
  RcDataModule.CurrentPrinterCfgQuery.ParamByName('STORE').AsString:=
         RcDataModule.CurrentstoreQuery.FieldByName ('ID').AsString;

  with PrinterGrid do begin
    Cell[0, 0].Text := SiLangLinked1.GetTextOrDefault ('Grid.ID');;
    Cell[0, 1].Text := SiLangLinked1.GetTextOrDefault ('Grid.Name');
    Cell[0, 2].Text := SiLangLinked1.GetTextOrDefault ('Grid.POS');;
    Cell[0, 3].Text := SiLangLinked1.GetTextOrDefault ('Grid.Address');;
    Cell[0, 4].Text := SiLangLinked1.GetTextOrDefault ('Grid.LastReport');
    Cell[0, 5].Text := SiLangLinked1.GetTextOrDefault ('Grid.Version');
    Cell[0, 6].Text := SiLangLinked1.GetTextOrDefault ('Grid.Role');
    Cell[0, 7].Text := SiLangLinked1.GetTextOrDefault ('Grid.Architecture');
    Cell[0, 8].Text := SiLangLinked1.GetTextOrDefault ('Grid.ConfigVer');
    Cell[0, 9].Text := SiLangLinked1.GetTextOrDefault ('Grid.Log');
    i:=1;
    RowCount:=1;
    while not RcDataModule.PrnNameQuery.Eof do begin
      RcDataModule.CurrentPrinterCfgQuery.Close;
      RcDataModule.CurrentPrinterCfgQuery.ParamByName('ID').AsString:=
         RcDataModule.PrnNameQuery.FieldByName ('ID').AsString;
      RcDataModule.CurrentPrinterCfgQuery.Open;
      RowCount:=RowCount+1;
      with Cell[i, 0] do begin
        Clickable := True;
        Text := RcDataModule.PrnNameQuery.FieldByName('ID').AsString;
      end;
      with Cell[i, 1] do begin
        Text := RcDataModule.PrnNameQuery.FieldByName('NAME').AsString;
      end;
      with Cell[i, 2] do begin
        Text := RcDataModule.CurrentPrinterCfgQuery.FieldByName('POS').AsString;
      end;
      with Cell[i, 3] do begin
        Text := RcDataModule.CurrentPrinterCfgQuery.FieldByName('Address').AsString;
      end;
      with RcDataModule.CurrentPrinterCfgQuery.FieldByName('LastContact') do begin
         if isNull then dt:=0 else dt:=AsDateTime;
      end;
      with Cell[i, 4] do begin
        if dt=0 then
           Text:=''
        else
           Text := DateTimeToStr(dt);
      end;
      PRO:=PrnObj.Create;
      PRO.dt:=dt;
      PrnList.Add (PRO);
      with Cell[i, 5] do begin
        Text := RcDataModule.CurrentPrinterCfgQuery.FieldByName('Ver').AsString;
      end;
      with Cell[i, 6] do begin
        Text := RcDataModule.CurrentPrinterCfgQuery.FieldByName('Switches').AsString;
      end;
      with Cell[i, 7] do begin
        Text := RcDataModule.CurrentPrinterCfgQuery.FieldByName('HwVer').AsString;
      end;
      with Cell[i, 8] do begin
        Text := RcDataModule.CurrentPrinterCfgQuery.FieldByName('ConfigId').AsString;
      end;
      with Cell[i, 9] do begin
        Text := RcDataModule.CurrentPrinterCfgQuery.FieldByName('Log').AsString;
      end;
      inc (i);
      RcDataModule.PrnNameQuery.Next;
    end;
  end;
  RcDataModule.PrnNameQuery.Close;
  RcDataModule.CurrentPrinterCfgQuery.Transaction.Active:=false;
end;

procedure TformStore.IWAppFormCreate(Sender: TObject);
var
  i : integer;
  co : string;
  po : PosObj;
begin
  IWSilink1.InitForm;
//  DelBtn.Confirmation:=SiLangLinked1.GetTextOrDefault ('DeleteConf');

  co:=TUserSession(WebApplication.Data).Company;
  loadPrinterList (PrinterCombo.Items);
  PromoCombo.Items.Assign (PrinterCombo.Items);
  AuxPromoCombo.Items.Assign (PrinterCombo.Items);
  AuxPrinterCombo.Items.Assign (PrinterCombo.Items);
  loadZoneList (ZoneCombo.Items);
  loadSetupList (SetupCombo.Items);
  loadLangList (LangCombo.Items);
  PosList:=TList.Create;
  loadPOSlist (co,POSList);
  PosCombo.Items.clear;
  for i:=0 to PosList.Count-1 do begin
      po:=PosObj(PosList.Items[i]);
      PosCombo.Items.Add (IntToStr(po.id)+'  '+po.name);
  end;
  NewNameEdit.Text:=RcDataModule.CurrentstoreQuery.FieldByName ('NAME').AsString;
  SerialEdit.Text:=RcDataModule.CurrentstoreQuery.FieldByName ('SERIAL').AsString;
  PhoneEdit.Text:=RcDataModule.CurrentstoreQuery.FieldByName ('PHONE').AsString;
  ParamEdit.Text:=RcDataModule.CurrentstoreQuery.FieldByName ('PARAMS').AsString;
  ErrataEdit.Text:=RcDataModule.CurrentstoreQuery.FieldByName ('PRNERRATA').AsString;
  NewIDEdit.Text:=RcDataModule.CurrentstoreQuery.FieldByName ('ID').AsString;
  UTCEdit.Text:=RcDataModule.CurrentstoreQuery.FieldByName ('TIMEOFFSET').AsString;
  PrinterCombo.ItemIndex:=PrinterCombo.Items.IndexOf(RcDataModule.CurrentstoreQuery.FieldByName ('PRINTER').AsString);
  PromoCombo.ItemIndex:=PromoCombo.Items.IndexOf(RcDataModule.CurrentstoreQuery.FieldByName ('PROMOPRN').AsString);
  AuxPrinterCombo.ItemIndex:=PrinterCombo.Items.IndexOf(RcDataModule.CurrentstoreQuery.FieldByName ('AUXPRINTER').AsString);
  AuxPromoCombo.ItemIndex:=PromoCombo.Items.IndexOf(RcDataModule.CurrentstoreQuery.FieldByName ('AUXPROMOPRN').AsString);
  ZoneCombo.ItemIndex:=ZoneCombo.Items.IndexOf(RcDataModule.CurrentstoreQuery.FieldByName ('TIMEZONE').AsString);
  PosCombo.ItemIndex:=findPos(RcDataModule.CurrentstoreQuery.FieldByName ('POSID').AsString);
  EnabledBox.Checked:=RcDataModule.CurrentstoreQuery.FieldByName ('ENABLED').AsInteger<>0;
  TestBox.Checked:=RcDataModule.CurrentstoreQuery.FieldByName ('TEST').AsString='1';
  SetupCombo.ItemIndex:=SetupCombo.Items.IndexOf(RcDataModule.CurrentstoreQuery.FieldByName ('SETUPLANG').AsString);
  LangCombo.ItemIndex:=LangCombo.Items.IndexOf(RcDataModule.CurrentstoreQuery.FieldByName ('PRINTLANG').AsString);

  PrnList:=TList.Create;
  DrawPrinterGrid;

  GrpList:=TStringlist.create;
  GList:=TStringlist.create;
  DrawGroupGrid;
end;

function LocalToUTC(LocalTime: TDateTime): TDateTime;
var TimeZoneInformation: TTimeZoneInformation;
    Bias: integer;
begin
   Bias := 0;
   case GetTimeZoneInformation(TimeZoneInformation) of
    TIME_ZONE_ID_STANDARD: Bias := TimeZoneInformation.Bias + TimeZoneInformation.StandardBias;
    TIME_ZONE_ID_DAYLIGHT: Bias := TimeZoneInformation.Bias + TimeZoneInformation.DaylightBias;
   else
    Bias := TimeZoneInformation.Bias;
   end;
   result := incminute(Localtime, Bias);
end;

procedure TformStore.PrinterGridRenderCell(ACell: TIWGridCell; const ARow,
  AColumn: Integer);
begin
  with ACell do begin
    // Title Row
    if ARow = 0 then begin
      Alignment := taCenter;
      BGColor := clBlue;
      Font.Style := [fsBold];
      Font.Color := clWhite;
    end else begin
      // Alternate Row Colors
      if Odd(ARow) then begin
        BGColor := clLtGray;
      end else begin
        BGColor := clNone;
      end;
      if AColumn=8 then begin
         if ACell.text<>ConfigIdEdit.Text then begin
            BGColor:=clYellow;
         end;
      end else if AColumn=9 then begin
         if (ACell.text<>'0') and (ACell.text<>'') then begin
            BGColor:=$c000c0;
            Font.Color := clWhite;
         end;
      end else if AColumn=4 then begin
         if ACell.Text<>'' then begin
            try
               if localtoUTC(now)-PrnObj(PrnList.Items[ARow-1]).dt>2/24 then
                  BGColor:=clRed;
            except
            end;
         end;
      end;
    end;
  end;
end;

procedure TFormStore.EditPrinter (ID : String);
var
  TFP : TFormPrinter;
begin
  with RcDataModule.CurrentPrinterQuery do begin
    Close;
    ParamByName ('COMPANY').AsString:=TUserSession(WebApplication.Data).Company;
    ParamByName ('STORE').AsString:=RcDataModule.CurrentStoreQuery.FieldByName('ID').AsString;
    ParamByName ('ID').AsString:=ID;
    Open;
    TIWAppForm(WebApplication.ActiveForm).Release;
    TFP:=TFormPrinter.Create (WebApplication);
    TFP.referedby:=referedby;
    TFP.show;
  end;
end;

procedure TformStore.PrinterGridCellClick(ASender: TObject;const ARow, AColumn: Integer);
begin
  EditPrinter (PrinterGrid.Cell[ARow,0].Text);
end;

procedure TformStore.IWAppFormDestroy(Sender: TObject);
begin
  freePosList;
  GrpList.Free;
  GList.Free;
  freePrnList;
end;

procedure TformStore.AddGrpBtnClick(Sender: TObject);
begin
  if GroupCombo.ItemIndex=-1 then exit;
  try
    with RcDataModule.GrpAllocInsertQuery do begin
      ParamByName ('ID').AsInteger:=RcDataModule.NextId;
      ParamByName ('GROUPID').AsString:=GList.Strings[GroupCombo.ItemIndex];
      ParamByName ('ITEMID').AsString:=RcDataModule.CurrentStoreQuery.FieldByName ('ID').AsString;
      ParamByName ('COMPANY').AsString:=UserSession.Company;
      ParamByName ('ITEMKIND').AsInteger:=1;
      ExecSQL;
    end;
  except
  end;
  DrawGroupGrid;
  GroupCombo.ItemIndex:=-1;
end;

function TFormStore.GetGroupName (ID : Integer; Co : Integer) : String;
begin
  with RcDataModule.GroupDetailQuery do begin
     try
       Close;
       ParamByName ('COMPANY').AsInteger:=Co;
       ParamByName ('ID').AsInteger:=Id;
       Result:='*******';
       Open;
       if Eof then exit;
       Result:=FieldByName ('NAME').AsString;
     finally
       Close;
     end;
  end;
end;

procedure TformStore.DrawGroupGrid;
var
  i : integer;
  _index : integer;
  GrpID : integer;
begin
  RcDataModule.GroupQuery.Close;
  RcDataModule.GroupQuery.ParamByName('COMPANY').AsString:=
     UserSession.Company;
  RcDataModule.GroupQuery.Open;
  GroupCombo.Items.Clear;
  GList.Clear;
  with GroupCombo do begin
    while not RcDataModule.GroupQuery.Eof do begin
      GList.Add (RcDataModule.GroupQuery.FieldByName('ID').AsString);
      Items.Add (RcDataModule.GroupQuery.FieldByName('Name').AsString);
      RcDataModule.GroupQuery.Next;
    end;
  end;
  GroupCombo.ItemIndex:=-1;
  RcDataModule.GroupQuery.Close;

  GrpGrid.RowCount:=0;
  GrpList.Clear;
  with RcDataModule do begin
    GrpAllocQuery.Close;
    GrpAllocQuery.ParamByName('COMPANY').AsString:=
       UserSession.Company;
    GrpAllocQuery.ParamByName('ITEMID').AsString:=
       CurrentStoreQuery.FieldByName('ID').AsString;
    GrpAllocQuery.Open;
    with GrpGrid do begin
      RowCount:=1;
      Cell[0, 0].Text := '';
      Cell[0, 1].Text := SiLangLinked1.GetTextOrDefault ('Grid.Name');
      i:=1;
      while not GrpAllocQuery.Eof do begin
        RowCount:=RowCount+1;
        with Cell[i, 0] do begin
          Clickable := True;
          GrpList.Add (GrpAllocQuery.FieldByName('ID').AsString);
          Text:='Del';
        end;
        with Cell[i, 1] do begin
          GrpID:=GrpAllocQuery.FieldByName('GROUPID').AsInteger;
          _Index:=GList.IndexOf (IntToStr(GrpID));
          if _Index>-1 then begin
             GList.Delete(_Index);
             GroupCombo.Items.Delete(_Index);
          end;
          Text := htmlquote(GetGroupName (GrpID, StrToInt(UserSession.Company)));
        end;
        inc (i);
        GrpAllocQuery.Next;
      end;
    end;
    GrpAllocQuery.Close;
  end;
end;

procedure TformStore.GrpGridCellClick(ASender: TObject; const ARow,
  AColumn: Integer);
begin
  with RcDataModule do begin
    GrpAllocDelQuery.ParamByName ('ID').AsString:=GrpList.Strings[ARow-1];
    GrpAllocDelQuery.ParamByName ('COMPANY').AsString:=UserSession.Company;
    GrpAllocDelQuery.ExecSQL;
  end;
  DrawGroupGrid;
end;

procedure TformStore.IWAppFormDefaultAction(Sender: TObject);
begin
  PostButtonClick (Sender);
end;

procedure TformStore.CleanBtnClick(Sender: TObject);
begin
  with RcDataModule.DelSlaveOffQuery do begin
    ParamByName ('STOREID').AsString:=RcDataModule.CurrentStoreQuery.FieldByName('ID').AsString;
    ParamByName ('COMPANY').AsString:=UserSession.Company;
    ParamByName ('LASTCONTACT').AsDateTime:=now-1.0/24.0;
    ExecSQL;
    DrawPrinterGrid;
  end;
end;

end.
