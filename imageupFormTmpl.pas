unit imageupFormTmpl;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  IWControl, IWCompRectangle, IWGrids, IWDBGrids,
  IWHTMLControls, IWCompLabel, IWCompEdit, IWDBStdCtrls, IWCompButton,
  IWExtCtrls, IWDBExtCtrls, IWContainer, IWRegion,
  IWCompCheckbox, IWCompListbox, IWCompMemo, IWBaseControl,
  IWVCLBaseContainer, IWVCLBaseControl, jpeg, IWHTMLContainer,
  IWBaseHTMLControl, IWAppForm, IWSiLink, siComp, siLngLnk, baretitle,
  footer_user, ReferredClass, IWTypes, GraphicEx, IWHTML40Container,
  IWBaseComponent, IWBaseHTMLComponent, IWBaseHTML40Component;

type
  TModfunc = procedure (var sl : TStrings; col : integer; title : boolean);

  TFormImageUpTmpl = class(TIWAppForm)
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
    IWRectangle2: TIWRectangle;
    IWRectangle1: TIWRectangle;
    PreferLabel: TIWLabel;
    FormatCombo: TIWComboBox;
    MemBox: TIWCheckBox;
    Widthguide: TIWRectangle;
    Widthguide2: TIWRectangle;
    Widthguide3: TIWRectangle;
    WrapBox: TIWCheckBox;
    SortBtn: TIWButton;
    SynBtn: TIWButton;
    view: TIWComboBox;
    viewlabel: TIWLabel;
    GridCtrls: TIWRegion;
    NewColEdit: TIWEdit;
    ColumnBtn: TIWButton;
    RowBtn: TIWButton;
    columns: TIWComboBox;
    IWLabel3: TIWLabel;
    action: TIWComboBox;
    IWLabel4: TIWLabel;
    ChngBtn: TIWButton;
    grid: TIWGrid;
    repainttimer: TIWTimer;
    ImageAdjustRegion: TIWRegion;
    EditLabel: TIWLabel;
    ColLabel: TIWLabel;
    ColCombo: TIWComboBox;
    MinCombo: TIWComboBox;
    Senselabel: TIWLabel;
    DimCombo: TIWComboBox;
    pccombo: TIWComboBox;
    AdjBtn: TIWButton;
    pclabel2: TIWLabel;
    pclabel: TIWLabel;
    GridPreviewRegion: TIWRegion;
    GridContinueBtn: TIWButton;
    DiscardBtn: TIWButton;
    FileFormatCombo: TIWComboBox;
    IWLabel1: TIWLabel;
    IWRegion3: TIWRegion;
    Preview: TIWGrid;
    Spacebtn: TIWButton;
    FirstBtn: TIWButton;
    PrevBtn: TIWButton;
    NextBtn: TIWButton;
    LastBtn: TIWButton;
    PageCombo: TIWComboBox;
    constraintlbl: TIWLabel;
    BorderBox: TIWCheckBox;
    procedure CancelBtnClick(Sender: TObject);
    procedure IWAppFormCreate(Sender: TObject);
    procedure ModeComboChange(Sender: TObject);
    procedure PostButtonClick(Sender: TObject);
    procedure UploadBtnClick(Sender: TObject);
    procedure DelBtnClick(Sender: TObject);
    procedure FormatComboChange(Sender: TObject);
    procedure IWAppFormDestroy(Sender: TObject);
    procedure AdjBtnClick(Sender: TObject);
    procedure PreferLabelAsyncMouseOut(Sender: TObject;
      EventParams: TStringList);
    procedure PreferLabelAsyncMouseOver(Sender: TObject;
      EventParams: TStringList);
    procedure MemoAsyncKeyPress(Sender: TObject; EventParams: TStringList);
    procedure SortBtnClick(Sender: TObject);
    procedure WrapBoxClick(Sender: TObject);
    procedure SynBtnClick(Sender: TObject);
    procedure viewChange(Sender: TObject);
    procedure ColumnBtnClick(Sender: TObject);
    procedure RowBtnClick(Sender: TObject);
    procedure ChngBtnClick(Sender: TObject);
    procedure gridCellClick(ASender: TObject; const ARow, AColumn: Integer);
    procedure IWAppFormResize(Sender: TObject);
    procedure IWAppFormAfterRender(Sender: TObject);
    procedure repainttimerTimer(Sender: TObject);
    procedure DiscardBtnClick(Sender: TObject);
    procedure GridContinueBtnClick(Sender: TObject);
    procedure CSVBoxClick(Sender: TObject);
    procedure SpacebtnClick(Sender: TObject);
    procedure FirstBtnClick(Sender: TObject);
    procedure PageComboChange(Sender: TObject);
  private
    { Private declarations }
    page : integer;
    function showImage(ms: TStream): boolean;
    procedure getimagefromdb;
    procedure gettextfromdb;
    procedure showText(ms: TStream);
    procedure GoImages;
    procedure MakeGrey (oldimg : TBitmap; var newimg : TBitmap; colour : integer);
    procedure exportgrid;
    procedure drawgrid;
    procedure memosort;
    function fixgridwidth : boolean;
    procedure setcolumnlist;
    procedure convertCSVMemo;
    function convertCSV (s : string) : string;
    procedure convertSpaceMemo;
    function convertSpace (s : string) : string;
    procedure DrawPreviewGrid;
    function modifyTabRec (s : string; col : integer; line : integer; modfunc : TModfunc = nil) : string;
    function checkconstraints (s : TStream; b : TBitmap) : boolean;
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
  FormImageUpTmpl: TFormImageUpTmpl;

implementation

uses datamod, db, servercontroller, IWInit, Math, cfgtypes, imagerevformtmpl, IBCustomDataSet, IBQuery, IBDatabase,
  IBTable, IBUpdateSQL, scripting, Parse_utils;

{$R *.DFM}

const
  pagesize : integer = 40;

procedure MakeAnythingBut (oldimg : TBitmap; color : TColor);
var
  x,y : Integer;
  P : PByteArray;
  r,g,b : word;
  tc : TColor;
begin
    oldimg.PixelFormat:=pf32Bit;
    for y := 0 to oldimg.height -1 do
    begin
      P := oldimg.ScanLine[y];
      for x := 0 to oldimg.width -1 do begin
          r:=(P[x*4+2]);
          g:=(P[x*4+1]);
          b:=(P[x*4]);
          if (r=color and $FF) and (b=(color and $FF00) shr 8) and (g=(color and $FF) shr 16) then
              P[x*4]:=P[x*4] xor 1;
      end;
    end;
end;

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

function QuoteText (cs : string) : string;
var
   s : string;
   i : integer;
begin
   s:='';
   if cs='' then begin
      result:='''''';
      exit;
   end;
   if cs[1]<>'{' then s:='''';
   for i:=1 to length(cs) do begin
     if cs[i]='{' then s:=s+'''';
     s:=s+cs[i];
     if cs[i]='''' then s:=s+'''';
     if cs[i]='}' then s:=s+'''';
   end;
   s:=s+'''';
   result:=s; //FixFormat(s);
end;

function DequoteText (cs : string) : string;
var
   s : string;
   i : integer;
   wasquote : boolean;
begin
   s:='';
   if length(cs)>0 then begin
     wasquote:=false;
     for I := 1 to length(cs) do
       if (cs[i]='''') and not wasquote then begin
          wasquote:=true;
       end else begin
          s:=s+cs[i];
          wasquote:=false;
       end;
   end;
   result:=s;
end;

procedure TFormImageUpTmpl.GoImages;
begin
  TIWAppForm(WebApplication.ActiveForm).Release;
  TformImageVersionsTmpl.Create (WebApplication).show;
end;

procedure TFormImageUpTmpl.gridCellClick(ASender: TObject; const ARow,
  AColumn: Integer);
var
  row : integer;
begin
  exportgrid;
  row:=(page-1)*pagesize+ARow;
  memo.Lines.Delete(row);
  if page>max(((memo.Lines.Count-1)+pagesize-1) div pagesize,1) then
     page:=page-1;
  drawgrid;
end;

procedure TFormImageUpTmpl.GridContinueBtnClick(Sender: TObject);
begin
  gridpreviewregion.visible:=false;
  if fileformatcombo.ItemIndex in [0,1] then begin
     convertCSVMemo;
  end else if fileformatcombo.ItemIndex in [2,3] then
     convertSpaceMemo;
  drawgrid;
end;

procedure TFormImageUpTmpl.CancelBtnClick(Sender: TObject);
begin
  if referedby=nil then begin
    RcDataModule.ImageUpdateQueryTmpl.Transaction.Active := False;
    GoImages;
  end else DelBtnClick (Sender);
end;

procedure delcolfunc (var ts : TStrings; col : integer; first : boolean);
begin
  if ts.Count>=col then
     ts.Delete(col);
end;

procedure moveleft (var ts : TStrings; col : integer; first : boolean);
var
  s : string;
begin
  if col=0 then exit;
  s:=ts[col];
  ts[col]:=ts[col-1];
  ts[col-1]:=s;
end;

procedure moveright (var ts : TStrings; col : integer; first : boolean);
var
  s : string;
begin
  if col>=ts.Count-1 then exit;
  s:=ts[col];
  ts[col]:=ts[col+1];
  ts[col+1]:=s;
end;

procedure TFormImageUpTmpl.ChngBtnClick(Sender: TObject);
var
  col,i : integer;
  c : TIWEdit;
  element : integer;
begin
  exportgrid;
  col:=columns.ItemIndex;
  if col=-1 then exit;
  case action.itemindex of
    0 : // Delete
      begin
        memo.Lines[0]:=quotetext('!!HEADER!!'+modifytabrec (copy(dequotetext(memo.Lines[0]),11,999),col,i,delcolfunc));
        for i:=1 to memo.Lines.count-1 do begin
            memo.Lines[i]:=quotetext(modifytabrec (dequotetext(memo.Lines[i]),col,i,delcolfunc));
        end;
        drawgrid;
      end;
    2 : // Move left
      begin
        memo.Lines[0]:=quotetext('!!HEADER!!'+modifytabrec (copy(dequotetext(memo.Lines[0]),11,999),col,i,moveleft));
        for i:=1 to memo.Lines.count-1 do begin
            memo.Lines[i]:=quotetext(modifytabrec (dequotetext(memo.Lines[i]),col,i,moveleft));
        end;
        drawgrid;
      end;
    1 : // Move right
      begin
        memo.Lines[0]:=quotetext('!!HEADER!!'+modifytabrec (copy(dequotetext(memo.Lines[0]),11,999),col,i,moveright));
        for i:=1 to memo.Lines.count-1 do begin
            memo.Lines[i]:=quotetext(modifytabrec (dequotetext(memo.Lines[i]),col,i,moveright));
        end;
        drawgrid;
      end;
  end;
  setcolumnlist;
  fixgridwidth;
end;

var
  newcolname : string;

procedure inscolfunc (var ts : TStrings; col : integer; first : boolean);
begin
  if first then
     if newcolname<>'' then
       ts.add (newcolname)
     else
       ts.add ('Column '+inttostr(col))
  else
     ts.add('');
end;

procedure TFormImageUpTmpl.ColumnBtnClick(Sender: TObject);
var
  col,i : integer;
begin
  exportgrid;
  col:=grid.columncount;
  newcolname:=newcoledit.Text;
  for i:=0 to memo.Lines.count-1 do begin
      memo.Lines[i]:=quotetext(modifytabrec (dequotetext(memo.Lines[i]),col,i,inscolfunc));
  end;
  drawgrid;
  setcolumnlist;
  fixgridwidth;
end;

procedure TFormImageUpTmpl.RowBtnClick(Sender: TObject);
var
  element : integer;
begin
  if grid.ColumnCount=0 then grid.ColumnCount:=1;

  with Grid do begin
    RowCount:=RowCount+1;
    for element:=0 to ColumnCount-2 do
        with Cell[RowCount-1, element] do begin
            Control := TIWEdit.Create(Self);
            with TIWEdit(Control) do begin
              Text := '';
              Width := 200;
            end;
        end;
    with Cell[rowcount-1, columncount-1] do begin
      text:='Delete';
      clickable:=true;
    end;
  end;
end;

procedure TFormImageUpTmpl.IWAppFormAfterRender(Sender: TObject);
begin
  if fixgridwidth then begin
     grid.Invalidate;
     grid.RepaintControl;
     grid.Refresh;
  end;
end;

procedure TFormImageUpTmpl.IWAppFormCreate(Sender: TObject);
var
  ft : paramtypes;
  t : string;
begin
  page:=1;
  workimg:=nil;
  original:=TBitmap.create;
  IWSilink1.InitForm;
  Contentstats.Caption := '-- -- -- --';
  with RcDataModule.CurrentImageQueryTmpl do begin
      NewIDEdit.Text := FieldByName('ID').AsString;
      try
        ModeCombo.ItemIndex := FieldByName('DATAMODE').AsInteger;
        t:=RcDataModule.GetValue ('edittmpltype','???');
        ft:=strtoparamtype(t);
        modecombo.ItemIndex:=-1;
        case ft of
        ft_Object: ;
        ft_image_blob :
          modecombo.ItemIndex:=0;
        ft_text_blob, ft_table_blob :
          modecombo.ItemIndex:=1;
        ft_rendered_image_blob :
          modecombo.ItemIndex:=13;
        end;
        modecombo.Enabled:=modecombo.ItemIndex=-1;
      except
        ModeCombo.ItemIndex := 0;
      end;
      try
        FormatCombo.ItemIndex := FieldByName('FORMAT').AsInteger;
      except
        FormatCombo.ItemIndex := 0;
      end;
      MemBox.Checked:=FieldByName ('RESIDENT').AsString<>'0';
      constraintlbl.caption:='Constraints : '+RcDataModule.GetValue ('edittmplconstraint','???');
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

procedure TFormImageUpTmpl.setColumnList;
var
  element : integer;
begin
  columns.items.clear;
  if grid.rowcount=0 then exit;
  for element:=0 to grid.columncount-2 do
    columns.items.add(inttostr(element+1)+': '+TIWEdit(grid.Cell[0, element].control).text);
end;

procedure TFormImageUpTmpl.Display_work_image;
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

function TFormImageUpTmpl.showImage(ms: TStream): boolean;
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

procedure TFormImageUpTmpl.showText(ms: TStream);
begin
  if (ms.size > 0) then begin
    Memo.Lines.LoadFromStream(ms,TEncoding.UTF8);
  end;
end;

procedure TFormImageUpTmpl.getimagefromdb;
var
  ms: tmemorystream;
begin
  ms := TMemoryStream.Create;
  TBlobField(RcDataModule.CurrentImageQueryTmpl.FieldByName('IMAGE')).savetostream(ms);
  ms.position := 0;
  showImage(ms);
  ms.free;
end;

procedure TFormImageUpTmpl.gettextfromdb;
var
  ms: tmemorystream;
begin
  ms := TMemoryStream.Create;
  TBlobField(RcDataModule.CurrentImageQueryTmpl.FieldByName('TEXT')).savetostream(ms);
  ms.position := 0;
  showText(ms);
  if (memo.Lines.Count>0) and (pos('!!HEADER!!',memo.Lines[0])>0) then begin
     view.ItemIndex:=1;
     viewChange(Self);
  end;
  ms.free;
end;

procedure TFormImageUpTmpl.ModeComboChange(Sender: TObject);
var
  mode : datamodes;
begin
  WrapBox.Visible:=false;
  SortBtn.Visible:=false;
  spacebtn.Visible:=false;
  FormatCombo.Visible:=False;
  MemBox.Visible:=False;
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
  grid.Visible:=false;
  gridctrls.Visible:=false;
  GridPreviewRegion.Visible:=false;
  ContentStats.Caption:='';
  WidthGuide.Visible:=False;
  WidthGuide2.Visible:=False;
  WidthGuide3.Visible:=False;
  ImageRegion.HorzScrollBar.Visible:=false;
  ImageRegion.VertScrollBar.Visible:=false;
  view.ItemIndex:=0;
  view.visible:=false;
  viewlabel.visible:=false;
  imageadjustregion.Visible:=false;
  borderbox.visible:=false;
  mode:=datamodes(ModeCombo.itemindex);
  case mode of
    dmImage,
    dmRenderedImage:
      begin
        EditLabel.Visible:=True;
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
        MemBox.Visible:=datamodes(ModeCombo.itemindex) in [dmImage,dmRenderedImage];
        if mode=dmImage then begin
           ColCombo.Visible:=True;
           ColLabel.Visible:=True;
           MinCombo.Visible:=True;
           Senselabel.Visible:=True;
        end else begin
           borderbox.visible:=true;
        end;
        imageadjustregion.Visible:=true;
        PreferLabel.Visible:=True;
        WidthGuide.Visible:=true;
        WidthGuide2.Visible:=true;
        WidthGuide3.Visible:=true;
        getimagefromdb;
      end;
    dmText,
    dmRenderedText,
    dmScanner,
    dmKeyboard,
    dmInput,
    dmEvent,
    dmScript:
      begin
        Image.Visible := False;
        Memo.Visible := True;
        ImageRegion.Visible := True;
        UploadFile.Visible := True;
        UploadFileLabel.Visible := True;
        UploadBtn.Visible:=True;
        if (datamodes(ModeCombo.ItemIndex)=dmText) then begin
           wrapbox.Visible:=true;
           SortBtn.Visible:=true;
           SpaceBtn.Visible:=true;
           view.visible:=true;
           viewlabel.visible:=true;
        end;
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
      end;
  end;
end;

procedure TFormImageUpTmpl.exportgrid;
var
  j : integer;
  s : string;
  fname : string;
  element : integer;
  line : integer;
begin
  // Export paged data!
  //memo.lines.clear;
  element:=(page-1)*pagesize+1;
  for line := 0 to grid.RowCount-1 do begin
    s:='';
    for j := 0 to grid.ColumnCount-2 do begin
        s:=s+TIWEdit(grid.Cell[line,j].Control).Text;
    end;
    if (s<>'') or (line=0) then begin // No blank lines other than header
      s:='';
      if line=0 then begin
        s:='!!HEADER!!';
        for j := 0 to grid.ColumnCount-2 do begin
          fname:=TIWEdit(grid.Cell[0,j].Control).Text;
          if pos (':',fname)=0 then
             s:=s+TIWEdit(grid.Cell[0,j].Control).Text+':'+inttostr(TIWEdit(grid.Cell[0,j].Control).Width)+#9
          else
             s:=s+TIWEdit(grid.Cell[0,j].Control).Text+#9;
        end;
        delete (s,length(s),1); // Trailing tab
        if memo.Lines.Count=0 then
           memo.Lines.Add('');
        s:=quotetext (s);
        memo.Lines[0]:=s;
      end else begin
        for j := 0 to grid.ColumnCount-2 do begin
          s:=s+TIWEdit(grid.Cell[line,j].Control).Text+#9;
        end;
        delete (s,length(s),1); // Trailing tab
        if memo.Lines.Count<=element then
           memo.Lines.Add('');
        s:=quotetext (s);
        memo.Lines[element]:=s;
        inc (element);
      end;
    end;
  end;
  memosort;
end;

procedure TFormImageUpTmpl.FirstBtnClick(Sender: TObject);
begin
  exportgrid;
  case TIWButton(Sender).Tag of
  1 : page:=1;
  2 : page:=max(page-1,1);
  3 : page:=min(page+1,memo.Lines.Count div pagesize + 1);
  4 : page:=memo.Lines.Count div pagesize + 1;
  end;
  drawgrid;
end;

procedure TFormImageUpTmpl.PageComboChange(Sender: TObject);
begin
  exportgrid;
  page:=pagecombo.itemindex+1;
  drawgrid;
end;

function checkconstraint(constraint : string; s : TStream; b : TBitmap) : boolean;
var
  param : string;
  value : string;
begin
  result:=true;
  param:=clipspaces(uppercase(copy (constraint,1,pos('=',constraint)-1)));
  value:=clipspaces(copy (constraint,length(param)+2,999));
  try
    if param='MAXWIDTH' then begin
      if assigned(b) then
         result:=b.Width<=strtoint(value)
    end else if param='MINWIDTH' then begin
      if assigned(b) then
         result:=b.Width>=strtoint(value)
    end else if param='MINHEIGHT' then begin
      if assigned(b) then
         result:=b.Height>=strtoint(value)
    end else if param='MAXHEIGHT' then begin
      if assigned(b) then
         result:=b.Height<=strtoint(value)
    end else if param='MAX' then begin
      if assigned(s) then
         result:=s.Size<=strtoint(value);
    end;
  except
    result:=false;
  end;
end;

function TFormImageUpTmpl.checkconstraints (s : TStream; b : TBitmap) : boolean;
var
  pt : string;
  constraint : string;
  fieldtype : string;
  sl : TStringlist;
  i : integer;
  val : string;
begin
  result:=false;
  fieldtype:=RcDataModule.GetValue ('edittmpltype','???');
  constraint:=RcDataModule.GetValue ('edittmplconstraint','');
  sl:=TStringlist.Create;
  try
    getcommafields(sl,constraint);
    for I := 0 to sl.Count-1 do begin
      if not checkConstraint (sl[i],s,b) then begin
         WebApplication.ShowMessage('Error : Constraint '+sl[i], smAlert);
         exit;
      end;
    end;
  finally
    sl.Free;
  end;
  result:=true;
end;

procedure TFormImageUpTmpl.PostButtonClick(Sender: TObject);
var
   ms, textstream : TMemoryStream;
   i : integer;
   uq : TIBQuery;
begin
  textstream := nil;
  ms:=nil;
  try
    if (modecombo.itemindex=1) {text} and (view.ItemIndex=1) then begin
       // Grid view
       exportgrid;
    end;
    if (modecombo.itemindex<>7) {script}  and (modecombo.itemindex<>3) {Stock} then begin
      for i:=0 to Memo.lines.count-1 do begin
         Memo.Lines.Strings[i]:=FixFormat(Memo.Lines.Strings[i]);
      end;
    end;
    ms := TMemoryStream.Create;
    if not (modecombo.itemindex in [0,13]) {image, rendered image} then begin
        Memo.Lines.SaveToStream(ms,TEncoding.UTF8);
        ms.position := 3;  // Avoid BOM
        textstream := TMemoryStream.Create;
        textstream.CopyFrom(ms,ms.size-3);
        freeandnil(ms);
    end;

    if (modecombo.itemindex in [0,13]) {image, rendered image} then begin
       if not checkconstraints (nil,workimg) then
         exit;
    end else begin
       // Some text blob
       if not checkconstraints (textstream,nil) then
         exit;
    end;

    uq:=RcDataModule.ImageUpdateQueryTmpl;
    uq.ParamByName('ID').AsString :=
      RcDataModule.CurrentImageQueryTmpl.ParamByName('ID').AsString;
    uq.ParamByName('DATAMODE').AsInteger :=
      ModeCombo.ItemIndex;
    uq.ParamByName('FORMAT').AsInteger :=
      FormatCombo.ItemIndex;
    uq.ParamByName('RESIDENT').AsInteger :=
      Ord(MemBox.Checked);
    uq.ParamByName('COLOUR').AsInteger :=
      ColCombo.ItemIndex;
    uq.ParamByName('COMPANY').AsString := UserSession.Company;
    if workimg <> nil then begin
      ms := TMemoryStream.Create;
      try
        workimg.SaveToStream(ms);
        ms.position := 0;
        uq.ParamByName('IMAGE').loadfromStream(ms,ftBlob);
      finally
        freeandnil(ms);
      end;
    end else begin
      uq.ParamByName('IMAGE').AsString := '';
    end;
    if assigned(textstream) then
       uq.ParamByName('TEXT').loadfromStream(textstream,ftBlob);
    uq.ExecSQL;
    uq.Transaction.Commit;

    with RcDataModule do try
      SQLQry.Transaction.Active:=false;
      SQLQry.Transaction.Active:=true;
      SQLQry.SQL.Clear;
      SQLQry.SQL.Add('update GROUPOBJHDR set CURRENTID=:CURRENT where ID=:ID and COMPANY=:COMPANY');
      SQLQry.ParamByName ('CURRENT').AsString:=RcDataModule.CurrentImageQueryTmpl.ParamByName('ID').AsString;
      SQLQry.ParamByName ('ID').AsString:=RcDataModule.GetValue ('editparam','');
      SQLQry.ParamByName ('COMPANY').AsString:=UserSession.Company;
      SQLQry.ExecSQL;
      SQLQry.Transaction.Commit;
    except
    end;
    GoImages;
  finally
    if assigned(textstream) then textstream.free;
    if assigned(ms) then ms.free;
  end;
end;

function TFormImageUpTmpl.convertCSV (s : string) : string;
Var
  ts : tstringlist;
  i : integer;
Begin
  Ts := Tstringlist.create;
  Ts.StrictDelimiter:=true;
  Ts.CommaText := S;
  s:='';
  for I := 0 to ts.count-1 do begin
      s:=s+ts[i]+#9;
  end;
  delete (s,length(s),1);
  ts.free;
  result:=s;
end;

procedure SetSpaceText(sl : TStrings; const Value: string);
var
  LOldDelimiter: Char;
  LOldQuoteChar: Char;
begin
  LOldDelimiter := sl.Delimiter;
  LOldQuoteChar := sl.QuoteChar;
  sl.Delimiter := ' ';
  sl.QuoteChar := '"';
  sl.StrictDelimiter:=true;
  try
    sl.DelimitedText:=Value;
  finally
    sl.Delimiter := LOldDelimiter;
    sl.QuoteChar := LOldQuoteChar;
  end;
end;

procedure SetTabText(sl : TStrings; const Value: string);
var
  LOldDelimiter: Char;
  LOldQuoteChar: Char;
begin
  LOldDelimiter := sl.Delimiter;
  LOldQuoteChar := sl.QuoteChar;
  sl.Delimiter := #9;
  sl.QuoteChar := '"';
  sl.StrictDelimiter:=true;
  try
    sl.DelimitedText:=Value;
  finally
    sl.Delimiter := LOldDelimiter;
    sl.QuoteChar := LOldQuoteChar;
  end;
end;

function TFormImageUpTmpl.convertSpace (s : string) : string;
Var
  ts : tstringlist;
  i : integer;
Begin
  Ts := Tstringlist.create;
  setspacetext (Ts,S);
  s:='';
  for I := 0 to ts.count-1 do begin
      s:=s+ts[i]+#9;
  end;
  delete (s,length(s),1);
  ts.free;
  result:=s;
end;

function TFormImageUpTmpl.modifyTabRec (s : string; col : integer; line : integer; modfunc : TModfunc = nil) : string;
Var
  ts : tstrings;
  i : integer;
Begin
  Ts := Tstringlist.create;
  settabtext (Ts,S);
  s:='';
  if assigned(modfunc) then begin
     modfunc(ts,col,line=0);
  end;
  for I := 0 to ts.count-1 do begin
      s:=s+ts[i]+#9;
  end;
  delete (s,length(s),1);
  ts.free;
  result:=s;
end;

procedure TFormImageUpTmpl.convertCSVMemo;
Var
  S : string;
  element : integer;
Begin
  for element:=0 to memo.lines.count-1 do begin
     s:=memo.lines[element];
     memo.lines[element]:=convertcsv (s);
  end;
  if memo.lines.count>0  then begin
     if (fileformatcombo.ItemIndex=1) and (pos('!!HEADER!!',memo.lines[0])=0) then
        memo.lines[0]:='!!HEADER!!'+memo.lines[0];
  end;
end;

procedure TFormImageUpTmpl.convertSpaceMemo;
Var
  S : string;
  element : integer;
Begin
  for element:=0 to memo.lines.count-1 do begin
     s:=memo.lines[element];
     memo.lines[element]:=convertspace (s);
  end;
  if memo.lines.count>0  then begin
     if (fileformatcombo.ItemIndex=3) and (pos('!!HEADER!!',memo.lines[0])=0) then
        memo.lines[0]:='!!HEADER!!'+memo.lines[0];
  end;
end;

procedure TFormImageUpTmpl.CSVBoxClick(Sender: TObject);
begin
  DrawPreviewGrid;
end;

procedure TFormImageUpTmpl.UploadBtnClick(Sender: TObject);
var
  ms : TMemoryStream;
  error : string;
begin
  ms := TMemorystream.Create;
  error:='';
  try
    case datamodes(modecombo.itemindex) of
      dmImage,
      dmRenderedImage:
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
      dmText,
      dmRenderedText,
      dmNet:
        try
          error:='Text : ';
          UploadFile.SaveToStream(ms);
          ms.position := 0;
          error:='Show Text : ';
          showText(ms);
          if view.ItemIndex<>0 then begin
            DrawPreviewGrid;
          end;
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

function TFormImageUpTmpl.fixgridwidth : boolean;
var
  width : integer;
  element : integer;
  oldwidth : integer;
begin
  oldwidth:=grid.width;
  if grid.rowcount=0 then begin
     grid.width:=10;
     result:=false;
     exit;
  end;
  width:=8;
  for element:=0 to grid.columncount-2 do
    width:=width+grid.BorderSize*2+4+TIWEdit(grid.Cell[0, element].control).width;
  grid.Width:=width;
  if grid.rowcount>1 then
     grid.Width:=grid.width+grid.BorderSize*2+2+45;   // Allow for 'delete' link
  if grid.width>imageregion.width then grid.width:=imageregion.width;
  result:=oldwidth<>grid.width;
end;

procedure TFormImageUpTmpl.DrawGrid;

  function nextfield (s : string; delim : char) : string;
  var
    i : integer;
  begin
    for I := 1 to length(s) do begin
      if s[i]=delim then begin
         result:=copy (s,1,i-1);
         exit;
      end
    end;
    result:=s;
  end;

  function countfields (s : string; delim : char) : integer;
  var
    j : string;
    count : integer;
  begin
    count:=0;
    while s<>'' do begin
       j:=nextfield(s,delim);
       delete (s,1,length(j)+1);
       inc (count);
    end;
    result:=count;
  end;

var
  i: integer;
  element: integer;
  grid_index : integer;
  s : string;
  maxcol : integer;
  col : integer;
  j : string;
  len : integer;
begin
  pagecombo.Items.Clear;
  for i:=1 to (memo.lines.count-1) div pagesize do
     pagecombo.Items.Add('Page : '+inttostr(i));
  if ((memo.Lines.Count-1) mod pagesize>0) or (memo.Lines.Count=1) then
     pagecombo.Items.Add('Page : '+inttostr((memo.Lines.Count-1) div pagesize + 1));
  pagecombo.ItemIndex:=page-1;
  with Grid do begin
    element:=(page-1)*pagesize;

    RowCount := 0;    // header row
    maxcol:=1;

    while element < min(memo.lines.count,page*pagesize+1) do begin
        RowCount := RowCount + 1;
        col:=countfields(memo.lines[element],#9);
//        showmessage ('Fields='+inttostr(col));
        inc (element);
        if col>maxcol then maxcol:=col;
    end;
    grid.ColumnCount:=maxcol+1;

    if memo.lines.Count>0 then begin
       s:=dequotetext(memo.lines[0]);
       if copy(dequotetext(memo.lines[0]),1,10)='!!HEADER!!' then  begin
          delete (s, 1, 10);
          for col:=0 to maxcol-1 do begin
            if s<>'' then begin
              j:=nextfield (s,#9);
              delete (s,1,length(j)+1);
            end else j:='';
            if j='' then
               j:='Column '+inttostr(col+1);

            len:=200;
            if pos(':',j)>0 then
               try
                 len:=strtoint(copy(j,pos(':',j)+1));
                 j:=(copy(j,1,pos(':',j)-1));
                 if (len<10) or (len>800) then len:=200;
               except
                 len:=200;
               end;
            with Cell[0, col] do begin
              Control := TIWEdit.Create(Self);
              with TIWEdit(Control) do begin
                Text := j;
                Width := len;
                BGColor := $00D8B7A2;
              end;
            end;
          end;
       end else begin
          grid.RowCount:=grid.RowCount+1;
          for col:=0 to maxcol-1 do begin
            j:='Column '+inttostr(col+1);
            with Cell[0, col] do begin
              Control := TIWEdit.Create(Self);
              with TIWEdit(Control) do begin
                Text := j;
                Width := 200;
                BGColor := $00D8B7A2;
              end;
            end;
          end;
       end;
    end;

    grid_index:=1;
    element:=(page-1)*pagesize+1;
    while element < min(memo.lines.count,page*pagesize+1) do begin
        s:=memo.lines[element];
        try
          s:=dequotetext(s);
        except
        end;

        for col:=0 to maxcol-1 do begin
          if s<>'' then begin
            j:=nextfield (s,#9);
            delete (s,1,length(j)+1);
          end else j:='';

          with Cell[grid_index, col] do begin
            Control := TIWEdit.Create(Self);
            with TIWEdit(Control) do begin
              Text := j;
              Width := TIWEdit(self.grid.cell[0,col].control).width;
            end;
          end;
        end;
        with Cell[grid_index, maxcol] do begin
            text:='Delete';
            clickable:=true;
        end;
        inc(element);
        inc (grid_index);
      end;
  end;
  fixgridwidth;
  setcolumnlist;
end;

procedure TFormImageUpTmpl.DrawPreviewGrid;

  function nextfield (s : string) : string;
  var
    i : integer;
  begin
    for I := 1 to length(s) do begin
      if s[i]=#9 then begin
         result:=copy (s,1,i-1);
         exit;
      end
    end;
    result:=s;
  end;

  function countfields (s : string) : integer;
  var
    j : string;
    count : integer;
  begin
    count:=0;
    while s<>'' do begin
       j:=nextfield(s);
       delete (s,1,length(j)+1);
       inc (count);
    end;
    result:=count;
  end;

var
  element: integer;
  grid_index : integer;
  s : string;
  maxcol : integer;
  col : integer;
  j : string;
  ts : TStringlist;
begin
  gridpreviewregion.Visible:=true;
  with Preview do begin
    element:=0;

    RowCount := 0;    // header row
    maxcol:=1;
    ts:=tStringlist.Create;

    while (element < memo.lines.count) and (element<5) do begin
        ts.Add(memo.lines[element]);
        if fileformatcombo.ItemIndex in [0,1] then
           ts[element]:=convertCSV(ts[element])
        else if fileformatcombo.ItemIndex in [2,3] then
           ts[element]:=convertSpace(ts[element]);

        RowCount := RowCount + 1;
        col:=countfields(ts[element]);
//        showmessage ('Fields='+inttostr(col));
        inc (element);
        if col>maxcol then maxcol:=col;
    end;
    ColumnCount:=maxcol;
    element:=0;

    if ts.Count>0 then begin
       s:=dequotetext(ts[0]);
       if fileformatcombo.ItemIndex in [1,3] then begin  // Inc. Titles
          for col:=0 to maxcol-1 do begin
            if s<>'' then begin
              j:=nextfield (s);
              delete (s,1,length(j)+1);
            end else j:='';
            if j='' then
               j:='Column '+inttostr(col+1);

            if pos(':',j)>0 then
               try
                 j:=(copy(j,1,pos(':',j)-1));
               except
               end;
            with Cell[element, col] do begin
                Text := htmlquote(j);
                BGColor := $00D8B7A2;
            end;
          end;
          element:=1; // Ignore first line when loading the normal fields
       end else begin
          RowCount:=RowCount+1;
          for col:=0 to maxcol-1 do begin
            with cell[0,col] do begin
              j:='Column '+inttostr(col+1);
              Text := j;
              BGColor := $00D8B7A2;
            end;
          end;
       end;
    end;

    grid_index:=1;
    while element < ts.count do begin
      s:=ts[element];
      try
        s:=dequotetext(s);
      except
      end;

      for col:=0 to maxcol-1 do begin
        if s<>'' then begin
          j:=nextfield (s);
          delete (s,1,length(j)+1);
        end else j:='';

        with Cell[grid_index, col] do begin
          text:=htmlquote(j);
          BGColor:=$00EBDAD0;
        end;
      end;
      inc(element);
      inc (grid_index);
    end;
  end;
end;

procedure TFormImageUpTmpl.viewChange(Sender: TObject);
begin
  case view.ItemIndex of
    0 : begin
       exportgrid;
       grid.Visible:=false;
       gridctrls.Visible:=false;
       sortbtn.Visible:=true;
       spacebtn.Visible:=true;
       memo.Visible:=true;
       wrapbox.visible:=true;
    end;
    1,2 : begin
       page:=1;
       if memo.Lines.count=0 then
          memo.Lines.Add(quotetext('!!HEADER!!'));
       if  (copy(dequotetext(memo.Lines[0]),1,10)<>'!!HEADER!!') then
          memo.Lines.insert(0,quotetext('!!HEADER!!'));
       drawgrid;
       grid.Visible:=true;
       gridctrls.Visible:=true;
       memo.Visible:=false;
       sortbtn.Visible:=false;
       spacebtn.Visible:=false;
       wrapbox.visible:=false;
       repainttimer.enabled:=true;
    end;
  end;
end;

procedure TFormImageUpTmpl.DelBtnClick(Sender: TObject);
begin
  if RcDataModule.CurrentImageQueryTmpl.Active then begin
    RcDataModule.ImageDeleteQuery.ParamByName('ID').AsString :=
      RcDataModule.CurrentImageQueryTmpl.FieldByName('ID').AsString;
    RcDataModule.ImageDeleteQuery.ParamByName('COMPANY').AsString :=
      RcDataModule.CurrentImageQueryTmpl.FieldByName('COMPANY').AsString;
    RcDataModule.ImageDeleteQuery.ExecSQL;
    if (referedby=nil) then RcDataModule.ImageDeleteQuery.Transaction.Commit;
  end;
  GoImages;
end;

procedure TFormImageUpTmpl.DiscardBtnClick(Sender: TObject);
begin
   GridPreviewRegion.Visible:=false;
end;

procedure TFormImageUpTmpl.FormatComboChange(Sender: TObject);
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

procedure TFormImageUpTmpl.IWAppFormDestroy(Sender: TObject);
begin
   workimg.Free;
   original.free;
end;

procedure TFormImageUpTmpl.IWAppFormResize(Sender: TObject);
begin
  if view.itemindex>0 then fixgridwidth;
end;

procedure TFormImageUpTmpl.AdjBtnClick(Sender: TObject);
var
  bm : TBitmap;
  r : TRect;
  mul : integer;
  d,k : integer;
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
     if colcombo.visible and (colcombo.itemindex<>0) then
        makegrey (bm,workimg,colcombo.ItemIndex)
     else begin
        if borderbox.checked then begin
          makeanythingbut(bm,$AAAA00);
          bm.Canvas.Pen.Color:=$AAAA00; //fefefe;
          bm.Canvas.Pen.Width:=3;
          bm.Canvas.Brush.Style:=bsclear;
          d:=max(min(bm.width,bm.height) div 10,10);
          for k:=0 to d do begin
             bm.Canvas.RoundRect(1-k,1-k,bm.Width-1+k,bm.Height-1+k,d,d);
          end;
        end;
        workimg.assign(bm);
     end;
     if borderbox.checked then begin

     end;
     bm.Free;
     display_work_image;
  end;
end;

procedure TFormImageUpTmpl.MakeGrey (oldimg : TBitmap; var newimg : TBitmap; colour : integer);
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

procedure TFormImageUpTmpl.PreferLabelAsyncMouseOut(Sender: TObject;
  EventParams: TStringList);
begin
voucherlabel.Color:=clRed;
end;

procedure TFormImageUpTmpl.PreferLabelAsyncMouseOver(Sender: TObject;
  EventParams: TStringList);
begin
  voucherlabel.color:=clGreen;

end;

procedure TFormImageUpTmpl.repainttimerTimer(Sender: TObject);
begin
  repainttimer.enabled:=false;
end;

procedure TFormImageUpTmpl.MemoAsyncKeyPress(Sender: TObject;
  EventParams: TStringList);
begin
  // nothing much to do, just causes session timer to reset
end;

procedure TformImageUpTmpl.memosort;
var
  i : integer;
  header : string;
begin
  memo.Lines.CaseSensitive:=true;
  for i:=0 to Memo.Lines.Count-1 do begin
     Memo.Lines[i]:=fixformat(Memo.Lines[i]);
  end;
  header:='';
  if copy(memo.lines[0],1,11)='''!!HEADER!!' then begin
     header:=memo.lines[0];
     memo.Lines.Delete(0);
  end;
  memo.Lines.Sort;
  if header <>'' then
     memo.Lines.Insert(0,header);
end;


procedure TFormImageUpTmpl.SortBtnClick(Sender: TObject);
begin
  memosort;
end;

procedure TFormImageUpTmpl.SpacebtnClick(Sender: TObject);
var
  i : integer;
  j: Integer;
  s : string;
begin
  for i:=0 to memo.Lines.count-1 do begin
     s:=memo.Lines[i];
     for j := 1 to length(s) do begin
         if s[j]=' ' then s[j]:=#9
     end;
     memo.Lines[i]:=s;
  end;
end;

procedure TFormImageUpTmpl.SynBtnClick(Sender: TObject);
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

procedure TFormImageUpTmpl.WrapBoxClick(Sender: TObject);
begin
  memo.HorizScrollBar:=not wrapbox.Checked;
end;

end.

