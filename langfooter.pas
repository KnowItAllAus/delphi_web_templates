unit langfooter;

interface

uses
  SysUtils, Classes, Controls, Forms,
  IWVCLBaseContainer, IWColor, IWContainer, IWRegion, IWCompRectangle,
  Graphics, IWExtCtrls, IWVCLBaseControl, IWBaseControl, IWBaseHTMLControl,
  IWControl, IWCompListbox, IWHTMLContainer, siComp, siLngLnk,
  IWHTMLControls, IWSiLink;

type
  Tlangfooter = class(TFrame)
    IWRegion1: TIWRegion;
    IWRectangle2: TIWRectangle;
    IWRectangle3: TIWRectangle;
    langcombo: TIWComboBox;
    IWSiLink1: TIWSiLink;
    IWImage1: TIWImage;
    silink_footer: TsiLangLinked;
    procedure IWFrameRegionCreate(Sender: TObject);
    procedure langComboChange(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

implementation

uses datamod;

{$R *.dfm}

procedure Tlangfooter.IWFrameRegionCreate(Sender: TObject);
begin
   iwsilink1.initform;
   langcombo.Items.Assign(siLink_footer.langdispatcher.LangNames);
   langcombo.ItemIndex:=siLink_footer.langdispatcher.ActiveLanguage-1;
end;

procedure Tlangfooter.langComboChange(Sender: TObject);
begin
  RcDatamodule.siLangDispatcher1.ActiveLanguage:=LangCombo.ItemIndex+1;
end;

end.