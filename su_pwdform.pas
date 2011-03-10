unit su_pwdform;

interface

uses
  Classes, SysUtils, IWAppForm, IWApplication, IWColor, IWTypes, Controls,
  Forms, IWCompEdit, IWCompLabel, IWVCLBaseControl,
  IWBaseControl, IWBaseHTMLControl, IWControl, IWCompButton, IWCompCheckbox,
  IWCompRectangle, IWVCLBaseContainer, IWContainer, IWHTMLContainer,
  IWRegion, footer_user, baretitle, IWHTMLControls, IWSiLink, siComp,
  siLngLnk, IWHTML40Container;

type
  Tsupwdform = class(TIWAppForm)
    FrameBareTitle1: TFrameBareTitle;
    userfooter1: Tuserfooter;
    IWRegion1: TIWRegion;
    IWRegion2: TIWRegion;
    IWLabel4: TIWLabel;
    IWLabel1: TIWLabel;
    IWLabel3: TIWLabel;
    PassEdit: TIWEdit;
    ConfEdit: TIWEdit;
    UpdateBtn: TIWButton;
    LangBox: TIWCheckBox;
    PrivUpdateBtn: TIWButton;
    CoLabel: TIWLabel;
    UserLabel: TIWLabel;
    IWRectangle2: TIWRectangle;
    IWRectangle1: TIWRectangle;
    AdminBox: TIWCheckBox;
    silink_footer: TsiLangLinked;
    IWSiLink1: TIWSiLink;
    LiveBox: TIWCheckBox;
    EditBox: TIWCheckBox;
    procedure UpdateBtnClick(Sender: TObject);
    procedure IWAppFormCreate(Sender: TObject);
    procedure IWCancelButtonClick(Sender: TObject);
    procedure IWDelButtonClick(Sender: TObject);
    procedure PrivUpdateBtnClick(Sender: TObject);
  public
    priv : integer;
    procedure setPriv (privilege : integer);
  end;

implementation

{$R *.dfm}
uses
  ServerController, datamod, IWInit, formCo, cfgtypes;


procedure Tsupwdform.UpdateBtnClick(Sender: TObject);
begin
  if PassEdit.Text<>ConfEdit.Text then begin
    WebApplication.ShowMessage('Password confirmation error. Please Re-enter.', smAlert);
    PassEdit.Text:='';
    ConfEdit.Text:='';
  end else if length(PassEdit.Text)<4 then begin
    WebApplication.ShowMessage('Password must be at least 4 characters. Please Re-enter.', smAlert);
    PassEdit.Text:='';
    ConfEdit.Text:='';
  end else try
    // Company and user id are set before moving to this form.
    RcDataModule.ChangePasswd.ParamByName('PASSWD').AsString:=PassEdit.Text;
    RcDataModule.ChangePasswd.ExecSQL;
    WebApplication.ShowMessage('Password updated', smAlert);
    TIWAppForm(WebApplication.ActiveForm).Release;
    Tsu_CoForm.Create (WebApplication).show;
    RcDataModule.Trans.CommitRetaining;
  except
    WebApplication.ShowMessage(userfooter1.silink_footer.GetTextOrDefault('DBError'));
  end;
end;

procedure Tsupwdform.IWAppFormCreate(Sender: TObject);
begin
  try
    UserLabel.Caption:='User : '+RcDataModule.ChangePasswd.ParamByName('ID').AsString;
  except
    on e : exception do begin
       UserLabel.Caption:='User: '+e.message;
    end;
  end;
  try
    CoLabel.Caption:='Company : '+RcDataModule.CoQuery.FieldByName('Name').AsString;
  except
    on e : exception do begin
       CoLabel.Caption:='User: '+e.message;
    end;
  end;
end;

procedure Tsupwdform.setPriv (privilege : integer);
begin
  priv:=privilege;
  langbox.checked:=(priv and PRIV_LANG)<>0;
  langbox.Visible:=(UserSession.UserCompany='0') and ((UserSession.privilege and PRIV_SUPER)<>0);
  adminbox.checked:=(priv and PRIV_ADMIN)<>0;
  livebox.checked:=(priv and PRIV_LIVE)<>0;
  editbox.checked:=(priv and PRIV_EDIT)<>0;
end;

procedure Tsupwdform.IWCancelButtonClick(Sender: TObject);
begin
    TIWAppForm(WebApplication.ActiveForm).Release;
    Tsu_CoForm.Create (WebApplication).show;
end;

procedure Tsupwdform.IWDelButtonClick(Sender: TObject);
begin
    with RcDataModule.suUserDeleteQuery do begin
      ParamByName('COMPANY').AsString:=RcDataModule.ChangePasswd.ParamByName('COMPANY').AsString;
      ParamByName('USERID').AsString:=RcDataModule.ChangePasswd.ParamByName('ID').AsString;
      ExecSQL;
      TIWAppForm(WebApplication.ActiveForm).Release;
      Tsu_CoForm.Create (WebApplication).show;
    end;
end;

procedure Tsupwdform.PrivUpdateBtnClick(Sender: TObject);
begin
    if langbox.checked then priv:=priv or PRIV_LANG else priv:=priv and not PRIV_LANG;
    if adminbox.checked then priv:=priv or PRIV_ADMIN else priv:=priv and not PRIV_ADMIN;
    if livebox.checked then priv:=priv or PRIV_LIVE else priv:=priv and not PRIV_LIVE;
    if editbox.checked then priv:=priv or PRIV_EDIT else priv:=priv and not PRIV_EDIT;
    with RcDataModule.suUserPrivQuery do begin
      ParamByName('COMPANY').AsString:=RcDataModule.ChangePasswd.ParamByName('COMPANY').AsString;
      ParamByName('USERID').AsString:=RcDataModule.ChangePasswd.ParamByName('ID').AsString;
      ParamByName('PRIVILEGE').AsInteger:=priv;
      ExecSQL;
      TIWAppForm(WebApplication.ActiveForm).Release;
      Tsu_CoForm.Create (WebApplication).show;
      Transaction.CommitRetaining;
    end;
end;

end.
