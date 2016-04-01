unit imagesForm;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  IWCompLabel, IWGrids, IWCompButton, IWControl,
  IWCompRectangle, IWContainer, IWRegion, IWExtCtrls,
  IWBaseControl, IWVCLBaseControl, IWBaseHTMLControl, IWAppForm,
  IWHTMLControls, IWSiLink, siComp, siLngLnk, footer_user,
  IWVCLBaseContainer, IWHTMLContainer, promotitle, IWHTML40Container;

type
  TformImages = class(TIWAppForm)
    siLangLinked1: TsiLangLinked;
    PromoFrameTitle1: TPromoFrameTitle;
    IWRegion1: TIWRegion;
    BodyRegion: TIWRegion;
    IWRectangle2: TIWRectangle;
    IWRectangle1: TIWRectangle;
    ImageLabel: TIWLabel;
    ImageGrid: TIWGrid;
    userfooter1: Tuserfooter;
    IWSiLink1: TIWSiLink;
    InsertBtn: TIWButton;
    procedure IWAppFormCreate(Sender: TObject);
    procedure ImageGridRenderCell(ACell: TIWGridCell; const ARow,
      AColumn: Integer);
    procedure InsertBtnClick(Sender: TObject);
    procedure ImageGridCellClick(ASender: TObject;const ARow, AColumn: Integer);
    procedure IWAppFormDestroy(Sender: TObject);
    procedure userfooter1CancelClick(Sender: TObject);
    procedure EditBtnClick(Sender: TObject);
  private
    { Private declarations }
    IList : TStringList;
  public
    { Public declarations }
    procedure EditImage (ID : String);
    procedure EditHdr (ID : String);
  end;

var
  formImages: TformImages;

implementation

uses datamod, db, servercontroller, IWInit, ImageUpForm, cfgtypes, Jobs, RoleForm,
     imagerevform, IBQuery, imghdrform;

{$R *.DFM}

procedure TformImages.EditImage (ID : String);
begin
  with RcDataModule.ImageVerQuery do begin
    Close;
    ParamByName ('COMPANY').AsString:=UserSession.Company;
    ParamByName ('HDRID').AsString:=ID;
  end;
  with RcDataModule.CurrentImagehdrQuery do begin
    Close;
    ParamByName ('COMPANY').AsString:=UserSession.Company;
    ParamByName ('ID').AsString:=ID;
  end;
  TIWAppForm(WebApplication.ActiveForm).Release;
  TFormImageVersions.Create (WebApplication).show;
end;

procedure TformImages.EditHdr (ID : String);
begin
  RcDataModule.SaveValue('EditJob','');
  with RcDataModule.CurrentImagehdrQuery do begin
    Close;
    ParamByName ('COMPANY').AsString:=UserSession.Company;
    ParamByName ('ID').AsString:=ID;
  end;
  TIWAppForm(WebApplication.ActiveForm).Release;
  TFormImgHdr.Create (WebApplication).show;
end;

procedure TformImages.IWAppFormCreate(Sender: TObject);
var
  i : integer;
  s : string;
begin
  randomize;
  IWSiLink1.InitForm;
  IList:=TStringList.Create;
  RcDataModule.ImageQuery.Close;
  RcDataModule.ImageQuery.ParamByName('COMPANY').AsString:=
     UserSession.Company;
  RcDataModule.ImageQuery.Open;
  with ImageGrid do begin
    Cell[0, 0].Text := SiLangLinked1.GetTextOrDefault('Grid.Name');
    Cell[0, 1].Text := SiLangLinked1.GetTextOrDefault('Grid.Description');
    Cell[0, 2].Text := SiLangLinked1.GetTextOrDefault('Grid.Tag');
    Cell[0, 3].Text := SiLangLinked1.GetTextOrDefault('Grid.GUID');
    Cell[0, 4].Text := '';
    i:=1;
    RowCount:=1;
    while not RcDataModule.ImageQuery.Eof do begin
      RowCount:=RowCount+1;
      IList.Add(RcDataModule.ImageQuery.FieldByName('ID').AsString);
      with Cell[i, 0] do begin
        Clickable := True;
        s := RcDataModule.ImageQuery.FieldByName('Name').AsString;
        while (copy(s,1,1)=' ') do delete (s,1,1);
        if (s='') then
           text:='- - - - -'
           else
           text:=htmlquote(s);
      end;
      with Cell[i, 1] do begin
        Text := htmlquote(RcDataModule.ImageQuery.FieldByName('Description').AsString);
      end;
      with Cell[i, 2] do begin
        Text := RcDataModule.ImageQuery.FieldByName('Tag').AsString;
      end;
      with Cell[i, 3] do begin
        Text := RcDataModule.ImageQuery.FieldByName('GUID').AsString;
      end;
      with Cell[i, 4] do begin
        Text := SiLangLinked1.GetTextOrDefault('Grid.Properties');
        Clickable:=true;
      end;
      inc (i);
      RcDataModule.ImageQuery.Next;
    end;
  end;
  RcDataModule.ImageQuery.Close;
end;

procedure TformImages.ImageGridRenderCell(ACell: TIWGridCell; const ARow,
  AColumn: Integer);
begin
  with ACell do begin
    // Title Row
    if ARow = 0 then begin
      Alignment := taCenter;
      BGColor := clBlue;
      Font.Style := [fsBold];
      Font.Color := clWhite;
    end else begin
      // Alternate Row Colors
      if Odd(ARow) then begin
        BGColor := clLtGray;
      end else begin
        BGColor := clNone;
      end;
    end;
  end;
end;

procedure TformImages.InsertBtnClick(Sender: TObject);
var
  ImageId : integer;
  s : string;
begin
  ImageId:=RcDataModule.nextID;
  RcDataModule.ImageHdrInsertQuery.Transaction.Active:=True;
  RcDataModule.ImageHdrInsertQuery.ParamByName('NAME').AsString:=
    SiLangLinked1.GetTextOrDefault('NewContent');
  RcDataModule.ImageHdrInsertQuery.ParamByName('ID').AsInteger:=ImageId;
  RcDataModule.ImageHdrInsertQuery.ParamByName('COMPANY').AsString:=
    UserSession.Company;
  s:=UserSession.Company+FormatDateTime('hhmmssddmmyy',now);
  while (length(s)<20) do s:=s+char(random(10)+48);
  RcDataModule.ImageHdrInsertQuery.ParamByName('GUID').AsString:=s;
  RcDataModule.ImageHdrInsertQuery.ParamByName('JOBID').clear;
  RcDataModule.ImageHdrInsertQuery.ExecSQL;
  //RcDataModule.ImageHdrInsertQuery.Transaction.commit;
  EditHdr (IntToStr(ImageID));
end;

procedure TformImages.ImageGridCellClick(ASender: TObject;const ARow, AColumn: Integer);
begin
  UserSession.JobHdrID:=0;
  UserSession.JobRevID:=0;
  RcDataModule.ImageInsertQuery.Transaction.Active:=False;
  if (AColumn=0) then
     EditImage (IList.Strings[ARow-1])
     else
     EditHdr (IList.Strings[ARow-1]);
end;

procedure TformImages.IWAppFormDestroy(Sender: TObject);
begin
   IList.Free;
end;

procedure TformImages.userfooter1CancelClick(Sender: TObject);
begin
   TIWAppForm(WebApplication.ActiveForm).Release;
   Tsu_FormRole.Create (WebApplication).show;
end;

procedure TformImages.EditBtnClick(Sender: TObject);
begin
   TIWAppForm(WebApplication.ActiveForm).Release;
   TFormImgHdr.Create (WebApplication).show;
end;

end.
