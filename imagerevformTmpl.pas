unit imagerevformTmpl;

interface

uses
  Classes, SysUtils, IWAppForm, IWApplication, IWColor, IWTypes,
  IWHTMLControls, IWExtCtrls, IWGrids, IWCompLabel, IWCompRectangle,
  IWVCLBaseControl, IWBaseControl, IWBaseHTMLControl, IWControl, IWSiLink,
  IWVCLBaseContainer, IWContainer, IWHTMLContainer, IWRegion, footer_user,
  Controls, Forms, baretitle, siComp, siLngLnk, IWCompMemo,
  IWCompListbox, IWCompEdit, IWCompButton, cfgtypes, IWHTML40Container,
  IWCompCheckbox;

type
  TformImageVersionsTmpl = class(TIWAppForm)
    FrameBareTitle1: TFrameBareTitle;
    userfooter1: Tuserfooter;
    IWRegion1: TIWRegion;
    BodyRegion: TIWRegion;
    IWRectangle2: TIWRectangle;
    IWRectangle1: TIWRectangle;
    ImageLabel: TIWLabel;
    ImageGrid: TIWGrid;
    ImageRegion: TIWRegion;
    Memo: TIWMemo;
    Image: TIWImage;
    IWSiLink1: TIWSiLink;
    siLangLinked1: TsiLangLinked;
    IDEdit: TIWEdit;
    IDLabel: TIWLabel;
    NameEdit: TIWEdit;
    ProdBtn: TIWButton;
    NewBtn: TIWButton;
    DelBtn: TIWButton;
    ModeLbl: TIWLabel;
    ModeName: TIWEdit;
    CpyBtn: TIWButton;
    ColourEdit: TIWEdit;
    Limitlabel: TIWLabel;
    Baselabel: TIWLabel;
    procedure IWAppFormCreate(Sender: TObject);
    procedure ImageGridRenderCell(ACell: TIWGridCell; const ARow,
      AColumn: Integer);
    procedure ImageGridCellClick(ASender: TObject; const ARow,
      AColumn: Integer);
    procedure userfooter1CancelClick(Sender: TObject);
    procedure ProdBtnClick(Sender: TObject);
    procedure NewBtnClick(Sender: TObject);
    procedure DelBtnClick(Sender: TObject);
    procedure CpyBtnClick(Sender: TObject);
  public
    prod : string;
    test : string;
    datamode : datamodes;
    format : formats;
    imgColour : integer;
    rendered : boolean;
    function showImage(ms: TStream; format : formats): boolean;
    procedure getimagefromdb;
    procedure gettextfromdb;
    procedure showText(ms: TStream);
    procedure RefreshPreview;
    procedure RefreshGrid;
    procedure HideImageData;
  end;

implementation

{$R *.dfm}

uses datamod, graphics, serverController, jpeg, db, imagesform, imageupformtmpl, grptmplform,
IBCustomDataSet, IBQuery, IBDatabase, IBTable, IBUpdateSQL, dialogs, editTmplForm;

var
  t : TIBTransaction;

procedure TformImageVersionsTmpl.RefreshGrid;
var
  i : integer;
  s : string;
begin
  RcDataModule.ImageVerQueryTmpl.Transaction.Active:=true;
  with RcDataModule do begin
    CurrentImageHdrQueryTmpl.ParamByName('ID').AsString:=GetValue ('editparam','');
    CurrentImageHdrQueryTmpl.ParamByName ('COMPANY').AsString:=UserSession.Company;
    CurrentImageHdrQueryTmpl.Open;
    NameEdit.text:=CurrentImageHdrQueryTmpl.FieldByName('NAME').AsString;
    prod:=CurrentImageHdrQueryTmpl.FieldByName('CURRENTID').AsString;
    CurrentImageHdrQueryTmpl.Close;
    ImageVerQueryTmpl.ParamByName('HDRID').AsString:=GetValue ('editparam','');
    ImageVerQueryTmpl.ParamByName ('COMPANY').AsString:=UserSession.Company;
    ImageVerQueryTmpl.Open;
  end;
  ImageGrid.ColumnCount:=4;
  with ImageGrid do begin
    Cell[0, 0].Text := SiLangLinked1.GetTextOrDefault('Grid.ID');
    Cell[0, 1].Text := SiLangLinked1.GetTextOrDefault('Grid.Created');
    Cell[0, 2].Text := SiLangLinked1.GetTextOrDefault('Grid.InUse');
    Cell[0, 3].Text := SiLangLinked1.GetTextOrDefault('Grid.User');
    i:=1;
    RowCount:=1;
    while not RcDataModule.ImageVerQueryTmpl.Eof do begin
      RowCount:=RowCount+1;
      with Cell[i, 0] do begin
        Clickable := True;
        s:=RcDataModule.ImageVerQueryTmpl.FieldByName('ID').AsString;
        text:=s;
        Cell [i,2].text:='';
        if s=prod then begin
           Cell[i,2].text:='['+SiLangLinked1.GetTextOrDefault('Grid.Current')+']';
        end;
      end;
      with Cell[i, 1] do begin
        Text :=RcDataModule.ImageVerQueryTmpl.FieldByName('CREATEDTIME').AsString;
      end;
      with Cell[i, 3] do begin
        Text :=htmlquote(RcDataModule.ImageVerQueryTmpl.FieldByName('CREATEDBY').AsString);
      end;
      inc (i);
      RcDataModule.ImageVerQueryTmpl.Next;
    end;
  end;
  RcDataModule.ImageVerQueryTmpl.Close;
  RcDataModule.ImageVerQueryTmpl.Transaction.Active:=false;
end;

procedure TformImageVersionsTmpl.HideImageData;
begin
  Image.Visible := False;
  Memo.Visible:=False;
  ModeName.Caption:='- - - - - -';
  IDEdit.Text:='- - - - - -';
  DelBtn.Visible:=false;
  ProdBtn.Visible:=false;
  CpyBtn.visible:=false;
end;

procedure TformImageVersionsTmpl.IWAppFormCreate(Sender: TObject);
begin
  t:=RcDataModule.Trans;
  IWSiLink1.InitForm;
  RefreshGrid;
  HideImageData;
  if ImageGrid.RowCount>1 then ImageGridCellClick(Sender, ImageGrid.RowCount-1, 0);
  DelBtn.Confirmation:=UserFooter1.silink_footer.GetTextOrDefault('DeletePrompt');
  limitlabel.font.color:=bodyregion.color;
  Baselabel.Caption:=RcDataModule.GetValue('edittmpltype','unknown');
end;

procedure TformImageVersionsTmpl.ImageGridRenderCell(ACell: TIWGridCell;
  const ARow, AColumn: Integer);
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
      if (AColumn=0) and (ACell.Text=IDEdit.Text) then begin
        BGColor:=clYellow;
        Font.Color:=clBlack;
      end else if Odd(ARow) then begin
        BGColor := clLtGray;
      end else begin
        BGColor := clNone;
      end;
    end;
  end;
end;

function TformImageVersionsTmpl.showImage(ms: TStream; format : formats): boolean;
var
  bm: TBitmap;
begin
  if (ms.size > 0) then begin
    Bm := TBitmap.Create;
    try
      Image.Height:=1;
      Image.Width:=1;
      Bm := TBitmap.Create;
      bm.LoadFromStream(ms);
      case format of
        fcHiRes: begin
          Image.Height:=Bm.Height;
          Image.Width:=Bm.Width;
        end;
        fcDoubleWidth: begin
          Image.Height:=Bm.Height;
          Image.Width:=Bm.Width*2;
        end;
        fcLowRes: begin
          Image.Height:=Bm.Height*2;
          Image.Width:=Bm.Width*2;
        end;
      end;
      Image.Picture.Bitmap.Assign(Bm);
      Result := True;
    except
      Image.visible:=false;
      Result := False;
    end;
    bm.free;
    cpybtn.visible:=true;
  end else begin
    Image.Visible:=false;
    Result := False;
  end;
end;

procedure TformImageVersionsTmpl.showText(ms: TStream);
begin
  if (ms.size > 0) then begin
    Memo.Lines.LoadFromStream(ms,TEncoding.UTF8);
    cpybtn.visible:=true;
  end;
end;

procedure TformImageVersionsTmpl.getimagefromdb;
var
  ms: tmemorystream;
begin
  ms := TMemoryStream.Create;
  with RcDataModule.CurrentImageQueryTmpl.FieldByName('IMAGE') do begin
     if not isnull then TBlobField(RcDataModule.CurrentImageQueryTmpl.FieldByName('IMAGE')).savetostream(ms);
  end;
  try
    format:=formats(RcDataModule.CurrentImageQueryTmpl.FieldByName('FORMAT').AsInteger);
  except
    format:=fcHiRes;
  end;
  ms.position := 0;
  showImage(ms,format);
  ms.free;
end;

procedure TformImageVersionsTmpl.gettextfromdb;
var
  ms: tmemorystream;
begin
  ms := TMemoryStream.Create;
  if not TBlobField(RcDataModule.CurrentImageQueryTmpl.FieldByName('TEXT')).IsNull then
     TBlobField(RcDataModule.CurrentImageQueryTmpl.FieldByName('TEXT')).savetostream(ms);
  ms.position := 0;
  showText(ms);
  ms.free;
end;

procedure TformImageVersionsTmpl.RefreshPreview;
begin
  ColourEdit.Visible:=False;
  IDEdit.Text:=RcDataModule.CurrentImageQueryTmpl.FieldByName('ID').AsString;
  DelBtn.Visible:=true;
  datamode:=datamodes(RcDataModule.CurrentImageQueryTmpl.FieldByName('DATAMODE').AsInteger);
  ModeName.Text:=SiLangLinked1.GetTextOrDefault('Mode.'+DataModeNames[datamodes(datamode)]);
  ImageRegion.HorzScrollBar.Visible:=false;
  ImageRegion.VertScrollBar.Visible:=false;
  case datamode of
    dmImage,
    dmRenderedImage:
      begin
        Image.Visible := True;
        try
          ImageRegion.HorzScrollBar.Visible:=true;
          ImageRegion.VertScrollBar.Visible:=true;
          ColourEdit.Visible:=true;
          ColourEdit.Text:=SiLangLinked1.GetTextOrDefault('Colour.'+RcDataModule.CurrentImageQueryTmpl.FieldByName('COLOUR').AsString);
          ImgColour:=RcDataModule.CurrentImageQueryTmpl.FieldByName('COLOUR').AsInteger;
        except
          ColourEdit.Visible:=false;
        end;
        Memo.Visible := False;
        ImageRegion.Visible := True;
        getimagefromdb;
      end;
    dmText,
    dmRenderedText,
    dmScanner,
    dmKeyboard,
    dmInput,
    dmEvent,
    dmScript,
    dmInterceptor:
      begin
        Image.Visible := False;
        Memo.Visible := True;
        ImageRegion.Visible := True;
        gettextfromdb;
      end;
    dmNet:
      begin
        Image.Visible := False;
        Memo.Visible := True;
        ImageRegion.Visible := True;
        gettextfromdb;
      end;
    dmCust,
    dmRandom:
      begin
        Image.Visible := False;
        Memo.Visible:=False;
      end;
    dmRedeem:
      begin
        Image.Visible := False;
        Memo.Visible:=False;
      end;
  end;
end;

procedure TformImageVersionsTmpl.ImageGridCellClick(ASender: TObject;
  const ARow, AColumn: Integer);
begin
  with RcDataModule.CurrentImageQueryTmpl do begin
     Transaction.StartTransaction;
     ParamByName('ID').AsString:=ImageGrid.Cell[ARow,0].Text;
     ParamByName('COMPANY').AsString:=UserSession.Company;
     Open;
     IDEdit.Text := FieldByName('ID').AsString;
     RefreshPreview;
     ProdBtn.Visible:=ImageGrid.Cell[ARow,0].Text<>Prod;
     Close;
     Transaction.Active:=false;
  end;
end;

procedure TformImageVersionsTmpl.userfooter1CancelClick(Sender: TObject);
begin
    TIWAppForm(WebApplication.ActiveForm).Release;
    if (RcDataModule.GetValue ('JobInstance','N')='INSTANCE') then
      TFormEditTmpl.Create(WebApplication).Show
    else
      TformGrpTmpl.Create (WebApplication).show;
end;

procedure TformImageVersionsTmpl.ProdBtnClick(Sender: TObject);
begin
  with RcDataModule do try
    SQLQry.Transaction.Active:=false;
    SQLQry.Transaction.Active:=true;
    SQLQry.SQL.Clear;
    SQLQry.SQL.Add('update GROUPOBJHDR set CURRENTID=:CURRENT where ID=:ID and COMPANY=:COMPANY');
    SQLQry.ParamByName ('CURRENT').AsString:=IDEdit.text;
    SQLQry.ParamByName ('ID').AsString:=RcDataModule.GetValue ('editparam','');
    SQLQry.ParamByName ('COMPANY').AsString:=UserSession.Company;
    SQLQry.ExecSQL;
    SQLQry.Transaction.Commit;
  except
  end;
  RefreshGrid;
  ProdBtn.Visible:=False;
end;

procedure TformImageVersionsTmpl.NewBtnClick(Sender: TObject);
var
  Upfrm : TFormImageUpTmpl;
  ImageId : integer;
begin
  with RcDataModule do begin
    Trans.Active:=true;
    ImageId:=nextID;
    try
      with RcDataModule do begin
        SQLQry.Transaction.Active:=false;
        SQLQry.Transaction.Active:=true;
        SQLQry.SQL.Clear;
        SQLQry.SQL.Add('insert into GROUPPARAMOBJ (ID,COMPANY,PARAMOBJID,CREATEDBY,CREATEDTIME) VALUES (:ID,:COMPANY,:HDR,:CREATEDBY,:CREATEDTIME)');
        SQLQry.ParamByName ('ID').AsString:=inttostr(ImageID);
        SQLQry.ParamByName ('HDR').AsString:=RcDataModule.GetValue ('editparam','');
        SQLQry.ParamByName ('COMPANY').AsString:=UserSession.Company;
        SQLQry.ParamByName ('CREATEDBY').AsString:=UserSession.User;
        SQLQry.ParamByName ('CREATEDTIME').AsDateTime:=now;
        SQLQry.ExecSQL;
      end;
    except
      WebApplication.ShowMessage(userfooter1.silink_footer.GetTextOrDefault('DBError'));
    end;

    with RcDataModule.CurrentImageQueryTmpl do begin
      Close;
      ParamByName ('COMPANY').AsString:=UserSession.Company;
      ParamByName ('ID').AsInteger:=ImageID;
      Open;
    end;
    TIWAppForm(WebApplication.ActiveForm).Release;
    UpFrm:=TFormImageUpTmpl.Create (WebApplication);
    UpFrm.VoucherLabel.caption:=UpFrm.VoucherLabel.caption+' : '+NameEdit.Text;
    UpFrm.Show;
  end;
end;

procedure TformImageVersionsTmpl.DelBtnClick(Sender: TObject);
begin
    try
      with RcDataModule do begin
        SQLQry.Transaction.Active:=false;
        SQLQry.Transaction.Active:=true;
        SQLQry.SQL.Clear;
        SQLQry.SQL.Add('delete from GROUPPARAMOBJ where ID=:ID and COMPANY=:COMPANY');
        SQLQry.ParamByName ('ID').AsString:=IDEdit.text;
        SQLQry.ParamByName ('COMPANY').AsString:=UserSession.Company;
        SQLQry.ExecSQL;
        SQLQry.Transaction.Commit;
      end;
    except
      WebApplication.ShowMessage(userfooter1.silink_footer.GetTextOrDefault('DBError'));
    end;

    RefreshGrid;
    HideImageData;
    if ImageGrid.RowCount>1 then ImageGridCellClick(Sender, ImageGrid.RowCount-1, 0)
end;

procedure TformImageVersionsTmpl.CpyBtnClick(Sender: TObject);
var
  Upfrm : TFormImageUpTmpl;
  ImageId : integer;
begin
  with RcDataModule do begin
    Trans.Active:=true;
    ImageId:=nextID;
    ImageInsertQueryTmpl.Transaction.Active:=True;
    ImageInsertQueryTmpl.ParamByName('ID').AsInteger:=ImageId;
    ImageInsertQueryTmpl.ParamByName('PARAMOBJID').AsString:=RcDataModule.GetValue ('editparam','');
    ImageInsertQueryTmpl.ParamByName('COMPANY').AsString:=UserSession.Company;
    ImageInsertQueryTmpl.ParamByName('CREATEDBY').AsString:=UserSession.User;
    ImageInsertQueryTmpl.ParamByName('CREATEDTIME').AsDateTime :=now;
    ImageInsertQueryTmpl.ExecSQL;

    with RcDataModule.CurrentImageQueryTmpl do begin
      Close;
      ParamByName ('COMPANY').AsString:=UserSession.Company;
      ParamByName ('ID').AsInteger:=ImageID;
      Open;
    end;
    UpFrm:=TFormImageUpTmpl.Create (WebApplication);
    UpFrm.Memo.Lines.Assign(self.Memo.lines);
    UpFrm.ModeCombo.ItemIndex:=ord(datamode);
    UpFrm.FormatCombo.ItemIndex:=ord(format);
    if datamode in [dmImage,dmRenderedImage] then begin
      UpFrm.original.Assign(self.Image.Picture.Bitmap);
      UpFrm.workimg:=TBitmap.create;
      UpFrm.workimg.Assign(self.Image.Picture.Bitmap);
      UpFrm.ColCombo.ItemIndex:=ImgColour;
    end;
    UpFrm.ModeComboChange(nil);
    TIWAppForm(WebApplication.ActiveForm).Release;
    UpFrm.VoucherLabel.caption:=UpFrm.VoucherLabel.caption+' : '+NameEdit.Text;
    UpFrm.Show;
  end;
end;

end.
