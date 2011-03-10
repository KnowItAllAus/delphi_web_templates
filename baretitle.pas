unit baretitle;

interface

uses
  SysUtils, Classes, Controls, Forms,
  IWVCLBaseContainer, IWColor, IWContainer, IWRegion, IWHTMLContainer,
  IWVCLBaseControl, IWBaseControl, IWBaseHTMLControl, IWControl, IWExtCtrls,
  IWHTMLControls, IWCompRectangle, IWCompButton, IWSiLink, siComp,
  siLngLnk, IWCompLabel, StdCtrls, IWCompCheckbox, IWHTML40Container;

type
  TFrameBareTitle = class(TFrame)
    IWFrameRegion: TIWRegion;
    IWImageFile1: TIWImageFile;
    titleimage: TIWImageFile;
    IWRectangle1: TIWRectangle;
    IWRectangle3: TIWRectangle;
    IWImageFile3: TIWImageFile;
    TitleLabel: TIWLabel;
    silink: TsiLangLinked;
    langlink: TIWSiLink;
    Smalltitle: TIWLabel;
    HideBox: TIWImageFile;
    procedure HomeLinkClick(Sender: TObject);
    procedure IWFrameRegionCreate(Sender: TObject);
    procedure HideBoxClick(Sender: TObject);
  private
    { Private declarations }
    fullheight : integer;
    smallheight : integer;
    showcaption : boolean;
    procedure UpdateViz;
  public
    { Public declarations }
  end;

implementation

{$R *.dfm}

Uses ServerController;

procedure TFrameBareTitle.HomeLinkClick(Sender: TObject);
begin
   With Sender as TIWLink do begin
      Caption:=TimeToStr (now);
   end;
end;

procedure TFrameBareTitle.UpdateViz;
begin
   if UserSession.HideTitles then begin
      IWFrameRegion.height:=smallheight;
      Height:=IWFrameRegion.height;
      IWImageFile1.Visible:=false;
      titleimage.Visible:=false;
      //IWRectangle1.Visible:=false;
      //IWRectangle3.Visible:=false;
      IWImageFile3.Visible:=false;
      TitleLabel.Visible:=false;
      smalltitle.visible:=true;
   end else begin
      IWFrameRegion.height:=fullheight;
      IWImageFile1.Visible:=true;
      titleimage.Visible:=not showcaption;
      //IWRectangle1.Visible:=true;
      //IWRectangle3.Visible:=true;
      IWImageFile3.Visible:=true;
      TitleLabel.Visible:=showcaption;
      smalltitle.visible:=false;
   end;
end;

procedure TFrameBareTitle.IWFrameRegionCreate(Sender: TObject);
var
   newtitle : string;
begin
   langlink.InitForm;
   newtitle:=SiLink.GetTextOrDefault (titlelabel.caption);
   if comparetext(titlelabel.Caption,newtitle)=0 then begin
      titleimage.Visible:=true;
      showcaption:=false;
   end else begin
      titlelabel.caption:=newtitle;
      titlelabel.Visible:=true;
      showcaption:=true;
   end;
   smalltitle.Caption:=newtitle;
   fullheight:=IWFrameRegion.height;
   smallheight:=IWFrameRegion.height-IWRectangle1.Top;
   updateviz;
end;

procedure TFrameBareTitle.HideBoxClick(Sender: TObject);
begin
   UserSession.HideTitles:=not UserSession.HideTitles;
   UpdateViz;
end;

end.