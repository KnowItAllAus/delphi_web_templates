unit paramform;

interface

uses
  Classes, SysUtils, IWAppForm, IWApplication, IWColor, IWTypes,
  footer_user, IWCompCheckbox, IWCompEdit, IWCompLabel, IWCompButton,
  IWGrids, IWCompRectangle, IWVCLBaseControl, IWBaseControl,
  IWBaseHTMLControl, IWControl, IWHTMLControls, IWSiLink,
  IWVCLBaseContainer, IWContainer, IWHTMLContainer, IWRegion, Controls,
  Forms, baretitle, siComp, siLngLnk, IWCompListbox;

type
  TParamForm = class(TIWAppForm)
    FrameBareTitle1: TFrameBareTitle;
    IWRegion1: TIWRegion;
    IWSiLink1: TIWSiLink;
    BodyRegion: TIWRegion;
    IWRectangle2: TIWRectangle;
    IWRectangle1: TIWRectangle;
    JobLabel: TIWLabel;
    IWLabel3: TIWLabel;
    templatelbl: TIWLabel;
    userfooter1: Tuserfooter;
    ActiveHLbl: TIWLabel;
    ActiveHLblFrom: TIWLabel;
    FromEdit: TIWEdit;
    ToEdit: TIWEdit;
    ActiveHLblTo: TIWLabel;
    ActivePeriodLbl: TIWLabel;
    ActivePeriodLblFrom: TIWLabel;
    PeriodStartEdit: TIWEdit;
    PeriodEndEdit: TIWEdit;
    ActivePeriodLblTo: TIWLabel;
    IWLabel8: TIWLabel;
    TrigLabel: TIWLabel;
    IWLabel2: TIWLabel;
    DaysLbl: TIWLabel;
    IWLabel6: TIWLabel;
    DaysEdit: TIWEdit;
    VStartedit: TIWEdit;
    VEndEdit: TIWEdit;
    ValueLblFrom: TIWLabel;
    ValueLblTo: TIWLabel;
    ValueLbl: TIWLabel;
    siLangLinked1: TsiLangLinked;
    NewTrigEdit: TIWEdit;
    IWButton1: TIWButton;
    IWButton2: TIWButton;
    IWButton3: TIWButton;
    IWButton4: TIWButton;
    IWButton5: TIWButton;
    IWButton6: TIWButton;
    IWButton7: TIWButton;
    IWButton8: TIWButton;
    EditRegion: TIWRegion;
    FieldCombo: TIWComboBox;
    IWLabel11: TIWLabel;
    ModBtn: TIWButton;
    ParamName: TIWLabel;
    CancelBtn: TIWButton;
    procedure userfooter1CancelClick(Sender: TObject);
    procedure IWAppFormCreate(Sender: TObject);
    procedure IWButton1Click(Sender: TObject);
    procedure CancelBtnClick(Sender: TObject);
    procedure ModBtnClick(Sender: TObject);
  private
    EditLabels : array [1..8] of string;
    EditType : array [1..8] of string;
    EditFields : array [1..8] of TIWEdit;
    selectedfield : integer;
    procedure save;
  public
  end;

implementation

{$R *.dfm}

uses voucherForm, datamod, servercontroller, graphics;

procedure TParamForm.userfooter1CancelClick(Sender: TObject);
begin
   TIWAppForm(WebApplication.ActiveForm).Release;
   TFormVoucher.Create(WebApplication).Show;
end;

procedure TParamForm.IWAppFormCreate(Sender: TObject);
begin
  IWSilink1.InitForm;
  NewTrigEdit.Text:=RcDataModule.CurrentVoucherQuery.FieldByName ('TRIGFLD').AsString;
  NewTrigEdit.ReadOnly:=UserSession.ReadOnly;
  EditLabels[1]:=TrigLabel.Caption;
  EditFields[1]:=NewTrigEdit;
  EditType[1]:='Text';
  FromEdit.Text:=RcDataModule.CurrentVoucherQuery.FieldByName ('TIMESTARTFLD').AsString;
  FromEdit.ReadOnly:=UserSession.ReadOnly;
  EditLabels[3]:=ActiveHLbl.Caption+' - '+ActiveHLblFrom.Caption;
  EditFields[3]:=FromEdit;
  EditType[3]:='TimeOfDay';
  ToEdit.Text:=RcDataModule.CurrentVoucherQuery.FieldByName ('TIMEENDFLD').AsString;
  ToEdit.ReadOnly:=UserSession.ReadOnly;
  EditLabels[4]:=ActiveHLbl.Caption+' - '+ActiveHLblTo.Caption;
  EditFields[4]:=ToEdit;
  EditType[4]:='TimeOfDay';
  VStartEdit.Text:=RcDataModule.CurrentVoucherQuery.FieldByName ('VALSTARTFLD').AsString;
  VStartEdit.ReadOnly:=UserSession.ReadOnly;
  EditLabels[7]:=ValueLbl.Caption+' - '+ValueLblFrom.Caption;
  EditFields[7]:=VStartEdit;
  EditType[7]:='Integer';
  VEndEdit.Text:=RcDataModule.CurrentVoucherQuery.FieldByName ('VALENDFLD').AsString;
  VEndEdit.ReadOnly:=UserSession.ReadOnly;
  EditLabels[8]:=ValueLbl.Caption+' - '+ValueLblTo.Caption;
  EditFields[8]:=VEndEdit;
  EditType[8]:='Integer';
  PeriodStartEdit.Text:=RcDataModule.CurrentVoucherQuery.FieldByName ('PERIODSTARTFLD').AsString;
  PeriodStartEdit.ReadOnly:=UserSession.ReadOnly;
  EditLabels[5]:=ActivePeriodLbl.Caption+' - '+ActivePeriodLblFrom.Caption;
  EditFields[5]:=PeriodStartEdit;
  EditType[5]:='Date';
  PeriodEndEdit.Text:=RcDataModule.CurrentVoucherQuery.FieldByName ('PERIODENDFLD').AsString;
  PeriodEndEdit.ReadOnly:=UserSession.ReadOnly;
  EditLabels[6]:=ActivePeriodLbl.Caption+' - '+ActivePeriodLblTo.Caption;
  EditFields[6]:=PeriodEndEdit;
  EditType[6]:='Date';
  DaysEdit.Text:=RcDataModule.CurrentVoucherQuery.FieldByName ('DAYSFLD').AsString;
  DaysEdit.ReadOnly:=UserSession.ReadOnly;
  EditLabels[2]:=DaysLbl.Caption;
  EditFields[2]:=DaysEdit;
  EditType[2]:='Integer';
  UserFooter1.Extra2.enabled:=UserSession.Readonly=false;
  with RcDataModule.SQLQry do begin
     Transaction.active:=false;
     SQL.Clear;
     SQL.Add ('select * from JOBPARAMS where COMPANY=:COMPANY and JOBID=:JOBID and PARAMTYPE<>"Object"');
     ParamByName ('COMPANY').AsString:=UserSession.Company;
     ParamByName ('JOBID').AsString:=RcDataModule.GetValue('EditJob','');
     Open;
     while not eof do begin
        FieldCombo.Items.Add (FieldByName('Paramname').AsString);
        next;
     end;
     Close;
     Transaction.active:=false;
  end;
end;

procedure TParamForm.IWButton1Click(Sender: TObject);
begin
  if SelectedField>0 then
     EditFields[SelectedField].BGColor:=clLtGray;
  EditRegion.Visible:=true;
  SelectedField:=TIWButton(Sender).Tag;
  ParamName.Caption:=EditLabels[SelectedField];
  EditFields[SelectedField].BGColor:=clYellow;
end;

procedure TParamForm.CancelBtnClick(Sender: TObject);
begin
  EditRegion.Visible:=false;
  EditFields[SelectedField].BGColor:=clSilver;
  FieldCombo.ItemIndex:=0;
end;

procedure TParamForm.ModBtnClick(Sender: TObject);
begin
  if fieldcombo.itemindex>0 then begin
      EditFields[SelectedField].Text:=fieldcombo.Items.Strings[fieldcombo.itemindex];
  end else begin
      EditFields[SelectedField].Text:='';
  end;
  Save;
  EditFields[SelectedField].BGColor:=clSilver;
  EditRegion.Visible:=false;
  FieldCombo.ItemIndex:=0;
end;

procedure TParamForm.Save;
begin
  with rcdatamodule do begin
      UpdateOverQuery.Transaction.Active:=true;
      UpdateOverQuery.ParamByName ('TRIGFLD').AsString:=NewTrigEdit.Text;
      UpdateOverQuery.ParamByName ('TIMESTARTFLD').AsString:=FromEdit.Text;
      UpdateOverQuery.ParamByName ('TIMEENDFLD').AsString:=ToEdit.Text;
      UpdateOverQuery.ParamByName ('VALSTARTFLD').AsString:=VStartEdit.Text;
      UpdateOverQuery.ParamByName ('VALENDFLD').AsString:=VEndEdit.Text;
      UpdateOverQuery.ParamByName ('PERIODSTARTFLD').AsString:=PeriodStartEdit.Text;
      UpdateOverQuery.ParamByName ('PERIODENDFLD').AsString:=PeriodEndEdit.Text;
      UpdateOverQuery.ParamByName ('DAYSFLD').AsString:=DaysEdit.Text;
      UpdateOverQuery.ParamByName ('ID').AsString:=RcDataModule.GetValue('EditVoucherId','');
      UpdateOverQuery.ParamByName ('COMPANY').AsString:=UserSession.Company;
      try
         UpdateOverQuery.ExecSQL;
         UpdateOverQuery.Transaction.Commit;
      except
      end;
      UpdateOverQuery.Transaction.Active:=false;
  end;
end;

end.
