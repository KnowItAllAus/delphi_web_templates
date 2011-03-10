unit selectlang;

interface

uses
  Classes, SysUtils, IWAppForm, IWApplication, IWColor, IWTypes,
  footer_user, IWCompLabel, Graphics, IWExtCtrls, siComp, siLngLnk,
  IWCompListbox, IWCompRectangle, IWVCLBaseControl, IWBaseControl,
  IWBaseHTMLControl, IWControl, IWHTMLControls, IWSiLink,
  IWVCLBaseContainer, IWContainer, IWHTMLContainer, IWRegion, Controls,
  Forms, baretitle, IWHTML40Container;

type
  referrer_class = class of TIWAppForm;

  TFormLanguage = class(TIWAppForm)
    FrameBareTitle1: TFrameBareTitle;
    IWRegion1: TIWRegion;
    IWSiLink1: TIWSiLink;
    BodyRegion: TIWRegion;
    IWRectangle2: TIWRectangle;
    IWRectangle1: TIWRectangle;
    langcombo: TIWComboBox;
    silink: TsiLangLinked;
    IWImage1: TIWImage;
    CompanyLabel: TIWLabel;
    userfooter1: Tuserfooter;
    procedure IWAppFormCreate(Sender: TObject);
    procedure langcomboChange(Sender: TObject);
    procedure userfooter1CancelClick(Sender: TObject);
  public
    referrer : referrer_class;
  end;

implementation

{$R *.dfm}

uses Datamod, ServerController;

procedure TFormLanguage.IWAppFormCreate(Sender: TObject);
begin
   iwsilink1.initform;
   langcombo.Items.Assign(siLink.langdispatcher.LangNames);
   langcombo.OnChange:=nil;
   langcombo.ItemIndex:=siLink.langdispatcher.ActiveLanguage-1;
   langcombo.OnChange:=langComboChange;
end;

procedure TFormLanguage.langcomboChange(Sender: TObject);
begin
  RcDatamodule.siLangDispatcher1.ActiveLanguage:=LangCombo.ItemIndex+1;
  TIWAppForm(WebApplication.ActiveForm).Release;
  referrer.Create(WebApplication).show;
end;

procedure TFormLanguage.userfooter1CancelClick(Sender: TObject);
begin
  TIWAppForm(WebApplication.ActiveForm).Release;
  referrer.Create(WebApplication).show;
end;

end.
