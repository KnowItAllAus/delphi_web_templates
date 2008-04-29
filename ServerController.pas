unit ServerController;
{PUBDIST}

interface

uses
  Classes,
  DataMod,
  IWServerControllerBase, IWAppForm, IWBaseForm, IWApplication,
  IWModuleController,IWProducer,HTTPApp,SysUtils, GpTimezone;

  //Windows, Messages, SysUtils, Classes,

const
  MAX_MRU = 3;

type
  mru_rec = record
     id : string;
     name : string;
     rev : string;
     note : string;
  end;

  TRcWebController = class(TIWServerControllerBase)
    procedure IWServerControllerBaseCreate(Sender: TObject);
    procedure IWServerControllerBaseNewSession(ASession: TIWApplication;
      var VMainForm: TIWBaseForm);
    procedure IWServerControllerBaseException(AApplication: TIWApplication;
      AException: Exception);
    procedure IWServerControllerBaseInvalidCommand(ARequest: TWebRequest;
      AResponse: TWebResponse; AMsg: String);
  private
  public
    procedure log_error (msg : string);
  end;

  // This is a class which you can add variables to that are specific to the user. Add variables
  // to this class instead of creating global variables. This object can references by using:
  //   UserSession
  // So if a variable named UserName of type string is added, it can be referenced by using:
  //   UserSession.UserName
  // Such variables are similar to globals in a normal application, however these variables are
  // specific to each user.
  //
  // See the IntraWeb Manual for more details.
  TUserSession = class(TComponent)
  public
    RcDataMod: TRcDataMod;
    Company: string;
    User: string;
    pwd : string;
    UserCompany : string;
    LastAccess: TDateTime;
    LastComms: TDateTime;
    CompanyName: string;
    privilege : integer;
    loginedit : integer;
    JobHdrID : integer;
    JobName : string;
    JobRevID : integer;
    JobRevNote : string;
    ReadOnly : boolean;
    TimeOffset : TDateTime;
    HideTitles : boolean;
    TimeZones : TGpRegistryTimeZones;
    TimeZoneName : string;
    NewLayout : boolean;
    mru_list : array [1..MAX_MRU] of mru_rec;
    strict : boolean;
    //
    constructor Create(AOwner: TComponent); override;
    procedure SetPriv (priv : integer);
    procedure mru_add (id : string; name : string; rev : string; note : string);
    procedure mru_delete (id : string; rev : string);
  end;

// Procs
function UserSession: TUserSession;

implementation
{$R *.dfm}

uses
  IWInit, Inifiles, global, IWMain, cfgtypes, windows;

function UserSession: TUserSession;
begin
  Result := TUserSession(WebApplication.Data);
end;

{ TUserSession }

procedure TUserSession.mru_add (id : string; name : string; rev : string; note : string);
var
  i,j : integer;
  found : boolean;
begin
  i:=1;
  found:=false;
  repeat
     if (mru_list[i].id=id) and (mru_list[i].rev=rev) then found:=true else inc(i);
  until found or (i=MAX_MRU);
  if not found then begin
     for i:=2 to MAX_MRU do
       mru_list[i]:=mru_list[i-1];
  end else begin
     for j:=i downto 2 do
       mru_list[j]:=mru_list[j-1];
  end;
  mru_list[1].name:=name;
  mru_list[1].id:=id;
  mru_list[1].rev:=rev;
  mru_list[1].note:=note;
end;

procedure TUserSession.mru_delete (id : string; rev : string);
var
  i,j : integer;
  found : boolean;
begin
  i:=1;
  found:=false;
  repeat
     if (mru_list[i].id=id) and (mru_list[i].rev=rev) then found:=true else inc(i);
  until found or (i=MAX_MRU);
  if found then begin
     for j:=i to MAX_MRU-1 do begin
        mru_list[j]:=mru_list[j+1];
     end;
     mru_list[MAX_MRU].name:='';
     mru_list[MAX_MRU].id:='';
  end;
end;

constructor TUserSession.Create(AOwner: TComponent);
begin
  RcDataMod := TRcDatamod.Create(AOwner);
  RcDataMod.LangEditControl1.Basedir:=getTransBase;
  TimeZones:=TGpRegistryTimeZones.Create;

end;

procedure TUserSession.SetPriv (priv : integer);
begin
   privilege:=priv;
   RcDataMod.LangEditControl1.AllowEdit:=(priv and PRIV_LANG)>0;
end;

procedure TRcWebController.IWServerControllerBaseCreate(Sender: TObject);
begin
   Port:=getPort;
   ExecCmd:=getPrefix+'EXEC';
   StartCmd:=getPrefix;
   FormIWMain.Log ('DB="'+GetDBName+'"');
   FormIWMain.Log ('Prefix="'+getPrefix+'"');
   FormIWMain.Log ('PrnDir="'+PrinterDir+'"');
   FormIWMain.Log ('ZoneDir="'+ZoneDir+'"');
   FormIWMain.Log ('LangDir="'+LangDir+'"');
   FormIWMain.Log ('ExitURL="'+GetExitURL+'"');
   URLBase:=GetUrlBase;
   FormIWMain.Log ('BaseURL="'+GetURLBase+'"');
   FormIWMain.Log ('Translatedir="'+GetTransBase+'"');
   SessionTimeoutURL.URL:=GetExitURL;
end;

function getrunparam (name : string; s : TStrings) : string;
var
   i : integer;
begin
   for i:=0 to s.count-1 do begin
      if (copy(s.strings[i],1,pos('=',s.strings[i])-1)=name) then begin
         result:=copy(s.strings[i],pos('=',s.strings[i])+1,99);
         exit;
      end;
   end;
   result:='';
end;

procedure TRcWebController.IWServerControllerBaseNewSession(
  ASession: TIWApplication; var VMainForm: TIWBaseForm);
//var
//  i : integer;
begin
  ASession.Data := TUserSession.Create(ASession);
//  with TUserSession(ASession.Data) do begin
//       for i:=0 to Asession.Runparams.Count-1 do
//          FormIWMain.Log (Asession.RunParams.Strings[i]);
//     User:=ASession.RunParams.Strings[0];
//  end;
  TUserSession(ASession.Data).Company:=getrunparam('c',Asession.runparams);
  TUserSession(ASession.Data).User:=getrunparam('u',Asession.runparams);
  TUserSession(ASession.Data).pwd:=getrunparam('p',Asession.runparams);
end;

(*procedure do_time;
var
  MyTZI : TTimeZoneInformation;
  i : integer;
  MyString : string[32];
  MyTime : TDateTime;
begin
  Time_ID := GetTimeZoneInformation(MyTZI);
  with ListBox1.Items, MyTZI do begin
    Add('Bias : ' + IntToStr(Bias));
    for i := 0 to 31 do
      MyString[i+1] := char(StandardName[i]);
    Add('Standard Name : ' + MyString);
    Add('Standard Bias : ' + IntToStr(StandardBias));
    for i := 0 to 31 do
      MyString[i+1] := char(DaylightName[i]);
    Add('Daylight Name : ' + MyString);
    Add('Daylight Bias : ' + IntToStr(DaylightBias));
    with DaylightDate do
      MyTime := EncodeDate(1999,
                           wMonth,
                           wDay)
                + EncodeTime(wHour, 0, 0, 0);
    {end; with DaylightDate}
    Add('Daylight Date : ' + FormatDateTime('d mmmm : hh00',MyTime));
  end; {with ListBox.Items}
end;
*)

procedure TRcWebController.log_error (msg : string);
var
  f : textfile;
begin
  assignfile (f,'error.log');
  try
    append (f);
  except
    rewrite (f);
  end;
  writeln (f,datetimetostr (now)+' '+msg);
  closefile (f);
end;

procedure TRcWebController.IWServerControllerBaseException(
  AApplication: TIWApplication; AException: Exception);
begin
  log_error ('Exception: '+AException.Message);
end;

procedure TRcWebController.IWServerControllerBaseInvalidCommand(
  ARequest: TWebRequest; AResponse: TWebResponse; AMsg: String);
begin
  log_error ('Invalid Cmd: '+AMsg);
end;

initialization
  TRcWebController.SetServerControllerClass;
end.

