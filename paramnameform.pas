unit paramnameform;

interface

uses
  Classes, SysUtils, IWAppForm, IWApplication, IWColor, IWTypes, baretitle,
  Forms, footer_user, siComp, siLngLnk, IWCompEdit, IWCompLabel,
  IWCompRectangle, IWVCLBaseControl, IWBaseControl, IWBaseHTMLControl,
  IWControl, IWHTMLControls, IWSiLink, Controls, IWVCLBaseContainer,
  IWContainer, IWHTMLContainer, IWRegion, IWCompButton;

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

uses datamod, voucherform, ServerController, jobrev, grptmplform;

procedure TFormParamnameEdit.userfooter1Extra2Click(Sender: TObject);
begin
  try
    with RcDataModule do begin
      SQLEx.Transaction.Active:=false;
      SQLEx.Transaction.Active:=true;
      SQLEx.SQL.Clear;
      SQLEx.SQL.Add('update GROUPOBJHDR set NAME=:NAME where ID=:ID and COMPANY=:COMPANY');
      SQLEx.ParamByName ('ID').AsString:=RcDataModule.GetValue ('editparam','');
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

procedure TFormParamnameEdit.userfooter1CancelClick(Sender: TObject);
begin
   TIWAppForm(WebApplication.ActiveForm).Release;
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
      SQLEx.Transaction.Active:=false;
      SQLEx.Transaction.Active:=true;
      SQLEx.SQL.Clear;
      SQLEx.SQL.Add('delete from GROUPOBJHDR where ID=:ID and COMPANY=:COMPANY');
      SQLEx.ParamByName ('ID').AsString:=RcDataModule.GetValue ('editparam','');
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
