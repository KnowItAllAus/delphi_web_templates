unit newpipeunit;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, UThreadStringlist, pipes, superobject;

type
  OnPipeCmdProc = procedure (cmd : ISuperObject);

  TReadPipeThread = class(TThread)
  public
    name : string;
    handle : THandle;
    wmsg : integer;
    {outputlist : TThreadStringList;}
    cmdqueue : TThreadStringList;
    reconnect : boolean;
    cmdproc : OnPipeCmdProc;
    constructor Create(aname : string; {output : TThreadStringList;} onCmd : OnPipeCmdProc);
    destructor destroy; override;
    procedure Execute(); override;
  end;

  TReadPipe = class
    t : TReadPipeThread;
    constructor Create(aname : string; {output : TThreadStringList;} onCmd : OnPipeCmdProc);
    procedure reconnect;
    procedure sendcmd (cmd : string);
    destructor Destroy; override;
  end;

implementation

constructor TReadpipe.Create(aname : string; {output : TThreadStringlist;} onCmd : OnPipeCmdProc);
begin
  t:=TReadPipeThread.Create(aname, onCmd);
  inherited Create();
end;

destructor TReadPipe.destroy;
var
  chandle: THandle;
begin
  t.Terminate;
  chandle := CreateFile(@t.name[1], GENERIC_WRITE, 0, nil,
    OPEN_EXISTING, FILE_FLAG_WRITE_THROUGH, 0);
  CloseHandle(chandle);
  t.WaitFor;
  t.Free;
end;

destructor TReadpipethread.Destroy;
begin
  cmdqueue.Free;
end;

constructor TReadpipethread.Create(aname : string; {output : TThreadStringlist;} onCmd : OnPipeCmdProc);
begin
  name:='\\.\pipe\'+aname;
  //outputlist := output;
  cmdproc:=onCmd;
  cmdqueue:=TThreadStringlist.Create;
  inherited Create();
end;

procedure TReadpipe.Reconnect;
begin
  t.reconnect:=true;
end;

procedure TReadpipe.sendcmd(cmd : string);
begin
  t.cmdqueue.Add(cmd);
end;


type
  TPipeEventHandler =  class(TObject)
  public
     pipe : TReadPipeThread;
     procedure OnPipeSent(Sender: TObject; Pipe: HPIPE; Size: DWORD);
     procedure OnPipeMessage(Sender: TObject; Pipe: HPIPE; Stream: TStream);
  end;

procedure TPipeEventHandler.OnPipeSent(Sender: TObject; Pipe: HPIPE; Size: DWORD);
begin
  //self.pipe.outputlist.add('On Pipe Sent has executed!');
end;

procedure TPipeEventHandler.OnPipeMessage(Sender: TObject; Pipe: HPIPE; Stream: TStream);
var
  msg : string;
  cmd : ISuperObject;
  i,start,finish,cycle : integer;
  tied : boolean;
  slist : TStringlist;
  ansiguid, ansitoken, ansifield, ansiproperty, ansivalue, ansiname, ansidefault : ansistring;
  s : string;
begin
    SetLength(Msg, Stream.Size div SizeOf(Char));
    Stream.Position := 0;
    Stream.Read(Msg[1], Stream.Size);
    cmd:=SO(msg);
    //self.pipe.outputlist.add('Rx: '+cmd.AsString);
    self.pipe.cmdproc(cmd);
end;

procedure TReadPipeThread.Execute;
var
  lpMsg:         TMsg;
  WideChars:     Array [0..2047] of WideChar;
  myString:      String;
  iLength:       Integer;
  pcHandler:     TPipeClient;
  peHandler:     TPipeEventHandler;
  ss : ISuperObject;
begin

  // Create message queue for application
  PeekMessage(lpMsg, 0, WM_USER, WM_USER, PM_NOREMOVE);

  // Create client pipe handler
  pcHandler:=TPipeClient.CreateUnowned;
  // Resource protection
  try
     // Create event handler
     peHandler:=TPipeEventHandler.Create;
     peHandler.pipe:=self;
     // Resource protection
     try
        // Setup clien pipe
        pcHandler.PipeName:='PipeServer';
        pcHandler.ServerName:='.';
        pcHandler.OnPipeSent:=peHandler.OnPipeSent;
        pcHandler.OnPipeMessage:=peHandler.OnPipeMessage;
        reconnect:=false;
        // Resource protection
        while not terminated do begin
         // Connect
         reconnect:=false;
         if pcHandler.Connect(100) then
         begin
            // Dispatch messages for pipe client
            while PeekMessage(lpMsg, 0, 0, 0, PM_REMOVE) do DispatchMessage(lpMsg);
            // Setup for send
            ss:=SO;
            ss.S['command']:='register';
            ss.S['user']:='web';
            myString:=ss.AsJSon();
            ss:=nil;
            iLength:=Length(myString) + 1;
            StringToWideChar(myString, wideChars, iLength);
            pcHandler.FlushPipeBuffers;
            // Send pipe message
            pcHandler.Write(wideChars, iLength * 2);
            while not terminated and not reconnect do
              begin
                 // Flush the pipe buffers
                 // Get the message
                 sleep (50);
                 while PeekMessage(lpMsg, pcHandler.WindowHandle, 0, 0, PM_REMOVE) do DispatchMessage(lpMsg);
                 if cmdqueue.Count>0 then begin
                    mystring:=cmdqueue[0];
                    ilength:=length(mystring)+1;
                    if ilength<2047 then begin
                      widechars[0]:=#0;
                      StringToWideChar(myString, wideChars, iLength);
                      pcHandler.Write(wideChars, iLength * 2);
                      cmdqueue.Delete(0);
                    end;
                 end;
              end;
         end;
         sleep (100);
        end;
     finally
        // Disconnect event handler
        pcHandler.OnPipeSent:=nil;
        // Free event handler
        peHandler.Free;
     end;
  finally
     // Free pipe client
     pcHandler.Free;
  end;
  // Show complete
  //outputlist.add('Complete...');
  //outputlist.SaveToFile('c:\tmp\pipestuff.txt');
end;


end.
