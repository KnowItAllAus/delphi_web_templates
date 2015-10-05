unit sendForm;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  IWCompButton, IWControl, IWCompLabel,
  IWExtCtrls, IWContainer, IWRegion, IWBaseControl, IWVCLBaseControl, IWAppForm,
  IWVCLBaseContainer, IWBaseHTMLControl, IWHTMLControls, IWSiLink, siComp,
  siLngLnk, IWCompListbox, IWCompRectangle, IWHTMLContainer, footer_user,
  distribtitle, IWCompEdit, IWCompTimeEdit, IWHTML40Container;

type
  TformSend = class(TIWAppForm)
    siLangLinked1: TsiLangLinked;
    DistribFrameTitle1: TDistribFrameTitle;
    userfooter1: Tuserfooter;
    IWRegion1: TIWRegion;
    IWRegion2: TIWRegion;
    IWRectangle1: TIWRectangle;
    IWRectangle2: TIWRectangle;
    RequestLabel: TIWLabel;
    CompanyLabel: TIWLabel;
    LiveGroups: TIWComboBox;
    AllBtn: TIWButton;
    IWSiLink1: TIWSiLink;
    TestBtn: TIWButton;
    TestGroups: TIWComboBox;
    WhenCombo: TIWComboBox;
    WhenLabel: TIWLabel;
    DayCombo: TIWComboBox;
    IWLabel1: TIWLabel;
    procedure IWAppFormCreate(Sender: TObject);
    procedure IWAppFormDestroy(Sender: TObject);
    procedure userfooter1CancelClick(Sender: TObject);
    procedure AllBtnClick(Sender: TObject);
    procedure TestBtnClick(Sender: TObject);
  private
    { Private declarations }
    TList : TStringList;
    LList : TStringList;
    function current_offset (fn : string) : integer;
    procedure PublishToGroup (g : string; silent : boolean);
    procedure PublishToAll;
    procedure update_store (company : string; store : integer; publishat : TDateTime);
    procedure PublishToGroupDeferred (groupid : string; targettime : integer; targetday : integer);
  public
    { Public declarations }
  end;

var
  formSend: TformSend;

implementation

uses
  ServerController, datamod, IWInit, IWTypes, RoleForm, cfgtypes, global, dateutils;

{$R *.DFM}

procedure TformSend.PublishToGroup (g : string; silent : boolean);
begin
    with RcDataModule.RequestUpdateGroupX do begin
      try
        Transaction.Active:=False;
        Transaction.StartTransaction;
        ParamByName('COMPANY').AsString:=UserSession.Company;
        ParamByName('PUBTIME').clear; //AsDateTime:=buildtime;
        ParamByName('GROUPID').AsString:=g;
        ExecSQL;
        Transaction.Commit;
        if not silent then WebApplication.ShowMessage(SiLangLinked1.GetTextOrDefault('UpdateRequested'), smAlert);
      except
        Transaction.Active:=False;
        if not silent then WebApplication.ShowMessage(SiLangLinked1.GetTextOrDefault('UpdateRejected'), smAlert);
      end;
    end;
end;

procedure TformSend.IWAppFormCreate(Sender: TObject);
begin
  TList:=TStringList.Create;
  LList:=TStringList.Create;
  RcDataModule.Trans.Active:=False;
  RcDataModule.Trans.StartTransaction;
  RcDataModule.GroupQuery.Close;
  RcDataModule.GroupQuery.ParamByName('COMPANY').AsString:=
     UserSession.Company;
  RcDataModule.GroupQuery.Open;
  TList.Add(RcDataModule.GroupQuery.FieldByName('ID').AsString);
  LList.Add(RcDataModule.GroupQuery.FieldByName('ID').AsString);
  LiveGroups.Items.Add (SiLangLinked1.GetTextOrDefault('AllLiveGroups'));
  TestGroups.Items.Add (SiLangLinked1.GetTextOrDefault('AllTestGroups'));
  while not RcDataModule.GroupQuery.Eof do begin
    if (RcDataModule.GroupQuery.FieldByName('TESTGROUP').AsString='Y') then begin
      TestGroups.Items.Add (RcDataModule.GroupQuery.FieldByName('Name').AsString);
      TList.Add(RcDataModule.GroupQuery.FieldByName('ID').AsString)
    end else begin
      LiveGroups.Items.Add (RcDataModule.GroupQuery.FieldByName('Name').AsString);
      LList.Add(RcDataModule.GroupQuery.FieldByName('ID').AsString);
    end;
    RcDataModule.GroupQuery.Next;
  end;
  if (UserSession.privilege and PRIV_LIVE)=0 then AllBtn.Enabled:=false;
  LiveGroups.ItemIndex:=0;
  TestGroups.ItemIndex:=0;
  RcDataModule.GroupQuery.Close;
  RcDataModule.Trans.Active:=False;
  IWSiLink1.InitForm;
  CompanyLabel.Caption:=UserSession.CompanyName;
  WhenCombo.itemindex:=1;
end;

procedure TformSend.IWAppFormDestroy(Sender: TObject);
begin
   FreeAndNil(LList);
   FreeAndNil(TList);
end;

procedure TformSend.userfooter1CancelClick(Sender: TObject);
begin
   TIWAppForm(WebApplication.ActiveForm).Release;
   Tsu_FormRole.Create (WebApplication).show;
end;

function TformSend.current_offset (fn : string) : integer;
var
  f : file;
  offset : word;
  dst : word;
  b : byte;
  i,j : integer;
  zname : array [1..40] of ansichar;
  startdate, enddate : TDatetime;
  dst_active : boolean;
begin
    result:=600; { default to Oz }
    Assignfile (f,fn);
    reset (f,1);
    try
      dst_active:=false;
      blockread (f,b,sizeof(b));
      if b<>0 then raise exception.create('Bad file format');
      blockread (f,zname,sizeof(zname));
      blockread (f,offset,sizeof(offset));
      blockread (f,dst,sizeof(dst));
      blockread (f,b,sizeof(b));
      for j:=1 to b do begin
         try
           blockread (f,i,sizeof(i));
           startdate:=rtctime(i);
           blockread (f,i,sizeof(i));
           enddate:=rtctime(i);
           if (now>startdate) and (now<enddate) then dst_active:=true;
         except
         end;
      end;
      if dst_active then
         result:=offset + dst
      else
         result:=offset;
    except
      closefile (f);
    end;
end;

function LocalToUTC(LocalTime: TDateTime): TDateTime;
var TimeZoneInformation: TTimeZoneInformation;
    Bias: integer;
begin
   Bias := 0;
   case GetTimeZoneInformation(TimeZoneInformation) of
    TIME_ZONE_ID_STANDARD: Bias := TimeZoneInformation.Bias + TimeZoneInformation.StandardBias;
    TIME_ZONE_ID_DAYLIGHT: Bias := TimeZoneInformation.Bias + TimeZoneInformation.DaylightBias;
   else
    Bias := TimeZoneInformation.Bias;
   end;
   result := incminute(Localtime, Bias);
end;

procedure TFormSend.update_store (company : string; store : integer; publishat : TDateTime);
begin
  with RcDataModule.SQLEx do begin
     SQL.Clear;
     SQL.Add('update STORES set BUILDTIME=:BUILDTIME, CONFIGUPDATE=1');
     SQL.Add('where COMPANY=:COMPANY and ID=:STOREID');
     ParamByName ('COMPANY').AsString:=UserSession.Company;
     ParamByName ('STOREID').AsInteger:=store;
     ParamByName ('BUILDTIME').AsDateTime:=publishat;
     ExecQuery;
  end;
end;

procedure TFormSend.PublishToAll;
var
  tzfile : string;
  utcoffset : integer;
  now_utc : tdatetime;
  now_hour, now_min, now_sec, now_msec : word;
  publish_offset : word;
  targettime : word;
  publishtime : tdatetime;
  now_offset : word;
  tomorrow : boolean;
begin
  if whencombo.itemindex=0 then begin
    with RcDataModule.RequestUpdate do begin
      try
        Transaction.Active:=False;
        Transaction.StartTransaction;
        ParamByName('BUILDTIME').Clear; // Immediate. Should really be the local time now at site
        ParamByName('COMPANY').AsString:=UserSession.Company;
        ExecSQL;
        Transaction.Commit;
        WebApplication.ShowMessage(SiLangLinked1.GetTextOrDefault('UpdateRequested'), smAlert);
      except
        Transaction.Active:=False;
        WebApplication.ShowMessage(SiLangLinked1.GetTextOrDefault('UpdateRejected'), smAlert);
      end;
    end;
    exit;
  end;

  try
    with RcDataModule.SQLQry do begin
       SQL.Clear;
       SQL.Add('select storedata.* from STORES join STOREDATA on STOREDATA.ID=STORES.ID');
       SQL.Add('where STORES.COMPANY=:COMPANY');
       SQL.Add('and STOREDATA.ENABLED=1');
       ParamByName ('COMPANY').AsString:=UserSession.Company;
       Transaction.Active:=false;
       Open;

       while not RcDataModule.SQLQry.EOF do begin
         tzfile:=FieldByName ('TIMEZONE').AsString;
         if tzfile='' then begin
            utcoffset:=FieldByName ('TIMEOFFSET').AsInteger;
         end else begin
            tzfile:=zonedir+tzfile+'.dst';
            utcoffset:=current_offset (tzfile);
         end;
         targettime:=(whencombo.itemindex-1) * 60;
         publish_offset:=((targettime-utcoffset) + 24 * 60) mod (24*60);
         //
         // This is the time every day in UTC time we prefer to publish.
         // If it is later than this time then we publish for 'tomorrow',
         // else publish for 'today'.
         now_utc:=LocalToUTC(Now);
         DecodeTime(now_utc, now_Hour, now_Min, now_Sec, now_MSec);
         now_offset:=60*now_hour + now_min;
         tomorrow:=false;
         if publish_offset<now_offset then begin
            // Do it tomorrow
            publish_offset:=publish_offset + 24*60;
            tomorrow:=true;
         end;
         if (daycombo.ItemIndex>0) then begin
            if not tomorrow then begin
               // Get a tomorrow baseline
               publish_offset:=publish_offset + 24*60;
            end;
            publish_offset:=publish_offset + (daycombo.itemindex-1)*24*60;
         end;
         publishtime:=incminute(int(now_utc),publish_offset);
         update_store (usersession.company,FieldByName ('ID').AsInteger,publishtime);
         next;
       end;
       RcDataModule.SQLQry.Transaction.Commit;
       WebApplication.ShowMessage(SiLangLinked1.GetTextOrDefault('UpdateRequested'), smAlert);
    end;
  except
    WebApplication.ShowMessage(SiLangLinked1.GetTextOrDefault('UpdateRejected'), smAlert);
  end;
end;

procedure TFormSend.PublishToGroupDeferred (groupid : string; targettime : integer; targetday : integer);
var
  tzfile : string;
  utcoffset : integer;
  now_utc : tdatetime;
  now_hour, now_min, now_sec, now_msec : word;
  publish_offset : word;
  publishtime : tdatetime;
  now_offset : word;
  tomorrow : boolean;
begin
  try
    with RcDataModule.SQLQry do begin
       SQL.Clear;
       SQL.Add('select * from P_STORES_IN_GROUP (:COMPANY, :GROUPID)');
       SQL.Add('join STOREDATA on STOREDATA.ID=STOREID');
       SQL.Add('where STOREDATA.COMPANY=:COMPANY');
       SQL.Add('and STOREDATA.ENABLED=1');
       ParamByName ('COMPANY').AsInteger:=strtoint(UserSession.Company);
       ParamByName ('GROUPID').AsInteger:=strtoint(groupid);
       Transaction.Active:=false;
       Open;

       while not RcDataModule.SQLQry.EOF do begin
         tzfile:=FieldByName ('TIMEZONE').AsString;
         if tzfile='' then begin
            utcoffset:=0;
            if not FieldByName ('TIMEOFFSET').IsNull then
               utcoffset:=FieldByName ('TIMEOFFSET').AsInteger;
         end else begin
            tzfile:=zonedir+tzfile+'.dst';
            utcoffset:=current_offset (tzfile);
         end;
         //targettime:=(whencombo.itemindex-1) * 60;
         publish_offset:=(targettime-utcoffset + 24 * 60) mod (24*60);
         //
         // This is the time every day in UTC time we prefer to publish.
         // If it is later than this time then we publish for 'tomorrow',
         // else publish for 'today'.
         now_utc:=LocalToUTC(Now);
         DecodeTime(now_utc, now_Hour, now_Min, now_Sec, now_MSec);
         now_offset:=60*now_hour + now_min;
         tomorrow:=false;
         if publish_offset<now_offset then begin
            // Do it tomorrow
            publish_offset:=publish_offset + 24*60;
            tomorrow:=true;
         end;
         if (targetday>0) then begin
            if not tomorrow then begin
               // Get a tomorrow baseline
               publish_offset:=publish_offset + 24*60;
            end;
            publish_offset:=publish_offset + (targetday-1)*24*60;
         end;
         publishtime:=incminute(int(now_utc),publish_offset);
         update_store (usersession.company,FieldByName ('ID').AsInteger,publishtime);
         next;
       end;
       RcDataModule.SQLQry.Transaction.Commit;
       WebApplication.ShowMessage(SiLangLinked1.GetTextOrDefault('UpdateRequested'), smAlert);
    end;
  except
    WebApplication.ShowMessage(SiLangLinked1.GetTextOrDefault('UpdateRejected'), smAlert);
  end;
end;


procedure TformSend.AllBtnClick(Sender: TObject);
begin
    if LiveGroups.ItemIndex>0 then begin
      if (Whencombo.Itemindex=0) then begin
         PublishToGroup (LList.Strings[LiveGroups.ItemIndex],false);
      end else begin
         PublishToGroupDeferred (LList.Strings[LiveGroups.ItemIndex],Whencombo.Itemindex*60,daycombo.ItemIndex);
      end;
    end else begin
      PublishToAll;
    end;
end;

procedure TformSend.TestBtnClick(Sender: TObject);
var
    i : integer;
begin
    if TestGroups.ItemIndex>0 then begin
      PublishToGroup (TList.Strings[TestGroups.ItemIndex],false);
    end else with RcDataModule.RequestTestUpdqry do begin
      for i:=0 to TList.count-1 do begin
        PublishToGroup (TList.Strings[i],true);
      end;
      WebApplication.ShowMessage(SiLangLinked1.GetTextOrDefault('UpdateRequested'), smAlert);
    end;
end;

end.
