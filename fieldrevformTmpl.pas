unit fieldrevformTmpl;

interface

uses
  Classes, SysUtils, IWAppForm, IWApplication, IWColor, IWTypes,
  IWHTMLControls, IWExtCtrls, IWGrids, IWCompLabel, IWCompRectangle,
  IWVCLBaseControl, IWBaseControl, IWBaseHTMLControl, IWControl, IWSiLink,
  IWVCLBaseContainer, IWContainer, IWHTMLContainer, IWRegion, footer_user,
  Controls, Forms, baretitle, siComp, siLngLnk, IWCompMemo,
  IWCompListbox, IWCompEdit, IWCompButton, cfgtypes, IWHTML40Container,
  IWCompTimeEdit;

type
  TformFieldVersionsTmpl = class(TIWAppForm)
    FrameBareTitle1: TFrameBareTitle;
    userfooter1: Tuserfooter;
    IWRegion1: TIWRegion;
    BodyRegion: TIWRegion;
    IWRectangle2: TIWRectangle;
    IWRectangle1: TIWRectangle;
    ImageLabel: TIWLabel;
    ImageGrid: TIWGrid;
    IWSiLink1: TIWSiLink;
    siLangLinked1: TsiLangLinked;
    NameEdit: TIWEdit;
    NewBtn: TIWButton;
    ValueEdit: TIWEdit;
    IWLabel1: TIWLabel;
    FieldTypeLbl: TIWLabel;
    Options: TIWComboBox;
    procedure IWAppFormCreate(Sender: TObject);
    procedure ImageGridRenderCell(ACell: TIWGridCell; const ARow,
      AColumn: Integer);
    procedure ImageGridCellClick(ASender: TObject; const ARow,
      AColumn: Integer);
    procedure userfooter1CancelClick(Sender: TObject);
    procedure NewBtnClick(Sender: TObject);
  private
    current : string;
    procedure RefreshGrid;
  end;

implementation

{$R *.dfm}

uses datamod, graphics, serverController, jpeg, db, imagesform, imageupformtmpl, grptmplform,
IBCustomDataSet, IBQuery, IBDatabase, editTmplForm, parse_utils,
  IBTable, IBUpdateSQL, dialogs, RegularExpressions;

procedure TformFieldVersionsTmpl.RefreshGrid;
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
    current:=CurrentImageHdrQueryTmpl.FieldByName('CURRENTID').AsString;
    CurrentImageHdrQueryTmpl.Close;
    ImageVerQueryTmpl.ParamByName('HDRID').AsString:=GetValue ('editparam','');
    ImageVerQueryTmpl.ParamByName ('COMPANY').AsString:=UserSession.Company;
    ImageVerQueryTmpl.Open;
  end;
  ImageGrid.ColumnCount:=5;
  with ImageGrid do begin
    Cell[0, 0].Text := SiLangLinked1.GetTextOrDefault('Grid.ID');
    Cell[0, 1].Text := SiLangLinked1.GetTextOrDefault('Grid.Created');
    Cell[0, 2].Text := SiLangLinked1.GetTextOrDefault('Grid.InUse');
    Cell[0, 3].Text := SiLangLinked1.GetTextOrDefault('Grid.User');
    Cell[0, 4].Text := SiLangLinked1.GetTextOrDefault('Grid.Value');
    i:=1;
    RowCount:=1;
    while not RcDataModule.ImageVerQueryTmpl.Eof do begin
      RowCount:=RowCount+1;
      with Cell[i, 0] do begin
        Clickable := True;
        s:=RcDataModule.ImageVerQueryTmpl.FieldByName('ID').AsString;
        text:=s;
        Cell [i,2].text:='';
        if s=current then begin
           Cell[i,2].text:='['+SiLangLinked1.GetTextOrDefault('Grid.Current')+']';
        end;
      end;
      with Cell[i, 1] do begin
        Text :=RcDataModule.ImageVerQueryTmpl.FieldByName('CREATEDTIME').AsString;
      end;
      with Cell[i, 3] do begin
        Text :=htmlquote(RcDataModule.ImageVerQueryTmpl.FieldByName('CREATEDBY').AsString);
      end;
      with Cell[i, 4] do begin
        Text :=htmlquote(RcDataModule.ImageVerQueryTmpl.FieldByName('DATAFIELD').AsString);
      end;
      inc (i);
      RcDataModule.ImageVerQueryTmpl.Next;
    end;
  end;
  RcDataModule.ImageVerQueryTmpl.Close;
  RcDataModule.ImageVerQueryTmpl.Transaction.Active:=false;
end;

function findconstraint (fieldname : string; constraint : string) : string;
var
  param : string;
  value : string;
begin
  result:='';
  param:=uppercase(copy (constraint,1,pos('=',constraint)-1));
  value:=copy (constraint,length(param)+2,999);
  if param=fieldname then begin
     result:=dequotedstr(value);
  end;
end;

function getoptions (s : string) : string;
var
  sl : TStringlist;
  i : integer;
begin
  sl:=TStringlist.Create;
  result:='';
  try
    GetCommaFields(sl, s);
    for I := 0 to sl.Count-1 do begin
      result:=findConstraint ('OPTIONS',sl[i]);
      if result<>'' then exit;
    end;
  finally
    sl.Free;
  end;
end;

procedure setoptions (opts : string; optionlist : TStrings);
var
  opt : string;
begin
  optionlist.clear;
  while pos('|',opts)>0 do begin
     opt:=copy (opts,1,pos('|',opts)-1);
     delete (opts,1,length(opt)+1);
     optionlist.add (opt);
  end;
  // Last field
  optionlist.add (opts);
end;

procedure TformFieldVersionsTmpl.IWAppFormCreate(Sender: TObject);
var
  con : string;
  t : string;
  constraint : string;
  fieldtype : string;
  sl : TStringlist;
  i : integer;
  fieldoptions:string;
begin
  IWSiLink1.InitForm;
  RefreshGrid;
  ValueEdit.Text:='';
  con:=RcDataModule.GetValue ('edittmplconstraint','???');
  if con<>'' then begin
     t:=RcDataModule.GetValue ('edittmpltype','???');
     if t='Date' then t:=t+' (yyyy-mm-dd)';
     if t='Time' then t:=t+' (hh:mm)';
     FieldTypeLbl.caption:=t+' : '+con
  end else
     FieldTypeLbl.caption:=RcDataModule.GetValue ('edittmpltype','???');

  constraint:=RcDataModule.GetValue ('edittmplconstraint','');
  sl:=TStringlist.Create;
  fieldoptions:='';
  try
    getcommafields(sl,constraint);
    for I := 0 to sl.Count-1 do begin
      fieldoptions:=getoptions(sl[i]);
      if fieldoptions<>'' then break;
    end;
    if fieldoptions<>'' then begin
      setoptions(fieldoptions,options.items);
      options.visible:=true;
      options.itemindex:=-1;
      valueedit.visible:=false;
    end;
  finally
    sl.Free;
  end;
end;

procedure TformFieldVersionsTmpl.ImageGridRenderCell(ACell: TIWGridCell;
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
      if (AColumn=0) and false then begin
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


procedure TformFieldVersionsTmpl.ImageGridCellClick(ASender: TObject;
  const ARow, AColumn: Integer);
begin
    try
      with RcDataModule do begin
        SQLQry.Transaction.Active:=false;
        SQLQry.Transaction.Active:=true;
        SQLQry.SQL.Clear;
        SQLQry.SQL.Add('update GROUPOBJHDR set CURRENTID=:CURRENT where ID=:ID and COMPANY=:COMPANY');
        SQLQry.ParamByName ('ID').AsString:=RcDataModule.GetValue ('editparam','');
        SQLQry.ParamByName ('CURRENT').AsString:=ImageGrid.Cell[ARow,0].Text;
        SQLQry.ParamByName ('COMPANY').AsString:=UserSession.Company;
        SQLQry.ExecSQL;
        SQLQry.Transaction.Commit;
        RefreshGrid;
      end;
    except
    end;
end;

procedure TformFieldVersionsTmpl.userfooter1CancelClick(Sender: TObject);
begin
   TIWAppForm(WebApplication.ActiveForm).Release;
   if (RcDataModule.GetValue ('JobInstance','N')='INSTANCE') then
      TFormEditTmpl.Create(WebApplication).Show
   else
      TformGrpTmpl.Create(WebApplication).Show;
end;

function isOption (opts : string; val : string) : boolean;
var
  opt : string;
begin
  while pos('|',opts)>0 do begin
     opt:=copy (opts,1,pos('|',opts)-1);
     delete (opts,1,length(opt)+1);
     if opt=val then begin
        result:=true;
        exit;
     end;
  end;
  // Last field
  if opts=val then begin
     result:=true;
     exit;
  end;
  result:=false;
end;

function checkconstraint (fieldtype : string; input : string; constraint : string) : boolean;
var
  param : string;
  value : string;
  regexpr : TRegEx;
  match   : TMatch;
  group   : TGroup;
begin
  result:=true;
  //showmessage ('Field '+fieldtype+' Value '+value+' Constraint '+constraint);

  param:=clipspaces(uppercase(copy (constraint,1,pos('=',constraint)-1)));
  value:=clipspaces(copy (constraint,length(param)+2,999));
  fieldtype:=uppercase(fieldtype);
  if param='REGEX' then begin
    // create our regex instance, and we want to do a case insensitive search, in multiline mode
    regexpr := TRegEx.Create(dequotedstr(value),[roIgnoreCase]);
    match := regexpr.Match(input);
    if not match.Success then
    begin
      result:=false;
      exit;
    end;
  end else if param='OPTIONS' then begin
    result:=isOption (dequotedstr(value),input);
  end else begin
    if fieldType='INTEGER' then begin
      try
        if param='MAX' then
           result:=strtoint(value)>=strtoint(input);
        if param='MIN' then
           result:=strtoint(value)<=strtoint(input);
      except
        result:=false;
      end;
    end;
  end;
end;

function IsValidDate(y,m,d : integer): boolean;
const
  DAYS_OF_MONTH: array[1..12] of integer = (31, 29, 31, 30, 31, 30, 31, 31, 30,
  31, 30, 31);
begin
  result := false;
  if (m<1) or (m>12) then Exit;
  if (d<1) or (d>DAYS_OF_MONTH[m]) then Exit;
  if (not IsLeapYear(y)) and (m = 2) and (d = 29) then Exit;
  result := true;
end;

function IsValidTime(h,m : integer): boolean;
begin
  result := false;
  if (h<0) or (h>23) then Exit;
  if (m<0) or (m>59) then Exit;
  result := true;
end;

function checktype (fieldtype : string; input : string) : boolean;
var
  regexpr : TRegEx;
  match   : TMatch;
  group   : TGroup;
  day,month,year,hour,min : integer;
begin
  result:=true;
  fieldtype:=uppercase(fieldtype);
  if fieldType='INTEGER' then begin
    try
      strtoint(input);
    except
      result:=false;
    end;
  end else if fieldType='DATE' then begin
    regexpr := TRegEx.Create('(\d{4})-(\d{2})-(\d{2})',[roIgnoreCase]);
    match := regexpr.Match(dequotedstr(input));
    if not match.success or (Match.Groups.Count<>4) then begin
      result:=false;
    end else begin
      try
        day:=StrToInt(Match.Groups[3].Value);
        month:=StrToInt(Match.Groups[2].Value);
        year:=StrToInt(Match.Groups[1].Value);
        result:=isvaliddate (year,month,day);
      except
        result:=false;
      end;
    end;
  end else if fieldType='TIME' then begin
    regexpr := TRegEx.Create('(\d):(\d{2})',[roIgnoreCase]);
    match := regexpr.Match(dequotedstr(input));
    if not match.success or (Match.Groups.Count<>3) then begin
      result:=false;
    end else begin
      try
        hour:=StrToInt(Match.Groups[1].Value);
        min:=StrToInt(Match.Groups[2].Value);
        result:=isvalidtime (hour,min);
      except
        result:=false;
      end;
    end;
  end;
end;

procedure TformFieldVersionsTmpl.NewBtnClick(Sender: TObject);
var
  ImageId : integer;
  pt : string;
  constraint : string;
  fieldtype : string;
  sl : TStringlist;
  i : integer;
  val : string;
begin
  pt:=RcDataModule.GetValue ('editparam','');
  fieldtype:=RcDataModule.GetValue ('edittmpltype','???');
  constraint:=RcDataModule.GetValue ('edittmplconstraint','');

  if options.visible then begin
    if options.itemindex=-1 then
       val:=''
    else
       val:=options.text
  end else
    val:=valueedit.Text;
  sl:=TStringlist.Create;
  try
    getcommafields(sl,constraint);
    if (val<>'') and not checkType (fieldtype,val) then begin
       WebApplication.ShowMessage('Error : Type '+fieldtype, smAlert);
       exit;
    end;
    for I := 0 to sl.Count-1 do begin
      if not checkConstraint (fieldtype,val,sl[i]) then begin
         WebApplication.ShowMessage('Error : Constraint '+sl[i], smAlert);
         exit;
      end;
    end;
  finally
    sl.Free;
  end;

  //showmessage ('Type='+fieldtype+' Constraint='+constraint);

  with RcDataModule do begin
    Trans.Active:=true;
    ImageId:=nextID;
    try
      with RcDataModule do begin
        SQLQry.Transaction.Active:=false;
        SQLQry.Transaction.Active:=true;
        SQLQry.SQL.Clear;
        SQLQry.SQL.Add('insert into GROUPPARAMOBJ (ID,COMPANY,PARAMOBJID,CREATEDBY,CREATEDTIME,DATAFIELD) VALUES (:ID,:COMPANY,:HDR,:CREATEDBY,:CREATEDTIME,:DATAFIELD)');
        SQLQry.ParamByName ('ID').AsString:=inttostr(ImageID);
        SQLQry.ParamByName ('HDR').AsString:=RcDataModule.GetValue ('editparam','');
        SQLQry.ParamByName ('COMPANY').AsString:=UserSession.Company;
        SQLQry.ParamByName ('CREATEDBY').AsString:=UserSession.User;
        SQLQry.ParamByName ('CREATEDTIME').AsDateTime:=now;
        SQLQry.ParamByName ('DATAFIELD').AsString:=Val;
        SQLQry.ExecSQL;
        SQLQry.Transaction.Commit;
        SQLQry.Transaction.Active:=false;
        SQLQry.Transaction.Active:=true;
        SQLQry.SQL.Clear;
        SQLQry.SQL.Add('update GROUPOBJHDR set CURRENTID=:CURRENT where ID=:ID and COMPANY=:COMPANY');
        SQLQry.ParamByName ('CURRENT').AsString:=inttostr(ImageID);
        SQLQry.ParamByName ('ID').AsString:=RcDataModule.GetValue ('editparam','');
        SQLQry.ParamByName ('COMPANY').AsString:=UserSession.Company;
        SQLQry.ExecSQL;
        SQLQry.Transaction.Commit;
      end;
    except
      WebApplication.ShowMessage(userfooter1.silink_footer.GetTextOrDefault('DBError'));
    end;
  end;
  RefreshGrid;
  ValueEdit.Text:='';
end;

end.
