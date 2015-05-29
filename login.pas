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
  IWSiLink, IWBaseHTML40Component, IWHTML40Container;

type
  Tform_login = class(TIWAppForm)
    IWRegion1: TIWRegion;
    BodyRegion: TIWRegion;
    IWRectangle2: TIWRectangle;
    IWRectangle1: TIWRectangle;
    UserEdit: TIWEdit;
    PassEdit: TIWEdit;
    UserRect: TIWRectangle;
    PassRect: TIWRectangle;
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
    IWButton4: TIWButton;
    procedure LoginBtnClick(Sender: TObject);
    procedure IWAppFormDefaultAction(Sender: TObject);
    procedure IWAppFormCreate(Sender: TObject);
    procedure IWTimer1Timer(Sender: TObject);
    procedure langfooter1Click(Sender: TObject);
    procedure langcomboChange(Sender: TObject);
    function newtrandb (co_id : integer) : boolean;
    procedure IWButton4Click(Sender: TObject);
  public
    function findcompanyid (s : string) : integer;
  end;

implementation
{$R *.dfm}

uses
  ServerController, dialogs, datamod, sysutils, IWInit, global, su_main, RoleForm,
  textedit, textblockfrm;

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
   cos : TStringlist;
   user_id : integer;
   cobj : co_obj;
   admin : boolean;
   adminpriv : integer;
   lastco : integer;
   passhash : string;
begin
   passhash:=RcDataModule.gethash(passedit.Text);
   //showmessage ('hash='+s);
   try
      // Next form...
      with RCDataModule.SQLQry do begin
         SQL.Clear;
         SQL.Add('Select * from users where userid=:userid and pass=:pass');
         parambyname('userid').AsString:=UserEdit.text;
         parambyname('pass').AsString:=passhash;
         Open;
         if eof then begin
            raise Exception.Create ('Invalid Login');
         end else begin
           usersession.User:=UserEdit.Text;
           user_id:=FieldByName('ID').AsInteger;
           lastco:=-1;
           if not FieldByName('LASTCO').IsNull then
              lastco:=FieldByName('LASTCO').AsInteger;
           Close;

           SQL.Clear;
           SQL.Add('Select * from user_co join company on user_co.company=company.id where user_co.user_id='+inttostr(user_id)+' and company.id=0');
           Open;
           admin:=not eof;
           adminpriv:=FieldByName('PRIVILEGE').AsInteger;
           close;

           SQL.Clear;
           if admin then
             SQL.Add('Select * from company where company.enabled=1 order by name')
           else
             SQL.Add('Select * from user_co join company on user_co.company=company.id where user_co.user_id='+inttostr(user_id)+' and company.enabled=1 order by company.name');
           Open;
           UserSession.admin:=admin;
           try
               cos:=TStringlist.create;
               while not eof do begin
                 cobj:=co_obj.create;
                 if admin then begin
                   cobj.priv:=adminpriv;
                   cobj.co_id:=FieldByName('ID').AsInteger;
                 end else begin
                   cobj.co_id:=FieldByName('COMPANY').AsInteger;
                   cobj.priv:=FieldByName('PRIVILEGE').AsInteger
                 end;
                 cobj.new_journ:=FieldByName('TRANDBNEW').AsString='1';
                 cobj.strictrules:=FieldByName('STRICT').AsString='1';
                 try
                   cobj.time_offset:=FieldByName('TIMEOFFSET').AsInteger;
                 except
                   cobj.time_offset:=0;
                 end;
                 cos.addobject (FieldByName('NAME').AsString,cobj);
                 next;
               end;
               usersession.setcolist(cos);
               if (cos.count=0) then
                  raise Exception.Create ('Invalid Company');
               if (lastco<>-1) then usersession.selectco (lastco) else
                  usersession.selectco (co_obj(cos.objects[0]).co_id);
           finally
               cos.free;
           end;
         end;
      end;
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
   //IWSilink1.InitForm;
   PassEdit.Text:=UserSession.pwd;
   UserEdit.Text:=UserSession.User;
   //UserRect.Text:=silink.GetTextOrDefault('Username')+'&nbsp;';
   //PassRect.Text:=silink.GetTextOrDefault('Password')+'&nbsp;';
   if comparetext(titlelabel.caption,'login')=0 then begin
      titleimage.Visible:=true;
   end else begin
      titlelabel.Visible:=true;
   end;
   if UserSession.loginedit>0 then IWTimer1.Enabled:=true;
   //langcombo.Items.Assign(siLink.langdispatcher.LangNames);
   //langcombo.ItemIndex:=siLink.langdispatcher.ActiveLanguage-1;
end;

procedure Tform_login.IWTimer1Timer(Sender: TObject);
begin
   case USerSession.loginedit of
   1 : begin
         //IWSiLink1.DoLinkClick(Sender);
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
  //IWSilink1.InitForm;
  //CoRect.Text:=silink.GetTextOrDefault('Company')+'&nbsp;';
  //UserRect.Text:=silink.GetTextOrDefault('Username')+'&nbsp;';
  //PassRect.Text:=silink.GetTextOrDefault('Password')+'&nbsp;';
  titleimage.visible:=false;
  titlelabel.visible:=false;
  if comparetext(titlelabel.caption,'login')=0 then begin
     titleimage.Visible:=true;
  end else begin
     titlelabel.Visible:=true;
  end;
end;

procedure Tform_login.IWButton4Click(Sender: TObject);
begin
  TformTextBlockEdit.Create(WebApplication).Show;

end;

initialization
  Tform_login.SetAsMainForm;
end.
