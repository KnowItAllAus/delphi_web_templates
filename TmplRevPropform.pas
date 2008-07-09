unit TmplRevPropform;

interface

uses
  Classes, SysUtils, IWAppForm, IWApplication, IWColor, IWTypes, baretitle,
  Forms, footer_user, siComp, siLngLnk, IWCompEdit, IWCompLabel,
  IWCompRectangle, IWVCLBaseControl, IWBaseControl, IWBaseHTMLControl,
  IWControl, IWHTMLControls, IWSiLink, Controls, IWVCLBaseContainer,
  IWContainer, IWHTMLContainer, IWRegion, IWCompButton;

type
  TFormTmplRevProp = class(TIWAppForm)
    IWRegion1: TIWRegion;
    IWSiLink1: TIWSiLink;
    BodyRegion: TIWRegion;
    IWRectangle2: TIWRectangle;
    IWRectangle1: TIWRectangle;
    JobLabel: TIWLabel;
    NoteEdit: TIWEdit;
    IWLabel3: TIWLabel;
    silanglinked1: TsiLangLinked;
    FrameBareTitle1: TFrameBareTitle;
    userfooter1: Tuserfooter;
    DelBtn: TIWButton;
    procedure userfooter1Extra2Click(Sender: TObject);
    procedure userfooter1CancelClick(Sender: TObject);
    procedure IWAppFormCreate(Sender: TObject);
    procedure DelBtnClick(Sender: TObject);
  public
  end;

implementation

{$R *.dfm}

uses datamod, voucherform, ServerController, jobrev, grpdtlform;

procedure TFormTmplRevProp.userfooter1Extra2Click(Sender: TObject);
begin
  try
    with RcDataModule do begin
      SQLEx.Transaction.Active:=false;
      SQLEx.Transaction.Active:=true;
      SQLEx.SQL.Clear;
      SQLEx.SQL.Add('update GROUPPARAMHDR set NOTE=:NOTE where ID=:ID and COMPANY=:COMPANY');
      SQLEx.ParamByName ('ID').AsString:=RcDataModule.GetValue ('edittmpl','');
      SQLEx.ParamByName ('COMPANY').AsString:=UserSession.Company;
      SQLEx.ParamByName ('NOTE').AsString:=NoteEdit.Text;
      SQLEx.ExecQuery;
      SQLEx.Transaction.Commit;
    end;
  except
    RcDataModule.SQLEx.Transaction.Rollback;
    WebApplication.ShowMessage(userfooter1.silink_footer.GetTextOrDefault('DBError'));
  end;
  TIWAppForm(WebApplication.ActiveForm).Release;
  TFormGrpDtl.Create(WebApplication).Show;
end;

procedure TFormTmplRevProp.userfooter1CancelClick(Sender: TObject);
begin
   TIWAppForm(WebApplication.ActiveForm).Release;
   TFormGrpDtl.Create(WebApplication).Show;
end;

procedure TFormTmplRevProp.IWAppFormCreate(Sender: TObject);
begin
   DelBtn.Confirmation:=SiLangLinked1.GetTextOrDefault('Delete');
end;

procedure TFormTmplRevProp.DelBtnClick(Sender: TObject);
begin
  try
    with RcDataModule do begin
      SQLEx.Transaction.Active:=false;
      SQLEx.Transaction.Active:=true;
      SQLEx.SQL.Clear;
      SQLEx.SQL.Add('delete from GROUPPARAMHDR where ID=:ID and COMPANY=:COMPANY');
      SQLEx.ParamByName ('ID').AsString:=RcDataModule.GetValue ('edittmpl','');
      SQLEx.ParamByName ('COMPANY').AsString:=UserSession.Company;
      SQLEx.ExecQuery;
      SQLEx.Transaction.Commit;
    end;
  except
    RcDataModule.SQLEx.Transaction.Rollback;
    WebApplication.ShowMessage(userfooter1.silink_footer.GetTextOrDefault('DBError'));
  end;
  TIWAppForm(WebApplication.ActiveForm).Release;
  TFormGrpDtl.Create(WebApplication).Show;
end;

end.
