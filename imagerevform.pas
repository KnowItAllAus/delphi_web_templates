unit imagerevform;

interface

uses
  Classes, SysUtils, IWAppForm, IWApplication, IWColor, IWTypes,
  IWHTMLControls, IWExtCtrls, IWGrids, IWCompLabel, IWCompRectangle,
  IWVCLBaseControl, IWBaseControl, IWBaseHTMLControl, IWControl, IWSiLink,
  IWVCLBaseContainer, IWContainer, IWHTMLContainer, IWRegion, footer_user,
  Controls, Forms, baretitle, siComp, siLngLnk, IWCompMemo,
  IWCompListbox, IWCompEdit, IWCompButton, cfgtypes, IWHTML40Container;

type
  TformImageVersions = class(TIWAppForm)
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
    NewVendEdit: TIWEdit;
    VLabel: TIWLabel;
    PLabel: TIWLabel;
    NewProdEdit: TIWEdit;
    IWLabel3: TIWLabel;
    IDEdit: TIWEdit;
    IDLabel: TIWLabel;
    DescEdit: TIWEdit;
    NameEdit: TIWEdit;
    TestBtn: TIWButton;
    ProdBtn: TIWButton;
    NewBtn: TIWButton;
    DelBtn: TIWButton;
    ModeLbl: TIWLabel;
    ModeName: TIWEdit;
    CpyBtn: TIWButton;
    NameLbl: TIWLabel;
    RevFileNameEdit: TIWEdit;
    ColourEdit: TIWEdit;
    Limitlabel: TIWLabel;
    procedure IWAppFormCreate(Sender: TObject);
    procedure ImageGridRenderCell(ACell: TIWGridCell; const ARow,
      AColumn: Integer);
    procedure ImageGridCellClick(ASender: TObject; const ARow,
      AColumn: Integer);
    procedure userfooter1CancelClick(Sender: TObject);
    procedure TestBtnClick(Sender: TObject);
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

uses datamod, graphics, serverController, jpeg, db, imagesform, imageupform, voucherform;

procedure TformImageVersions.RefreshGrid;
var
  i : integer;
  s : string;
  usercol : integer;
  islib : boolean;
begin
  islib:=UserSession.jobrevID=0;
  RcDataModule.ImageVerQuery.Transaction.Active:=true;
  with RcDataModule do begin
    CurrentImageHdrQuery.Open;
    NameEdit.text:=CurrentImageHdrQuery.FieldByName('NAME').AsString;
    prod:=CurrentImageHdrQuery.FieldByName('PROD_ID').AsString;
    test:=CurrentImageHdrQuery.FieldByName('TEST_ID').AsString;
    descEdit.text:=CurrentImageHdrQuery.FieldByName('DESCRIPTION').AsString;
    CurrentImageHdrQuery.Close;
  end;
  RcDataModule.ImageVerQuery.Open;
  if not islib then begin
    usercol:=3;
    ImageGrid.ColumnCount:=4;
  end else begin
    usercol:=4;
    ImageGrid.ColumnCount:=5;
  end;
  with ImageGrid do begin
    Cell[0, 0].Text := SiLangLinked1.GetTextOrDefault('Grid.ID');
    Cell[0, 1].Text := SiLangLinked1.GetTextOrDefault('Grid.Created');
    if islib then begin
      Cell[0, 2].Text := SiLangLinked1.GetTextOrDefault('Grid.Production');
      Cell[0, 3].Text := SiLangLinked1.GetTextOrDefault('Grid.Test');
    end else begin
      Cell[0, 2].Text := SiLangLinked1.GetTextOrDefault('Grid.InUse');
    end;
    Cell[0, usercol].Text := htmlquote(SiLangLinked1.GetTextOrDefault('Grid.User'));
    i:=1;
    RowCount:=1;
    while not RcDataModule.ImageVerQuery.Eof do begin
      RowCount:=RowCount+1;
      with Cell[i, 0] do begin
        Clickable := True;
        s:=RcDataModule.ImageVerQuery.FieldByName('ID').AsString;
        text:=s;
        Cell [i,2].text:='';
        if s=prod then begin
           if islib then begin
             Cell[i,2].text:='['+SiLangLinked1.GetTextOrDefault('Grid.Production')+']';
           end else begin
             Cell[i,2].text:='['+SiLangLinked1.GetTextOrDefault('Grid.Current');
             if (s=test) then
                Cell[i,2].text:=Cell[i,2].text+'/'+SiLangLinked1.GetTextOrDefault('Grid.Test')
             else
                Cell[i,2].text:=Cell[i,2].text+' NOT TEST';
             Cell[i,2].text:=Cell[i,2].text+']';
           end;
        end;
        if islib then begin
          if (s=test) then begin
             Cell[i,3].text:='['+SiLangLinked1.GetTextOrDefault('Grid.Test')+']';
          end else begin
             Cell[i,3].text:='';
          end;
        end;
      end;
      with Cell[i, 1] do begin
        Text :=RcDataModule.ImageVerQuery.FieldByName('CREATEDTIME').AsString;
      end;
      with Cell[i, usercol] do begin
        Text :=RcDataModule.ImageVerQuery.FieldByName('CREATEDBY').AsString;
      end;
      inc (i);
      RcDataModule.ImageVerQuery.Next;
    end;
  end;
  RcDataModule.ImageVerQuery.Close;
  RcDataModule.ImageVerQuery.Transaction.Active:=false;
end;

procedure TformImageVersions.HideImageData;
begin
  Image.Visible := False;
  Memo.Visible:=False;
  NewVendEdit.Visible:=False;
  NewProdEdit.Visible:=False;
  VLabel.Visible:=False;
  PLabel.Visible:=False;
  revfilenameedit.text:='';
  ModeName.Caption:='- - - - - -';
  IDEdit.Text:='- - - - - -';
  DelBtn.Visible:=false;
  TestBtn.Visible:=false;
  ProdBtn.Visible:=false;
  CpyBtn.visible:=false;
end;

procedure TformImageVersions.IWAppFormCreate(Sender: TObject);
begin
  IWSiLink1.InitForm;
  RefreshGrid;
  HideImageData;
  if ImageGrid.RowCount>1 then ImageGridCellClick(Sender, ImageGrid.RowCount-1, 0);
  DelBtn.Confirmation:=UserFooter1.silink_footer.GetTextOrDefault('DeletePrompt');
  limitlabel.font.color:=bodyregion.color;
  if UserSession.ReadOnly then begin
     prodbtn.enabled:=false;
     newbtn.enabled:=false;
     delbtn.enabled:=false;
     testbtn.enabled:=false;
     cpybtn.enabled:=false;
  end;
end;

procedure TformImageVersions.ImageGridRenderCell(ACell: TIWGridCell;
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

function TformImageVersions.showImage(ms: TStream; format : formats): boolean;
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

procedure TformImageVersions.showText(ms: TStream);
begin
  if (ms.size > 0) then begin
    Memo.Lines.LoadFromStream(ms);
    cpybtn.visible:=true;
  end;
end;

procedure TformImageVersions.getimagefromdb;
var
  ms: tmemorystream;
begin
  ms := TMemoryStream.Create;
  with RcDataModule.CurrentImageQuery.FieldByName('IMAGE') do begin
     if not isnull then TBlobField(RcDataModule.CurrentImageQuery.FieldByName('IMAGE')).savetostream(ms);
  end;
  try
    format:=formats(RcDataModule.CurrentImageQuery.FieldByName('FORMAT').AsInteger);
  except
    format:=fcHiRes;
  end;
  ms.position := 0;
  showImage(ms,format);
  ms.free;
end;

procedure TformImageVersions.gettextfromdb;
var
  ms: tmemorystream;
begin
  ms := TMemoryStream.Create;
  if not TBlobField(RcDataModule.CurrentImageQuery.FieldByName('TEXT')).IsNull then
     TBlobField(RcDataModule.CurrentImageQuery.FieldByName('TEXT')).savetostream(ms);
  ms.position := 0;
  showText(ms);
  ms.free;
end;

procedure TformImageVersions.RefreshPreview;
begin
  NewVendEdit.Visible:=False;
  NewProdEdit.Visible:=False;
  VLabel.Visible:=False;
  PLabel.Visible:=False;
  ColourEdit.Visible:=False;
  IDEdit.Text:=RcDataModule.CurrentImageQuery.FieldByName('ID').AsString;
  DelBtn.Visible:=true;
  datamode:=datamodes(RcDataModule.CurrentImageQuery.FieldByName('DATAMODE').AsInteger);
  RevFileNameEdit.Text:=RcDataModule.CurrentImageQuery.FieldByName('NAME').AsString;
  ModeName.Text:=SiLangLinked1.GetTextOrDefault('Mode.'+DataModeNames[datamodes(datamode)]);
  ImageRegion.HorzScrollBar.Visible:=false;
  ImageRegion.VertScrollBar.Visible:=false;
  case datamode of
    dmImage:
      begin
        Image.Visible := True;
        try
          ImageRegion.HorzScrollBar.Visible:=true;
          ImageRegion.VertScrollBar.Visible:=true;
          ColourEdit.Visible:=true;
          ColourEdit.Text:=SiLangLinked1.GetTextOrDefault('Colour.'+RcDataModule.CurrentImageQuery.FieldByName('COLOUR').AsString);
          ImgColour:=RcDataModule.CurrentImageQuery.FieldByName('COLOUR').AsInteger;
        except
          ColourEdit.Visible:=false;
        end;
        Memo.Visible := False;
        ImageRegion.Visible := True;
        getimagefromdb;
      end;
    dmText,
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
        NewVendEdit.Visible:=True;
        NewProdEdit.Visible:=True;
        VLabel.Visible:=True;
        PLabel.Visible:=True;
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
        NewVendEdit.Visible:=True;
        NewProdEdit.Visible:=True;
        VLabel.Visible:=True;
        PLabel.Visible:=True;
      end;
  end;
end;

procedure TformImageVersions.ImageGridCellClick(ASender: TObject;
  const ARow, AColumn: Integer);
begin
  with RcDataModule.CurrentImageQuery do begin
     Transaction.StartTransaction;
     ParamByName('ID').AsString:=ImageGrid.Cell[ARow,0].Text;
     ParamByName('COMPANY').AsString:=UserSession.Company;
     Open;
     IDEdit.Text := FieldByName('ID').AsString;
     NewVendEdit.Text := FieldByName('VENDOR').AsString;
     NewProdEdit.Text := FieldByName('PRODUCT').AsString;
     RefreshPreview;
     ProdBtn.Visible:=ImageGrid.Cell[ARow,0].Text<>Prod;
     TestBtn.Visible:=(ImageGrid.Cell[ARow,0].Text<>Test) and (UserSession.jobrevID=0);
     Close;
     Transaction.Active:=false;
  end;
end;

procedure TformImageVersions.userfooter1CancelClick(Sender: TObject);
begin
    TIWAppForm(WebApplication.ActiveForm).Release;
    if UserSession.JobRevID=0 then begin
       TFormImages.Create (WebApplication).show;
    end else begin
       TFormVoucher.Create (WebApplication).show;
    end;
end;

procedure TformImageVersions.TestBtnClick(Sender: TObject);
begin
   with RcDataModule.UpdateTestQuery do begin
      Transaction.StartTransaction;
      ParamByName('ID').AsString:=RcDataModule.CurrentImageHdrQuery.ParamByName ('ID').AsString;
      ParamByName('Company').AsString:=UserSession.Company;
      ParamByName('TEST_ID').AsString:=IDEdit.Text;
      ExecSQL;
      Transaction.Commit;
      RefreshGrid;
      TestBtn.Visible:=false;
   end;
end;

procedure TformImageVersions.ProdBtnClick(Sender: TObject);
begin
   with RcDataModule.UpdateProdQuery do begin
      Transaction.StartTransaction;
      ParamByName('ID').AsString:=RcDataModule.CurrentImageHdrQuery.ParamByName ('ID').AsString;
      ParamByName('Company').AsString:=UserSession.Company;
      ParamByName('PROD_ID').AsString:=IDEdit.Text;
      ExecSQL;
      Transaction.Commit;
      RefreshGrid;
      ProdBtn.Visible:=False;
   end;
   if (userSession.JobRevID<>0) then testbtnclick (sender);
end;

procedure TformImageVersions.NewBtnClick(Sender: TObject);
var
  Upfrm : TFormImageUp;
  ImageId : integer;
begin
  with RcDataModule do begin
    Trans.Active:=true;
    ImageId:=nextID;
    ImageInsertQuery.Transaction.Active:=True;
    ImageInsertQuery.ParamByName('NAME').AsString:=
      SiLangLinked1.GetTextOrDefault('');
    ImageInsertQuery.ParamByName('ID').AsInteger:=ImageId;
    ImageInsertQuery.ParamByName('HDRID').AsInteger:=CurrentImageHdrQuery.ParamByName ('ID').AsInteger;
    ImageInsertQuery.ParamByName('COMPANY').AsString:=UserSession.Company;
    ImageInsertQuery.ParamByName('CREATEDBY').AsString:=UserSession.User;
    ImageInsertQuery.ParamByName('CREATEDTIME').AsDateTime :=now;
    ImageInsertQuery.ExecSQL;

    with RcDataModule.CurrentImageQuery do begin
      Close;
      ParamByName ('COMPANY').AsString:=UserSession.Company;
      ParamByName ('ID').AsInteger:=ImageID;
      Open;
    end;
    TIWAppForm(WebApplication.ActiveForm).Release;
    UpFrm:=TFormImageUp.Create (WebApplication);
    UpFrm.VoucherLabel.caption:=UpFrm.VoucherLabel.caption+' : '+NameEdit.Text;
    UpFrm.Show;
  end;
end;

procedure TformImageVersions.DelBtnClick(Sender: TObject);
begin
  with RcDataModule do begin
    Trans.Active:=true;
    ImageDeleteQuery.Transaction.Active:=True;
    ImageDeleteQuery.ParamByName('ID').AsString:=IDEdit.text;
    ImageDeleteQuery.ParamByName('COMPANY').AsString:=UserSession.Company;
    ImageDeleteQuery.ExecSQL;
    Trans.Commit;
    RefreshGrid;
    HideImageData;
    if ImageGrid.RowCount>1 then ImageGridCellClick(Sender, ImageGrid.RowCount-1, 0)
  end;
end;

procedure TformImageVersions.CpyBtnClick(Sender: TObject);
var
  Upfrm : TFormImageUp;
  ImageId : integer;
begin
  with RcDataModule do begin
    Trans.Active:=true;
    ImageId:=nextID;
    ImageInsertQuery.Transaction.Active:=True;
    ImageInsertQuery.ParamByName('NAME').AsString:=SiLangLinked1.GetTextOrDefault('');
    ImageInsertQuery.ParamByName('ID').AsInteger:=ImageId;
    ImageInsertQuery.ParamByName('HDRID').AsInteger:=CurrentImageHdrQuery.ParamByName ('ID').AsInteger;
    ImageInsertQuery.ParamByName('COMPANY').AsString:=UserSession.Company;
    ImageInsertQuery.ParamByName('CREATEDBY').AsString:=UserSession.User;
    ImageInsertQuery.ParamByName('CREATEDTIME').AsDateTime :=now;
    //imagestream.position:=0;
    //TBlobField(RcDataModule.ImageInsertQuery.FieldByName('IMAGE')).savetostream(imagestream);
    //ImageInsertQuery.ParamByName('').AsDateTime :=now;
    ImageInsertQuery.ExecSQL;

    with RcDataModule.CurrentImageQuery do begin
      Close;
      ParamByName ('COMPANY').AsString:=UserSession.Company;
      ParamByName ('ID').AsInteger:=ImageID;
      Open;
    end;
    UpFrm:=TFormImageUp.Create (WebApplication);
    UpFrm.Memo.Lines.Assign(self.Memo.lines);
    UpFrm.ModeCombo.ItemIndex:=ord(datamode);
    UpFrm.FormatCombo.ItemIndex:=ord(format);
    UpFrm.filename:=revfilenameedit.text;
    if datamode=dmImage then begin
      UpFrm.original.Assign(self.Image.Picture.Bitmap);
      UpFrm.workimg:=TBitmap.create;
      UpFrm.workimg.Assign(self.Image.Picture.Bitmap);
      UpFrm.ColCombo.ItemIndex:=ImgColour;
    end;
    UpFrm.ModeComboChange(nil);
    if (UpFrm.NewVendEdit.Visible) then begin
      UpFrm.NewVendEdit.Text:=NewVendEdit.Text;
      UpFrm.NewProdEdit.Text:=NewProdEdit.Text;
    end;
    TIWAppForm(WebApplication.ActiveForm).Release;
    UpFrm.VoucherLabel.caption:=UpFrm.VoucherLabel.caption+' : '+NameEdit.Text;
    UpFrm.Show;
  end;
end;

end.
