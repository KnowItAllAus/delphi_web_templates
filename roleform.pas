unit roleform;

interface

uses
  Classes, SysUtils, IWAppForm, IWApplication, IWColor, IWTypes, Controls,
  Forms, baretitle, IWHTMLControls, IWExtCtrls, Graphics, IWCompListbox,
  IWVCLBaseControl, IWBaseControl, IWBaseHTMLControl, IWControl,
  IWCompRectangle, IWVCLBaseContainer, IWContainer, IWHTMLContainer,
  IWRegion, langfooter, siComp, siLngLnk, IWSiLink, footer_nav, IWCompLabel,
  footer_user;

type
  Tsu_FormRole = class(TIWAppForm)
    FrameBareTitle1: TFrameBareTitle;
    IWRegion1: TIWRegion;
    BodyRegion: TIWRegion;
    IWRectangle2: TIWRectangle;
    IWRectangle1: TIWRectangle;
    PromoRegn: TIWRegion;
    IWImageFile1: TIWImageFile;
    DistribRegn: TIWRegion;
    IWImageFile2: TIWImageFile;
    InstallRegn: TIWRegion;
    IWImageFile3: TIWImageFile;
    AdminRegn: TIWRegion;
    AdminImg: TIWImageFile;
    silink: TsiLangLinked;
    langlink: TIWSiLink;
    CompanyLabel: TIWLabel;
    LastLoginLabel: TIWLabel;
    AccessLabel: TIWLabel;
    userfooter1: Tuserfooter;
    loginlanglink: TIWLink;
    ReportRegn: TIWRegion;
    IWImageFile4: TIWImageFile;
    IWRegion2: TIWRegion;
    DistribLnk: TIWLink;
    IWRegion3: TIWRegion;
    StatLnk: TIWLink;
    IWRegion4: TIWRegion;
    PromoLnk: TIWLink;
    IWRegion5: TIWRegion;
    AdminLnk: TIWLink;
    IWRegion6: TIWRegion;
    InstallLnk: TIWLink;
    procedure IWAppFormCreate(Sender: TObject);
    procedure IWLogoutClick(Sender: TObject);
    procedure PromoLinkClick(Sender: TObject);
    procedure IWAdminClick(Sender: TObject);
    procedure PwdLinkClick(Sender: TObject);
    procedure loginlanglinkClick(Sender: TObject);
    procedure StatLnkClick(Sender: TObject);
    procedure DistribLnkClick(Sender: TObject);
  public
  end;

procedure handle_nav (pageindex : integer);

implementation

uses IWInit,datamod,login, voucherForm, storesForm,
     sendForm, passwdForm, statform, possform, imagesForm, jnlForm,
     ServerController, grpForm, global, sysform, su_main,
     cfgtypes, jobs, distrib, distribstatusform, overviewform;

{$R *.dfm}


procedure Tsu_FormRole.IWAppFormCreate(Sender: TObject);

   procedure disable (link : TIWLink);
   begin
      link.OnClick:=nil;
      link.Font.Color:=$a0a0a0;
      link.OnClick:=nil;
      link.ScriptEvents.Values ['OnMouseOver']:='';
      link.ScriptEvents.Values ['OnMouseOut']:='';
   end;

begin
   langlink.InitForm;
   AdminLnk.Color:=clNone;
   PromoLnk.Color:=clNone;
   StatLnk.Color:=clNone;
   InstallLnk.Color:=clNone;
   DistribLnk.Color:=clNone;

   CompanyLabel.Caption:=usersession.CompanyName;
   if UserSession.LastAccess>0 then begin
     AccessLabel.Caption:=DateTimeToStr(UserSession.LastAccess);
   end else begin
     AccessLabel.Caption:='- - - - - - -';
   end;
   if (UserSession.privilege and PRIV_LANG)=0 then loginlanglink.Visible:=false;
   if (UserSession.UserCompany<>'0') and ((UserSession.privilege and PRIV_ADMIN) = 0)  then begin
      disable(AdminLnk);
   end;
   if (UserSession.UserCompany<>'0') and ((UserSession.privilege and PRIV_EDIT) = 0)  then begin
      disable(PromoLnk);
      //disable(DistribLnk);
   end;
   disable (InstallLnk);
   if UserSession.Company='0' then begin
      disable (DistribLnk);
      disable (PromoLnk);
      disable (StatLnk);
   end;
end;

procedure Tsu_FormRole.IWLogoutClick(Sender: TObject);
begin
   RcDataModule.Trans.Active:=false;
   WebApplication.TerminateAndRedirect (GetExitURL);
end;

procedure Tsu_FormRole.PromoLinkClick(Sender: TObject);
begin
   handle_nav (0);
end;

procedure Tsu_FormRole.IWAdminClick(Sender: TObject);
begin
  if (UserSession.UserCompany<>'0') and ((UserSession.privilege and PRIV_ADMIN) = 0)  then exit;
  handle_nav (3);
end;

procedure Tsu_FormRole.PwdLinkClick(Sender: TObject);
begin
  TIWAppForm(WebApplication.ActiveForm).Release;
  Tformpasswd.Create(WebApplication).Show;
end;

procedure Tsu_FormRole.loginlanglinkClick(Sender: TObject);
begin
  UserSession.LoginEdit:=1;
  TIWAppForm(WebApplication.ActiveForm).Release;
  Tform_login.Create(WebApplication).show;
end;

procedure Tsu_FormRole.StatLnkClick(Sender: TObject);
begin
  handle_nav (2);
end;

procedure Tsu_FormRole.DistribLnkClick(Sender: TObject);
begin
  handle_nav (1);
end;

procedure handle_nav (pageindex : integer);
begin
  if (pageindex>=0) then
  case pageindex of
    0: begin
      if (UserSession.Company='0') or ((usersession.privilege and PRIV_EDIT)=0) then exit;
      RcDataModule.Trans.Active:=False;
      RcDataModule.Trans.StartTransaction;
      TIWAppForm(WebApplication.ActiveForm).Release;
      TFormJobs.Create(WebApplication).Show;
    end;
    1: begin
      if (UserSession.Company='0') then exit;
      RcDataModule.Trans.Active:=false;
      TIWAppForm(WebApplication.ActiveForm).Release;
      if ((usersession.privilege and PRIV_EDIT)=0) then begin
         TFormDistribStatus.Create(WebApplication).show;
      end else begin
         Tformdistrib.Create(WebApplication).show;
      end;
    end;
    2: begin
      if UserSession.Company='0' then exit;
      RcDataModule.Trans.Active:=false;
      TIWAppForm(WebApplication.ActiveForm).Release;
      TformJnl.Create(WebApplication).show;
    end;
    3: begin
      if ((usersession.privilege and PRIV_ADMIN)=0) then exit;
      RcDataModule.Trans.Active:=false;
      TIWAppForm(WebApplication.ActiveForm).Release;
      TFormSys.Create(WebApplication).Show;
    end;
    4: begin
      if (UserSession.Company='0') then exit;
      RcDataModule.Trans.Active:=false;
      TIWAppForm(WebApplication.ActiveForm).Release;
      TFormOverview.Create(WebApplication).Show;
    end;
    5: begin
      if (UserSession.Company='0') or ((usersession.privilege and PRIV_EDIT)=0) then exit;
      RcDataModule.Trans.Active:=false;
      TIWAppForm(WebApplication.ActiveForm).Release;
      TFormSend.Create(WebApplication).Show;
    end;
    6: begin
      if (UserSession.Company='0') or ((usersession.privilege and PRIV_EDIT)=0) then exit;
      RcDataModule.Trans.Active:=false;
      TIWAppForm(WebApplication.ActiveForm).Release;
      TFormDistribStatus.Create(WebApplication).Show;
    end;
    7 : begin
    end;
    8 : begin
      RcDataModule.Trans.Active:=false;
      WebApplication.TerminateAndRedirect (GetExitURL);
    end;
    9 : begin
    end;
    else with UserSession.mru_list[pageindex-9] do begin
      gotoJob (id,name,rev,note);
    end;
  end;
end;

end.
