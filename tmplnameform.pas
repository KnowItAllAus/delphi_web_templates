unit tmplnameform;

interface

uses
  Classes, SysUtils, IWAppForm, IWApplication, IWColor, IWTypes, baretitle,
  Forms, footer_user, siComp, siLngLnk, IWCompEdit, IWCompLabel,
  IWCompRectangle, IWVCLBaseControl, IWBaseControl, IWBaseHTMLControl,
  IWControl, IWHTMLControls, IWSiLink, Controls, IWVCLBaseContainer,
  IWContainer, IWHTMLContainer, IWRegion, IWCompButton;

type
  TFormTmplnameEdit = class(TIWAppForm)
    IWRegion1: TIWRegion;
    IWSiLink1: TIWSiLink;
    BodyRegion: TIWRegion;
    IWRectangle2: TIWRectangle;
    IWRectangle1: TIWRectangle;
    TmplLabel: TIWLabel;
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

uses datamod, voucherform, ServerController, jobrev, grptmplform;

procedure TFormTmplnameEdit.userfooter1Extra2Click(Sender: TObject);
begin
  try
    with RcDataModule do begin
      SQLEx.Transaction.Active:=false;
      SQLEx.Transaction.Active:=true;
      SQLEx.SQL.Clear;
      SQLEx.SQL.Add('update GROUPPARAMTMPL set TEMPLATENAME=:NAME where ID=:ID and COMPANY=:COMPANY');
      SQLEx.ParamByName ('ID').AsString:=RcDataModule.GetValue ('edittmplinstance','');
      SQLEx.ParamByName ('COMPANY').AsString:=UserSession.Company;
      SQLEx.ParamByName ('NAME').AsString:=NameEdit.Text;
      SQLEx.ExecQuery;
      SQLEx.Transaction.Commit;
    end;
  except
    RcDataModule.SQLEx.Transaction.Rollback;
    WebApplication.ShowMessage(userfooter1.silink_footer.GetTextOrDefault('DBError'));
  end;
  TIWAppForm(WebApplication.ActiveForm).Release;
  TformGrpTmpl.Create(WebApplication).Show;
end;

procedure TFormTmplnameEdit.userfooter1CancelClick(Sender: TObject);
begin
   TIWAppForm(WebApplication.ActiveForm).Release;
   TformGrpTmpl.Create(WebApplication).Show;
end;

procedure TFormTmplnameEdit.IWAppFormCreate(Sender: TObject);
begin
   DelBtn.Confirmation:=SiLangLinked1.GetTextOrDefault('Delete');
end;

procedure TFormTmplnameEdit.DelBtnClick(Sender: TObject);
begin
  try
    with RcDataModule do begin
      SQLEx.Transaction.Active:=false;
      SQLEx.Transaction.Active:=true;
      SQLEx.SQL.Clear;
      SQLEx.SQL.Add('delete from GROUPPARAMTMPL where ID=:ID and COMPANY=:COMPANY');
      SQLEx.ParamByName ('ID').AsString:=RcDataModule.GetValue ('edittmplinstance','');
      SQLEx.ParamByName ('COMPANY').AsString:=UserSession.Company;
      SQLEx.ExecQuery;
      SQLEx.Transaction.Commit;
    end;
  except
    RcDataModule.SQLEx.Transaction.Rollback;
    WebApplication.ShowMessage(userfooter1.silink_footer.GetTextOrDefault('DBError'));
  end;
  TIWAppForm(WebApplication.ActiveForm).Release;
  TformGrpTmpl.Create(WebApplication).Show;
end;

end.
