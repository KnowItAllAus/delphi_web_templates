unit global;

interface

function PrinterDir: string;
function ZoneDir: string;
function LangDir: string;
function GetDBName: string;
function GetTransDBName: string;
function GetPrefix: string;
function GetExitURL: string;
function GetSecureURL: string;
function GetURLBase: string;
function GetAppBase: string;
function GetTransBase: string;
function GetPort: integer;
function debug : boolean;
function utcnow : TDatetime;

implementation

uses IniFiles,sysutils,scripting, dateutils;

var
  PrinterDirectory: string;
  ZoneDirectory: string;
  LangDirectory: string;
  DBName: string;
  TransDBName: string;
  Prefix: string;
  ExitURL : String;
  SecureURL : String;
  port : integer;
  debugmode : boolean;
  URLBase : string;
  CacheDir : string;
  appBase : string;
  TransBase : string;

function utcnow : TDatetime;
begin
  result:= TTimeZone.Local.ToUniversalTime(now);
end;

function getURLBase: string;
begin
  result := URLBase;
end;

function getCacheDir: string;
begin
  result := CacheDir;
end;

function getappBase: string;
begin
  result := appBase;
end;

function getTransBase: string;
begin
  result := TransBase;
end;

function debug : boolean;
begin
  debug:=debugmode;
end;

function PrinterDir: string;
begin
  result := PrinterDirectory;
end;

function ZoneDir: string;
begin
  result := ZoneDirectory;
end;

function LangDir: string;
begin
  result := LangDirectory;
end;

function GetDBName: string;
begin
  result := DBName;
end;

function GetTransDBName: string;
begin
  result := TransDBName;
end;

function GetPrefix: string;
begin
  result := Prefix;
end;

function GetExitURL: string;
begin
  result := ExitURL;
end;

function GetSecureURL: string;
begin
  result := SecureURL;
end;

function GetPort: integer;
begin
  result := port;
end;

var
  i: integer;
  ini: TInifile;
  basedirectory : string;
begin
  try
    debugmode := false;
    DBName := '';
    TransDBName:='';
    ExitURL:='';
    SecureURL:='';
    TransBase:='';
    Port := 80;
    ZoneDirectory:='';
    LangDirectory:='';
    PrinterDirectory := '';
    BaseDirectory:='';
    ini := TInifile.Create('Recast.Ini');
    PrinterDirectory := ini.ReadString('Printer', 'Dir', '');
    ini.free;
    for i := 1 to ParamCount do begin
      if (copy(paramstr(i), 1, 3) = '-P=') then Port := strtoint(copy(paramstr(i), 4, length(paramstr(i)) - 3));
      if (copy(paramstr(i), 1, 3) = '-C=') then CacheDir := copy(paramstr(i), 4, length(paramstr(i)) - 3);
      if (copy(paramstr(i), 1, 3) = '-B=') then Basedirectory := copy(paramstr(i), 4, length(paramstr(i)) - 3);
      if (copy(paramstr(i), 1, 3) = '-F=') then Prefix := copy(paramstr(i), 4, length(paramstr(i)) - 3);
      if (copy(paramstr(i), 1, 3) = '-X=') then ExitURL := copy(paramstr(i), 4, length(paramstr(i)) - 3);
      if (copy(paramstr(i), 1, 3) = '-S=') then SecureURL := copy(paramstr(i), 4, length(paramstr(i)) - 3);
      if (copy(paramstr(i), 1, 3) = '-D=') then DBName := copy(paramstr(i), 4, length(paramstr(i)) - 3);
      if (copy(paramstr(i), 1, 4) = '-DT=') then TransDBName := copy(paramstr(i), 5, length(paramstr(i)) - 4);
      if (copy(paramstr(i), 1, 3) = '-R=') then PrinterDirectory := copy(paramstr(i), 4, length(paramstr(i)) - 3);
      if (copy(paramstr(i), 1, 3) = '-Z=') then ZoneDirectory := copy(paramstr(i), 4, length(paramstr(i)) - 3);
      if (copy(paramstr(i), 1, 3) = '-L=') then LangDirectory := copy(paramstr(i), 4, length(paramstr(i)) - 3);
      if (copy(paramstr(i), 1, 3) = '-U=') then URLBase := copy(paramstr(i), 4, length(paramstr(i)) - 3);
      if (copy(paramstr(i), 1, 3) = '-A=') then AppBase := copy(paramstr(i), 4, length(paramstr(i)) - 3);
      if (copy(paramstr(i), 1, 3) = '-T=') then TransBase := copy(paramstr(i), 4, length(paramstr(i)) - 3);
      if (copy(paramstr(i), 1, 6) = '-DEBUG') then debugmode:=true;
    end;
    if zonedirectory='' then zonedirectory:=Basedirectory+'timezones\';
    if Printerdirectory='' then Printerdirectory:=Basedirectory+'printers\';
    if Langdirectory='' then Langdirectory:=Basedirectory+'lang\';
    script_dll_load;
  except
  end;
end.

