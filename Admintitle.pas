unit admintitle;

interface

uses
  SysUtils, Classes, Controls, Forms,
  IWVCLBaseContainer, IWColor, IWContainer, IWRegion, IWHTMLContainer,
  IWVCLBaseControl, IWBaseControl, IWBaseHTMLControl, IWControl, IWExtCtrls,
  IWHTMLControls, IWCompRectangle, IWCompButton, IWSiLink, siComp,
  siLngLnk, IWCompLabel;

type
  TAdminFrameTitle = class(TFrame)
    IWFrameRegion: TIWRegion;
    IWImageFile1: TIWImageFile;
    titleimage: TIWImageFile;
    IWImageFile3: TIWImageFile;
    IWRectangle1: TIWRectangle;
    IWRectangle2: TIWRectangle;
    SysReg: TIWRegion;
    SysLink: TIWLink;
    StoreReg: TIWRegion;
    StoreLink: TIWLink;
    IWRectangle3: TIWRectangle;
    POSReg: TIWRegion;
    POSLink: TIWLink;
    CoReg: TIWRegion;
    CompanyLink: TIWLink;
    TitleLabel: TIWLabel;
    silink: TsiLangLinked;
    langlink: TIWSiLink;
    Smalltitle: TIWLabel;
    HideBox: TIWImageFile;
    procedure SysLinkClick(Sender: TObject);
    procedure StoreLinkClick(Sender: TObject);
    procedure POSLinkClick(Sender: TObject);
    procedure CompanyLinkClick(Sender: TObject);
    procedure IWFrameRegionCreate(Sender: TObject);
    procedure IWLink1Click(Sender: TObject);
    procedure HideBoxClick(Sender: TObject);
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
     db, storeform, roleform, IWInit, su_main, global, FormCo;

{$R *.dfm}

procedure TAdminFrameTitle.updateviz;
begin
   if UserSession.HideTitles then begin
      IWFrameRegion.height:=smallheight;
      Height:=IWFrameRegion.height;
      IWImageFile1.Visible:=false;
      titleimage.Visible:=false;
      IWImageFile3.Visible:=false;
      TitleLabel.Visible:=false;
      smalltitle.visible:=true;
   end else begin
      IWFrameRegion.height:=fullheight;
      IWImageFile1.Visible:=true;
      IWImageFile3.Visible:=true;
      if comparetext(titlelabel.Caption,'administration')=0 then begin
         titleimage.Visible:=true;
      end else begin
         titlelabel.Visible:=true;
      end;
      smalltitle.visible:=false;
   end;
end;

procedure TAdminFrameTitle.SysLinkClick(Sender: TObject);
begin
   TIWAppForm(WebApplication.ActiveForm).Release;
   TformSys.Create(WebApplication).Show;
end;

procedure TAdminFrameTitle.StoreLinkClick(Sender: TObject);
begin
   TIWAppForm(WebApplication.ActiveForm).Release;
   TFormStores.Create(WebApplication).Show;
end;

procedure TAdminFrameTitle.POSLinkClick(Sender: TObject);
begin
   TIWAppForm(WebApplication.ActiveForm).Release;
   TFormPoss.Create(WebApplication).Show;
end;

procedure TAdminFrameTitle.CompanyLinkClick(Sender: TObject);
begin
   TIWAppForm(WebApplication.ActiveForm).Release;
   if UserSession.Company<>'0' then
     with RcDataModule.CoQuery do begin
       Close;
       ParamByName ('ID').AsString:=UserSession.company;
       Transaction.Active:=True;
       Open;
       Tsu_CoForm.Create (WebApplication).show;
     end
   else
     Tsu_FormMain.Create(WebApplication).Show;
end;

procedure TAdminFrameTitle.IWFrameRegionCreate(Sender: TObject);
begin
   langlink.InitForm;
   if comparetext(titlelabel.Caption,'administration')=0 then begin
      titleimage.Visible:=true;
   end else begin
      titlelabel.Visible:=true;
   end;
   smalltitle.caption:=titlelabel.Caption;
   fullheight:=IWFrameRegion.height;
   smallheight:=IWFrameRegion.height-IWRectangle1.Top;
   updateViz;
end;

procedure TAdminFrameTitle.IWLink1Click(Sender: TObject);
begin
   RcDataModule.Trans.Active:=false;
   WebApplication.TerminateAndRedirect (GetExitURL);
end;

procedure TAdminFrameTitle.HideBoxClick(Sender: TObject);
begin
   UserSession.HideTitles:=not UserSession.HideTitles;
   UpdateViz;
end;

end.
