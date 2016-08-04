unit roleform;

interface

uses
  Classes, SysUtils, IWAppForm, IWApplication, IWColor, IWTypes, Controls,
  Forms, baretitle, IWHTMLControls, IWExtCtrls, Graphics, IWCompListbox,
  IWVCLBaseControl, IWBaseControl, IWBaseHTMLControl, IWControl,
  IWCompRectangle, IWVCLBaseContainer, IWContainer, IWHTMLContainer,
  IWRegion, langfooter, siComp, siLngLnk, IWSiLink, footer_nav, IWCompLabel,
  footer_user, IWHTML40Container;

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
    TestImg: TIWImageFile;
    AdminRegn: TIWRegion;
    AdminImg: TIWImageFile;
    silink: TsiLangLinked;
    langlink: TIWSiLink;
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
    TestLnk: TIWLink;
    CoBox: TIWComboBox;
    CoLabel: TIWLabel;
    procedure IWAppFormCreate(Sender: TObject);
    procedure IWLogoutClick(Sender: TObject);
    procedure PromoLinkClick(Sender: TObject);
    procedure IWAdminClick(Sender: TObject);
    procedure PwdLinkClick(Sender: TObject);
    procedure loginlanglinkClick(Sender: TObject);
    procedure StatLnkClick(Sender: TObject);
    procedure DistribLnkClick(Sender: TObject);
    procedure CoBoxChange(Sender: TObject);
    procedure TestLnkClick(Sender: TObject);
  public
  end;

procedure handle_nav (pageindex : integer);

implementation

uses IWInit,datamod,login, voucherForm, storesForm,
     sendForm, passwdForm, statform, possform, imagesForm, jnlForm,
     ServerController, grpForm, global, sysform, su_main,
     cfgtypes, jobs, distrib, distribstatusform, overviewform, formint;

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
   TestLnk.Color:=clNone;
   DistribLnk.Color:=clNone;

   CoLabel.Caption:=usersession.CompanyName;
   //if UserSession.LastAccess>0 then begin
   //  AccessLabel.Caption:=DateTimeToStr(UserSession.LastAccess);
   //end else begin
   //  AccessLabel.Caption:='- - - - - - -';
   //end;
   if (UserSession.privilege and PRIV_LANG)=0 then loginlanglink.Visible:=false;
   if (UserSession.UserCompany<>'0') and ((UserSession.privilege and PRIV_ADMIN) = 0)  then begin
      disable(AdminLnk);
   end;
   if (UserSession.UserCompany<>'0') and ((UserSession.privilege and PRIV_EDIT) = 0)  then begin
      disable(PromoLnk);
      //disable(DistribLnk);
   end;
   if (UserSession.privilege and PRIV_SUPER) = 0  then begin
      testimg.Visible:=false;
      testlnk.Visible:=false;
   end;

   //disable (InstallLnk);
   if UserSession.Company='0' then begin
      disable (DistribLnk);
      disable (PromoLnk);
      disable (StatLnk);
   end;

   CoBox.Items.Assign(UserSession.Companies_available);
   If CoBox.Items.Count<2 then CoBox.visible:=false;
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

procedure Tsu_FormRole.TestLnkClick(Sender: TObject);
begin
  if (UserSession.UserCompany<>'0') and ((UserSession.privilege and PRIV_ADMIN) = 0)  then exit;
  RcDataModule.Trans.Active:=false;
  TIWAppForm(WebApplication.ActiveForm).Release;
  Tintform.Create(WebApplication).show;
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
      if ((usersession.privilege and PRIV_EDIT)=0) or (UserSession.Company='0') then exit;
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
      TIWAppForm(WebApplication.ActiveForm).Release;
      Tsu_FormRole.Create(WebApplication).Show;
    end;
    8 : begin
    end;
    9 : begin
      RcDataModule.Trans.Active:=false;
      WebApplication.TerminateAndRedirect (GetExitURL);
    end;
    10 : begin
    end;
    else with UserSession.mru_list[pageindex-10] do begin
      gotoJob (id,name,rev,note);
    end;
  end;
end;

procedure Tsu_FormRole.CoBoxChange(Sender: TObject);
begin
  if CoBox.ItemIndex>=0 then begin
     usersession.selectCoIndex (CoBox.ItemIndex);
     CoBox.ItemIndex:=-1;
     CoLabel.Text:=UserSession.CompanyName;
     try
       with RcdataModule.SQLQry do begin
          Transaction.Active:=false;
          Transaction.Active:=true;
          SQL.Clear;
          SQL.Add ('update users set lastco='+Usersession.Company+' where userid='''+Usersession.User+'''');
          ExecSQL;
          Transaction.commit;
       end;
     except
     end;
     TIWAppForm(WebApplication.ActiveForm).Release;
     Tsu_FormRole.Create(WebApplication).Show;
  end;
(*   try
     co:=findcompanyid (coname);
     if aliasname<>coname then begin
        alias:=findcompanyid (aliasname);
        if alias<>0 then begin
           raise exception.create ('Not an admin login');
        end else begin
           alias:=0;
        end;
     end else begin
        alias:=co;
     end;
   except
     CoEdit.Text:='';
     exit;
   end;

   RcDataModule.VoucherQuery.Close;
   RcDataModule.UserQuery.Close;
   RcDataModule.Trans.Active:=False;
   RcDataModule.Trans.StartTransaction;
   try
      RcDataModule.UserQuery.ParamByName ('COMPANY').AsInteger:=alias;
      RcDataModule.UserQuery.ParamByName ('USERID').AsString:=UserEdit.Text;
      RcDataModule.UserQuery.ParamByName ('PASSWD').AsString:=PassEdit.Text;
      RcDataModule.UserQuery.Open;
      if RcDataModule.UserQuery.RecordCount<>1 then raise Exception.Create ('Invalid Login');
      with RcDataModule.CoQuery do begin
        Close;
        ParamByName('ID').AsString:=inttostr (co);
        Open;
        try
          UserSession.SetPriv (RcDataModule.UserQuery.FieldByName ('PRIVILEGE').AsInteger);
        except
          UserSession.SetPriv (0);
        end;
        UserSession.CompanyName:=FieldByName('NAME').AsString;
        if FieldByName('LASTACCESS').AsString ='' then begin
           UserSession.LastAccess:=0;
        end else begin
           UserSession.LastAccess:=FieldByName('LASTACCESS').AsDateTime;
        end;
        if FieldByName('LASTCOMMS').AsString='' then begin
           UserSession.LastComms:=0;
        end else begin
           UserSession.LastComms:=FieldByName('LASTCOMMS').AsDateTime;
        end;
        try
           mins:=FieldByName('TIMEOFFSET').AsInteger;
           mins:=mins/1440;
           UserSession.TimeOffset:=mins;
        except
           UserSession.Timeoffset:=0;
        end;
        UserSession.timezonename:=FieldByName('TIMEZONE').AsString;
        UserSession.strict:=FieldByName('STRICT').AsString='1';
      end;
      if RcDataModule.CoQuery.FieldByName('ID').AsString='' then raise Exception.Create ('Invalid Company');

      RcDataModule.CoQuery.Close;
      RcDataModule.StampSession.ParamByName('TIME').Value:=now;
      RcDataModule.StampSession.ParamByName('ID').AsString:=inttostr(co);
      RcDataModule.StampSession.ExecSQL;
      UserSession.Company:=inttostr(co);
      UserSession.UserCompany:=inttostr(alias);
      UserSession.User:=UserEdit.Text;
      RcDataModule.Trans.Commit;

      RcDataModule.SelectTransDB(newtrandb(co));
   except
   end; *)
end;

end.
