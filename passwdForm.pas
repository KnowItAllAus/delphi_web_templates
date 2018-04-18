unit passwdForm;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  IWCompButton, IWCompEdit, IWControl, IWCompLabel,
  IWExtCtrls, IWContainer, IWRegion, IWBaseControl,
  IWVCLBaseControl, IWVCLBaseContainer, IWBaseHTMLControl, IWAppForm,
  siComp, siLngLnk, IWHTMLControls, IWSiLink, IWCompRectangle,
  IWHTMLContainer, footer_user, baretitle, IWHTML40Container;

type
  TFormPasswd = class(TIWAppForm)
    FrameBareTitle1: TFrameBareTitle;
    userfooter1: Tuserfooter;
    IWRegion1: TIWRegion;
    IWRegion2: TIWRegion;
    IWLabel4: TIWLabel;
    IWSiLink1: TIWSiLink;
    IWLabel2: TIWLabel;
    siLangLinked1: TsiLangLinked;
    CurrentEdit: TIWEdit;
    IWLabel3: TIWLabel;
    PassEdit: TIWEdit;
    IWLabel1: TIWLabel;
    ConfEdit: TIWEdit;
    IWRectangle1: TIWRectangle;
    IWRectangle2: TIWRectangle;
    UpdateBtn: TIWButton;
    procedure UpdateBtnClick(Sender: TObject);
    procedure IWAppFormCreate(Sender: TObject);
    procedure userfooter1CancelClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormPasswd: TFormPasswd;

implementation

uses
  ServerController, datamod, IWInit, IWTypes, roleForm, BCrypt, IBQuery;

{$R *.DFM}

procedure TFormPasswd.UpdateBtnClick(Sender: TObject);
var
  Records : integer;
  bmatch : boolean;
  err : boolean;
  ib : TIBQuery;
  pw : string;
begin
  ib:=RcDataModule.UserQuery;
  ib.Transaction.Active:=false;
  ib.Transaction.Active:=true;
  ib.ParamByName ('USERID').AsString:= UserSession.User;
  ib.Open;
  records:=RcDataModule.UserQuery.RecordCount;
  pw:=ib.fieldbyname ('bpass').asstring;
  ib.Transaction.Active:=false;

  if Records<>1 then
     raise Exception.Create (SiLangLinked1.GetTextOrDefault('ErrorText'));
  try
    bmatch:=TBCrypt.CheckPassword(currentedit.text,pw,err);
  except
    bmatch:=false;
  end;

  if not bmatch then begin
    raise Exception.Create (SiLangLinked1.GetTextOrDefault('ErrorText'));
  end else if PassEdit.Text<>ConfEdit.Text then begin
    WebApplication.ShowMessage(SiLangLinked1.GetTextOrDefault('ConfirmText'), smAlert);
    PassEdit.Text:='';
    ConfEdit.Text:='';
  end else if length(PassEdit.Text)<6 then begin
    WebApplication.ShowMessage(SiLangLinked1.GetTextOrDefault('LengthText'), smAlert);
    PassEdit.Text:='';
    ConfEdit.Text:='';
  end else begin
    RcDataModule.Trans.Active:=False;
    RcDataModule.Trans.StartTransaction;
    RcDataModule.ChangePasswd.ParamByName('ID').AsString:=UserSession.User;
    RcDataModule.ChangePasswd.ParamByName('PASS').AsString:=RcDataModule.gethash(PassEdit.Text);
    RcDataModule.ChangePasswd.parambyname('bpass').AsString:=TBCrypt.HashPassword(passedit.Text, 10);
    RcDataModule.ChangePasswd.ExecSQL;
    RcDataModule.Trans.Commit;
    WebApplication.ShowMessage(SiLangLinked1.GetTextOrDefault('UpdatedText'), smAlert);
  end;
end;

procedure TFormPasswd.IWAppFormCreate(Sender: TObject);
begin
  IWSiLink1.InitForm;
  PassEdit.Text:='';
  ConfEdit.Text:='';
end;

procedure TFormPasswd.userfooter1CancelClick(Sender: TObject);
begin
   RcDataModule.Trans.Active:=False;
   TIWAppForm(WebApplication.ActiveForm).Release;
   // Create the next form
   Tsu_formrole.Create(WebApplication).Show;
end;

end.
