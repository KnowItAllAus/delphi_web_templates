unit footer_user;

interface

uses
  SysUtils, Classes, Controls, Forms, IWApplication, siComp, siLngLnk,
  IWHTMLControls, IWExtCtrls, IWCompLabel, IWCompListbox, Graphics,
  IWSiLink, IWVCLBaseControl, IWBaseControl, IWBaseHTMLControl, IWControl,
  IWCompRectangle, IWVCLBaseContainer, IWContainer, IWHTMLContainer,
  IWRegion, IWCompButton;

type
  Tuserfooter = class(TFrame)
    IWRegion1: TIWRegion;
    IWRectangle4: TIWRectangle;
    IWRectangle5: TIWRectangle;
    IWImage1: TIWImage;
    IWRectangle6: TIWRectangle;
    IWRectangle1: TIWRectangle;
    UserLabel: TIWLabel;
    Cancel: TIWButton;
    Extra1: TIWButton;
    Extra2: TIWButton;
    fiwSiLink1: TIWSiLink;
    silink_footer: TsiLangLinked;
    navcombo: TIWComboBox;
    procedure IWRegion1Create(Sender: TObject);
    procedure IWImage1Click(Sender: TObject);
    procedure silink_footerChangeLanguage(Sender: TObject);
    procedure navcomboChange(Sender: TObject);
  private
    { Private declarations }
    initialised : boolean;
    function FindForm (obj : TComponent) : TComponent;
  public
    { Public declarations }
    procedure UpdateDetails;
  end;

implementation

uses Datamod, ServerController, IWInit, dialogs, selectlang, IWAppForm, Roleform;

{$R *.dfm}

procedure Tuserfooter.IWRegion1Create(Sender: TObject);
var
   i : integer;
   count : integer;
begin
   fiwsilink1.initform;
   if not initialised then begin
     userlabel.FriendlyName:=userLabel.Caption;
     Extra1.FriendlyName:=Extra1.Caption;
     Extra2.FriendlyName:=Extra2.Caption;
     Cancel.FriendlyName:=Cancel.Caption;
     initialised:=true;
   end;
   IWRectangle1.Left:=Cancel.Left - 5;
   if Extra1.Visible and (IWRectangle1.Left>Extra1.Left - 5) then IWRectangle1.Left:=Extra1.Left - 5;
   if Extra2.Visible and (IWRectangle1.Left>Extra2.Left - 5) then IWRectangle1.Left:=Extra2.Left - 5;
   IWRectangle6.Width:=IWRectangle1.Left - IWRectangle6.Left - 3;
   silink_footerChangeLanguage(nil);
   navcombo.Left:=IWRectangle6.left+3;
   navcombo.NoSelectionText:=silink_footer.GetTextOrDefault('navcomboselect');
   if not navcombo.Visible then userlabel.Left:=navcombo.Left;
   i:=1;
   count:=0;
   repeat
      if UserSession.mru_list[i].id<>'' then begin
         if count=0 then navcombo.Items.Add ('- - - - - - - -');
         inc (count);
         if UserSession.mru_list[i].note<>'' then
            navcombo.Items.Add(UserSession.mru_list[i].name+' - '+UserSession.mru_list[i].note)
         else
            navcombo.Items.Add(UserSession.mru_list[i].name);
      end;
      inc (i);
   until (i=MAX_MRU) or (UserSession.mru_list[i].id='');
end;


function TUserFooter.FindForm (obj : TComponent) : TComponent;
begin
   repeat
      obj:=obj.owner;
   until (obj=nil) or (obj is TIWAppForm);
   result:=obj;
end;

procedure Tuserfooter.IWImage1Click(Sender: TObject);
var
  langForm: TFormLanguage;
begin
  langForm := TFormLanguage.Create(WebApplication);
  langForm.referrer:=referrer_class(FindForm (IWImage1).Classtype);
  TIWAppForm(WebApplication.ActiveForm).Release;
  langForm.Show;
end;

procedure Tuserfooter.UpdateDetails;
begin
   userlabel.Caption:=UserSession.CompanyName+' - '+ silink_footer.GetTextOrDefault(UserLabel.FriendlyName)+' : '+UserSession.User;
end;

procedure Tuserfooter.silink_footerChangeLanguage(Sender: TObject);
begin
   if not initialised then begin
     userlabel.FriendlyName:=userLabel.Caption;
     Extra1.FriendlyName:=Extra1.Caption;
     Extra2.FriendlyName:=Extra2.Caption;
     Cancel.FriendlyName:=Cancel.Caption;
     initialised:=true;
   end;
   Extra1.Caption:=silink_footer.GetTextOrDefault(Extra1.FriendlyName);
   Extra2.Caption:=silink_footer.GetTextOrDefault(Extra2.FriendlyName);
   Cancel.Caption:=silink_footer.GetTextOrDefault(Cancel.FriendlyName);
   if Extra1.FriendlyName='Delete' then Extra1.Confirmation:=silink_footer.GetTextOrDefault('DeletePrompt');
   if Extra2.FriendlyName='Delete' then Extra2.Confirmation:=silink_footer.GetTextOrDefault('DeletePrompt');
   Updatedetails;
end;

procedure Tuserfooter.navcomboChange(Sender: TObject);
begin
   handle_nav (navcombo.ItemIndex);
   navcombo.ItemIndex:=-1;
end;

end.
