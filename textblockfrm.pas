unit textblockfrm;

interface

uses
  Classes, SysUtils, IWAppForm, IWApplication, IWColor, IWTypes,
  IWCompListbox, IWCompButton, IWCompEdit, IWCompRectangle, IWHTMLControls,
  IWSiLink, IWVCLBaseControl, IWBaseControl, IWBaseHTMLControl, IWControl,
  IWCompLabel, IWVCLBaseContainer, IWContainer, IWHTMLContainer,
  IWHTML40Container, IWRegion, footer_user, Controls, Forms, baretitle,
  IWExtCtrls, IWGrids, Graphics, Types, IWCompMemo, IWBaseComponent,
  IWBaseHTMLComponent, IWBaseHTML40Component, IWCompTabControl;

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
    ViewControl: TIWTabControl;
    IWTabControl1Page0: TIWTabPage;
    PreviewGrid: TIWGrid;
    IWTabControl1Page1: TIWTabPage;
    NoBtn: TIWImage;
    textedit: TIWEdit;
    YesBtn: TIWImage;
    FontBtn: TIWImageFile;
    boldbtn: TIWImageFile;
    heightbtn: TIWImageFile;
    WidthBtn: TIWImageFile;
    underlinebtn: TIWImageFile;
    positionBtn: TIWImageFile;
    IWLabel1: TIWLabel;
    memo: TIWMemo;
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
    procedure texteditSubmit(Sender: TObject);
    procedure ViewControlChange(Sender: TObject);
  private
    _textflags : integer;
    lines : TStringlist;
    editline : integer;
    procedure EditLineClickAsync(Sender: TObject; EventParams: TStringList);
    procedure EditLineClick(Sender: TObject);
    procedure SetTextFlags(Value: Integer);
    procedure addline (s : string; flags : integer; index : integer);
    property textflags : integer read _textflags write SetTextFlags;
    function Drawtext (insert : string; s : string; flags : integer; selected : boolean) : TBitmap;
    procedure DeleteLineClick(Sender: TObject);
    procedure AddLineClick(Sender: TObject);
    procedure checkeditlen;
    function Widthoftext (s : string; flags : integer) : integer;
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

  PAPERPIX = 512;

procedure adjust_flags (var flags : integer; name : string; sense : boolean);
var
  f : integer;
begin
  f := 0;
  if name='S' then f:=SMALLFONT
  else if name='W' then f:=X2WIDTH
  else if name='H' then f:=X2HEIGHT
  else if name='B' then f:=BOLDFONT
  else if name='U' then f:=ULFONT;
  if sense then flags:=flags or f else flags:=flags and not f;
end;

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

(*function TformtextBlockEdit.Drawtext (s : string; flags : integer; selected : boolean) : TBitmap;
var
  bm, bm2 : TBitmap;
  r : TRect;
  w, h, x : integer;
  charpitch : integer;
  i : integer;
  maxchar : integer;
begin
  Bm := TBitmap.Create;
  bm.Width:=PAPERPIX;
  bm.Height:=18;
  Bm.Canvas.Font.Height:=17;
  maxchar:=42;
  if (flags and SMALLFONT)<>0 then begin
     Bm.Canvas.Font.Height:=13;
     Bm.height:=15;
     maxchar:=56;
  end;
  if (flags and X2WIDTH)<>0 then begin
     maxchar:=maxchar div 2;
  end;

  if ((flags and X2HEIGHT)<>0) or ((flags and X2WIDTH)<>0) then begin
     Bm.Canvas.Font.Height:=Bm.Canvas.Font.Height*2;
     bm.Height:=bm.height*2;
  end;

  Bm.Canvas.Font.Name:='Lucida Console'; //'Bitstream Vera Sans Mono';
  Bm.Canvas.Font.color:=clBlack;
  Bm.Canvas.Font.Style:=[];
  bm2:=TBitmap.create;
  if selected then begin
    Bm.Canvas.Brush.Color:=clYellow;
    Bm.Canvas.FillRect(Bm.Canvas.ClipRect);
    Bm2.Canvas.Brush.Color:=clYellow;
  end;
  if (flags and BOLDFONT)<>0 then Bm.Canvas.Font.Style:=Bm.Canvas.Font.Style+[fsBold];
  if (flags and ULFONT)<>0 then Bm.Canvas.Font.Style:=Bm.Canvas.Font.Style+[fsUnderline];
  Bm.Canvas.Font.Pitch:=fpFixed;
  charpitch:=Bm.Canvas.TextWidth('X');
  if ((flags and X2HEIGHT)<>0) and ((flags and X2WIDTH)=0) then
    charpitch:=charpitch div 2;
  w:=(PAPERPIX * length(s)) div maxchar;
  case (flags and JUSTMASK) of
    JUSTLEFT : x:=0;
    JUSTCENTRE : begin
       x:=(bm.width div 2) - (w div 2);
       if x<0 then x:=0;
    end;
    JUSTRIGHT : begin
       x:=bm.width-w;
       if x<0 then x:=0;
    end;
  end;

  bm2.Width:=charpitch*2;
  bm2.Height:=bm.Height;
  bm2.Canvas.Font.Name:=bm.Canvas.Font.Name;
  bm2.Canvas.font.height:=bm.Canvas.font.height;
  bm2.Canvas.Font.Style:=bm.Canvas.Font.Style;
  for i:=1 to length (s) do begin
    r.Left:=0; r.Top:=0; r.Bottom:=bm2.height; r.Right:=bm2.Width;
    bm2.Canvas.FillRect(r);
    if (((flags and X2HEIGHT)<>0) and ((flags and X2WIDTH)=0)) then begin
       bm2.Canvas.textOut(0,0,copy (s,i,1));
       r.Left:=x+(((i-1)*PAPERPIX) div maxchar); r.Top:=0;
       r.Bottom:=bm2.height; r.Right:=x+((i*PAPERPIX) div maxchar);
       Bm.canvas.StretchDraw(r,bm2);
    end else begin
       Bm.Canvas.TextOut(x+(((i-1)*PAPERPIX) div maxchar),0,copy (s,i,1));
    end;
  end;

  bm2.Width:=bm.Width;
  bm2.Height:=bm.Height;
  r.Left:=0; r.Top:=0; r.Bottom:=bm2.height; r.Right:=bm2.Width;
  bm2.Canvas.FillRect(r);
  if ((flags and X2HEIGHT)=0) and ((flags and X2WIDTH)<>0) then
      bm2.height:=bm2.height div 2;
  r.Left:=0; r.Top:=0; r.Bottom:=bm2.height; r.Right:=bm2.Width;
  bm2.canvas.StretchDraw(r,bm);
  bm2.width:=PAPERPIX;
  bm.free;
  result:=bm2;
end;
*)

function scalex (x : integer) : integer;
begin
  result:=(x*PAPERPIX) div 512;
end;

function get_token (s : string; i : integer) : string;
var
  j : integer;
begin
  result:='';
  if s[i]<>'{' then exit;
  if copy(s,i,2)='{{' then begin
     result:='{';
     exit;
  end;
  for j:=i+1 to length (s) do begin
     if s[j]='}' then begin
        result:=copy (s,i+1,j-i-1);
        exit;
     end;
  end;
  result:='';
end;

procedure adjust_flags_for_token (var flags : integer; token : string);
var
  reset : boolean;
  i : integer;
begin
  reset:=copy (token,1,1)='/';
  if reset then delete (token,1,1);
  for i:=1 to length(token) do
     adjust_flags (flags,token[i],not reset);
end;

function TformtextBlockEdit.Widthoftext (s : string; flags : integer) : integer;
var
  charpitch : integer;
  i : integer;
  pix_used : integer;
  dispchar : char;
  insert : string;
  sampleindex: integer;
  token : string;
begin
  pix_used := 0;
  charpitch:=12;
  if (flags and SMALLFONT)<>0 then begin
     charpitch:=9;
  end;
  if (flags and X2WIDTH)<>0 then charpitch:=charpitch * 2;

  i:=1;
  while (i<=length (s)) or (length(insert)>0) do begin
    if insert<>'' then begin
       delete (insert,1,1);
    end else begin
       if copy (s,i,1)='{' then begin
          token:=get_token (s,i);
          if token='{' then begin
            insert:='{';   // Just an escaped '{', print a single bracket in black
          end else if token='DATE' then begin
            insert:=FormatDateTime ('dd/mm/yy',now);
          end else if token='TIME' then begin
            insert:=FormatDateTime ('hh:nn',now);
          end else if copy (token,1,1)='$' then begin
            sampleindex:=pos('=',token);
            if sampleindex>0 then
              insert:=copy (token,sampleindex+1,length(token))
            else
              insert:='['+token+']';
          end else begin
            // Must be a format token, adjust font as necessary
            adjust_flags_for_token (flags,token);
            charpitch:=12;
            if (flags and SMALLFONT)<>0 then begin
               charpitch:=9;
            end;
            if (flags and X2WIDTH)<>0 then charpitch:=charpitch * 2;
          end;
          i:=i+2+length(token);
          continue;
       end else begin
          inc (i);
       end;
    end;
    pix_used:=pix_used+charpitch;
  end;
  result:=pix_used;
end;


function TformtextBlockEdit.Drawtext (insert : string; s : string; flags : integer; selected : boolean) : TBitmap;
var
  bm, bm2 : TBitmap;
  r, r2 : TRect;
  charpitch : integer;
  i : integer;
  pix_used : integer;
  tallest : integer;
  dispchar : char;
  sampleindex: integer;
  token : string;
  correction : integer;
  overflow : string;
  end_of_insert : boolean;
begin
  end_of_insert:=false;
  pix_used := 0;
  overflow:='';
  Bm := TBitmap.Create;
  bm2:=TBitmap.create;
  bm.Width:=PAPERPIX;
  bm.Height:=18 * 2; // Allow for biggest
  Bm.Canvas.Font.Height:=17;
  charpitch:=12;
  if (flags and SMALLFONT)<>0 then begin
     Bm.Canvas.Font.Height:=13;
     charpitch:=9;
  end;
  if (flags and X2WIDTH)<>0 then charpitch:=charpitch * 2;
  if ((flags and X2HEIGHT)<>0) or ((flags and X2WIDTH)<>0) then
     Bm.Canvas.Font.Height:=Bm.Canvas.Font.Height*2;

  Bm.Canvas.Font.Name:='Lucida Console'; //'Bitstream Vera Sans Mono';
  Bm.Canvas.Font.color:=clBlack;
  Bm.Canvas.Font.Style:=[];

  tallest:=Bm.Canvas.Font.Height;
  if ((flags and X2HEIGHT)=0) and ((flags and X2WIDTH)<>0) then
     tallest:=tallest div 2;  // The font will be shrunk

  if selected then begin
    Bm.Canvas.Brush.Color:=clYellow;
    Bm.Canvas.FillRect(Bm.Canvas.ClipRect);
    Bm2.Canvas.Brush.Color:=clYellow;
  end;
  if (flags and BOLDFONT)<>0 then Bm.Canvas.Font.Style:=Bm.Canvas.Font.Style+[fsBold];
  if (flags and ULFONT)<>0 then Bm.Canvas.Font.Style:=Bm.Canvas.Font.Style+[fsUnderline];
  Bm.Canvas.Font.Pitch:=fpFixed;

  bm2.Height:=bm.Height;
  bm2.Canvas.Font.Name:=bm.Canvas.Font.Name;
  bm2.Canvas.font.height:=bm.Canvas.font.height;
  bm2.Canvas.Font.Style:=bm.Canvas.Font.Style;
  if insert<>'' then bm2.canvas.font.color:=clAqua else bm2.canvas.font.color:=clBlack;

  i:=1;
  while (i<=length (s)) or (length(insert)>0) do begin
    r.Left:=0; r.Top:=0; r.Bottom:=bm2.height; r.Right:=bm2.Width;
    bm2.Canvas.FillRect(r);
    bm2.width:=charpitch;
    if end_of_insert then bm2.canvas.font.color:=clBlack;
    end_of_insert:=false;
    if insert<>'' then begin
       dispchar:=insert[1];
       delete (insert,1,1);
       end_of_insert:=insert=''; // Just a flag to set font back to black before next char.
    end else begin
       dispchar:=s[i]; //copy (s,i,1);
       if copy (s,i,1)='{' then begin
          token:=get_token (s,i);
          if token='{' then begin
            insert:='{';   // Just an escaped '{', print a single bracket in black
            bm2.canvas.font.color:=clBlack;
            i:=i+2;
            continue;
          end else if token='DATE' then begin
            insert:=FormatDateTime ('dd/mm/yy',now);
          end else if token='TIME' then begin
            insert:=FormatDateTime ('hh:nn',now);
          end else if copy (token,1,1)='$' then begin
            sampleindex:=pos('=',token);
            if sampleindex>0 then
              insert:=copy (token,sampleindex+1,length(token))
            else
              insert:='['+token+']';
          end else begin
            // Must be a format token, adjust font as necessary
            adjust_flags_for_token (flags,token);

            Bm2.Canvas.Font.Height:=17;
            charpitch:=12;
            if (flags and SMALLFONT)<>0 then begin
               Bm2.Canvas.Font.Height:=13;
               charpitch:=9;
            end;
            if (flags and X2WIDTH)<>0 then charpitch:=charpitch * 2;
            if ((flags and X2HEIGHT)<>0) or ((flags and X2WIDTH)<>0) then
                Bm2.Canvas.Font.Height:=Bm2.Canvas.Font.Height*2;
            if (flags and BOLDFONT)<>0 then Bm2.Canvas.Font.Style:=Bm2.Canvas.Font.Style+[fsBold]
                else Bm2.Canvas.Font.Style:=Bm2.Canvas.Font.Style-[fsBold];
            if (flags and ULFONT)<>0 then Bm2.Canvas.Font.Style:=Bm2.Canvas.Font.Style+[fsUnderline]
                else Bm2.Canvas.Font.Style:=Bm2.Canvas.Font.Style-[fsUnderline];
          end;
          i:=i+2+length(token);
          if insert<>'' then bm2.canvas.font.color:=clAqua;

          continue;
       end else begin
          inc (i);
       end;
    end;
    r.Left:=scalex(pix_used); r.Top:=0;
    r.Bottom:=bm2.height; r.Right:=scalex(pix_used+charpitch);
    if (((flags and X2HEIGHT)<>0) and ((flags and X2WIDTH)=0)) then begin
       bm2.width:=charpitch*2;
    end;
    correction:=0;
    if (flags and X2Height)=0 then begin
       if (flags and X2Width)=0 then
         correction:=3
       else
         correction:=5;
    end;
    if (flags and SMALLFONT)<>0 then begin
         correction:=correction+1;
    end;
    bm2.Canvas.textOut(0,bm2.Height-bm2.Canvas.Font.height-correction,dispchar);
    if (((flags and X2HEIGHT)=0) and ((flags and X2WIDTH)<>0)) then begin
      r.Top:=bm2.Height div 2;
      if (bm2.canvas.font.height+correction) div 2>tallest then tallest:=(bm2.canvas.font.height+correction) div 2;
    end else
      if bm2.canvas.font.height+correction>tallest then tallest:=bm2.canvas.font.height+correction;

    Bm.canvas.StretchDraw(r,bm2);
    pix_used:=pix_used+charpitch;
    if pix_used>=512-charpitch then break; // no more space on this line for the current font.
  end;

  overflow:=copy (s,i,length(s));

  bm2.Width:=PAPERPIX;
  bm2.Height:=tallest;
  r.Left:=0; r.Top:=0; r.Bottom:=bm2.height; r.Right:=bm2.Width;
  bm2.Canvas.FillRect(r);

  r.Left:=0; r.Top:=bm.Height-tallest; r.Bottom:=bm.height; r.Right:=pix_used;
  case (flags and JUSTMASK) of
    JUSTLEFT :
      begin
        r2.Left:=0; r2.Top:=0; r2.Bottom:=tallest; r2.Right:=pix_used;
      end;

    JUSTCENTRE :
      begin
        r2.Left:=(bm2.Width-pix_used) div 2; r2.Top:=0; r2.Bottom:=tallest; r2.Right:=r2.Left+pix_used;
      end;

    JUSTRIGHT : begin
      begin
        r2.Left:=bm2.Width-pix_used; r2.Top:=0; r2.Bottom:=tallest; r2.Right:=bm2.width;
      end;
    end;
  end;
  bm2.canvas.copyrect (r2,bm.Canvas,r);
  bm.free;

  if overflow<>'' then begin
     bm:=DrawText (insert,overflow,flags,selected);
     bm2.Height:=bm2.Height+bm.Height;
     r.Left:=0; r.Top:=0; r.Bottom:=bm.height; r.Right:=bm.width;
     r2.Left:=0; r2.Top:=bm2.Height-bm.height; r2.Bottom:=bm2.height; r2.Right:=bm2.width;
     bm2.canvas.copyrect (r2,bm.Canvas,r);
  end;

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
          //OnClick:=editlineclick;
          Control.Height:=18;
          Control.Width:=PAPERPIX+5;
          Bm := DrawText ('',s,flags,false);
          Picture.Bitmap.Assign(bm);
          bm.free;
        end;
     end;
  end;
end;

procedure TformTextBlockEdit.UpdateClick(Sender: TObject);
var
  bm : TBitmap;
begin
  if editline=-1 then begin
    addline (textedit.text,textflags,previewgrid.RowCount);
    textedit.Text:='';
    checkeditlen;
    textedit.SetFocus;
    previewgrid.CurrentRow:=previewgrid.RowCount-1;
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
            Bm := DrawText ('',textedit.Text,textflags,false);
            Picture.Bitmap.Assign(bm);
            bm.free;
            textedit.Text:='';
            textedit.SetFocus;
          end;
       end;
    end;
    previewgrid.CurrentRow:=editline;
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
  if (editline<>-1) then
    NoBtnAsyncClick (Sender, nil);
  row:=0;
  while row<previewgrid.RowCount do begin
    if previewgrid.Cell[row,2].Control=Sender then begin
       addline ('',textflags,row);
       textedit.Text:='';
       PreviewGridCellClick(sender,row,0);
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
    if previewgrid.Cell[row,0].Control=Sender then begin
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

//function flags_to_attr

function pix_per_char (flags : integer) : integer;
var
  pix : integer;
begin
  if (flags and SMALLFONT)<>0 then
    pix:=9
    else
    pix:=12;

  if (flags and X2WIDTH)<>0 then
    pix:=pix * 2;
  result:=pix;
end;

procedure TformTextBlockEdit.checkeditlen;
begin
  if widthoftext(textedit.Text,textflags)>512 then 
     textedit.bgColor:=clRed
  else
     textedit.bgColor:=clWhite;
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
  with previewgrid.Cell[Arow,1].Control as TIWImageButton do begin
    if editline<>-1 then begin
      TIWImageButton(previewgrid.Cell[editline,1].Control).imageFile.Filename:='edit.bmp';
      with PreviewGrid.Cell[editline, 0] do begin
        Control := TIWImage.Create(Self);
        with TIWImage(Control) do begin
          Control.Height:=18;
          Control.Width:=PAPERPIX+5;
          Bm := DrawText ('',textedit.Text,textflags,false);
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
        Bm := DrawText ('',textedit.Text,textflags,true);
        Picture.Bitmap.Assign(bm);
        bm.free;
      end;
   end;
  end;
  checkeditlen;
end;

procedure TformTextBlockEdit.NoBtnAsyncClick(Sender: TObject;
  EventParams: TStringList);
var
  bm : TBitmap;
begin
  textedit.Clear;
  textedit.SetFocus;
  if editline<>-1 then with previewgrid do begin
     with Cell[editline, 1] do begin
        with TIWImageButton(Control) do begin
          ImageFile.Filename := 'edit.bmp';
       end;
     end;
     with Cell[editline, 0] do begin
        with TIWImage(Control) do begin
          Bm := DrawText ('',self.lines[editline],integer(self.lines.Objects[editline]),false);
          Picture.Bitmap.Assign(bm);
          bm.free;
        end;
     end;
     editline:=-1;
  end;
  if lines.count>0 then begin
     textflags:=integer(lines.objects[lines.count-1]);
  end else textflags:=0;
end;

procedure TformTextBlockEdit.YesBtnClick(Sender: TObject);
begin
  UpdateClick (sender);
end;

procedure TformTextBlockEdit.texteditSubmit(Sender: TObject);
begin
  Updateclick (Sender);
end;

procedure TformTextBlockEdit.ViewControlChange(Sender: TObject);
var
  i : integer;
  flags, prev, f : integer;
  flagname : string;
  s : string;
begin
  if viewcontrol.activepage=1 then begin
     memo.lines.Clear;
     memo.lines.Assign(lines);
     prev:=0;
     for i:=0 to lines.count-1 do begin
       flags:=integer(lines.objects[i]);
       f:=1;
       s:='';
       while f<=$10 do begin
         if (flags and f)<>(prev and f) then begin
            case f of
              SMALLFONT : flagname:='S';
              X2WIDTH : flagname:='W';
              X2HEIGHT : flagname:='H';
              BOLDFONT : flagname:='B';
              ULFONT : flagname:='U';
            end;
            if (flags and f) > 0 then begin
               s:=s+'{'+flagname+'}';
            end else begin
               s:=s+'{/'+flagname+'}';
            end;
         end; { if }
         f:=f*2;
       end; { while }
       prev:=flags;
       memo.lines[i]:=s+memo.lines[i];
     end; { for }
  end else begin
  end;
end;

end.
