unit distribtitle;

interface

uses
  SysUtils, Classes, Controls, Forms,
  IWVCLBaseContainer, IWColor, IWContainer, IWRegion, IWHTMLContainer,
  IWVCLBaseControl, IWBaseControl, IWBaseHTMLControl, IWControl, IWExtCtrls,
  IWHTMLControls, IWCompRectangle, IWCompButton, IWSiLink, siComp,
  siLngLnk, IWCompLabel;

type
  TDistribFrameTitle = class(TFrame)
    IWFrameRegion: TIWRegion;
    IWImageFile1: TIWImageFile;
    titleimage: TIWImageFile;
    IWImageFile3: TIWImageFile;
    IWRectangle1: TIWRectangle;
    IWRectangle2: TIWRectangle;
    JobRegn: TIWRegion;
    JobLink: TIWLink;
    GrpRegn: TIWRegion;
    GroupLink: TIWLink;
    IWRectangle3: TIWRectangle;
    EntityRegn: TIWRegion;
    OverviewLink: TIWLink;
    SendRegion: TIWRegion;
    SendLink: TIWLink;
    statusregn: TIWRegion;
    statuslink: TIWLink;
    TitleLabel: TIWLabel;
    silink: TsiLangLinked;
    langlink: TIWSiLink;
    HideBox: TIWImageFile;
    Smalltitle: TIWLabel;
    IWRegion1: TIWRegion;
    Exportlink: TIWLink;
    procedure JobLinkClick(Sender: TObject);
    procedure GroupLinkClick(Sender: TObject);
    procedure OverviewLinkClick(Sender: TObject);
    procedure SendLinkClick(Sender: TObject);
    procedure statuslinkClick(Sender: TObject);
    procedure IWFrameRegionCreate(Sender: TObject);
    procedure HideBoxClick(Sender: TObject);
    procedure ExportlinkClick(Sender: TObject);
  private
    { Private declarations }
    fullheight : integer;
    smallheight : integer;
    procedure updateviz;
  public
    { Public declarations }
  end;

implementation

uses PossForm, IWAppForm, StoresForm, SysForm, Servercontroller, datamod, IBQuery,
     db, exportfrm, grpform, roleform, IWInit, su_main, distrib, overviewForm, sendForm, distribstatusform;

{$R *.dfm}

procedure TDistribFrameTitle.updateviz;
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
      if comparetext(titlelabel.Caption,'distribution')=0 then begin
         titleimage.Visible:=true;
      end else begin
         titlelabel.Visible:=true;
      end;
      IWImageFile3.Visible:=true;
      smalltitle.visible:=false;
   end;
end;

procedure TDistribFrameTitle.JobLinkClick(Sender: TObject);
begin
   TIWAppForm(WebApplication.ActiveForm).Release;
   Tformdistrib.Create(WebApplication).Show;
end;

procedure TDistribFrameTitle.GroupLinkClick(Sender: TObject);
begin
   TIWAppForm(WebApplication.ActiveForm).Release;
   TFormGrp.Create(WebApplication).Show;
end;

procedure TDistribFrameTitle.OverviewLinkClick(Sender: TObject);
begin
   TIWAppForm(WebApplication.ActiveForm).Release;
   TFormOverview.Create(WebApplication).Show;
end;

procedure TDistribFrameTitle.SendLinkClick(Sender: TObject);
begin
   TIWAppForm(WebApplication.ActiveForm).Release;
   TFormSend.Create(WebApplication).Show;
end;

procedure TDistribFrameTitle.statuslinkClick(Sender: TObject);
begin
   TIWAppForm(WebApplication.ActiveForm).Release;
   TFormDistribStatus.Create(WebApplication).Show;
end;

procedure TDistribFrameTitle.IWFrameRegionCreate(Sender: TObject);
begin
   langlink.InitForm;
   if comparetext(titlelabel.Caption,'distribution')=0 then begin
      titleimage.Visible:=true;
   end else begin
      titlelabel.Visible:=true;
   end;
end;

procedure TDistribFrameTitle.HideBoxClick(Sender: TObject);
begin
   UserSession.HideTitles:=not UserSession.HideTitles;
   UpdateViz;
end;

procedure TDistribFrameTitle.ExportlinkClick(Sender: TObject);
begin
   TIWAppForm(WebApplication.ActiveForm).Release;
   TFormExport.Create(WebApplication).Show;
end;

end.
