unit textedit;

interface

uses
  Graphics, Classes, SysUtils, IWAppForm, IWApplication, IWColor, IWTypes, Controls,
  IWVCLBaseControl, IWBaseControl, IWBaseHTMLControl, IWControl,
  IWCompListbox, SiComp, IWCompEdit, SiLngLnk, IWCompButton, forms, IWSiLink,
  IWGrids, IWVCLBaseContainer, IWContainer, IWHTMLContainer, IWRegion,
  IWCompLabel, IWCompCheckbox, IWHTML40Container, IWExtCtrls, IWCompMemo;

const
  gridColor_HeaderBG    = clBlue;
  gridColor_HeaderFont  = clWhite;
  gridColor_RowBGoDD    = clWhite; // odd row
  gridColor_RowSelected = clYellow;   // Entry being edited
  gridColor_ColumnEdit = clWhite;   // The column selected for editing
  gridColor_RowInactive   = clLtGray;   // Unselected row

type
  referrer_class = class of TIWAppForm;

  Teditform = class(TIWAppForm)
    IWRegion1: TIWRegion;
    lblHeader: TIWLabel;
    btnCancel: TIWButton;
    IWRegion2: TIWRegion;
    CaptionGrid: TIWGrid;
    IWImageButton1: TIWImageButton;
    IWImageButton2: TIWImageButton;
    IWEdit1: TIWEdit;
    IWMemo1: TIWMemo;
    function getstring(index: integer; s: string): string;
    procedure DrawGrid;
    procedure CaptionGridRenderCell(ACell: TIWGridCell; const ARow,
      AColumn: Integer);
    procedure btnAcceptClick(Sender: TObject);
    procedure btnCancelClick(Sender: TObject);
    procedure IWImageButton1AsyncClick(Sender: TObject;
      EventParams: TStringList);
  private
    CaptionStart: integer;
    CaptionEnd: integer;
    StringsStart: integer;
    StringsEnd: integer;
    HintsStart: integer;
    HintsEnd: integer;
    rowindex : integer;
    currentlang : integer;
    procedure changetext (rowIndex : integer; text : string);
  public
    LocalContainer: TsiLangLinked;
    referredby: referrer_class;
    link_name: string;
    LangFile: string;
    procedure SetContainer(ContainerLink: TIWsiLink);
    procedure selectlinefont(Sender: TObject;
                  EventParams: TStringList);
    procedure selectwidth(Sender: TObject;
                  EventParams: TStringList);
    procedure selectheight(Sender: TObject;
                  EventParams: TStringList);
procedure selectbold(Sender: TObject;
  EventParams: TStringList);
  procedure selectunderline(Sender: TObject;
  EventParams: TStringList);
  procedure selectposition(Sender: TObject;
  EventParams: TStringList);
    end;


implementation

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

//uses IWMain;

{$R *.dfm}

procedure Teditform.DrawGrid;
var
  i: integer;
  element: integer;
  KindOffset : integer;
  ValueOffset : integer;
  CaptionOffset : integer;
begin
//  if ShowItemBox.Checked then CaptionGrid.ColumnCount:=4 else CaptionGrid.ColumnCount:=3;
  with CaptionGrid do begin
    KindOffset:=0;
    CaptionOffset:=1;
    ValueOffset:=2;
    Cell[0, 1].Text := 'Type';
    Cell[0, 2].Text := 'Position';
    Cell[0, 3].Text := 'Text';
    i := 1;
    RowCount := 1;
    CaptionStart := RowCount;
  end;
(*
    element:=0;
    if (ShowCombo.ItemIndex = 0) or (ShowCombo.ItemIndex = 1) then
      while element < LocalContainer.Captions.Count do begin
        RowCount := RowCount + 1;
        if showitembox.checked then begin
          with Cell[i, 0] do begin
            if (showitembox.checked) then Text := GetString(0, LocalContainer.Captions[element]) else Text:='';
          end;
        end;
        with Cell[i, KindOffset] do begin
          Text := 'Caption';
        end;
        with Cell[i, CaptionOffset] do begin
          Text := GetString(1, LocalContainer.Captions[element]);
        end;
        with Cell[i, ValueOffset] do begin
          Control := TIWEdit.Create(Self);
          with TIWEdit(Control) do begin
            Text := GetString(LangBox.ItemIndex + 1, LocalContainer.Captions[element]);
            Width := 400;
          end;
        end;
        inc(i);
        inc (element);
      end;
    CaptionEnd := RowCount;
    StringsStart := RowCount;
    element:=0;
    if (ShowCombo.ItemIndex = 0) or (ShowCombo.ItemIndex = 2) then
      while element < LocalContainer.Strings.Count do begin
        RowCount := RowCount + 1;
        if showitembox.checked then begin
          with Cell[Rowcount-1, 0] do begin
            if (showitembox.checked) then Text := GetString(0, LocalContainer.Strings[element]) else Text:='';
          end;
        end;
        with Cell[Rowcount-1, KindOffset] do begin
          Text := 'Option';
        end;
        with Cell[RowCount-1, CaptionOffset] do begin
          Text := GetString(1, LocalContainer.Strings[element]);
        end;
        with Cell[Rowcount-1, ValueOffset] do begin
          Control := TIWEdit.Create(Self);
          with TIWEdit(Control) do begin
            Text := GetString(LangBox.ItemIndex + 1, LocalContainer.Strings[element]);
            Width := 400;
          end;
        end;
        inc(element);
      end;
    StringsEnd := RowCount;
    HintsStart := RowCount;
    element:=0;
    if (ShowCombo.ItemIndex = 0) or (ShowCombo.ItemIndex = 3) then
      while element < LocalContainer.Hints.Count do begin
        RowCount := RowCount + 1;
        if showitembox.checked then begin
          with Cell[Rowcount-1, 0] do begin
            if (showitembox.checked) then Text := GetString(0, LocalContainer.Hints[element]) else Text:='';
          end;
        end;
        with Cell[Rowcount-1, KindOffset] do begin
          Text := 'Hint';
        end;
        with Cell[RowCount-1, CaptionOffset] do begin
          Text := GetString(1, LocalContainer.Hints[element]);
        end;
        with Cell[Rowcount-1, ValueOffset] do begin
          Control := TIWEdit.Create(Self);
          with TIWEdit(Control) do begin
            Text := GetString(LangBox.ItemIndex + 1, LocalContainer.Hints[element]);
            Width := 400;
          end;
        end;
        inc(element);
      end;
    HintsEnd := RowCount;
  end;
*)
end;

function Teditform.getstring(index: integer; s: string): string;
var
  last, count, i: integer;
begin
  last := 1;
  count := 0;
  for i := 1 to length(s) do begin
    if s[i] = #1 then begin
      inc(count);
      if count > index then begin
        result := copy(s, last, i - last);
        exit;
      end;
      last := i + 1;
    end;
  end;
  result := '';
end;

procedure Teditform.SetContainer(ContainerLink: TIWsiLink);
begin
  LocalContainer := TsiLangLinked.create(self);
  if (ContainerLink.SiLangLinked <> nil) then begin
    LocalContainer.CommonContainer := ContainerLink.SiLangLinked.CommonContainer;
    LocalContainer.LangDispatcher := ContainerLink.SiLangLinked.LangDispatcher;
    LocalContainer.UseInheritedData := ContainerLink.SiLangLinked.UseInheritedData;
    LocalContainer.Captions.Assign(ContainerLink.SiLangLinked.Captions);
    LocalContainer.DisplayLabels.Assign(ContainerLink.SiLangLinked.DisplayLabels);
    LocalContainer.Hints.Assign(ContainerLink.SiLangLinked.Hints);
    LocalContainer.Strings.Assign(ContainerLink.SiLangLinked.Strings);
    LocalContainer.StringsTypes.Assign(ContainerLink.SiLangLinked.StringsTypes);
    LocalContainer.Tag := ContainerLink.SiLangLinked.Tag;
    Link_name := ContainerLink.Owner.name + '.' + ContainerLink.name;
  end;
  //LangBox.Items.Assign(LocalContainer.LangNames);
  //CurrentLang:=LocalContainer.ActiveLanguage-1;
  //LangBox.ItemIndex := LocalContainer.ActiveLanguage-1;
  //LangBoxChange (nil);
end;

function findSiLink(Form: TFrame; name: string): TIWSiLink; overload;
var
  i: integer;
  comp_name: string;
begin
  for i := 0 to form.ComponentCount - 1 do begin
    comp_name := form.components[i].owner.name + '.' + form.components[i].name;
    if (form.components[i] is TIWSiLink) and (name = comp_name) then begin
      result := form.components[i] as TIWSiLink;
      exit;
    end else if (form.components[i] is TFrame) then begin
      result := findSiLink(form.components[i] as TFrame, name);
      if result <> nil then exit;
    end;
  end;
  result := nil;
end;

function findSiLink(Form: TIWAppForm; name: string): TIWSiLink; overload;
var
  i: integer;
  comp_name: string;
begin
  for i := 0 to form.ComponentCount - 1 do begin
    comp_name := form.components[i].owner.name + '.' + form.components[i].name;
    if (form.components[i] is TIWSiLink) and (name = comp_name) then begin
      result := form.components[i] as TIWSiLink;
      exit;
    end else if (form.components[i] is TFrame) then begin
      result := findSiLink(form.components[i] as TFrame, name);
      if result <> nil then exit;
    end;
  end;
  result := nil;
end;

procedure Teditform.CaptionGridRenderCell(ACell: TIWGridCell; const ARow, AColumn: Integer);
begin
  with ACell do begin
    if ARow = 0 then   // Title Row
    begin
      Alignment  := taCenter;
      BGColor    := gridColor_HeaderBG;
      Font.Color := gridColor_HeaderFont;
      Font.Style := [fsBold];
    end
    else
    begin
      Font.Style := [];
      if (Arow=rowindex) then
        BGColor := gridColor_RowSelected
      else
        if aColumn = TIWGrid(ACell.Grid).ColumnCount-1 then begin
            BGColor := gridColor_ColumnEdit;      // fixed columns
        end else
            BGColor := gridColor_RowInactive;
    end;
  end;
end;{CaptionGridRenderCell}

procedure Teditform.btnAcceptClick(Sender: TObject);
var
  OldLink: TIWSiLink;
  NewForm: TIWAppForm;
  i : integer;
begin
  for i:=1 to CaptionGrid.RowCount-1 do begin
      changetext (i,TIWEdit(CaptionGrid.Cell[i, CaptionGrid.ColumnCount-1].Control).text);
  end;
  // Create an instance of the referring form. Update its properties and save.
  NewForm := referredby.Create(WebApplication);
  OldLink := findSiLink(NewForm, link_name);
  if assigned (OldLink) then if OldLink.SiLangLinked <> nil then begin
    OldLink.SiLangLinked.Captions.Assign(LocalContainer.Captions);
    OldLink.SiLangLinked.Strings.Assign(LocalContainer.Strings);
    OldLink.SiLangLinked.Hints.Assign(LocalContainer.Hints);
  end else begin
//    FormIWMain.Log ('Error locating OldLink - SiLangEdit');
  end;
  LocalContainer.Free;
  TIWAppForm(WebApplication.ActiveForm).Release;

  if assigned (OldLink) then if OldLink.SiLangLinked <> nil then begin
    OldLink.SiLangLinked.SaveAllToFile(LangFile, '~!@#$');
  end;
  NewForm.free;

  // Now create a fresh copy to display so that it has the updated properties file to use.
  NewForm := referredby.Create(WebApplication);
  NewForm.Show;
end;

procedure Teditform.btnCancelClick(Sender: TObject);
var
  NewForm: TIWAppForm;
begin
//  NewForm := referredby.Create(WebApplication);
//  LocalContainer.Free;
//  TIWAppForm(WebApplication.ActiveForm).Release;
//  NewForm.Show;

    with captiongrid do begin
        RowCount := RowCount + 1;
        with Cell[Rowcount-1, 0] do begin
          Control := TIWEdit.Create(Self);
          with TIWEdit(Control) do begin
            Text := 'whatever';
            Width := 400;
            MaxLength:=10;
            Height := 24;
          end;
        end;
        with Cell[Rowcount-1, 1] do begin
          Control := TIWImageButton.Create(Self);
          with TIWImageButton(Control) do begin
            ImageFile.Filename := 'small_font.bmp';
            Width := 24;
            Height := 24;
            OnAsyncClick:=selectlinefont;
            Tag:=0;
            UseSize:=false;
            Hint:='Font';
          end;
        end;
        with Cell[Rowcount-1, 2] do begin
          Control := TIWImageButton.Create(Self);
          with TIWImageButton(Control) do begin
            ImageFile.Filename := 'x2_width.bmp';
            Width := 24;
            Height := 24;
            OnAsyncClick:=selectwidth;
            UseSize:=false;
            Hint:='Double Width';
          end;
        end;
        with Cell[Rowcount-1, 3] do begin
          Control := TIWImageButton.Create(Self);
          with TIWImageButton(Control) do begin
            ImageFile.Filename := 'x2_height.bmp';
            Width := 24;
            Height := 24;
            OnAsyncClick:=selectheight;
            UseSize:=false;
            Hint:='Double Height';
          end;
        end;
        with Cell[Rowcount-1, 4] do begin
          Control := TIWImageButton.Create(Self);
          with TIWImageButton(Control) do begin
            ImageFile.Filename := 'bold.bmp';
            Width := 24;
            Height := 24;
            OnAsyncClick:=selectbold;
            UseSize:=false;
            Hint:='Bold';
          end;
        end;
        with Cell[Rowcount-1, 5] do begin
          Control := TIWImageButton.Create(Self);
          with TIWImageButton(Control) do begin
            ImageFile.Filename := 'underline.bmp';
            Width := 24;
            Height := 24;
            OnAsyncClick:=selectunderline;
            UseSize:=false;
            Hint:='Underline';
          end;
        end;
        with Cell[Rowcount-1, 6] do begin
          Control := TIWImageButton.Create(Self);
          with TIWImageButton(Control) do begin
            ImageFile.Filename := 'left_justify.bmp';
            Width := 24;
            Height := 24;
            OnAsyncClick:=selectposition;
            UseSize:=false;
            Hint:='Position';
          end;
        end;
    end;
end;

procedure Teditform.changetext (rowIndex : integer; text : string);
var
  s: string;
  i: integer;
begin
  s:='';
  for i := 0 to LocalContainer.NumOfLanguages do begin
    if (i - 1 = CurrentLang) then begin
      s := s + Text + #1;
    end else begin
     if (rowIndex<CaptionEnd) and (rowindex>=CaptionStart) then begin
        s:=s+getstring (i,LocalContainer.Captions.Strings[rowindex-CaptionStart])+#1;
     end else if (rowindex<StringsEnd) and (rowindex>=StringsStart) then begin
        s:=s+getstring (i,LocalContainer.Strings.Strings[rowindex-StringsStart])+#1;
     end else if (rowindex<HintsEnd) and (rowindex>=HintsStart) then begin
        s:=s+getstring (i,LocalContainer.Hints.Strings[rowindex-HintsStart])+#1;
     end else s:=s+'????';
    end;
  end;
  if (rowIndex<CaptionEnd) and (rowindex>=CaptionStart) then begin
    LocalContainer.Captions.Strings[rowindex-CaptionStart]:=s;
  end else if (rowindex<StringsEnd) and (rowindex>=StringsStart) then begin
    LocalContainer.Strings.Strings[rowindex-StringsStart]:=s;
  end else if (rowindex<HintsEnd) and (rowindex>=HintsStart) then begin
    LocalContainer.Hints.Strings[rowindex-HintsStart]:=s;
  end;
end;

procedure Teditform.IWImageButton1AsyncClick(Sender: TObject;
  EventParams: TStringList);
begin
  IWImagebutton1.ImageFile.Filename:='C:\delphi\delphi_web_templates\Files\navbtn_large.GIF';
  IWMemo1.lines.Assign(EventParams);
end;

procedure Teditform.selectlinefont(Sender: TObject;
  EventParams: TStringList);
begin
  with Sender as TIWImageButton do begin
      if (tag and SMALLFONT)=SMALLFONT then begin
         imageFile.Filename:='small_font.bmp';
         tag:=tag and not SMALLFONT;
      end else begin
         imageFile.Filename:='small_font_sel.bmp';
         tag:=tag or SMALLFONT;
      end;
  end;
end;

procedure Teditform.selectbold(Sender: TObject;
  EventParams: TStringList);
begin
  with Sender as TIWImageButton do begin
      if (tag and BOLDFONT)=BOLDFONT then begin
         imageFile.Filename:='bold.bmp';
         tag:=tag and not BOLDFONT;
      end else begin
         imageFile.Filename:='bold_sel.bmp';
         tag:=tag or BOLDFONT;
      end;
  end;
end;

procedure Teditform.selectunderline(Sender: TObject;
  EventParams: TStringList);
begin
  with Sender as TIWImageButton do begin
      if (tag and ULFONT)=ULFONT then begin
         imageFile.Filename:='underline.bmp';
         tag:=tag and not ULFONT;
      end else begin
         imageFile.Filename:='underline_sel.bmp';
         tag:=tag or ULFONT;
      end;
  end;
end;

procedure Teditform.selectposition(Sender: TObject;
  EventParams: TStringList);
begin
  with Sender as TIWImageButton do begin
      if (tag and JUSTMASK)=JUSTLEFT then begin
         imageFile.Filename:='centre_justify.bmp';
         tag:=(tag and not JUSTMASK) or JUSTCENTRE;
      end else if (tag and JUSTMASK)=JUSTCENTRE then begin
         imageFile.Filename:='right_justify.bmp';
         tag:=(tag and not JUSTMASK) or JUSTRIGHT;
      end else begin
         imageFile.Filename:='left_justify.bmp';
         tag:=(tag and not JUSTMASK) or JUSTLEFT;
      end;
  end;
end;

procedure Teditform.selectheight(Sender: TObject;
  EventParams: TStringList);
var
  i : integer;
  x : integer;
  s : TIWImagebutton;
begin
  with Sender as TIWImageButton do begin
      if (tag and X2HEIGHT)=X2HEIGHT then begin
         imageFile.Filename:='x2_height.bmp';
         tag:=tag and not X2HEIGHT;
      end else begin
         imageFile.Filename:='x2_height_sel.bmp';
         tag:=tag or X2HEIGHT;
      end;
  end;
end;

procedure Teditform.selectwidth(Sender: TObject;
  EventParams: TStringList);
var
  i : integer;
  x : integer;
  s : TIWImagebutton;
begin
  with Sender as TIWImageButton do begin
      if (tag and X2WIDTH)=X2WIDTH then begin
         imageFile.Filename:='x2_width.bmp';
         tag:=tag and not X2WIDTH;
      end else begin
         imageFile.Filename:='x2_width_sel.bmp';
         tag:=tag or X2WIDTH;
      end;
  end;
end;


end.

