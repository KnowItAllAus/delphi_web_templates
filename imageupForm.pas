unit imageupForm;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  IWControl, IWCompRectangle, IWGrids, IWDBGrids,
  IWHTMLControls, IWCompLabel, IWCompEdit, IWDBStdCtrls, IWCompButton,
  IWExtCtrls, IWDBExtCtrls, IWContainer, IWRegion,
  IWCompCheckbox, IWCompListbox, IWCompMemo, IWBaseControl,
  IWVCLBaseContainer, IWVCLBaseControl, jpeg, IWHTMLContainer,
  IWBaseHTMLControl, IWAppForm, IWSiLink, siComp, siLngLnk, baretitle,
  footer_user, ReferredClass, IWTypes, GraphicEx, IWHTML40Container;

type
  TFormImageUp = class(TIWAppForm)
    siLangLinked1: TsiLangLinked;
    FrameBareTitle1: TFrameBareTitle;
    userfooter1: Tuserfooter;
    IWRegion1: TIWRegion;
    IWRegion2: TIWRegion;
    ImageRegion: TIWRegion;
    Memo: TIWMemo;
    Image: TIWImage;
    FileRegion: TIWRegion;
    UploadFile: TIWFile;
    UploadFileLabel: TIWLabel;
    ContentStats: TIWLabel;
    UploadBtn: TIWButton;
    VoucherLabel: TIWLabel;
    IWLabel6: TIWLabel;
    IWLabel2: TIWLabel;
    NewIDEdit: TIWEdit;
    IWSiLink1: TIWSiLink;
    ModeCombo: TIWComboBox;
    NewVendEdit: TIWEdit;
    VLabel: TIWLabel;
    PLabel: TIWLabel;
    NewProdEdit: TIWEdit;
    IWRectangle2: TIWRectangle;
    IWRectangle1: TIWRectangle;
    PreferLabel: TIWLabel;
    FormatCombo: TIWComboBox;
    Widthguide: TIWRectangle;
    Senselabel: TIWLabel;
    MinCombo: TIWComboBox;
    AdjBtn: TIWButton;
    pclabel2: TIWLabel;
    pccombo: TIWComboBox;
    pclabel: TIWLabel;
    DimCombo: TIWComboBox;
    EditLabel: TIWLabel;
    Widthguide2: TIWRectangle;
    Widthguide3: TIWRectangle;
    ColLabel: TIWLabel;
    ColCombo: TIWComboBox;
    SynBtn: TIWButton;
    memcombo: TIWComboBox;
    IWLabel1: TIWLabel;
    procedure CancelBtnClick(Sender: TObject);
    procedure IWAppFormCreate(Sender: TObject);
    procedure ModeComboChange(Sender: TObject);
    procedure PostButtonClick(Sender: TObject);
    procedure UploadBtnClick(Sender: TObject);
    procedure DelBtnClick(Sender: TObject);
    procedure FormatComboChange(Sender: TObject);
    procedure IWAppFormDestroy(Sender: TObject);
    procedure AdjBtnClick(Sender: TObject);
    procedure SynBtnClick(Sender: TObject);
  private
    { Private declarations }
    function showImage(ms: TStream): boolean;
    procedure getimagefromdb;
    procedure gettextfromdb;
    procedure showText(ms: TStream);
    procedure GoImages;
    procedure MakeGrey (oldimg : TBitmap; var newimg : TBitmap; colour : integer);
  public
    { Public declarations }
    workimg : TBitmap;
    original : TBitmap;
    filename : string;
    referedby : referer_class;
    old_format : integer;
    procedure display_work_image;
  end;

var
  FormImageUp: TFormImageUp;

implementation

uses datamod, db, servercontroller, IWInit, Math, cfgtypes, imagerevform, scripting;

{$R *.DFM}

function FixFormat (cs : string) : string;
var
   quotes : boolean;
   field : boolean;
   ctrl : boolean;
   ctrlstart : integer;
   s : string;
   index : integer;
   forcedquote : boolean;
begin
   s:=cs;
   index:=1;
   field:=false;
   ctrl:=false;
   quotes:=false;
   ctrlstart:=0;
   forcedquote:=false;
   while (index<=length(s)) do begin
      if ctrl and not (s[index] in ['0'..'9']) then begin
         ctrl:=false;
         if (ctrlstart=index-1) then begin
            delete (s,index-1,1); // # then non-numeric
            dec(index);
         end;
      end;

      if quotes then begin
         if not forcedquote then begin
           if s[index]='''' then quotes:=false;  // Actual quote term.
           inc(index);
         end else begin
           if s[index]='{' then begin
              insert ('''',s,index);  // Finish artificial quote bit
              inc (index);
              quotes:=false;
           end else if s[index]='#' then begin
              insert ('''',s,index);  // Finish artificial quote bit
              inc (index);
              ctrlstart:=index;
              quotes:=false;
           end else if s[index]='''' then begin
              delete (s,index,1);    // Found actual quote - ignore.
           end else begin
              inc (index);
           end;
         end;
      end else if field then begin
         if s[index]='}' then field:=false;
         inc(index);
      end else if ctrl then begin
         inc(index);
      end else begin
         if s[index]='#' then begin
            ctrl:=true;
            ctrlstart:=index;
            inc (index);
         end else
           if s[index]='''' then begin
              quotes:=true;
              forcedquote:=false;
              inc(index);
           end else
             if s[index]='{' then
                field:=true
             else begin
                if (index>1) then begin
                   if (s[index-1]='''') then begin  // Was the previous char a close quote?
                      delete(s,index-1,1);          // Yes - delete the quote.
                      quotes:=true;
                      forcedquote:=true;
                   end else begin
                      insert ('''',s,index);        // No - insert new quote.
                      inc (index);
                      quotes:=true;
                      forcedquote:=true;
                   end;
                end else begin
                  insert ('''',s,index);            // General insert of quote.
                  inc (index);
                  quotes:=true;
                  forcedquote:=true;
                end;
             end;
      end;
   end;
   if quotes then s:=s+'''';
   if field then s:=s+'}';
   result:=s;
end;

procedure TFormImageUp.GoImages;
begin
  TIWAppForm(WebApplication.ActiveForm).Release;
  TFormImageVersions.Create (WebApplication).show;
(*
   if referredby<>nil then begin
     TIWAppForm(WebApplication.ActiveForm).Release;
     referredby.Create(WebApplication).Show;
   end else begin
     RcDataModule.Trans.Active:=False;
     RcDataModule.Trans.StartTransaction;
     TIWAppForm(WebApplication.ActiveForm).Release;
     TFormImages.Create(WebApplication).Show;
   end;*)
end;

procedure TFormImageUp.CancelBtnClick(Sender: TObject);
begin
  if referedby=nil then begin
    RcDataModule.ImageUpdateQuery.Transaction.Active := False;
    GoImages;
  end else DelBtnClick (Sender);
end;

procedure TFormImageUp.IWAppFormCreate(Sender: TObject);
begin
  workimg:=nil;
  original:=TBitmap.create;
  IWSilink1.InitForm;
  Contentstats.Caption := '-- -- -- --';
  with RcDataModule.CurrentImageQuery do begin
      NewIDEdit.Text := FieldByName('ID').AsString;
      try
        ModeCombo.ItemIndex := FieldByName('DATAMODE').AsInteger;
      except
        ModeCombo.ItemIndex := 0;
      end;
      try
        FormatCombo.ItemIndex := FieldByName('FORMAT').AsInteger;
      except
        FormatCombo.ItemIndex := 0;
      end;
      MemCombo.Itemindex:=FieldByName ('RESIDENT').AsInteger;
  end;
  ModeComboChange(nil);
end;

function LoadJPEGPictureFile(Bitmap: TBitmap; s : TStream): Boolean;
var
  JPEGImage: TJPEGImage;
begin
  Result:=True;
  try  // Start of try except
    JPEGImage := TJPEGImage.Create;  // Create the JPEG image... try  // now
    try  // to load the file but
      JPEGImage.LoadFromStream(s);
      // might fail...with an Exception.
      Bitmap.Assign(JPEGImage);
      // Assign the image to our bitmap.Result := True;
      // Got it so return True.
    finally
      JPEGImage.Free;  // ...must get rid of the JPEG image. finally
    end; {try}
  except
    Result := False; // Oops...never Loaded, so return False.
  end; {try}
end; {LoadJPEGPictureFile}

function DoLoad(var BM : TBitmap; const s : TStream) : boolean;

var
  GraphicClass: TGraphicExGraphicClass;
  Graphic: TGraphic;
begin
  result:=true;
  try
      // determine true file type from content rather than extension
      GraphicClass := FileFormatList.GraphicFromContent(s);
      if GraphicClass = nil then BM.LoadFromStream (s)
      else begin
        // GraphicFromContent always returns TGraphicExGraphicClass
        Graphic := GraphicClass.Create;
        try
          Graphic.LoadFromStream(s);
          BM.Assign(Graphic);
        finally
          Graphic.free;
        end;
      end;
  except
      result:=false;
  end;
end;


procedure TFormImageUp.Display_work_image;
begin
  Image.Height:=workimg.Height;
  Image.Width:=workimg.Width;
  Image.Picture.Bitmap.Assign(workimg);
  case formatcombo.ItemIndex of
  0 : ;
  1 : Image.Width:=Image.Picture.Bitmap.Width*2;
  2 : begin
         Image.Width:=Image.Picture.Bitmap.Width*2;
         Image.Height:=Image.Picture.Bitmap.Height*2;
      end;
  end;
  ContentStats.Caption := Format(SiLangLinked1.GetTextOrDefault ('Image')+' %d x %d',
                                                                 [Image.Picture.Bitmap.Width,
                                                                 Image.Picture.Bitmap.Height]);
end;

function TFormImageUp.showImage(ms: TStream): boolean;
var
  p : integer;
begin
  Result := False;
  if (ms.size > 0) then begin
    if workimg<>nil then freeandnil (workimg);
    workimg := TBitmap.Create;
    try
      p:=ms.position;
      Image.Height:=1;
      Image.Width:=1;
      if not DoLoad (workimg,ms) then begin
         ms.Position:=p;
         if not LoadJPEGPictureFile (workimg,ms) then raise exception.create ('Not a JPG');
      end;
      original.Assign(workimg);
      Display_work_image;
      Result := True;
    except
      Image.Picture.Graphic.Free;
      ContentStats.Caption := '-- -- -- --';
    end;
  end else if assigned (workimg) then begin
     Display_work_image;
  end else begin
    if assigned(Image.Picture.Graphic) then Image.Picture.Graphic.Free;
    ContentStats.Caption := '-- -- -- --';
  end;
end;

procedure TFormImageUp.showText(ms: TStream);
begin
  if (ms.size > 0) then begin
    Memo.Lines.LoadFromStream(ms,TEncoding.UTF8);
  end;
end;

procedure TFormImageUp.getimagefromdb;
var
  ms: tmemorystream;
begin
  ms := TMemoryStream.Create;
  TBlobField(RcDataModule.CurrentImageQuery.FieldByName('IMAGE')).savetostream(ms);
  ms.position := 0;
  showImage(ms);
  ms.free;
end;

procedure TFormImageUp.gettextfromdb;
var
  ms: tmemorystream;
begin
  ms := TMemoryStream.Create;
  TBlobField(RcDataModule.CurrentImageQuery.FieldByName('TEXT')).savetostream(ms);
  ms.position := 0;
  showText(ms);
  ms.free;
end;

procedure TFormImageUp.ModeComboChange(Sender: TObject);

begin
  FormatCombo.Visible:=False;
  MemCombo.Visible:=False;
  ColCombo.Visible:=False;
  ColLabel.Visible:=false;
  PreferLabel.Visible:=false;
  EditLabel.Visible:=False;
  AdjBtn.Visible:=false;
  PcCombo.Visible:=false;
  DimCombo.Visible:=false;
  MinCombo.Visible:=false;
  Senselabel.Visible:=false;
  pclabel.Visible:=false;
  pclabel2.Visible:=false;
  synbtn.visible:=false;

  NewVendEdit.Visible:=False;
  NewProdEdit.Visible:=False;
  NewVendEdit.Text:='';
  NewProdEdit.Text:='';
  VLabel.Visible:=False;
  PLabel.Visible:=False;
  ContentStats.Caption:='';
  WidthGuide.Visible:=False;
  WidthGuide2.Visible:=False;
  WidthGuide3.Visible:=False;
  ImageRegion.HorzScrollBar.Visible:=false;
  ImageRegion.VertScrollBar.Visible:=false;
  case datamodes(ModeCombo.itemindex) of
    dmRenderedImage,
    dmImage:
      begin
        EditLabel.Visible:=True;
        MinCombo.Visible:=True;
        Senselabel.Visible:=True;
        pclabel2.Visible:=True;
        AdjBtn.Visible:=True;
        PcCombo.Visible:=True;
        DimCombo.Visible:=True;
        Image.Visible := True;
        Pclabel.Visible:=true;
        Memo.Visible := False;
        ImageRegion.Visible := True;
        ImageRegion.HorzScrollBar.Visible:=true;
        ImageRegion.VertScrollBar.Visible:=true;
        UploadFile.Visible := True;
        UploadFileLabel.Visible := True;
        UploadBtn.Visible:=True;
        FormatCombo.Visible:=True;
        Memcombo.Visible:=datamodes(ModeCombo.itemindex)=dmImage;
        ColLabel.Visible:=True;
        PreferLabel.Visible:=True;
        WidthGuide.Visible:=true;
        WidthGuide2.Visible:=true;
        WidthGuide3.Visible:=true;
        ColCombo.Visible:=true;
        getimagefromdb;
      end;
    dmRenderedText,
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
        UploadFile.Visible := True;
        UploadFileLabel.Visible := True;
        UploadBtn.Visible:=True;
        gettextfromdb;
        synbtn.visible:=datamodes(ModeCombo.itemindex)=dmScript;
      end;
    dmRandom:
      begin
        Image.Visible := False;
        Memo.Visible:=False;
        UploadFile.Visible := False;
        UploadFileLabel.Visible := False;
        UploadBtn.Visible:=False;
      end;
    dmNet:
      begin
        Image.Visible := False;
        Memo.Visible:=True;
        NewVendEdit.Visible:=True;
        NewProdEdit.Visible:=True;
        VLabel.Visible:=True;
        PLabel.Visible:=True;
        UploadFile.Visible := False;
        UploadFileLabel.Visible := False;
        UploadBtn.Visible:=False;
      end;
    dmCust,
    dmRedeem:
      begin
        Image.Visible := False;
        Memo.Visible := True;
        ImageRegion.Visible := True;
        UploadFile.Visible := True;
        UploadFileLabel.Visible := True;
        UploadBtn.Visible:=True;
        gettextfromdb;
        NewVendEdit.Visible:=True;
        NewProdEdit.Visible:=True;
        VLabel.Visible:=True;
        PLabel.Visible:=True;
      end;
  end;
end;

procedure TFormImageUp.PostButtonClick(Sender: TObject);
var
   ms,ms2 : TMemoryStream;
   i : integer;
   dest : array [0..10240] of ansichar;
   utf8bytes : integer;
   s : string;
begin
  RcDataModule.ImageUpdateQuery.ParamByName('ID').AsString :=
    RcDataModule.CurrentImageQuery.FieldByName('ID').AsString;
  StrIntParam(RcDataModule.ImageUpdateQuery.ParamByName('ID'),NewIDEdit.Text);
  if (NewVendEdit.Text<>'') then
      StrIntParam(RcDataModule.ImageUpdateQuery.ParamByName('VENDOR'),NewVendEdit.Text)
      else
      RcDataModule.ImageUpdateQuery.ParamByName('VENDOR').Clear;
  if (NewProdEdit.Text<>'') then
      StrIntParam(RcDataModule.ImageUpdateQuery.ParamByName('PRODUCT'),NewProdEdit.Text)
      else
      RcDataModule.ImageUpdateQuery.ParamByName('PRODUCT').Clear;
  RcDataModule.ImageUpdateQuery.ParamByName('DATAMODE').AsInteger :=
    ModeCombo.ItemIndex;
  RcDataModule.ImageUpdateQuery.ParamByName('FORMAT').AsInteger :=
    FormatCombo.ItemIndex;
  RcDataModule.ImageUpdateQuery.ParamByName('RESIDENT').AsInteger :=
    MemCombo.itemindex;
  RcDataModule.ImageUpdateQuery.ParamByName('COLOUR').AsInteger :=
    ColCombo.ItemIndex;
  RcDataModule.ImageUpdateQuery.ParamByName('COMPANY').AsString :=
    RcDataModule.CurrentImageQuery.FieldByName('COMPANY').AsString;
  RcDataModule.ImageUpdateQuery.ParamByName('NAME').AsString := copy (filename,1,40);
  if workimg <> nil then begin
    ms := TMemoryStream.Create;
    try
      workimg.SaveToStream(ms);
      ms.position := 0;
      RcDataModule.ImageUpdateQuery.ParamByName('IMAGE').loadfromStream(ms,ftBlob);
    finally
      ms.free;
    end;
  end else begin
    RcDataModule.ImageUpdateQuery.ParamByName('IMAGE').AsString := '';
  end;
  ms := TMemoryStream.Create;
  ms2 := TMemoryStream.Create;
  try
    if (modecombo.text<>'Script') and (modecombo.text<>'Stock') then begin
      for i:=0 to Memo.lines.count-1 do begin
         Memo.Lines.Strings[i]:=FixFormat(Memo.Lines.Strings[i]);
      end;
    end;
    Memo.Lines.SaveToStream(ms,TEncoding.UTF8);
    ms.position := 3;  // Avoid BOM
    ms2.CopyFrom(ms,ms.Size-3);
    RcDataModule.ImageUpdateQuery.ParamByName('TEXT').loadfromStream(ms2,ftBlob);
  finally
    ms.free;
    ms2.Free;
  end;
  RcDataModule.ImageUpdateQuery.ExecSQL;
  if referedby=nil then RcDataModule.ImageUpdateQuery.Transaction.Commit;

  // Update prod if it isn't a library object.
  if (userSession.JobRevID<>0) then with RcDataModule.UpdateProdQuery do begin
     Transaction.StartTransaction;
     ParamByName('ID').AsString:=RcDataModule.CurrentImageHdrQuery.ParamByName ('ID').AsString;
     ParamByName('Company').AsString:=UserSession.Company;
     ParamByName('PROD_ID').AsString:=NewIDEdit.Text;
     ExecSQL;
     Transaction.Commit;
  end;
  with RcDataModule.UpdateTestQuery do begin  // Always assume test is updated
      Transaction.StartTransaction;
      ParamByName('ID').AsString:=RcDataModule.CurrentImageHdrQuery.ParamByName ('ID').AsString;
      ParamByName('Company').AsString:=UserSession.Company;
      ParamByName('TEST_ID').AsString:=NewIDEdit.Text;
      ExecSQL;
      Transaction.Commit;
  end;
  GoImages;
end;

procedure TFormImageUp.UploadBtnClick(Sender: TObject);
var
  ms : TMemoryStream;
  error : string;
begin
  ms := TMemorystream.Create;
  error:='';
  try
    case datamodes(modecombo.itemindex) of
      dmImage, dmRenderedImage:
        try
           error:='Upload : ';
           UploadFile.SaveToStream(ms);
           ms.position := 0;
           error:='Display : ';
           if not showImage(ms) then raise exception.create ('Format invalid');
        except
           on e : exception do begin
             error:=error+e.message;
             raise;
           end;
        end;
      dmText, dmRenderedText,
      dmNet:
        try
          error:='Text : ';
          UploadFile.SaveToStream(ms);
          ms.position := 0;
          error:='Show Text : ';
          showText(ms);
        except
          on e : exception do begin
             error:=error+e.Message;
             raise;
          end;
        end;
    end;
    filename:=Uploadfile.filename;
  except
    on e : exception do begin
      if error='' then error:=e.message;
      WebApplication.ShowMessage(SiLangLinked1.GetTextOrDefault('UpdateRejected')+' : '+error, smAlert);
    end;
  end;
  ms.free;
end;

procedure TFormImageUp.DelBtnClick(Sender: TObject);
begin
  if RcDataModule.CurrentImageQuery.Active then begin
    RcDataModule.ImageDeleteQuery.ParamByName('ID').AsString :=
      RcDataModule.CurrentImageQuery.FieldByName('ID').AsString;
    RcDataModule.ImageDeleteQuery.ParamByName('COMPANY').AsString :=
      RcDataModule.CurrentImageQuery.FieldByName('COMPANY').AsString;
    RcDataModule.ImageDeleteQuery.ExecSQL;
    if (referedby=nil) then RcDataModule.ImageDeleteQuery.Transaction.Commit;
  end;
  GoImages;
end;

procedure TFormImageUp.FormatComboChange(Sender: TObject);
begin
  if modecombo.itemindex=0 then begin
    if Assigned (Image.Picture.Bitmap) then begin
      case formatcombo.ItemIndex of
      0 : begin
             Image.Width:=Image.Picture.Bitmap.Width;
             Image.Height:=Image.Picture.Bitmap.Height;
          end;
      1 : begin
             Image.Width:=Image.Picture.Bitmap.Width*2;
             Image.Height:=Image.Picture.Bitmap.Height;
          end;
      2 : begin
             Image.Width:=Image.Picture.Bitmap.Width*2;
             Image.Height:=Image.Picture.Bitmap.Height*2;
          end;
      end;
    end;
  end;
end;

procedure TFormImageUp.IWAppFormDestroy(Sender: TObject);
begin
   workimg.Free;
   original.free;
end;

procedure TFormImageUp.AdjBtnClick(Sender: TObject);
var
  bm : TBitmap;
  r : TRect;
  mul : integer;
begin
  if assigned(workimg) then begin
     bm:=TBitmap.Create;
     bm.Width:=workimg.Width;
     bm.Height:=workimg.Height;
     mul:=10;
     case pccombo.ItemIndex of
       0 : mul:=5;
       1 : mul:=6;
       2 : mul:=7;
       3 : mul:=8;
       4 : mul:=9;
       5 : mul:=10;
       6 : mul:=11;
       7 : mul:=12;
       8 : mul:=13;
       9 : mul:=14;
       10 : mul:=15;
       11 : mul:=20;
     end;
     case Dimcombo.itemindex of
       0 : begin bm.Height:=bm.Height * mul div 10; bm.Width:=bm.Width * mul div 10; end;
       1 : bm.Height:=bm.Height * mul div 10;
       2 : bm.Width:=bm.Width * mul div 10;
     end;
     r.Left:=0; r.Top:=0; r.Bottom:=bm.height; r.Right:=bm.Width;
     bm.canvas.StretchDraw(r,original);
     pccombo.ItemIndex:=5; // Reset to 100%.

     workimg.height:=bm.height;
     workimg.width:=bm.width;
     if colcombo.itemindex<>5 then makegrey (bm,workimg,colcombo.ItemIndex);
     bm.Free;
     display_work_image;
  end;
end;

procedure TFormImageUp.MakeGrey (oldimg : TBitmap; var newimg : TBitmap; colour : integer);
var
  x,y : Integer;
  P,L,N,Q : PByteArray;
  r,g,b : word;
  inten : shortint;
  handled : boolean;
  cmin : integer;
  avg : integer;
begin
    cmin:=(MinCombo.ItemIndex+1)*10;
    oldimg.PixelFormat:=pf32Bit;
    newimg.PixelFormat:=pf32Bit;
    for y := 0 to oldimg.height -1 do
    begin
      P := oldimg.ScanLine[y];
      Q := newimg.scanline[y];
      for x := 0 to oldimg.width -1 do begin
          r:=(P[x*4+2]);
          g:=(P[x*4+1]);
          b:=(P[x*4]);
          inten:=(r*3+g*6+b) div 25;
          handled:=false;
          case colour of
             0 :;
             1 :;
             2 : begin // Red
                    avg:=(((r-b) + (r-g)) div 2) * 100 div 255;
                    if (avg>cmin) then begin
                      Q[x*4+2]:=255;       // Colour it.
                      Q[x*4+1]:=0;
                      Q[x*4]:=0;
                      handled:=true;
                    end;
                 end;
             3 : begin // Green
                    avg:=(((g-b) + (g-r)) div 2) * 100 div 255;
                    if (avg>cmin) then begin
                      Q[x*4+2]:=0;       // Colour it.
                      Q[x*4+1]:=255;
                      Q[x*4]:=0;
                      handled:=true;
                    end;
                 end;
             4 : begin // Blue
                    avg:=(((b-r) + (b-g)) div 2) * 100 div 255;
                    if (avg>cmin) then begin
                      Q[x*4+2]:=0;       // Colour it.
                      Q[x*4+1]:=0;
                      Q[x*4]:=255;
                      handled:=true;
                    end;
                 end;
          end;
          if not handled then begin
            if colour<>1 then begin
              // Grey scale
              inten:=inten+(mincombo.ItemIndex-5)*4;
              if inten<20 then begin
                 Q[x*4+2]:=0;       // Black
                 Q[x*4+1]:=0;
                 Q[x*4]:=0;
              end else if inten>=80 then begin
                 Q[x*4+2]:=255;       // White
                 Q[x*4+1]:=255;
                 Q[x*4]:=255;
              end else if inten>=60 then begin
                 Q[x*4+2]:=174;       // Very Light Grey
                 Q[x*4+1]:=174;
                 Q[x*4]:=174;
              end else if inten>=40 then begin
                 Q[x*4+2]:=128;       // Light Grey
                 Q[x*4+1]:=128;
                 Q[x*4]:=128;
              end else begin
                 Q[x*4+2]:=75;       // Dark Grey
                 Q[x*4+1]:=75;
                 Q[x*4]:=75;
              end;
            end else if colour=1 then begin
              // Black and White!
              if inten<cmin then begin
                 Q[x*4+2]:=0;       // Black
                 Q[x*4+1]:=0;
                 Q[x*4]:=0;
              end else begin
                 Q[x*4+2]:=255;       // White
                 Q[x*4+1]:=255;
                 Q[x*4]:=255;
              end;
            end;
          end;
      end;
    end;

    L := newimg.scanline[0];
    N := newimg.scanline[0];
    for y := 1 to oldimg.height - 2 do
    begin
      P := N;
      N := newimg.scanline[y+1];
      for x := 1 to oldimg.width - 2 do begin
          if (P[x*4]<255) and ((P[(x-1)*4]=255) or (P[(x+1)*4]=255)) then begin
             P[x*4]:=0;
             P[x*4+1]:=0;
             P[x*4+2]:=0;
          end else if (P[x*4]<255) and ((L[x*4]=255) or (N[x*4]=255)) then begin
             P[x*4]:=0;
             P[x*4+1]:=0;
             P[x*4+2]:=0;
          end;
      end;
      L:=P;
    end;
end;

procedure TFormImageUp.SynBtnClick(Sender: TObject);
var
  msg : array [0..1023] of ansichar;
  buf : array [0..65535] of ansichar;
  buflen : integer;
  i,j : integer;
  s : ansistring;
begin
  if assigned(script_test) then begin
     buflen:=0;
     for i:=0 to memo.Lines.Count-1 do begin
       s:=memo.lines[i];
       for j:=1 to length(s) do begin
         buf[buflen]:=s[j];
         inc(buflen);
         if (buflen>65532) then exit;
       end;
       buf[buflen]:=#13;
       inc(buflen);
       buf[buflen]:=#10;
       inc(buflen);
     end;
     script_test (@buf[0], buflen, @msg[0], 1024);
     WebApplication.ShowMessage(pansichar(@msg[0]), smAlert);
  end;
end;

end.

