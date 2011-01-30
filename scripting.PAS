unit scripting;

interface
uses
  Sysutils,
  Windows,
  global;

var
  script_test : function (const ptr : pchar; len : short; res : pchar; max_result : short) : integer cdecl;
  DLLLoaded: Boolean = False;

procedure script_dll_load;
procedure script_dll_unload;

implementation

var
  DLLHandle: THandle;
  ErrorMode: Integer;

procedure LoadDLL;
begin
  if DLLLoaded then Exit;
  ErrorMode := SetErrorMode($8000{SEM_NoOpenFileErrorBox});
  DLLHandle := LoadLibrary(pchar('script_stub.dll'));
  if DLLHandle >= 32 then
  begin
    DLLLoaded := True;
    @script_test := GetProcAddress(DLLHandle,'script_test');
    Assert(@script_test <> nil);
  end
  else
  begin
    DLLLoaded := False;
  end;
  SetErrorMode(ErrorMode)
end {LoadDLL};

procedure script_dll_load;
begin
  LoadDLL;
end;

procedure script_dll_unload;
begin
  if DLLLoaded then begin
     FreeLibrary(DLLHandle);
  end;
  DLLLoaded:=false;
  @script_test:=nil;
end;

end.

