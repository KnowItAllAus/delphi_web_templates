unit slaveunit;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, newpipeunit, superobject, ExtCtrls, uthreadstringlist;

type
  Tslave = class
//    procedure PipeClient1PipeMessage(Sender: TObject; Pipe: HPIPE;
//      Stream: TStream);
    constructor Create;
    destructor Destroy; override;
  private
    { Private declarations }

    procedure connectpipe;
  public
    { Public declarations }
    slavelog : TThreadStringlist;
    sitename : string;
    pipe : TReadPipe;
    status : ISuperObject;
    procedure queueconnect;
    procedure sendtoservice (s : string);
  end;

var
  slave: Tslave;

implementation

destructor Tslave.Destroy;
begin
  pipe.Free;
end;

procedure handleCmdRx (cmd : ISuperObject);
begin
  if cmd.S['cmd']= 'status' then
    slave.status:=cmd;
end;

constructor Tslave.Create;
begin
  slavelog:=TThreadStringlist.Create;
  pipe:=TReadPipe.Create('PipeServer',handlecmdrx);
end;

procedure Tslave.sendtoservice (s : string);
begin
  pipe.sendcmd(s);
end;

procedure Tslave.queueconnect;
begin
  pipe.reconnect;
end;

(*procedure Tslave.PipeClient1PipeMessage(Sender: TObject; Pipe: HPIPE;
  Stream: TStream);
var
  msg : string;
  cmd : ISuperObject;
//  alert : TAlertForm;
  i,start,finish,cycle : integer;
  tied : boolean;
  slist : TStringlist;
  ansiguid, ansitoken, ansifield, ansiproperty, ansivalue, ansiname, ansidefault : ansistring;
//  sr : slaverec;
  s : string;
begin
 // try
    SetLength(Msg, Stream.Size div SizeOf(Char));
    Stream.Position := 0;
    Stream.Read(Msg[1], Stream.Size);
    cmd:=SO(msg);
    LogSlaveEvent ('Rx: '+cmd.S['cmd']);
    ansiguid:=cmd.S['guid'];
    ansitoken:=cmd.S['token'];
( *    if cmd.S['cmd']='reset' then begin
//       close_windows;
    end else if cmd.S['cmd']='set_alert_image' then begin
//       set_alert_image (@ansiguid[1],@ansitoken[1]);
//       statmgr.slave_comms;
    end else if cmd.S['cmd']='setstate' then begin
       set_recast_state (sysstates(ord(cmd.I['state'])));
       statmgr.slave_comms;
    end else if cmd.S['cmd']='log' then begin
       LogEvent ('(svc) '+cmd.S['event'],event_kind(cmd.I['kind']));
       statmgr.slave_comms;
    end else if cmd.S['cmd']='prnlog' then begin
       if cmd.B['partial'] then
          printlog.AddPartial (cmd.S['data'])
       else
          printlog.Addline (cmd.S['data']);
       statmgr.slave_comms;
    end else if cmd.S['cmd']='settings' then begin
       loadsettings(cmd);
       statmgr.slave_comms;
    end else if Cmd.S['cmd']='update_alert_property' then begin
       ansifield:=cmd.S['field'];
       ansivalue:=cmd.S['property_value'];
       ansiname:=cmd.S['property_name'];
       update_alert_property (@ansitoken[1],@ansifield[1],@ansiname[1],@ansivalue[1]);
       statmgr.slave_comms;
    end else if Cmd.S['cmd']='alert_add_control' then begin
       ansifield:=cmd.S['control_type'];
       ansiname:=cmd.S['name'];
       ansidefault:=cmd.S['default'];
       alert_add_control (@ansitoken[1],@ansifield[1],@ansiname[1],@ansidefault[1]);
       statmgr.slave_comms;
    end else if Cmd.S['cmd']='alert_set_focus' then begin
       ansifield:=cmd.S['field'];
       alert_set_focus (@ansitoken[1],@ansifield[1]);
       statmgr.slave_comms;
    end else if Cmd.S['cmd']='display_alert_image' then begin
       start:=cmd.I['indexstart'];
       finish:=cmd.I['indexend'];
       cycle:=cmd.I['cycletime'];
       tied:=cmd.B['tied'];
       display_alert_image (start, finish, cycle, @ansitoken[1], tied);
       statmgr.slave_comms;
    end else if Cmd.S['cmd']='setControls' then begin
       if main.alertlist.IndexOf(ansitoken)<>-1 then begin
         Alert:=TAlertForm(main.AlertList.Objects[main.alertlist.IndexOf(ansitoken)]);
         slist := TStringlist.Create;
         for i:=0 to cmd.A['controls'].length do begin
           slist.Add (cmd.A['controls'].S[i]);
         end;
         alert.setControls(slist);
         slist.Free;
         Alert.SetEnterAsTab(cmd.B['enterastab']);
         Alert.Caption:=cmd.S['caption'];
       end;
       statmgr.slave_comms;
    end else if Cmd.S['cmd']='status' then begin
       statmgr.netok := Cmd.B['netok'];
       statmgr.prnok := Cmd.B['prnok'];
       statmgr.posok := Cmd.B['posok'];
       statmgr.auxok := Cmd.B['auxok'];
       statmgr.scanok := Cmd.B['scanok'];
       statmgr.scok := Cmd.B['scok'];
       statmgr.ver := Cmd.S['ver'];
       statmgr.posenabled := Cmd.B['posenabled'];
       statmgr.prnenabled := Cmd.B['prnenabled'];
       statmgr.auxenabled := Cmd.B['auxenabled'];
       statmgr.enabled := Cmd.B['enabled'];
       //statmgr.slaveconflict := Cmd.B['slaveconflict'];
       statmgr.prnenabled := Cmd.B['prnenabled'];
       //statmgr.slavecount := Cmd.I['slavecount'];
       statmgr.message := Cmd.S['message'];
       //statmgr.POSConflictList := Cmd.S['posconflictlist'];
       sr.mac:=cmd.S['slave_mac'];
       sr.ip:=cmd.S['slave_ip'];
       sr.ver:=cmd.S['slave_ver'];
       sr.config_id:=cmd.S['slave_configid'];
       if sr.mac<>'' then begin
          statmgr.register_slave(sr.mac,sr.ip,sr.ver,sr.config_id);
       end;
       statmgr.posinputdev:=cmd.S['posinputdev'];
       statmgr.auxinputdev:=cmd.S['auxinputdev'];
       statmgr.outputprn:=cmd.S['outputprn'];
       PrintLog1.Visible:=cmd.S['outputprn']='Log Only';
       statmgr.slave_printer_name:=cmd.S['printername'];
       statmgr.svcmemory:=cmd.I['memory'];
       SC_Comms_addr:=cmd.S['sc_url'];
       statmgr.slave_comms;
    end else if Cmd.S['cmd']='handle_request' then begin
       s:=Cmd.S['request'];
       if not handle_request(s) then begin
           if copy (s,1,4)=SCAN_CONTEXT_PREFIX then
              delete (s,1,4);
           if not handle_request (Utf8Decode(s)) then begin
              if (CR_Prefix) then begin
                 s:=#13+s;
              end;
              s:=fixkeys(s);
              sendkeys (char(UCS_CMD_HIDE)+Utf8Decode(s)+char(UCS_CMD_RESTORE));
           end;
       end;

    end else if Cmd.S['cmd']='activity' then begin
       activity_flag:=Cmd.B['active'];
       updateenabledimage;
    end else if Cmd.S['cmd']='ismainwindow' then begin
       ismainwindow:=Cmd.B['ismain'];
    end else if Cmd.S['cmd']='upgrade' then begin
       upgrade1.Visible:=true;
    end else if Cmd.S['cmd']='quit' then begin
       SessionEnding:=true;
       kill_guardian;
       try
         Close;
       except
       end;
    end else if Cmd.S['cmd']='logoptions' then begin
       logprint:=Cmd.B['print'];
       logcomms:=Cmd.B['comms'];
       SetCheckedState(syslog.LogPrint,logprint);
       SetCheckedState(syslog.CommsBox,logcomms);
    end;
  except
    on e : exception do
       logEvent (e.Message,seError);
  end;
  //LogEvent(msg,seInfo); * )
end;                        *)

procedure Tslave.connectpipe;
var
  ss : ISuperObject;
begin
//     if pipeclient1.connected then begin
       ss:=SO;
       ss.S['command']:='register';
       ss.S['user']:='web';
       sendtoservice(ss.AsJSon());
  //     PipeClient1.Write(PChar(Msg)^, Length(Msg) * SizeOf(Char));
  //     suppress_windows:=false;
//     end;
end;

end.