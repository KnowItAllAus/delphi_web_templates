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
function RecastDir : string;
function logpath : string;
function logenabled : boolean;
function notifyconfigd (s : ansistring) : boolean;

implementation

uses IniFiles,sysutils,scripting, dateutils, shlobj, windows, registry, upipes, superobject;

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
  maindir : string;
  _logpath : string;
  _log_enabled : boolean;

function notifyconfigd (s : ansistring) : boolean;
var
  pc : TUPipeClient;
  sobj : ISuperObject;
  reply : string;
begin
  result:=false;
  try
    pc:=TUPipeClient.Create('','ConfigPipe');
    try
      reply:=pc.SendString(s);
      result:=true;
    finally
      pc.Free;
    end;
  except
  end;
end;

function logpath : string;
begin
  result:=_logpath;
end;

function logenabled : boolean;
begin
  result:=_log_enabled;
end;

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

function RecastDir : string;
begin
  result:=maindir;
end;

function RecastLogDir : string;
begin
  result:=maindir;
end;

function GetSpecialFolder(const CSIDL: integer) : string;
var
  RecPath : PWideChar;
begin
  RecPath := StrAlloc(MAX_PATH);
    try
    FillChar(RecPath^, MAX_PATH, 0);
    if SHGetSpecialFolderPath(0, RecPath, CSIDL, false)
      then result := RecPath
      else result := '';
    finally
      StrDispose(RecPath);
    end;
end;

procedure GetRecastDirs;
begin
  try
    maindir:=GetSpecialFolder(CSIDL_COMMON_APPDATA)+'\Recast\';
  except
    maindir:=extractfilepath(paramstr(0));
  end;
end;

function regreadstring (reg : TRegistry; key : string; default : string) : string;
begin
  if reg.ValueExists(key) then result:=reg.ReadString (key) else
     result:=default;
end;

function regreadinteger (reg : TRegistry; key : string; default : integer) : integer;
begin
  if reg.ValueExists(key) then result:=reg.ReadInteger (key) else
     result:=default;
end;

function regreadbool (reg : TRegistry; key : string; default : boolean) : boolean;
begin
  if reg.ValueExists(key) then begin
     result:=reg.ReadBool (key);
  end else
     result:=default;
end;

function GetPort: integer;
begin
  result := port;
end;

var
  i: integer;
  ini: TInifile;
  basedirectory : string;
  reg : TRegistry;
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
    getrecastdirs;
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

  reg:=TRegistry.create;
  Reg.RootKey := HKEY_LOCAL_MACHINE;
  if reg.OpenKey('\SOFTWARE\Recast',true) then begin
    //POS_Id:=RegReadString(reg,'POSID','1');
    _log_enabled:=RegReadBool(Reg,'Log',false);
    _logpath:=RegReadString(Reg,'LogPath','');
    if length(_logpath)>0 then begin
       if _logpath[length(_logpath)]<>'\' then
          _logpath:=_logpath+'\';
    end;
  end;
  reg.Free;
end.

