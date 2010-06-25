unit login;
{PUBDIST}

interface

uses
  IWAppForm, IWApplication, IWTypes, Classes, Controls, IWControl,
  IWCompButton, IWHTMLControls, IWCompLabel, IWCompEdit, Graphics,
  IWExtCtrls, IWCompRectangle, Forms, IWContainer, IWRegion,
  IWBaseControl, IWVCLBaseControl, IWVCLBaseContainer, IWBaseHTMLControl,
  IWBaseComponent, IWBaseHTMLComponent, siComp, siLngLnk,
  IWCompListbox, IWHTMLContainer, baretitle, langfooter,
  IWSiLink;

type
  Tform_login = class(TIWAppForm)
    silink: TsiLangLinked;
    IWRegion1: TIWRegion;
    BodyRegion: TIWRegion;
    IWRectangle2: TIWRectangle;
    IWRectangle1: TIWRectangle;
    CoEdit: TIWEdit;
    UserEdit: TIWEdit;
    PassEdit: TIWEdit;
    CoRect: TIWRectangle;
    UserRect: TIWRectangle;
    PassRect: TIWRectangle;
    IWSiLink1: TIWSiLink;
    IWTimer1: TIWTimer;
    LoginBtn: TIWButton;
    IWRegion2: TIWRegion;
    IWRectangle3: TIWRectangle;
    IWRectangle4: TIWRectangle;
    langcombo: TIWComboBox;
    IWImage1: TIWImage;
    IWButton1: TIWButton;
    IWButton2: TIWButton;
    IWButton3: TIWButton;
    IWRegion3: TIWRegion;
    IWRectangle5: TIWRectangle;
    IWRectangle6: TIWRectangle;
    TitleLabel: TIWLabel;
    IWImageFile1: TIWImageFile;
    IWImageFile3: TIWImageFile;
    titleimage: TIWImageFile;
    procedure LoginBtnClick(Sender: TObject);
    procedure IWAppFormDefaultAction(Sender: TObject);
    procedure IWAppFormCreate(Sender: TObject);
    procedure IWTimer1Timer(Sender: TObject);
    procedure langfooter1Click(Sender: TObject);
    procedure langcomboChange(Sender: TObject);
    function newtrandb (co_id : integer) : boolean;
  public
    function findcompanyid (s : string) : integer;
  end;

implementation
{$R *.dfm}

uses
  ServerController, dialogs, datamod, sysutils, IWInit, global, su_main, RoleForm;

function Tform_login.findcompanyid (s : string) : integer;
begin
  result:=-1;
  try
    result:=strtoint (s);
    exit;
  except
    with rcdatamodule.coAliasQuery do begin
      Transaction.Active:=true;
      ParamByName ('ALIASNAME').asstring:= AnsiLowerCase(s);
      Open;
      if not eof then result:=fieldbyname ('ID').AsInteger;
      Transaction.Active:=false;
    end;
  end;
end;

function Tform_login.newtrandb (co_id : integer) : boolean;
begin
    with rcdatamodule.CoQuery do begin
      Transaction.Active:=true;
      ParamByName ('ID').asinteger:= co_id;
      Open;
      if not eof then result:=fieldbyname ('TRANDBNEW').AsString='1';
      Transaction.Active:=false;
    end;
end;

procedure Tform_login.LoginBtnClick(Sender: TObject);
var
   co : integer;
   alias : integer;
   s : string;
   mins : double;
   coname, aliasname : string;
begin
   s:=coedit.text;
   if (pos(':',s)>0) then begin
      try
        coname:=copy(s,pos (':',s)+1,length(s));
        aliasname:=copy(s,1,pos (':',s)-1);
      except
        CoEdit.Text:='';
        exit;
      end;
   end else begin
       try
          coname:=CoEdit.Text;
          aliasname:=Coname;
       except
          CoEdit.Text:='';
          exit;
       end;
   end;

   try
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

      // Next form...
      TIWAppForm(WebApplication.ActiveForm).Release;
      Tsu_FormRole.Create(WebApplication).Show;
   except
      on e : exception do begin
         WebApplication.ShowMessage(e.message, smAlert);
         RcDataModule.Trans.Active:=False;
      end;
   end;
end;

procedure Tform_login.IWAppFormDefaultAction(Sender: TObject);
begin
   LoginBtnClick(sender);
end;

procedure Tform_login.IWAppFormCreate(Sender: TObject);
begin
   IWSilink1.InitForm;
   CoEdit.Text:=UserSession.Company;
   PassEdit.Text:=UserSession.pwd;
   UserEdit.Text:=UserSession.User;
   CoRect.Text:=silink.GetTextOrDefault('Company')+'&nbsp;';
   UserRect.Text:=silink.GetTextOrDefault('Username')+'&nbsp;';
   PassRect.Text:=silink.GetTextOrDefault('Password')+'&nbsp;';
   if comparetext(titlelabel.caption,'login')=0 then begin
      titleimage.Visible:=true;
   end else begin
      titlelabel.Visible:=true;
   end;
   if UserSession.loginedit>0 then IWTimer1.Enabled:=true;
   langcombo.Items.Assign(siLink.langdispatcher.LangNames);
   langcombo.ItemIndex:=siLink.langdispatcher.ActiveLanguage-1;
end;

procedure Tform_login.IWTimer1Timer(Sender: TObject);
begin
   case USerSession.loginedit of
   1 : begin
         IWSiLink1.DoLinkClick(Sender);
         UserSession.loginedit:=2;
       end;
   2 : begin
         UserSession.loginedit:=0;
         TIWAppForm(WebApplication.ActiveForm).Release;
         Tsu_FormRole.Create(WebApplication).show;
       end;
   end;
end;

procedure Tform_login.langfooter1Click(Sender: TObject);
begin
//   LoginBtnClick(sender);
end;

procedure Tform_login.langcomboChange(Sender: TObject);
begin
  RcDatamodule.siLangDispatcher1.ActiveLanguage:=LangCombo.ItemIndex+1;
  IWSilink1.InitForm;
  CoRect.Text:=silink.GetTextOrDefault('Company')+'&nbsp;';
  UserRect.Text:=silink.GetTextOrDefault('Username')+'&nbsp;';
  PassRect.Text:=silink.GetTextOrDefault('Password')+'&nbsp;';
  titleimage.visible:=false;
  titlelabel.visible:=false;
  if comparetext(titlelabel.caption,'login')=0 then begin
     titleimage.Visible:=true;
  end else begin
     titlelabel.Visible:=true;
  end;
end;

initialization
  Tform_login.SetAsMainForm;
end.
