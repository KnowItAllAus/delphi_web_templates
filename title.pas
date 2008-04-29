unit title;

interface

uses
  SysUtils, Classes, Controls, Forms,
  IWVCLBaseContainer, IWColor, IWContainer, IWRegion, IWHTMLContainer,
  IWVCLBaseControl, IWBaseControl, IWBaseHTMLControl, IWControl, IWExtCtrls,
  IWHTMLControls, IWCompRectangle, IWCompButton;

type
  TFrameTitle = class(TFrame)
    IWFrameRegion: TIWRegion;
    IWImageFile1: TIWImageFile;
    IWImageFile2: TIWImageFile;
    IWImageFile3: TIWImageFile;
    IWRectangle1: TIWRectangle;
    IWRectangle2: TIWRectangle;
    IWRegion1: TIWRegion;
    HomeLink: TIWLink;
    PromoReg: TIWRegion;
    PromoLink: TIWLink;
    IWRegion3: TIWRegion;
    IWLink2: TIWLink;
    IWRegion4: TIWRegion;
    IWLink3: TIWLink;
    IWRectangle3: TIWRectangle;
    procedure HomeLinkClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

implementation

{$R *.dfm}

procedure TFrameTitle.HomeLinkClick(Sender: TObject);
begin
   With Sender as TIWLink do begin
      Caption:=TimeToStr (now);
   end;
end;

end.