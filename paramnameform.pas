unit paramnameform;

interface

uses
  Classes, SysUtils, IWAppForm, IWApplication, IWColor, IWTypes, baretitle,
  Forms, footer_user, siComp, siLngLnk, IWCompEdit, IWCompLabel,
  IWCompRectangle, IWVCLBaseControl, IWBaseControl, IWBaseHTMLControl,
  IWControl, IWHTMLControls, IWSiLink, Controls, IWVCLBaseContainer,
  IWContainer, IWHTMLContainer, IWRegion, IWCompButton, IWHTML40Container;

type
  TFormParamnameEdit = class(TIWAppForm)
    IWRegion1: TIWRegion;
    IWSiLink1: TIWSiLink;
    BodyRegion: TIWRegion;
    IWRectangle2: TIWRectangle;
    IWRectangle1: TIWRectangle;
    JobLabel: TIWLabel;
    NameEdit: TIWEdit;
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

uses datamod, voucherform, ServerController, jobrev, grptmplform, edittmplform;

procedure TFormParamnameEdit.userfooter1Extra2Click(Sender: TObject);
begin
  try
    with RcDataModule do begin
      SQLQry.Transaction.Active:=false;
      SQLQry.Transaction.Active:=true;
      SQLQry.SQL.Clear;
      SQLQry.SQL.Add('update GROUPOBJHDR set NAME=:NAME where ID=:ID and COMPANY=:COMPANY');
      SQLQry.ParamByName ('ID').AsString:=RcDataModule.GetValue ('editparam','');
      SQLQry.ParamByName ('COMPANY').AsString:=UserSession.Company;
      SQLQry.ParamByName ('NAME').AsString:=NameEdit.Text;
      SQLQry.ExecSQL;
      SQLQry.Transaction.Commit;
    end;
  except
    RcDataModule.SQLQry.Transaction.Rollback;
    WebApplication.ShowMessage(userfooter1.silink_footer.GetTextOrDefault('DBError'));
  end;
  TIWAppForm(WebApplication.ActiveForm).Release;
  if (RcDataModule.GetValue ('JobInstance','N')='Y') then
      TFormEditTmpl.Create(WebApplication).Show
  else
      TformGrpTmpl.Create(WebApplication).Show;
end;

procedure TFormParamnameEdit.userfooter1CancelClick(Sender: TObject);
begin
   TIWAppForm(WebApplication.ActiveForm).Release;
   if (RcDataModule.GetValue ('JobInstance','N')='Y') then
      TFormEditTmpl.Create(WebApplication).Show
   else
      TformGrpTmpl.Create(WebApplication).Show;
end;

procedure TFormParamnameEdit.IWAppFormCreate(Sender: TObject);
begin
   DelBtn.Confirmation:=SiLangLinked1.GetTextOrDefault('Delete');
end;

procedure TFormParamnameEdit.DelBtnClick(Sender: TObject);
begin
  try
    with RcDataModule do begin
      SQLQry.Transaction.Active:=false;
      SQLQry.Transaction.Active:=true;
      SQLQry.SQL.Clear;
      SQLQry.SQL.Add('delete from GROUPOBJHDR where ID=:ID and COMPANY=:COMPANY');
      SQLQry.ParamByName ('ID').AsString:=RcDataModule.GetValue ('editparam','');
      SQLQry.ParamByName ('COMPANY').AsString:=UserSession.Company;
      SQLQry.ExecSQL;
      SQLQry.Transaction.Commit;
    end;
  except
    RcDataModule.SQLQry.Transaction.Rollback;
    WebApplication.ShowMessage(userfooter1.silink_footer.GetTextOrDefault('DBError'));
  end;
  TIWAppForm(WebApplication.ActiveForm).Release;
  if (RcDataModule.GetValue ('JobInstance','N')='Y') then
      TFormEditTmpl.Create(WebApplication).Show
  else
      TformGrpTmpl.Create(WebApplication).Show;
end;

end.
