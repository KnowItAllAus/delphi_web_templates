unit voucherEditForm;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  IWControl, IWCompRectangle, IWGrids, IWDBGrids,
  IWHTMLControls, IWCompLabel, IWCompEdit, IWDBStdCtrls, IWCompButton,
  IWExtCtrls, IWDBExtCtrls, IWContainer, IWRegion, 
  IWCompCheckbox, IWCompListbox, IWBaseControl, IWVCLBaseControl,
  IWVCLBaseContainer, IWHTMLContainer, IWBaseHTMLControl, IWAppForm,
  siComp, siLngLnk, IWSiLink, footer_user, baretitle, IWHTML40Container;

type
  TFormVoucherEdit = class(TIWAppForm)
    FrameBareTitle1: TFrameBareTitle;
    userfooter1: Tuserfooter;
    IWRegion1: TIWRegion;
    siLangLinked1: TsiLangLinked;
    IWRegion2: TIWRegion;
    IWRegion3: TIWRegion;
    PurposeCombo: TIWComboBox;
    IWLabel27: TIWLabel;
    OutputCombo: TIWComboBox;
    IWLabel28: TIWLabel;
    vlabelfrom: TIWLabel;
    VStartedit: TIWEdit;
    VEndEdit: TIWEdit;
    vLabelTo: TIWLabel;
    IWLabel8: TIWLabel;
    NewTrigEdit: TIWEdit;
    NewNameEdit: TIWEdit;
    IWLabel1: TIWLabel;
    VoucherLabel: TIWLabel;
    IWLabel3: TIWLabel;
    NewVendLabel: TIWLabel;
    NewVendEdit: TIWEdit;
    NewProdLabel: TIWLabel;
    NewTagEdit: TIWEdit;
    IWLabel2: TIWLabel;
    NewIDEdit: TIWEdit;
    NewProdEdit: TIWEdit;
    IWSiLink1: TIWSiLink;
    IWRegion5: TIWRegion;
    IWLabel11: TIWLabel;
    DepGrid: TIWGrid;
    AddDepBtn: TIWButton;
    TrigCombo: TIWComboBox;
    IWLabel10: TIWLabel;
    SenseCombo: TIWComboBox;
    IWLabel22: TIWLabel;
    QtyEdit: TIWEdit;
    ImageRegion: TIWRegion;
    IWLabel7: TIWLabel;
    SelGrid: TIWGrid;
    DataCombo: TIWComboBox;
    AddOutputBtn: TIWButton;
    IWLabel4: TIWLabel;
    StatCombo: TIWComboBox;
    AvailRegion: TIWRegion;
    IWLabel5: TIWLabel;
    IWLabel13: TIWLabel;
    FromEdit: TIWEdit;
    ToEdit: TIWEdit;
    IWLabel14: TIWLabel;
    IWLabel16: TIWLabel;
    IWLabel17: TIWLabel;
    IWLabel18: TIWLabel;
    IWLabel19: TIWLabel;
    PeriodEndEdit: TIWEdit;
    PeriodStartEdit: TIWEdit;
    IWLabel21: TIWLabel;
    monbox: TIWCheckBox;
    tuebox: TIWCheckBox;
    wedbox: TIWCheckBox;
    thubox: TIWCheckBox;
    fribox: TIWCheckBox;
    satbox: TIWCheckBox;
    sunbox: TIWCheckBox;
    IWRectangle1: TIWRectangle;
    IWRectangle2: TIWRectangle;
    NewBtn: TIWButton;
    DupBox: TIWCheckBox;
    PassthroughBox: TIWCheckBox;
    IWLabel6: TIWLabel;
    PriorityCombo: TIWComboBox;
    Formatbox: TIWCheckBox;
    procedure CancelBtnClick(Sender: TObject);
    procedure PostButtonClick(Sender: TObject);
    procedure IWAppFormCreate(Sender: TObject);
    procedure DelBtnClick(Sender: TObject);
    procedure ImageGridRenderCell(ACell: TIWGridCell; const ARow,
      AColumn: Integer);
    procedure SelGridCellClick(ASender: TObject;const ARow, AColumn: Integer);
    procedure IWAppFormDestroy(Sender: TObject);
    procedure AddOutputBtnClick(Sender: TObject);
    procedure AddDepBtnClick(Sender: TObject);
    procedure DepGridCellClick(ASender: TObject;const ARow, AColumn: Integer);
    procedure GrpGridCellClick(ASender: TObject; const ARow,
      AColumn: Integer);
    procedure IWAppFormDefaultAction(Sender: TObject);
    procedure NewBtnClick(Sender: TObject);
    procedure PurposeComboChange(Sender: TObject);
    procedure FormatboxChange(Sender: TObject);
  private
    { Private declarations }
    AList : TStringList;
    DepGridList : TStringList;
    XList : TStringlist;
    TrigList : TStringlist;
    GrpList : TStringlist;
    GrpGridList : TStringlist;
    function GetTrigName (ID : Integer; Co : Integer) : String;
    procedure DrawSelGrid;
    procedure DrawDepGrid;
    procedure MakeLast (id : string);
  public
    { Public declarations }
  end;

var
  FormVoucherEdit: TFormVoucherEdit;

implementation

uses datamod, db, servercontroller, IWInit, Math, cfgtypes, IWTypes, voucherForm, imageupform, vouchereditform2;

{$R *.DFM}

procedure GoVouchers;
begin
   TIWAppForm(WebApplication.ActiveForm).Release;
   TFormVoucher.Create(WebApplication).Show;
end;

procedure TFormVoucherEdit.CancelBtnClick(Sender: TObject);
begin
  RcDataModule.VoucherUpdateQuery.Transaction.RollbackRetaining;
  GoVouchers;
end;

function minutes (t : TDateTime) : integer;
var
   h,m,s,ms : word;
begin
   DecodeTime (t,h,m,s,ms);
   minutes:=h*60+m;
end;

function GetDateTime (s : string) : TDateTime;
begin
   result:=StrToDateTime (s);
end;

procedure TFormVoucherEdit.PostButtonClick(Sender: TObject);
var
   s : string;
begin
  try
    with RcDataModule do begin
  //    if CurrentVoucherQuery.Active then begin
        VoucherUpdateQuery.ParamByName('OLD_ID').AsString:=
          CurrentVoucherQuery.FieldByName('ID').AsString;
        VoucherUpdateQuery.ParamByName('ID').AsString:=NewIDEdit.Text;
        VoucherUpdateQuery.ParamByName('WILDCARDS').AsInteger:=0;
        if outputCombo.ItemIndex=-1 then outputCombo.ItemIndex:=0;
        VoucherUpdateQuery.ParamByName('OUTPUT').AsInteger:=outputCombo.ItemIndex;
        VoucherUpdateQuery.ParamByName('PRIORITY').AsInteger:=priorityCombo.ItemIndex;
        VoucherUpdateQuery.ParamByName('PURPOSE').AsInteger:=purposeCombo.ItemIndex;
        StrIntParam(VoucherUpdateQuery.ParamByName('TAG'),NewTagEdit.Text);
        StrIntParam(VoucherUpdateQuery.ParamByName('VENDOR'),NewVendEdit.Text);
        StrIntParam(VoucherUpdateQuery.ParamByName('PRODUCT'),NewProdEdit.Text);
        s:=NewTrigEdit.Text;
        VoucherUpdateQuery.ParamByName('TRIG').AsString:=singlespace(s);
        VoucherUpdateQuery.ParamByName('OLD_COMPANY').AsString:=
          CurrentVoucherQuery.FieldByName('COMPANY').AsString;
        VoucherUpdateQuery.ParamByName('NAME').AsString:=NewNameEdit.Text;
        VoucherUpdateQuery.ParamByName('DAYS').AsInteger:=
              ord(sunbox.checked)+ord(monbox.checked)*2+ord(tuebox.checked)*4+ord(wedbox.checked)*8+
              ord(thubox.checked)*16+ord(fribox.checked)*32+ord(satbox.checked)*64;
        VoucherUpdateQuery.ParamByName('NO_DUPLICATES').AsInteger:=Ord (DupBox.Checked);
        VoucherUpdateQuery.ParamByName('PASSTHROUGH').AsInteger:=Ord (PassthroughBox.Checked);
        try
          VoucherUpdateQuery.ParamByName('TIMESTART').AsInteger:=minutes (StrToTime(FromEdit.Text));
        except
          VoucherUpdateQuery.ParamByName('TIMESTART').AsInteger:=0;
        end;
        try
          VoucherUpdateQuery.ParamByName('TIMEEND').AsInteger:=minutes (StrToTime(ToEdit.Text));
        except
          VoucherUpdateQuery.ParamByName('TIMEEND').AsInteger:=60*23+59;
        end;
        try
          VoucherUpdateQuery.ParamByName('PERIODSTART').AsDateTime:=GetDateTime (PeriodStartEdit.Text);
        except
          VoucherUpdateQuery.ParamByName('PERIODSTART').AsDateTime:=trunc(EncodeDate(2000,1,1));
        end;
        try
          VoucherUpdateQuery.ParamByName('VALUESTART').AsInteger:=trunc(StrToCurr(VStartEdit.Text)*100);
        except
          VoucherUpdateQuery.ParamByName('VALUESTART').AsInteger:=0;
        end;
        try
          VoucherUpdateQuery.ParamByName('VALUEEND').AsInteger:=trunc(StrToCurr(VEndEdit.Text)*100);
        except
          VoucherUpdateQuery.ParamByName('VALUEEND').AsInteger:=0;
        end;
        try
          if PeriodEndEdit.Text<>'' then begin
             VoucherUpdateQuery.ParamByName('PERIODEND').AsDateTime:=GetDateTime (PeriodEndEdit.Text);
          end else
             VoucherUpdateQuery.ParamByName('PERIODEND').clear;
        except
          VoucherUpdateQuery.ParamByName('PERIODEND').clear;
        end;
        VoucherUpdateQuery.ExecSQL;
        VoucherUpdateQuery.Transaction.CommitRetaining;
    end;
  except
    WebApplication.ShowMessage(userfooter1.silink_footer.GetTextOrDefault('DBError'));
    exit;
  end;

  GoVouchers;
end;

function TFormVoucherEdit.GetTrigName (ID : Integer; Co : Integer) : String;
begin
  with RcDataModule.TrigDetailQuery do begin
     try
       Close;
       ParamByName ('COMPANY').AsInteger:=Co;
       ParamByName ('ID').AsInteger:=Id;
       Result:='*Unknown*';
       Open;
       if Eof then exit;
       Result:=FieldByName ('NAME').AsString;
     finally
       Close;
     end;
  end;
end;

procedure TFormVoucherEdit.IWAppFormCreate(Sender: TObject);

  function getIntField (fname : string; default : integer) : integer;
  begin
     with RcDataModule.CurrentVoucherQuery do begin
       if FieldByName(fname).IsNull then result:=default
       else try
          result:=FieldByName(fname).AsInteger;
       except
          result:=default;
       end;
     end;
  end;

var
  days : integer;
begin
  IWSiLink1.InitForm;
//  UserFooter1.Extra2.Confirmation:=SiLangLinked1.GetTextOrDefault('DelConf');
  FormatBox.checked:=false;
  NewNameEdit.Text:=RcDataModule.CurrentVoucherQuery.FieldByName ('Name').AsString;
  NewNameEdit.ReadOnly:=UserSession.ReadOnly;
  NewIDEdit.Text:=RcDataModule.CurrentVoucherQuery.FieldByName ('ID').AsString;
  NewIDEdit.ReadOnly:=UserSession.ReadOnly;
  NewTagEdit.Text:=RcDataModule.CurrentVoucherQuery.FieldByName ('TAG').AsString;
  NewTagEdit.ReadOnly:=UserSession.ReadOnly;
  NewProdEdit.Text:=RcDataModule.CurrentVoucherQuery.FieldByName ('PRODUCT').AsString;
  NewProdEdit.ReadOnly:=UserSession.ReadOnly;
  NewVendEdit.Text:=RcDataModule.CurrentVoucherQuery.FieldByName ('VENDOR').AsString;
  NewVendEdit.ReadOnly:=UserSession.ReadOnly;
  NewTrigEdit.Text:=RcDataModule.CurrentVoucherQuery.FieldByName ('TRIG').AsString;
  NewTrigEdit.ReadOnly:=UserSession.ReadOnly;
  DupBox.Checked:=RcDataModule.CurrentVoucherQuery.FieldByName ('NO_DUPLICATES').AsString='1';
  DupBox.Enabled:=not UserSession.Readonly;
  PassthroughBox.Checked:=RcDataModule.CurrentVoucherQuery.FieldByName ('PASSTHROUGH').AsString='1';
  PassthroughBox.Enabled:=not UserSession.Readonly;
  try
     VStartEdit.Text:=FormatCurr('0.00',RcDataModule.CurrentVoucherQuery.FieldByName ('VALUESTART').AsInteger/100);
  except
     VStartEdit.Text:=CurrToStr(0);
  end;
  VStartEdit.ReadOnly:=UserSession.ReadOnly;
  try
     VEndEdit.Text:=FormatCurr('0.00',RcDataModule.CurrentVoucherQuery.FieldByName ('VALUEEND').AsInteger/100);
  except
     VEndEdit.Text:=CurrToStr(0);
  end;
  VEndEdit.ReadOnly:=UserSession.ReadOnly;
  PurposeCombo.ItemIndex:=getIntField ('PURPOSE',0);
  PurposeCombo.Enabled:=not UserSession.Readonly;
  PriorityCombo.ItemIndex:=getIntField ('PRIORITY',2);
  PriorityCombo.Enabled:=not UserSession.Readonly;
  OutputCombo.ItemIndex:=getIntField ('OUTPUT',0);
  OutputCombo.Enabled:=not UserSession.Readonly;
  days:=getIntField ('DAYS',$7f);
  sunbox.checked:=(days and $01) <> 0;
  sunbox.Enabled:=not UserSession.Readonly;
  monbox.checked:=(days and $02) <> 0;
  monbox.Enabled:=not UserSession.Readonly;
  tuebox.checked:=(days and $04) <> 0;
  tuebox.Enabled:=not UserSession.Readonly;
  wedbox.checked:=(days and $08) <> 0;
  wedbox.Enabled:=not UserSession.Readonly;
  thubox.checked:=(days and $10) <> 0;
  thubox.Enabled:=not UserSession.Readonly;
  fribox.checked:=(days and $20) <> 0;
  fribox.Enabled:=not UserSession.Readonly;
  satbox.checked:=(days and $40) <> 0;
  satbox.Enabled:=not UserSession.Readonly;
  FromEdit.Text:=FormatDateTime (ShortTimeFormat,EncodeTime (getIntField('TIMESTART',0) div 60,getIntField('TIMESTART',0) mod 60,0,0));
  FromEdit.ReadOnly:=UserSession.ReadOnly;
  ToEdit.Text:=FormatDateTime (ShortTimeFormat,EncodeTime (getIntField('TIMEEND',1439) div 60,getIntField('TIMEEND',1439) mod 60,0,0));
  toEdit.ReadOnly:=UserSession.ReadOnly;
  try
    if RcDataModule.CurrentVoucherQuery.FieldByName ('PERIODSTART').isnull then
       PeriodStartEdit.Text:=''
       else
       PeriodStartEdit.Text:=DateTimeToStr (RcDataModule.CurrentVoucherQuery.FieldByName ('PERIODSTART').AsDateTime);
  except
    PeriodStartEdit.Text:='';
  end;
  PeriodStartEdit.ReadOnly:=UserSession.ReadOnly;
  try
    if RcDataModule.CurrentVoucherQuery.FieldByName ('PERIODEND').isnull then
       PeriodEndEdit.Text:=''
       else
       PeriodEndEdit.Text:=DateTimeToStr (RcDataModule.CurrentVoucherQuery.FieldByName ('PERIODEND').AsDateTime);
  except
    PeriodEndEdit.Text:='';
  end;
  PeriodEndEdit.ReadOnly:=UserSession.ReadOnly;
  StatCombo.ItemIndex:=0;
  StatCombo.Enabled:=not UserSession.Readonly;
  QtyEdit.Text:='1';
  QtyEdit.ReadOnly:=UserSession.ReadOnly;
  SenseCombo.ItemIndex:=0;
  SenseCombo.Enabled:=not UserSession.Readonly;
  AddOutputBtn.Enabled:=not UserSession.Readonly;
  AddDepBtn.Enabled:=not UserSession.Readonly;

  AList:=TStringList.Create;
  DepGridList:=TStringList.Create;
  XList:=TStringList.Create;
  TrigList:=TStringList.Create;
  GrpList:=TStringlist.Create;
  GrpGridList:=TStringlist.Create;

  RcDataModule.ImageVoucherQuery.Close;
  RcDataModule.ImageVoucherQuery.ParamByName('COMPANY').AsString:=
     UserSession.Company;
  RcDataModule.ImageVoucherQuery.ParamByName('JOBID').AsInteger:=
     UserSession.JobRevID;
  RcDataModule.ImageVoucherQuery.Open;
  DataCombo.Items.Clear;
  with DataCombo do begin
    while not RcDataModule.ImageVoucherQuery.Eof do begin
      XList.Add (RcDataModule.ImageVoucherQuery.FieldByName('ID').AsString);
      Items.Add (RcDataModule.ImageVoucherQuery.FieldByName('Name').AsString);
      RcDataModule.ImageVoucherQuery.Next;
    end;
  end;
  DataCombo.ItemIndex:=-1;
  DataCombo.Enabled:=not UserSession.Readonly;
  RcDataModule.ImageVoucherQuery.Close;

  RcDataModule.VoucherQuery.Close;
  RcDataModule.VoucherQuery.ParamByName('COMPANY').AsString:=
     UserSession.Company;
  RcDataModule.VoucherQuery.Open;
  TrigCombo.Items.Clear;
  with TrigCombo do begin
    while not RcDataModule.VoucherQuery.Eof do begin
      TrigList.Add (RcDataModule.VoucherQuery.FieldByName('ID').AsString);
      Items.Add (RcDataModule.VoucherQuery.FieldByName('Name').AsString);
      RcDataModule.VoucherQuery.Next;
    end;
  end;
  TrigCombo.ItemIndex:=-1;
  TrigCombo.Enabled:=not UserSession.Readonly;
  RcDataModule.VoucherQuery.Close;

  DrawSelGrid;
  DrawDepGrid;
//  DrawGrpGrid;
  RcDataModule.CurrentVoucherQuery.Transaction.Active:=True;
  PurposeComboChange(sender);
  UserFooter1.Extra2.enabled:=UserSession.Readonly=false;
  UserFooter1.Extra1 .enabled:=UserSession.Readonly=false;
end;

procedure TFormVoucherEdit.DrawSelGrid;
var
  i : integer;
  s : string;
begin
  SelGrid.RowCount:=0;
  AList.Clear;
  with RcDataModule do begin
    ItemQuery.Close;
    ItemQuery.ParamByName('COMPANY').AsString:=
       TUserSession(WebApplication.Data).Company;
    s:=CurrentVoucherQuery.FieldByName('ID').AsString;
    ItemQuery.ParamByName('ITEMID').AsString:=s;
    ItemQuery.Open;
    with SelGrid do begin
      RowCount:=1;
      Cell[0, 0].Text := '';
      Cell[0,1].Text := '';
      Cell[0, 2].Text := '';
      Cell[0, 3].Text := SiLangLinked1.GetTextOrDefault('Grid.Name');
      Cell[0, 4].Text := SiLangLinked1.GetTextOrDefault('Grid.Status');
      i:=1;
      while not ItemQuery.Eof do begin
        RowCount:=RowCount+1;
        with Cell[i, 0] do begin
          Clickable := not UserSession.ReadOnly;
          AList.Add (ItemQuery.FieldByName('ID').AsString);
          Text:=SiLangLinked1.GetTextOrDefault('Grid.Del');
        end;
        with Cell[i, 1] do begin
          Clickable := not UserSession.ReadOnly;
          Text := SiLangLinked1.GetTextOrDefault('Grid.Down');
        end;
        with Cell[i, 2] do begin
          Clickable := not UserSession.ReadOnly;
          Text := SiLangLinked1.GetTextOrDefault('Grid.Up');
        end;
        with Cell[i, 4] do begin
          try
             Text:=StatCombo.Items[ItemQuery.FieldByName('RESCODE').AsInteger];
          except
             Text:='';
          end;
        end;
        with Cell[i, 3] do begin
          Text := htmlquote(ItemQuery.FieldByName('NAME').AsString);
        end;
        inc (i);
        ItemQuery.Next;
      end;
    end;
    ItemQuery.Close;
  end;
  if SelGrid.RowCount>=2 then SelGrid.Cell[1,2].Text:='';
  if SelGrid.RowCount>=1 then
     SelGrid.Cell[SelGrid.RowCount-1,1].Text:='';
end;

procedure TFormVoucherEdit.DrawDepGrid;
var
  i : integer;
begin
  DepGrid.RowCount:=0;
  DepGridList.Clear;
  with RcDataModule do begin
    DepQuery.Close;
    DepQuery.ParamByName('COMPANY').AsString:=
       UserSession.Company;
    DepQuery.ParamByName('TRIGID').AsString:=
       CurrentVoucherQuery.FieldByName('ID').AsString;
    DepQuery.Open;
    with DepGrid do begin
      RowCount:=1;
      Cell[0, 0].Text := '';
      Cell[0, 1].Text := SiLangLinked1.GetTextOrDefault('Grid.Name');
      Cell[0, 2].Text := SiLangLinked1.GetTextOrDefault('Grid.Sense');
      Cell[0, 3].Text := SiLangLinked1.GetTextOrDefault('Grid.Qty');
      i:=1;
      while not DepQuery.Eof do begin
        RowCount:=RowCount+1;
        with Cell[i, 0] do begin
          Clickable := not UserSession.ReadOnly;
          DepGridList.Add (DepQuery.FieldByName('ID').AsString);
          Text:=SiLangLinked1.GetTextOrDefault('Grid.Del');
        end;
        with Cell[i, 1] do begin
          Text := htmlquote(GetTrigName (DepQuery.FieldByName('DEPTRIG').AsInteger,
                                StrToInt(UserSession.Company)));
        end;
        with Cell[i, 2] do begin
          try
            Text := SenseCombo.Items[DepQuery.FieldByName('EXCLUDE').AsInteger];
          except
            Text:='';
          end;
        end;
        with Cell[i, 3] do begin
          try
            Text := DepQuery.FieldByName('QTY').AsString;
            if (DepQuery.FieldByName('EXCLUDE').AsInteger>1) then Text:='';
          except
            Text:='1';
          end;
        end;
        inc (i);
        DepQuery.Next;
      end;
    end;
    DepQuery.Close;
  end;
end;

procedure TFormVoucherEdit.DelBtnClick(Sender: TObject);
begin
  with RcDataModule do begin
      VoucherDeleteQuery.ParamByName('ID').AsString:=
        CurrentVoucherQuery.FieldByName('ID').AsString;
      VoucherDeleteQuery.ParamByName('COMPANY').AsString:=
        CurrentVoucherQuery.FieldByName('COMPANY').AsString;
      VoucherDeleteQuery.ExecSQL;
      VoucherDeleteQuery.Transaction.CommitRetaining;
  end;
  GoVouchers;
end;

procedure TFormVoucherEdit.ImageGridRenderCell(ACell: TIWGridCell;
  const ARow, AColumn: Integer);
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
    end;
  end;
end;

procedure TFormVoucherEdit.MakeLast (id : string);
begin
  with RcDataModule.ItemMoveQuery do begin
    ParamByName ('OLD_ID').AsString:=id;
    ParamByName ('NEW_ID').AsInteger:=RcDataModule.nextid;
    ExecSQL;
  end;
end;

procedure TFormVoucherEdit.SelGridCellClick(ASender: TObject;const ARow, AColumn: Integer);
var
  i : integer;
begin
  if AColumn=0 then begin
      try
        with RcDataModule.ItemDeleteQuery do begin
          ParamByName ('ID').AsString:=AList.Strings[ARow-1];
          ParamByName ('COMPANY').AsString:=UserSession.Company;
          ExecSQL;
        end;
      except
      end;
  end else if AColumn=1 then begin  // Move down
     MakeLast (AList.Strings[ARow-1]);
     for i:=ARow+1 to AList.count-1 do
        MakeLast (Alist.Strings[i]);
  end else if AColumn=2 then begin  // Move up
     if ARow>=2 then begin
       MakeLast (AList.Strings[ARow-2]);
       for i:=ARow to AList.count-1 do
          MakeLast (Alist.Strings[i]);
     end;
  end;
  DrawSelGrid;
end;

procedure TFormVoucherEdit.IWAppFormDestroy(Sender: TObject);
begin
  Alist.free;
  Xlist.free;
  DepGridList.free;
  TrigList.free;
  GrpList.Free;
  GrpGridList.Free;
end;

procedure TFormVoucherEdit.AddOutputBtnClick(Sender: TObject);
var
  id : integer;
begin
  if DataCombo.ItemIndex=-1 then exit;
  try
    with RcDataModule.ItemInsertQuery do begin
      id:=RcDataModule.NextId;
      ParamByName ('ID').AsInteger:=id;
      ParamByName ('CONTENTID').AsString:=XList.Strings[DataCombo.ItemIndex];
      ParamByName ('ITEMID').AsString:=RcDataModule.CurrentVoucherQuery.FieldByName ('ID').AsString;
      ParamByName ('COMPANY').AsString:=UserSession.Company;
      ParamByName ('RESCODE').AsInteger:=StatCombo.ItemIndex;
      ExecSQL;
    end;
  except
  end;
  DrawSelGrid;
  DataCombo.ItemIndex:=-1;
  StatCombo.ItemIndex:=0;
end;

procedure TFormVoucherEdit.AddDepBtnClick(Sender: TObject);
begin
  if TrigCombo.ItemIndex=-1 then exit;
  try
    with RcDataModule.DepTrigInsertQuery do begin
      ParamByName ('ID').AsInteger:=RcDataModule.NextId;
      ParamByName ('DEPTRIG').AsString:=TrigList.Strings[TrigCombo.ItemIndex];
      ParamByName ('TRIGID').AsString:=RcDataModule.CurrentVoucherQuery.FieldByName ('ID').AsString;
      ParamByName ('COMPANY').AsString:=UserSession.Company;
      ParamByName ('EXCLUDE').AsInteger:=SenseCombo.ItemIndex;
      try
         ParamByName ('QTY').AsInteger:=StrToInt(QtyEdit.Text);
      except
         ParamByName ('QTY').AsInteger:=1;
      end;
      ExecSQL;
    end;
  except
  end;
  DrawDepGrid;
  TrigCombo.ItemIndex:=-1;
  SenseCombo.ItemIndex:=0;
  QtyEdit.Text:='1';
end;

procedure TFormVoucherEdit.DepGridCellClick(ASender: TObject;const ARow, AColumn: Integer);
begin
  try
    with RcDataModule.DepTrigDelQuery do begin
      ParamByName ('ID').AsString:=DepGridList.Strings[ARow-1];
      ParamByName ('COMPANY').AsString:=UserSession.Company;
      ExecSQL;
    end;
  except
  end;
  DrawDepGrid;
end;

procedure TFormVoucherEdit.GrpGridCellClick(ASender: TObject; const ARow,
  AColumn: Integer);
begin
  with RcDataModule do begin
    GrpAllocDelQuery.ParamByName ('ID').AsString:=GrpGridList.Strings[ARow-1];
    GrpAllocDelQuery.ParamByName ('COMPANY').AsString:=UserSession.Company;
    GrpAllocDelQuery.ExecSQL;
  end;
end;

procedure TFormVoucherEdit.IWAppFormDefaultAction(Sender: TObject);
begin
   PostButtonClick (Sender);
end;

procedure TFormVoucherEdit.NewBtnClick(Sender: TObject);
var
  ImageId : integer;
  TFI: TFormImageUp;
begin
  ImageId:=RcDataModule.nextID;
  RcDataModule.ImageInsertQuery.Transaction.Active:=True;
  RcDataModule.ImageInsertQuery.ParamByName('NAME').AsString:=
    'New Content';
  RcDataModule.ImageInsertQuery.ParamByName('ID').AsInteger:=ImageId;
  RcDataModule.ImageInsertQuery.ParamByName('COMPANY').AsString:=
    UserSession.Company;
  RcDataModule.ImageInsertQuery.ExecSQL;
  with RcDataModule.CurrentImageQuery do begin
    Close;
    ParamByName ('COMPANY').AsString:=UserSession.Company;
    ParamByName ('ID').AsString:=inttostr(imageID);
    Open;
    TIWAppForm(WebApplication.ActiveForm).Release;
    TFI:=TFormImageUp.Create (WebApplication);
    TFI.referedBy:=TFormVoucherEdit;
    TFI.Show;
  end;
end;

procedure TFormVoucherEdit.PurposeComboChange(Sender: TObject);
var
   receiptTrigger : boolean;
begin
   receipttrigger:=PurposeCombo.ItemIndex in [0,1,2,3,6,13,15];
   Passthroughbox.visible:=not receiptTrigger;
   DupBox.visible:=receiptTrigger;
   NewVendEdit.Visible:=not receipttrigger or (PurposeCombo.ItemIndex=13);
   NewVendLabel.Visible:=NewVendEdit.Visible;
   NewProdEdit.Visible:=NewVendEdit.visible;
   NewProdLabel.Visible:=NewProdEdit.Visible;
end;

procedure TFormVoucherEdit.FormatboxChange(Sender: TObject);
begin
     usersession.NewLayout:=formatbox.checked;
     if formatbox.checked then begin
        TIWAppForm(WebApplication.ActiveForm).Release;
        TFormVoucherEdit2.Create (WebApplication).show;
     end;
end;

end.
