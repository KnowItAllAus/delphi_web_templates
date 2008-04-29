unit statstitle;

interface

uses
  SysUtils, Classes, Controls, Forms,
  IWVCLBaseContainer, IWColor, IWContainer, IWRegion, IWHTMLContainer,
  IWVCLBaseControl, IWBaseControl, IWBaseHTMLControl, IWControl, IWExtCtrls,
  IWHTMLControls, IWCompRectangle, IWCompButton, IWCompLabel, IWSiLink,
  siComp, siLngLnk;

type
  TStatsFrameTitle = class(TFrame)
    IWFrameRegion: TIWRegion;
    IWImageFile1: TIWImageFile;
    IWImageFile2: TIWImageFile;
    IWImageFile3: TIWImageFile;
    IWRectangle1: TIWRectangle;
    IWRectangle2: TIWRectangle;
    IWRegion1: TIWRegion;
    JournalLink: TIWLink;
    PromoReg: TIWRegion;
    ActivityLink: TIWLink;
    IWRectangle3: TIWRectangle;
    silink: TsiLangLinked;
    langlink: TIWSiLink;
    TitleLabel: TIWLabel;
    procedure IWFrameRegionCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

implementation

{$R *.dfm}

procedure TStatsFrameTitle.IWFrameRegionCreate(Sender: TObject);
begin
   langlink.InitForm;
   if comparetext(titlelabel.Caption,'statistics')=0 then begin
      iwimagefile2.Visible:=true;
   end else begin
      titlelabel.Visible:=true;
   end;
end;

end.
