unit textblockfrm;

interface

uses
  Classes, SysUtils, IWAppForm, IWApplication, IWColor, IWTypes,
  IWCompListbox, IWCompButton, IWCompEdit, IWCompRectangle, IWHTMLControls,
  IWSiLink, IWVCLBaseControl, IWBaseControl, IWBaseHTMLControl, IWControl,
  IWCompLabel, IWVCLBaseContainer, IWContainer, IWHTMLContainer,
  IWHTML40Container, IWRegion, footer_user, Controls, Forms, baretitle,
  IWExtCtrls, IWGrids, Graphics, Types, IWCompMemo, IWBaseComponent,
  IWBaseHTMLComponent, IWBaseHTML40Component;

type
  TformTextBlockEdit = class(TIWAppForm)
    FrameBareTitle1: TFrameBareTitle;
    userfooter1: Tuserfooter;
    IWRegion1: TIWRegion;
    IWRegion2: TIWRegion;
    VoucherLabel: TIWLabel;
    IWSiLink1: TIWSiLink;
    IWRectangle2: TIWRectangle;
    IWRectangle1: TIWRectangle;
    PreviewGrid: TIWGrid;
    textedit: TIWEdit;
    IWLabel1: TIWLabel;
    IWLabel3: TIWLabel;
    YesBtn: TIWImage;
    NoBtn: TIWImage;
    FontBtn: TIWImageFile;
    boldbtn: TIWImageFile;
    heightbtn: TIWImageFile;
    WidthBtn: TIWImageFile;
    underlinebtn: TIWImageFile;
    positionBtn: TIWImageFile;
    procedure UpdateClick(Sender: TObject);
    procedure PositionBtnAsyncClick(Sender: TObject;
      EventParams: TStringList);
    procedure HeightBtnAsyncClick(Sender: TObject;
      EventParams: TStringList);
    procedure WidthBtnAsyncClick(Sender: TObject;
      EventParams: TStringList);
    procedure BoldFontBtnAsyncClick(Sender: TObject; EventParams: TStringList);
    procedure FontBtnAsyncClick(Sender: TObject; EventParams: TStringList);
    procedure IWAppFormCreate(Sender: TObject);
    procedure UnderlineBtnAsyncClick(Sender: TObject;
      EventParams: TStringList);
    procedure texteditAsyncKeyPress(Sender: TObject;
      EventParams: TStringList);
    procedure PreviewGridCellClick(ASender: TObject; const ARow,
      AColumn: Integer);
    procedure NoBtnAsyncClick(Sender: TObject; EventParams: TStringList);
    procedure YesBtnClick(Sender: TObject);
    procedure IWButton1Click(Sender: TObject);
    procedure texteditSubmit(Sender: TObject);
  private
    _textflags : integer;
    lines : TStringlist;
    editline : integer;
    procedure EditLineClickAsync(Sender: TObject; EventParams: TStringList);
    procedure EditLineClick(Sender: TObject);
    procedure SetTextFlags(Value: Integer);
    procedure addline (s : string; flags : integer; index : integer);
    property textflags : integer read _textflags write SetTextFlags;
    function Drawtext (s : string; flags : integer; selected : boolean) : TBitmap;
    procedure DeleteLineClick(Sender: TObject);
    procedure AddLineClick(Sender: TObject);
    procedure checkeditlen;
  public
  end;

implementation

{$R *.dfm}

const
  SMALLFONT = $1;

  X2WIDTH = $2;
  X2HEIGHT = $4;
  X2MASK = $6;

  BOLDFONT = $8;
  ULFONT = $10;

  JUSTLEFT = $00;
  JUSTCENTRE = $20;
  JUSTRIGHT = $40;
  JUSTMASK = $60;

  PAPERPIX = 390;

procedure TformTextBlockEdit.SetTextFlags(Value: Integer);
begin
  if Value <> _TextFlags then
  begin
    _TextFlags := Value;
    if (textflags and X2HEIGHT)<>0 then
       heightbtn.imageFile.Filename:='x2_height_sel.bmp'
       else
       heightbtn.imageFile.Filename:='x2_height.bmp';
    if (textflags and X2WIDTH)<>0 then
       widthbtn.imageFile.Filename:='x2_width_sel.bmp'
       else
       widthbtn.imageFile.Filename:='x2_width.bmp';
    if (textflags and SMALLFONT)<>0 then
       fontbtn.imageFile.Filename:='small_font_sel.bmp'
       else
       fontbtn.imageFile.Filename:='small_font.bmp';
    if (textflags and BOLDFONT)<>0 then
       boldbtn.imageFile.Filename:='bold_sel.bmp'
       else
       boldbtn.imageFile.Filename:='bold.bmp';
    if (textflags and ULFONT)<>0 then
       underlinebtn.imageFile.Filename:='underline_sel.bmp'
       else
       underlinebtn.imageFile.Filename:='underline.bmp';
    if (textflags and JUSTMASK)=JUSTLEFT then begin
         positionbtn.imageFile.Filename:='left_justify.bmp';
    end else if (textflags and JUSTMASK)=JUSTCENTRE then begin
         positionbtn.imageFile.Filename:='centre_justify.bmp';
    end else begin
         positionbtn.imageFile.Filename:='right_justify.bmp';
    end;
  end;
  checkeditlen;
end;

function TformtextBlockEdit.Drawtext (s : string; flags : integer; selected : boolean) : TBitmap;
var
  bm, bm2 : TBitmap;
  r : TRect;
  w, h, x : integer;
begin
  Bm := TBitmap.Create;
  bm.Width:=PAPERPIX+5;
  bm.Height:=18;
  Bm.Canvas.Font.Height:=17;
  if (flags and SMALLFONT)<>0 then
     Bm.Canvas.Font.Height:=13;
  Bm.Canvas.Font.Name:='Bitstream Vera Sans Mono';
  Bm.Canvas.Font.color:=clBlack;
  Bm.Canvas.Font.Style:=[];
  if selected then begin
    Bm.Canvas.Brush.Color:=clYellow;
    Bm.Canvas.FillRect(Bm.Canvas.ClipRect);
  end;
  if (flags and BOLDFONT)<>0 then Bm.Canvas.Font.Style:=Bm.Canvas.Font.Style+[fsBold];
  if (flags and ULFONT)<>0 then Bm.Canvas.Font.Style:=Bm.Canvas.Font.Style+[fsUnderline];
  Bm.Canvas.Font.Pitch:=fpFixed;
  w:=Bm.Canvas.TextWidth(textedit.Text);
  case (flags and JUSTMASK) of
    JUSTLEFT : x:=0;
    JUSTCENTRE : begin
       if (flags and X2WIDTH)<>0 then begin
          x:=(PAPERPIX div 4) - (w div 2);
       end else
          x:=(PAPERPIX div 2) - (w div 2);
       if x<0 then x:=0;
    end;
    JUSTRIGHT : begin
       if (flags and X2WIDTH)<>0 then begin
          x:=(PAPERPIX div 2)-w;
       end else
          x:=PAPERPIX-w;
       if x<0 then x:=0;
    end;
  end;
  Bm.Canvas.TextOut(x,0,textedit.Text);
  bm2:=TBitmap.Create;
  bm2.Width:=bm.Width;
  bm2.Height:=bm.Height;
  if (flags and X2HEIGHT)<>0 then
      bm2.height:=bm2.height*2;
  if (flags and X2WIDTH)<>0 then
      bm2.width:=bm2.width*2;
  r.Left:=0; r.Top:=0; r.Bottom:=bm2.height; r.Right:=bm2.Width;
  bm2.canvas.StretchDraw(r,bm);
  bm2.width:=PAPERPIX+5;
  bm.free;
  result:=bm2;
end;

procedure TformTextBlockEdit.addline (s : string; flags : integer; index : integer);
var
  r,c : integer;
  bm : tbitmap;
begin
  lines.InsertObject(index,s,TObject(flags));

  with previewgrid do begin
     RowCount := RowCount + 1;
     for c:=0 to columncount-1 do begin
       for r:=Rowcount-1 downto index+1 do
         Cell[r,c].Control:=Cell[r-1,c].Control;
       Cell[index,c].Control:=nil;
     end;

     with Cell[index, 3] do begin
        Control := TIWImageButton.Create(Self);
        with TIWImageButton(Control) do begin
          ImageFile.Filename := 'minus.bmp';
          Width := 15;
          Height := 15;
          OnClick:=deletelineclick;
          Tag:=0;
          UseSize:=false;
          Hint:='Delete line';
          ZIndex:=100;
        end;
     end;
     with Cell[index, 2] do begin
        Control := TIWImageButton.Create(Self);
        with TIWImageButton(Control) do begin
          ImageFile.Filename := 'plus.bmp';
          Width := 15;
          Height := 15;
          OnClick:=addlineclick;
          Tag:=0;
          UseSize:=false;
          Hint:='Insert blank line here';
          ZIndex:=100;
        end;
     end;
     with Cell[index, 1] do begin
        Control := TIWImageButton.Create(Self);
        with TIWImageButton(Control) do begin
          ImageFile.Filename := 'edit.bmp';
          Width := 15;
          Height := 15;
          OnClick:=editlineclick;
          Tag:=0;
          UseSize:=false;
          Hint:='Edit';
          ZIndex:=100;
       end;
     end;
     with Cell[index, 0] do begin
        Control := TIWImage.Create(Self);
        with TIWImage(Control) do begin
          Control.Height:=18;
          Control.Width:=PAPERPIX+5;
          Bm := DrawText (s,flags,false);
          Picture.Bitmap.Assign(bm);
          bm.free;
        end;
     end;
  end;
end;

procedure TformTextBlockEdit.UpdateClick(Sender: TObject);
var
  bm : TBitmap;
  r : TRect;
  mag : integer;
begin
  mag:=1;
  if (textflags and X2WIDTH)<>0 then mag:=2;
  if (textflags and SMALLFONT)<>0 then begin
     textedit.Text:=copy (textEdit.Text,1,56 div mag);
  end else begin
     textedit.Text:=copy (textEdit.Text,1,42 div mag);
  end;
  if editline=-1 then begin
    addline (textedit.text,textflags,previewgrid.RowCount);
    textedit.Text:='';
    checkeditlen;
    textedit.SetFocus;
  end else begin
    lines[editline]:=textedit.Text;
    lines.Objects[editline]:=TObject(textflags);
    with previewgrid do begin
        with Cell[editline, 1] do begin
          with TIWImageButton(Control) do begin
            ImageFile.Filename := 'edit.bmp';
          end;
        end;
        with Cell[editline, 0] do begin
          Control := TIWImage.Create(Self);
          with TIWImage(Control) do begin
            Control.Height:=18;
            Control.Width:=PAPERPIX+5;
            Bm := DrawText (textedit.Text,textflags,false);
            Picture.Bitmap.Assign(bm);
            bm.free;
            textedit.Text:='';
            textedit.SetFocus;
          end;
       end;
    end;
    editline:=-1;
  end;
  if lines.count>0 then begin
     textflags:=integer(lines.objects[lines.count-1]);
  end else textflags:=0;
  checkeditlen;
end;

procedure TformTextBlockEdit.PositionBtnAsyncClick(Sender: TObject;
  EventParams: TStringList);
begin
  if (textflags and JUSTMASK)=JUSTLEFT then begin
     textflags:=(textflags and not JUSTMASK) or JUSTCENTRE;
  end else if (textflags and JUSTMASK)=JUSTCENTRE then begin
     textflags:=(textflags and not JUSTMASK) or JUSTRIGHT;
  end else begin
     textflags:=(textflags and not JUSTMASK) or JUSTLEFT;
  end;
  textedit.SetFocus;
end;

procedure TformTextBlockEdit.HeightBtnAsyncClick(Sender: TObject;
  EventParams: TStringList);
begin
  if (textflags and X2HEIGHT)=X2HEIGHT then begin
     textflags:=textflags and not X2HEIGHT;
  end else begin
     textflags:=textflags or X2HEIGHT;
  end;
  textedit.SetFocus;
end;

procedure TformTextBlockEdit.WidthBtnAsyncClick(Sender: TObject;
  EventParams: TStringList);
begin
  if (textflags and X2WIDTH)=X2WIDTH then begin
     textflags:=textflags and not X2WIDTH;
  end else begin
     textflags:=textflags or X2WIDTH;
  end;
  textedit.SetFocus;
end;

procedure TformTextBlockEdit.BoldFontBtnAsyncClick(Sender: TObject;
  EventParams: TStringList);
begin
  if (textflags and BOLDFONT)=BOLDFONT then begin
     textflags:=textflags and not BOLDFONT;
  end else begin
     textflags:=textflags or BOLDFONT;
  end;
  textedit.SetFocus;
end;

procedure TformTextBlockEdit.FontBtnAsyncClick(Sender: TObject;
  EventParams: TStringList);
begin
  if (textflags and SMALLFONT)=SMALLFONT then begin
     textflags:=textflags and not SMALLFONT;
  end else begin
     textflags:=textflags or SMALLFONT;
  end;
  textedit.SetFocus;
end;


procedure TformTextBlockEdit.EditLineClickAsync(Sender: TObject;
  EventParams: TStringList);
var
  row : integer;
begin
  row:=0;
  while row<previewgrid.RowCount do begin
    if previewgrid.Cell[row,1].Control=Sender then begin
       PreviewGridCellClick(Sender,row, 2);
       exit;
    end;
    row:=row+1;
  end;
end;

procedure TformTextBlockEdit.AddLineClick(Sender: TObject);
var
  row : integer;
begin
  row:=0;
  while row<previewgrid.RowCount do begin
    if previewgrid.Cell[row,2].Control=Sender then begin
       addline ('',textflags,row);
       textedit.Text:='';
       checkeditlen;
       textedit.SetFocus;
       exit;
    end;
    row:=row+1;
  end;
end;

procedure TformTextBlockEdit.DeleteLineClick(Sender: TObject);
var
  row : integer;
begin
  row:=0;
  while row<previewgrid.RowCount do begin
    if previewgrid.Cell[row,3].Control=Sender then begin
       previewgrid.DeleteRow(row);
       lines.Delete(row);
       if editline=row then begin
          editline:=-1;
          textedit.Clear;
          textedit.SetFocus;
       end;
       if lines.count>0 then begin
          textflags:=integer(lines.objects[lines.count-1]);
       end else textflags:=0;
       checkeditlen;
       exit;
    end;
    row:=row+1;
  end;
end;


procedure TformTextBlockEdit.EditLineClick(Sender: TObject);
var
  row : integer;
begin
  row:=0;
  while row<previewgrid.RowCount do begin
    if previewgrid.Cell[row,1].Control=Sender then begin
       PreviewGridCellClick(Sender,row, 2);
       exit;
    end;
    row:=row+1;
  end;
end;

procedure TformTextBlockEdit.IWAppFormCreate(Sender: TObject);
begin
  _textflags:=0;
  lines := TStringlist.Create;
  editline:=-1;
end;

procedure TformTextBlockEdit.UnderlineBtnAsyncClick(Sender: TObject;
  EventParams: TStringList);
begin
  if (textflags and ULFONT)=ULFONT then begin
     textflags:=textflags and not ULFONT;
  end else begin
      textflags:=textflags or ULFONT;
  end;
  textedit.SetFocus;
end;

procedure TformTextBlockEdit.checkeditlen;
var
  mag : integer;
begin
  mag:=1;
  if (textflags and X2WIDTH)<>0 then mag:=2;
  textedit.bgColor:=clWhite;
  if (textflags and SMALLFONT)<>0 then begin
     if (length(textedit.Text)>(56 div mag)) then textedit.bgColor:=clRed;
  end else begin
     if (length(textedit.Text)>(42 div mag)) then textedit.bgColor:=clRed;
  end;
end;

procedure TformTextBlockEdit.texteditAsyncKeyPress(Sender: TObject;
  EventParams: TStringList);
begin
  checkeditlen;
  if EventParams.IndexOf('which=13')<>-1 then begin
    //Updateclick (Sender);
  end;
end;

procedure TformTextBlockEdit.PreviewGridCellClick(ASender: TObject;
  const ARow, AColumn: Integer);
var
  bm : TBitmap;
begin
  with previewgrid.Cell[Arow,AColumn-1].Control as TIWImageButton do begin
    if editline<>-1 then begin
      TIWImageButton(previewgrid.Cell[editline,1].Control).imageFile.Filename:='edit.bmp';
      with PreviewGrid.Cell[editline, 0] do begin
        Control := TIWImage.Create(Self);
        with TIWImage(Control) do begin
          Control.Height:=18;
          Control.Width:=PAPERPIX+5;
          Bm := DrawText (textedit.Text,textflags,false);
          Picture.Bitmap.Assign(bm);
          bm.free;
        end;
      end;
    end;
    imageFile.Filename:='edit_sel.bmp';
    editline:=ARow;
    textedit.Text:=lines[ARow];
    textflags:=integer(lines.Objects[ARow]);
    with PreviewGrid.Cell[editline, 0] do begin
      Control := TIWImage.Create(Self);
      with TIWImage(Control) do begin
        Control.Height:=18;
        Control.Width:=PAPERPIX+5;
        Bm := DrawText (textedit.Text,textflags,true);
        Picture.Bitmap.Assign(bm);
        bm.free;
      end;
   end;
  end;
  checkeditlen;
end;

procedure TformTextBlockEdit.NoBtnAsyncClick(Sender: TObject;
  EventParams: TStringList);
begin
  textedit.Clear;
  textedit.SetFocus;
end;

procedure TformTextBlockEdit.YesBtnClick(Sender: TObject);
begin
  UpdateClick (sender);
end;

procedure TformTextBlockEdit.IWButton1Click(Sender: TObject);
begin
  textedit.Text:='123456789012345678901234567890123456789012';
  _textflags:=0;
  UpdateClick (sender);
  textedit.Text:='12345678901234567890123456789012345678901234567890123456';
  _textflags:=SMALLFONT;
  UpdateClick (sender);
end;

procedure TformTextBlockEdit.texteditSubmit(Sender: TObject);
begin
  Updateclick (Sender);
end;

end.
