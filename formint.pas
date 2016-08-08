unit formint;

interface

uses
  Classes, SysUtils, IWAppForm, IWApplication, IWColor, IWTypes, Controls,
  Forms, baretitle, IWCompMemo, IWCompListbox, IWCompButton, IWCompRectangle,
  IWHTMLControls, IWSiLink, IWCompEdit, IWVCLBaseControl, IWBaseControl,
  IWBaseHTMLControl, IWControl, IWCompLabel, IWVCLBaseContainer, IWContainer,
  IWHTMLContainer, IWHTML40Container, IWRegion, footer_user,
  Pipes, SuperObject, admintitle;

type
  Tintform = class(TIWAppForm)
    userfooter1: Tuserfooter;
    IWRegion1: TIWRegion;
    IWRegion2: TIWRegion;
    CredLabel: TIWLabel;
    IWLabel1: TIWLabel;
    NameEdit: TIWEdit;
    IWSiLink1: TIWSiLink;
    IWRectangle1: TIWRectangle;
    IWRectangle2: TIWRectangle;
    CancelCredBtn: TIWButton;
    AddCredBtn: TIWButton;
    IWComboBox1: TIWComboBox;
    IWLabel2: TIWLabel;
    outmemo: TIWMemo;
    inmemo: TIWMemo;
    IWButton1: TIWButton;
    IWButton2: TIWButton;
    ItemCombo: TIWComboBox;
    loadlbl: TIWLabel;
    FrameBareTitle1: TFrameBareTitle;
    bcedit: TIWEdit;
    bcbutton: TIWButton;
    IWLabel3: TIWLabel;
    procedure IWButton2Click(Sender: TObject);
    procedure AddCredBtnClick(Sender: TObject);
    procedure CancelCredBtnClick(Sender: TObject);
    procedure IWButton1Click(Sender: TObject);
    procedure IWAppFormCreate(Sender: TObject);
    procedure bcbuttonAsyncClick(Sender: TObject; EventParams: TStringList);
  public
    procedure ShowLog;
    procedure ShowStatus;
  end;

implementation

{$R *.dfm}

uses datamod, slaveunit, global, db, httputil, idstrings;

procedure Tintform.ShowLog;
var
  ss : TStringlist;
  clipped : boolean;
begin
  clipped:=false;
  ss:=TStringlist.Create;
  try
    if fileexists(logpath+'log.txt') then ss.LoadFromFile(logpath+'log.txt');
    while ss.count>2000 do begin
      clipped:=true;
      ss.delete (0);
    end;
    if clipped then
       ss.Insert(0,'...'#13#10);
    outmemo.lines.Assign(ss);
  except
     on e : exception do ;
       //WebApplication.ShowMessage(e.message, smAlert);
  end;
  ss.Free;
end;

procedure Tintform.ShowStatus;
var
  item: TSuperAvlEntry;
begin
  outmemo.lines.clear;
  for item in slave.status.AsObject do
  begin
    outmemo.Lines.Add(item.Name+'='+item.Value.AsString);
  end;
end;

procedure Tintform.AddCredBtnClick(Sender: TObject);
begin
  case itemcombo.ItemIndex of
  0 : showlog;
  1 : showstatus;
  end;
end;

procedure Tintform.bcbuttonAsyncClick(Sender: TObject;
  EventParams: TStringList);
var
  ss : ISuperobject;
begin
  ss:=SO;
  ss.S['command']:='barcode';
  ss.S['value']:=bcedit.Text;
  slave.sendtoservice(ss.AsJSon());
end;

procedure Tintform.CancelCredBtnClick(Sender: TObject);
begin
   outmemo.Lines.Clear;
   try
     if fileexists(logpath+'log.txt') then deletefile (logpath+'log.txt');
   except
     on e : exception do
       WebApplication.ShowMessage(e.message, smAlert);
   end;
end;

function getFileSize(fileName : wideString) : Int64;
var   sr : TSearchRec;
begin
   if FindFirst(fileName, faAnyFile, sr ) = 0 then
      result := Int64(sr.FindData.nFileSizeHigh) shl Int64(32) + Int64(sr.FindData.nFileSizeLow)
   else
      result := -1;
    FindClose(sr) ;
end;

procedure Tintform.IWAppFormCreate(Sender: TObject);
var
  s : string;
  t : textfile;
begin
  try
    assignfile (t,recastdir+'\data\configname.txt');
    reset (t);
    readln (t,s);
    closefile (t);
  except
  end;
  nameedit.Text:=s;
  loadlbl.caption:='Current: '+nameedit.Text+' (size '+inttostr(getfilesize(recastdir+'\data\config.img'))+')';
end;

function splitline (s : string) : TStringlist;
var
  ss : TStringlist;
  I: Integer;
  start : integer;
begin
  ss:=TStringlist.Create;
  start:=1;
  for I := 1  to length(s) do begin
     if (copy(s,i,2)='><') and (copy(s,i,3)<>'></') then begin
        ss.Add(copy(s,start,i-start+1));
        start:=i+1;
     end;
  end;
  ss.Add(copy(s,start,length(s)-start+1));
  result:=ss;
end;

function nospace (s : string) : string;
begin
  while copy(s,1,1)=' ' do delete (s,1,1);
  result:=s;
end;

procedure Tintform.IWButton1Click(Sender: TObject);
var
  lines,ss,sr : TStringlist;
  i,j : integer;
  s : string;
begin
   ss:=TStringlist.Create;
   if copy (nospace(inmemo.Lines[0]),1,1)='<' then begin
      for i:=0 to inmemo.lines.Count-1 do begin
         lines:=splitline(nospace(inmemo.lines[i]));
         for j:=0 to lines.count-1 do
            ss.add(lines[j]);
         lines.Free;
      end;
      sr:=TStringlist.create;
      for i := 0 to ss.count-1 do begin
          if copy (ss[i],1,12)='<string>line' then begin
             s:=copy(ss[i],12,9999);
             while (length(s)>0) and (copy(s,1,1)<>'=') do
               delete(s,1,1);
             delete(s,1,1);
             s:=copy(s,1,pos('</string>',s)-1);
             sr.add(idstrings.StrHtmlDecode(s));
          end;
      end;
      inmemo.Lines.Assign(sr);
      ss.Free;
      sr.free;
   end;
   try
     inmemo.Lines.SaveToFile('c:\input\input.txt');
   except
     on e : exception do
       WebApplication.ShowMessage(e.message, smAlert);
   end;
end;

procedure Tintform.IWButton2Click(Sender: TObject);
var
  ms: tmemorystream;
  ms2 : tmemorystream;
  count : integer;
  b : byte;
  t : textfile;
begin
  try
    rcdatamodule.cfgquery.Close;
    rcdatamodule.cfgquery.ParamByName('name').AsString:=nameedit.Text;
    rcdatamodule.cfgquery.Open;
    rcdatamodule.cfgquery.First;
    try
      assignfile (t,recastdir+'\data\configname.txt');
      rewrite (t);
      writeln (t,nameedit.Text);
      closefile (t);
    except
    end;
    loadlbl.caption:='Current: '+nameedit.Text+' (size '+inttostr(getfilesize(recastdir+'\data\config.img'))+')';

    if not rcdatamodule.cfgquery.eof then begin
       if not rcdatamodule.cfgquery.FieldByName('CONFIGIMG').IsNull then begin
          ms := TMemoryStream.Create;
          TBlobField(RcDataModule.cfgQuery.FieldByName('CONFIGIMG')).savetostream(ms);
          ms.position := 12;        // Skip first 12 bytes (framing)
          ms2:=TMemoryStream.Create;
          for count:=1 to ms.Size-14 do begin // skip last 2 bytes (checksum)
             ms.ReadBuffer(b,1);
             ms2.WriteBuffer(b,1);
          end;
          //ms.SaveToFile(recastdir+'\data\config-orig.img');
          ms2.SaveToFile(recastdir+'\data\config.img');
          ms.Free;
          ms2.Free;
       end;
    end;
  except
    rcdatamodule.cfgquery.close;
  end;
  rcdatamodule.cfgquery.Close;
  slave.sitename:=nameedit.Text;
  slave.queueconnect;
end;

end.
