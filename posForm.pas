unit posForm;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  IWControl, IWHTMLControls, IWExtCtrls,
  IWCompListbox, IWCompRectangle, IWCompEdit, IWCompLabel, IWCompButton,
  IWContainer, IWRegion, IWCompMemo, IWGrids, IWBaseControl,
  IWVCLBaseControl, IWVCLBaseContainer, IWCompCheckbox, IWAppForm,
  IWHTMLContainer, IWBaseHTMLControl, siComp, siLngLnk, IWSiLink,
  baretitle, footer_user, IWCompRadioButton, IWHTML40Container;

type
  TFormPOS = class(TIWAppForm)
    siLangLinked1: TsiLangLinked;
    IWRegion1: TIWRegion;
    RuleRegn: TIWRegion;
    IWRegion3: TIWRegion;
    IWLabel25: TIWLabel;
    ScanPatternEdit: TIWEdit;
    IWLabel26: TIWLabel;
    ScanOutEdit: TIWEdit;
    IWLabel20: TIWLabel;
    IWRegion4: TIWRegion;
    DupEdit: TIWEdit;
    IWLabel12: TIWLabel;
    IWLabel13: TIWLabel;
    ReqEdit: TIWEdit;
    IWLabel14: TIWLabel;
    ExclEdit: TIWEdit;
    IWLabel15: TIWLabel;
    MerchEdit: TIWEdit;
    IWLabel16: TIWLabel;
    ProdEndEdit: TIWEdit;
    ProdStartEdit: TIWEdit;
    IWLabel17: TIWLabel;
    ProdSepBox: TIWComboBox;
    IWLabel21: TIWLabel;
    IWLabel22: TIWLabel;
    LogoEdit: TIWEdit;
    IWLabel4: TIWLabel;
    VoucherEdit: TIWEdit;
    IWLabel6: TIWLabel;
    IWLabel7: TIWLabel;
    StartEdit: TIWEdit;
    IWLabel8: TIWLabel;
    EndEdit: TIWEdit;
    IWLabel18: TIWLabel;
    VoidEdit: TIWEdit;
    IWLabel19: TIWLabel;
    CancelEdit: TIWEdit;
    IWLabel23: TIWLabel;
    ExceptEdit: TIWEdit;
    IWLabel24: TIWLabel;
    OffsetEdit: TIWEdit;
    IWLabel11: TIWLabel;
    IWRegion5: TIWRegion;
    IWLabel9: TIWLabel;
    DecEdit: TIWEdit;
    IWLabel10: TIWLabel;
    ThouEdit: TIWEdit;
    IWLabel3: TIWLabel;
    FormEdit: TIWEdit;
    IWLabel2: TIWLabel;
    IWLabel1: TIWLabel;
    NewNameEdit: TIWEdit;
    PosLabel: TIWLabel;
    IWLabel5: TIWLabel;
    NewIDEdit: TIWEdit;
    userfooter1: Tuserfooter;
    IWRectangle2: TIWRectangle;
    IWRectangle1: TIWRectangle;
    FrameBareTitle1: TFrameBareTitle;
    EopBox: TIWCheckBox;
    IWSiLink1: TIWSiLink;
    Signbox: TIWCheckBox;
    IWLabel32: TIWLabel;
    SuppressEdit: TIWEdit;
    TimeoutBtn: TIWRadioButton;
    SmartCutBtn: TIWRadioButton;
    Extralabel: TIWLabel;
    ExtraEdit: TIWEdit;
    NormBtn: TIWRadioButton;
    SCTextLbl: TIWLabel;
    SCTrigEdit: TIWEdit;
    DocLinesLbl: TIWLabel;
    DocLinesEdit: TIWEdit;
    IncBox: TIWCheckBox;
    CutLbl: TIWLabel;
    IWLabel27: TIWLabel;
    ParamEdit: TIWEdit;
    IWLabel28: TIWLabel;
    DetectBtn: TIWRadioButton;
    SuppressBtn: TIWRadioButton;
    AssumeBtn: TIWRadioButton;
    TranIDLbl: TIWLabel;
    TranIDEdit: TIWEdit;
    ExclKeepAsynchBox: TIWCheckBox;
    IWLabel29: TIWLabel;
    errataedit: TIWEdit;
    PreserveBox: TIWCheckBox;
    IWLabel30: TIWLabel;
    ActiveWindowEdit: TIWEdit;
    DiscCombo: TIWComboBox;
    DiscLabel: TIWLabel;
    OtherWindowEdit: TIWEdit;
    IWLabel31: TIWLabel;
    procedure IWAppFormCreate(Sender: TObject);
    procedure PostButtonClick(Sender: TObject);
    procedure CancelBtnClick(Sender: TObject);
    procedure IWAppFormDestroy(Sender: TObject);
    procedure LayoutGridRenderCell(ACell: TIWGridCell; const ARow,
      AColumn: Integer);
    procedure DelBtnClick(Sender: TObject);
    procedure SmartCutBtnClick(Sender: TObject);
  private
    { Private declarations }
    function PostData : boolean;
  public
    { Public declarations }
    regexlist : TStringlist;
    labellist : TStringlist;
    displaylist : TStringList;
  end;

var
  FormPOS: TFormPOS;

implementation

uses datamod, db, servercontroller, IWInit, cfgtypes, possform, IWTypes, parse_utils;
{$R *.DFM}

const
  PolicyNames : array [0..1] of string = (
  'MAGNITUDE',
  'LITERAL' );

procedure GoPos;
begin
   RcDataModule.Trans.Active:=False;
   RcDataModule.Trans.StartTransaction;
   TIWAppForm(WebApplication.ActiveForm).Release;
   TFormPoss.Create(WebApplication).Show;
end;

function space(i: integer): string;
var
  s: string;
  k: integer;
begin
  s := '';
  for k := 1 to i do s := s + '&nbsp;';
  result := s;
end;

function defaultdisplay (s : string) : string;
begin
   if s='?' then result:='X '
   else if s='9' then result:='9 '
   else if s='N' then result:='1234_'
   else if s='I' then result:='1234_'
   else if s='F' then result:='1234.56_'
   else if s='T' then result:='XYZ_'
   else if s='*' then result:='Some Text Here '
   else result:='?????';
end;

function unquote (s : string) : string;
var
  ss : string;
  escaped : boolean;
  i : integer;
begin
  ss:='';
  escaped:=false;
  for i:=1 to length(s) do begin
     if escaped then begin
        escaped:=false;
     end else begin
        if s[i]='\' then escaped:=true else
           if (s[i]<>'"') and (s[i]<>'''') then begin
              if s[i]<>' ' then ss:=ss+s[i] else ss:=ss+'_'; // Show as required space
           end;
     end;
  end;
  result:=ss;
end;

procedure TFormPOS.IWAppFormCreate(Sender: TObject);
begin
  IWSiLink1.InitForm;
  //DelBtn.Confirmation:=SiLangLinked1.GetTextOrDefault ('DelConf');
  with RcDataModule.CurrentPosQuery do begin
      Close;
      Open;
      NewIDEdit.Text:=FieldByName('ID').AsString;
      NewNameEdit.Text:=FieldByName('NAME').AsString;
      ProdStartEdit.Text:=FieldByName('PRODSTART').AsString;
      ProdEndEdit.Text:=FieldByName('PRODEND').AsString;
      try
        ProdSepBox.ItemIndex:=FieldByName('PRODSEP').AsInteger;
      except
        ProdSepBox.ItemIndex:=-1;
      end;
      MerchEdit.Text:=FieldByName('MERTEXT').AsString;
      DupEdit.Text:=FieldByName('DUPTEXT').AsString;
      ExclEdit.Text:=FieldByName('EXCLTEXT').AsString;
      ExclKeepAsynchBox.checked:=FieldByName('EXCLKEEPASYNCH').AsString='1';
      PreserveBox.checked:=FieldByName('NATURALSPACE').AsString='1';
      ReqEdit.Text:=FieldByName('REQTEXT').AsString;
      DecEdit.Text:=FieldByName('DECIMALSEP').AsString;
      ThouEdit.Text:=FieldByName('THOUSEP').AsString;
      FormEdit.Text:=FieldByName('PRODLAYOUT').AsString;
      VoucherEdit.Text:=FieldByName('VOUCHERPOINT').AsString;
      LogoEdit.Text:=FieldByName('LOGOPOINT').AsString;
      NormBtn.Checked:=false;
      TimeoutBtn.Checked:=false;
      SmartCutBtn.Checked:=false;
      if FieldByName('TIMEOUTSENSE').AsString='1' then TimeoutBtn.checked:=true
      else if FieldByName('SMARTCUT').AsString='1' then SmartCutBtn.checked:=true
      else NormBtn.Checked:=true;
      EopBox.checked:=FieldByName('VOUCHERPOINTEOP').AsString='1';
      SignBox.checked:=FieldByName('FORCESIGNS').AsString='1';
      IncBox.checked:=FieldByName('INCREMENTAL').AsString='1';
      detectbtn.Checked:=(FieldByName('SUPPRESS').AsString='0') or FieldByName('SUPPRESS').IsNull;
      suppressbtn.Checked:=FieldByName('SUPPRESS').AsString='1';
      assumebtn.Checked:=FieldByName('SUPPRESS').AsString='2';
      VoidEdit.Text:=FieldByName('DOCVOID').AsString;
      CancelEdit.Text:=FieldByName('DOCCANCEL').AsString;
      StartEdit.Text:=FieldByName('DOCSTART').AsString;
      EndEdit.Text:=FieldByName('DOCEND').AsString;
      ScanPatternEdit.Text:=FieldByName('SCANPATTERN').AsString;
      ScanOutEdit.Text:=FieldByName('SCANOUT').AsString;
      ExceptEdit.Text:=FieldByName('DOCVOIDEXCEPT').AsString;
      OffsetEdit.Text:=FieldByName ('VOUCHEROFFSET').AsString;
      SuppressEdit.Text:=FieldByName ('DOCNOSUPPRESS').AsString;
      ExtraEdit.Text:=FieldByName ('EXTRATRIGS').AsString;
      ParamEdit.Text:=FieldByName ('PARAMS').AsString;
      SCTrigEdit.Text:=FieldByName ('SMARTCUTTRIG').AsString;
      DocLinesEdit.Text:=FieldByName('SMARTCUTMIN').AsString;
      TranIDEdit.Text:=FieldByName('TRANIDTRIG').AsString;
      ErrataEdit.Text:=FieldByName('PRNERRATA').AsString;
      ActiveWindowEdit.Text:=FieldByName('ACTIVEWINDOW').AsString;
      OtherWindowEdit.Text:=FieldByName('OTHERWINDOW').AsString;
      DiscCombo.ItemIndex:=0;
      if FieldByName('DISCPOLICY').AsString='LITERAL' then
         DiscCombo.ItemIndex:=1;
  end;
  SmartCutBtnClick(self);
end;

function TFormPOS.PostData : boolean;
var
  offset : integer;
  sup : integer;
begin
  result:=true;

  try
      if (length(SCTrigEdit.text)>0) and smartcutbtn.Checked then getcodestringex (SCTrigEdit.Text);
  except
      WebApplication.ShowMessage(SiLangLinked1.GetTextOrDefault('InvalidSCText'), smAlert);
      result:=false;
      exit;
  end;

  if (length(errataedit.text)>0) then begin
     if check_errata (errataEdit.Text)=false then begin
        WebApplication.ShowMessage(SiLangLinked1.GetTextOrDefault('InvalidErrata'), smAlert);
        result:=false;
        exit;
     end;
  end;
  errataedit.text:=clean_errata (errataedit.text);

  with RcDataModule.posUpdateQuery do begin
      ParamByName('OLD_ID').AsString:=
        RcDataModule.CurrentposQuery.FieldByName('ID').AsString;
      ParamByName('ID').AsString:=NewIDEdit.Text;
      ParamByName('PRODSTART').AsString:=singlespace(ProdStartEdit.Text);
      ParamByName('PRODEND').AsString:=singlespace(ProdEndEdit.Text);
      ParamByName('PRODSEP').AsInteger:=ProdSepBox.ItemIndex;
      ParamByName('REQTEXT').AsString:=singlespace(ReqEdit.Text);
      ParamByName('MERTEXT').AsString:=singlespace(MerchEdit.Text);
      ParamByName('DUPTEXT').AsString:=singlespace(DupEdit.Text);
      ParamByName('EXCLTEXT').AsString:=singlespace(ExclEdit.Text);
      ParamByName('EXCLKEEPASYNCH').AsInteger:=ord(ExclKeepAsynchBox.Checked);
      ParamByName('NATURALSPACE').AsInteger:=ord(PreserveBox.Checked);
      ParamByName('THOUSEP').AsString:=ThouEdit.Text;
      ParamByName('DECIMALSEP').AsString:=DecEdit.Text;
      ParamByName('OLD_COMPANY').AsString:=RcDataModule.CurrentposQuery.FieldByName('COMPANY').AsString;
      ParamByName('NAME').AsString:=NewNameEdit.Text;
      ParamByName('LOGOPOINT').AsString:=LogoEdit.Text;
      ParamByName('VOUCHERPOINT').AsString:=VoucherEdit.Text;
      ParamByName('VOUCHERPOINTEOP').AsString:=inttostr (ord(EOPBox.Checked));
      try
        offset:=strtoint (offsetEdit.text);
        if (offset<=0) or (offset>=10) then offset:=0;
      except
        offset:=0;
      end;
      ParamByName('VOUCHEROFFSET').AsInteger:=Offset;
      ParamByName('VOUCHERPOINT').AsString:=VoucherEdit.Text;
      ParamByName('TIMEOUTSENSE').AsInteger:=ord(TimeoutBtn.checked);
      ParamByName('SMARTCUT').AsInteger:=ord(SmartCutBtn.checked);
      ParamByName('SMARTCUTTRIG').AsString:=SCTrigEdit.Text;
      ParamByName('PRODLAYOUT').AsString:=formEdit.Text;
      ParamByName('DOCVOID').AsString:=VoidEdit.Text;
      ParamByName('DOCCANCEL').AsString:=CancelEdit.Text;
      ParamByName('DOCSTART').AsString:=StartEdit.Text;
      ParamByName('DOCEND').AsString:=EndEdit.Text;
      ParamByName('SCANPATTERN').AsString:=ScanPatternEdit.Text;
      ParamByName('SCANOUT').AsString:=ScanOutEdit.Text;
      ParamByName('DOCVOIDEXCEPT').AsString:=ExceptEdit.Text;
      ParamByName('FORCESIGNS').AsInteger:=ord(signbox.checked);
      ParamByName('DOCNOSUPPRESS').AsString:=SuppressEdit.Text;
      ParamByName('EXTRATRIGS').AsString:=ExtraEdit.Text;
      ParamByName('PARAMS').AsString:=ParamEdit.Text;
      ParamByName('TRANIDTRIG').AsString:=TranIDEdit.Text;
      ParamByName('PRNERRATA').AsString:=ErrataEdit.Text;
      ParamByName('ACTIVEWINDOW').AsString:=ActiveWindowEdit.Text;
      ParamByName('OTHERWINDOW').AsString:=OtherWindowEdit.Text;
      if DiscCombo.ItemIndex<0 then DiscCombo.ItemIndex:=0;
      ParamByName('DISCPOLICY').AsString:=policynames[DiscCombo.ItemIndex];
      try
        offset:=strtoint (DocLinesEdit.text);
        if (offset<=0) or (offset>=99) then offset:=10;
      except
        offset:=10;
      end;
      ParamByName('SMARTCUTMIN').AsInteger:=Offset;
      ParamByName('INCREMENTAL').AsString:=inttostr (ord(IncBox.Checked));
      sup:=0; // Detect by default.
      if SuppressBtn.Checked then sup:=1;
      if AssumeBtn.Checked then sup:=2;
      ParamByName('SUPPRESS').AsString:=inttostr(sup);
      ExecSQL;
  end;
end;

procedure TFormPOS.PostButtonClick(Sender: TObject);
var
  pname : string;
  id : integer;
  co : string;
begin
  try
    if not postdata then exit;
    id:=RcDataModule.posUpdateQuery.ParamByName('ID').asinteger;
    pname:='['+NewNameEdit.text+']';
    RcDataModule.posUpdateQuery.Transaction.Commit;
    try
        with RcDataModule do begin
          SQLEx.SQL.Clear;
          SQLEx.Transaction.Active:=false;
          SQLEx.Transaction.Active:=true;
          co:=UserSession.Company;
          SQLEx.SQL.Add('update POS set name=:NAME where REFPOSID=:ID and REFCOMPANY=:COMPANY');
          SQLEx.ParamByName ('ID').AsInteger:=id;
          SQLEx.ParamByName ('NAME').AsString:=pname;
          SQLEx.ParamByName ('COMPANY').AsString:=co;
          SQLEx.ExecQuery;
          SQLEx.Transaction.commit;
        end;
    except
    end;

    GoPos;
  except
    WebApplication.ShowMessage(userfooter1.silink_footer.GetTextOrDefault('DBError'));
  end;
end;

procedure TFormPOS.CancelBtnClick(Sender: TObject);
begin
  RcDataModule.CurrentPosQuery.Transaction.Active:=False;
  GoPos;
end;

procedure TFormPOS.IWAppFormDestroy(Sender: TObject);
begin
  regexlist.free;
  labellist.free;
  displaylist.free;
end;

procedure TFormPOS.LayoutGridRenderCell(ACell: TIWGridCell; const ARow,
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
    end;
  end;
end;

procedure TFormPOS.DelBtnClick(Sender: TObject);
begin
  with RcDataModule do begin
    posDeleteQuery.ParamByName('ID').AsInteger:=
      CurrentposQuery.FieldByName('ID').AsInteger;
    posDeleteQuery.ParamByName('COMPANY').AsInteger:=
      CurrentposQuery.FieldByName('COMPANY').AsInteger;
    posDeleteQuery.ExecSQL;
    posDeleteQuery.Transaction.Commit;
    GoPos;
  end;
end;

procedure TFormPOS.SmartCutBtnClick(Sender: TObject);
var
  viz : boolean;
begin
  viz:=smartcutbtn.checked;
  sctrigedit.Visible:=viz;
  incbox.visible:=viz;
  doclinesedit.visible:=viz;
  sctextlbl.visible:=viz;
  doclineslbl.visible:=viz;
end;

end.

