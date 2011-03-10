unit footer_nav;

interface

uses
  SysUtils, Classes, Controls, Forms,
  IWVCLBaseContainer, IWColor, IWContainer, IWRegion, IWCompRectangle,
  IWVCLBaseControl, IWBaseControl, IWBaseHTMLControl, IWControl,
  IWHTMLControls, IWHTMLContainer, Graphics, IWExtCtrls, IWCompListbox,
  IWHTML40Container;

type
  TNavFooter = class(TFrame)
    IWFrameRegion: TIWRegion;
    IWRegion7: TIWRegion;
    IWLink7: TIWLink;
    IWRegion8: TIWRegion;
    IWLink8: TIWLink;
    IWRegion9: TIWRegion;
    IWLink9: TIWLink;
    IWRegion5: TIWRegion;
    langCombo: TIWComboBox;
    IWImage1: TIWImage;
    IWRegion6: TIWRegion;
    IWLink6: TIWLink;
    IWRectangle3: TIWRectangle;
    IWRectangle1: TIWRectangle;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

implementation

{$R *.dfm}

end.