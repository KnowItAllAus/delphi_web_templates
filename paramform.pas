unit paramform;

interface

uses
  Classes, SysUtils, IWAppForm, IWApplication, IWColor, IWTypes,
  footer_user, IWCompCheckbox, IWCompEdit, IWCompLabel, IWCompButton,
  IWGrids, IWCompRectangle, IWVCLBaseControl, IWBaseControl,
  IWBaseHTMLControl, IWControl, IWHTMLControls, IWSiLink,
  IWVCLBaseContainer, IWContainer, IWHTMLContainer, IWRegion, Controls,
  Forms, baretitle, siComp, siLngLnk;

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
    IWLabel5: TIWLabel;
    IWLabel13: TIWLabel;
    FromEdit: TIWEdit;
    ToEdit: TIWEdit;
    IWLabel14: TIWLabel;
    IWLabel17: TIWLabel;
    IWLabel18: TIWLabel;
    PeriodStartEdit: TIWEdit;
    PeriodEndEdit: TIWEdit;
    IWLabel19: TIWLabel;
    NewTrigEdit: TIWEdit;
    IWLabel8: TIWLabel;
    IWLabel1: TIWLabel;
    IWLabel2: TIWLabel;
    IWLabel4: TIWLabel;
    IWLabel6: TIWLabel;
    DaysEdit: TIWEdit;
    VStartedit: TIWEdit;
    VEndEdit: TIWEdit;
    IWLabel9: TIWLabel;
    IWLabel10: TIWLabel;
    IWLabel7: TIWLabel;
    siLangLinked1: TsiLangLinked;
    procedure userfooter1CancelClick(Sender: TObject);
    procedure IWAppFormCreate(Sender: TObject);
    procedure userfooter1Extra2Click(Sender: TObject);
  public
  end;

implementation

{$R *.dfm}

uses voucherForm, datamod, servercontroller;

procedure TParamForm.userfooter1CancelClick(Sender: TObject);
begin
   TIWAppForm(WebApplication.ActiveForm).Release;
   TFormVoucher.Create(WebApplication).Show;
end;

procedure TParamForm.IWAppFormCreate(Sender: TObject);
begin
  NewTrigEdit.Text:=RcDataModule.CurrentVoucherQuery.FieldByName ('TRIGFLD').AsString;
  NewTrigEdit.ReadOnly:=UserSession.ReadOnly;
  FromEdit.Text:=RcDataModule.CurrentVoucherQuery.FieldByName ('TIMESTARTFLD').AsString;
  FromEdit.ReadOnly:=UserSession.ReadOnly;
  ToEdit.Text:=RcDataModule.CurrentVoucherQuery.FieldByName ('TIMEENDFLD').AsString;
  ToEdit.ReadOnly:=UserSession.ReadOnly;
  VStartEdit.Text:=RcDataModule.CurrentVoucherQuery.FieldByName ('VALSTARTFLD').AsString;
  VStartEdit.ReadOnly:=UserSession.ReadOnly;
  VEndEdit.Text:=RcDataModule.CurrentVoucherQuery.FieldByName ('VALENDFLD').AsString;
  VEndEdit.ReadOnly:=UserSession.ReadOnly;
  PeriodStartEdit.Text:=RcDataModule.CurrentVoucherQuery.FieldByName ('PERIODSTARTFLD').AsString;
  PeriodStartEdit.ReadOnly:=UserSession.ReadOnly;
  PeriodEndEdit.Text:=RcDataModule.CurrentVoucherQuery.FieldByName ('PERIODENDFLD').AsString;
  PeriodEndEdit.ReadOnly:=UserSession.ReadOnly;
  DaysEdit.Text:=RcDataModule.CurrentVoucherQuery.FieldByName ('DAYSFLD').AsString;
  DaysEdit.ReadOnly:=UserSession.ReadOnly;
  UserFooter1.Extra2.enabled:=UserSession.Readonly=false;
end;

procedure TParamForm.userfooter1Extra2Click(Sender: TObject);
begin
  With RcDataModule do begin
      UpdateOverQuery.ParamByName ('TRIGFLD').AsString:=NewTrigEdit.Text;
      UpdateOverQuery.ParamByName ('TIMESTARTFLD').AsString:=FromEdit.Text;
      UpdateOverQuery.ParamByName ('TIMEENDFLD').AsString:=ToEdit.Text;
      UpdateOverQuery.ParamByName ('VALSTARTFLD').AsString:=VStartEdit.Text;
      UpdateOverQuery.ParamByName ('VALENDFLD').AsString:=VEndEdit.Text;
      UpdateOverQuery.ParamByName ('PERIODSTARTFLD').AsString:=PeriodStartEdit.Text;
      UpdateOverQuery.ParamByName ('PERIODENDFLD').AsString:=PeriodEndEdit.Text;
      UpdateOverQuery.ParamByName ('DAYSFLD').AsString:=DaysEdit.Text;
      UpdateOverQuery.ParamByName('ID').AsString:=CurrentVoucherQuery.FieldByName('ID').AsString;
      UpdateOverQuery.ParamByName('COMPANY').AsString:=CurrentVoucherQuery.FieldByName('COMPANY').AsString;
      try
         UpdateOverQuery.ExecSQL;
         UpdateOverQuery.Transaction.CommitRetaining;
      except
      end;
  end;
  TIWAppForm(WebApplication.ActiveForm).Release;
  TFormVoucher.Create(WebApplication).Show;
end;

end.
