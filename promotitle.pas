unit promotitle;

interface

uses
  SysUtils, Classes, Controls, Forms,
  IWVCLBaseContainer, IWColor, IWContainer, IWRegion, IWHTMLContainer,
  IWVCLBaseControl, IWBaseControl, IWBaseHTMLControl, IWControl, IWExtCtrls,
  IWHTMLControls, IWCompRectangle, IWCompButton, IWCompLabel, IWSiLink,
  siComp, siLngLnk, StdCtrls, IWCompListbox;

type
  TPromoFrameTitle = class(TFrame)
    IWFrameRegion: TIWRegion;
    IWImageFile1: TIWImageFile;
    IWImageFile2: TIWImageFile;
    IWImageFile3: TIWImageFile;
    IWRectangle1: TIWRectangle;
    IWRectangle2: TIWRectangle;
    JobReg: TIWRegion;
    ActivityLink: TIWLink;
    PromoReg: TIWRegion;
    JournalLink: TIWLink;
    IWRectangle3: TIWRectangle;
    silink: TsiLangLinked;
    langlink: TIWSiLink;
    TitleLabel: TIWLabel;
    Smalltitle: TIWLabel;
    HideBox: TIWImageFile;
    procedure JournalLinkClick(Sender: TObject);
    procedure ActivityLinkClick(Sender: TObject);
    procedure IWFrameRegionCreate(Sender: TObject);
    procedure HideBoxClick(Sender: TObject);
  private
    { Private declarations }
    fullheight : integer;
    smallheight : integer;
    procedure UpdateViz;
  public
    { Public declarations }
  end;

implementation

uses ImagesForm, Jobs, IWAppForm, ServerController, IWInit, roleform;
{$R *.dfm}

procedure TPromoFrameTitle.UpdateViz;
begin
   if UserSession.HideTitles then begin
      IWFrameRegion.height:=smallheight;
      Height:=IWFrameRegion.height;
      IWImageFile1.Visible:=false;
      iwimagefile2.Visible:=false;
      //IWRectangle1.Visible:=false;
      //IWRectangle3.Visible:=false;
      IWImageFile3.Visible:=false;
      TitleLabel.Visible:=false;
      smalltitle.visible:=true;
   end else begin
      IWFrameRegion.height:=fullheight;
      IWImageFile1.Visible:=true;
      iwimagefile2.Visible:=true;
      //IWRectangle1.Visible:=true;
      //IWRectangle3.Visible:=true;
      IWImageFile3.Visible:=true;
      TitleLabel.Visible:=true;
      smalltitle.visible:=false;
   end;
end;

procedure TPromoFrameTitle.JournalLinkClick(Sender: TObject);
begin
   TIWAppForm(WebApplication.ActiveForm).Release;
   TFormImages.Create(WebApplication).Show;
end;

procedure TPromoFrameTitle.ActivityLinkClick(Sender: TObject);
begin
   TIWAppForm(WebApplication.ActiveForm).Release;
   TFormJobs.Create(WebApplication).Show;
end;

procedure TPromoFrameTitle.IWFrameRegionCreate(Sender: TObject);
begin
   langlink.InitForm;
   if comparetext(titlelabel.Caption,'promotions')=0 then begin
      iwimagefile2.Visible:=true;
   end else begin
      titlelabel.Visible:=true;
   end;
   smalltitle.caption:=titlelabel.Caption;
   fullheight:=IWFrameRegion.height;
   smallheight:=IWFrameRegion.height-IWRectangle1.Top;
   updateViz;
end;

procedure TPromoFrameTitle.HideBoxClick(Sender: TObject);
begin
   UserSession.HideTitles:=not UserSession.HideTitles;
   UpdateViz;
end;

end.
