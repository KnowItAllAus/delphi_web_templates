unit datamod;

interface

uses
{$IFDEF Win32}
  Windows, Messages,  Graphics, Controls, Forms, Dialogs,
{$ELSE}
  QGraphics, QControls, QForms, QDialogs, QStdCtrls,
{$ENDIF}
  SysUtils, Classes, IBCustomDataSet, IBQuery, IBDatabase,
  Db, IBTable, IBUpdateSQL, IWMain, siComp, IWSiLink, IBSQL, DCPcrypt2,
  DCPsha256, Pipes, Superobject;

type
  TStringObj = class
     value : string;
  end;

  TRcDataMod = class(TDataModule)
    RecastDB: TIBDatabase;
    Trans: TIBTransaction;
    CoQuery: TIBQuery;
    UserQuery: TIBQuery;
    StampSession: TIBQuery;
    CurrentVoucherQuery: TIBQuery;
    VoucherUpdateQuery: TIBQuery;
    VoucherQuery: TIBQuery;
    VoucherInsertQuery: TIBQuery;
    VoucherDeleteQuery: TIBQuery;
    StoreQuery: TIBQuery;
    CurrentStoreQuery: TIBQuery;
    StoreDeleteQuery: TIBQuery;
    StoreUpdateQuery: TIBQuery;
    StoreInsertQuery: TIBQuery;
    NewIDQuery: TIBQuery;
    PrinterInsertQuery: TIBQuery;
    PrinterUpdateQuery: TIBQuery;
    PrinterDeleteQuery: TIBQuery;
    CurrentPrinterQuery: TIBQuery;
    ChangePasswd: TIBQuery;
    PosUpdateQuery: TIBQuery;
    PosInsertQuery: TIBQuery;
    PosDeleteQuery: TIBQuery;
    CurrentPosQuery: TIBQuery;
    PosQuery: TIBQuery;
    ImageUpdateQuery: TIBQuery;
    ImageInsertQuery: TIBQuery;
    CurrentImageQuery: TIBQuery;
    ImageQuery: TIBQuery;
    ImageDeleteQuery: TIBQuery;
    ItemInsertQuery: TIBQuery;
    IntegerField13: TIntegerField;
    IntegerField14: TIntegerField;
    IBStringField9: TIBStringField;
    IBStringField10: TIBStringField;
    IntegerField15: TIntegerField;
    ItemDeleteQuery: TIBQuery;
    ItemQuery: TIBQuery;
    ImageDetailQuery: TIBQuery;
    StatQuery: TIBQuery;
    StatItemQuery: TIBQuery;
    POSLayout: TIBQuery;
    TranQuery: TIBQuery;
    TranItemQuery: TIBQuery;
    RequestUpdateStore: TIBQuery;
    DelAllJnlItemQuery: TIBQuery;
    ItemMoveQuery: TIBQuery;
    IntegerField10: TIntegerField;
    IntegerField11: TIntegerField;                        
    IBStringField7: TIBStringField;
    IBStringField8: TIBStringField;
    IntegerField12: TIntegerField;
    DepQuery: TIBQuery;
    TrigDetailQuery: TIBQuery;
    DepTrigInsertQuery: TIBQuery;
    IntegerField16: TIntegerField;
    IntegerField17: TIntegerField;
    IBStringField11: TIBStringField;
    IBStringField12: TIBStringField;
    IntegerField18: TIntegerField;
    NewVendorCodeQuery: TIBQuery;
    DepTrigDelQuery: TIBQuery;
    StoreConfigQuery: TIBQuery;
    ConfigInsertQuery: TIBQuery;
    GroupQuery: TIBQuery;
    GroupInsertQuery: TIBQuery;
    GroupUpdateTestQuery: TIBQuery;
    GroupDeleteQuery: TIBQuery;
    CurrentGroupQuery: TIBQuery;
    GrpAllocQuery: TIBQuery;
    GroupDetailQuery: TIBQuery;
    GrpAllocInsertQuery: TIBQuery;
    GrpAllocDelQuery: TIBQuery;
    GrpUseQuery: TIBQuery;
    suCoQuery: TIBQuery;
    suUserQuery: TIBQuery;
    suCoDeleteQuery: TIBQuery;
    suCoUpdateQuery: TIBQuery;
    suCoInsertQuery: TIBQuery;
    suUserInsertQuery: TIBQuery;
    suUserDeleteQuery: TIBQuery;
    vchcopyquery: TIBQuery;
    imgcopyquery: TIBQuery;
    PrnTran: TIBTransaction;
    CurrentPrinterCfgQuery: TIBQuery;
    PrnNameQuery: TIBQuery;
    PrnDataDelQuery: TIBQuery;
    CurrentStoreCfgQuery: TIBQuery;
    siLang1: TsiLang;
    siLangDispatcher1: TsiLangDispatcher;
    LangEditControl1: TLangEditControl;
    suUserPrivQuery: TIBQuery;
    JobAllQuery: TIBQuery;
    JobInsertQuery: TIBQuery;
    CurrentJobQuery: TIBQuery;
    UpdateJobQuery: TIBQuery;
    DeleteJobQuery: TIBQuery;
    StoreNotifyByGroupQuery: TIBQuery;
    StoreNotifyQuery: TIBQuery;
    ImageVerQuery: TIBQuery;
    CurrentImageHdrQuery: TIBQuery;
    UpdateImgHdrQuery: TIBQuery;
    ImageHdrInsertQuery: TIBQuery;
    UpdateTestQuery: TIBQuery;
    UpdateProdQuery: TIBQuery;
    ImageHdrDeleteQuery: TIBQuery;
    ImageJobQuery: TIBQuery;
    ImageVoucherQuery: TIBQuery;
    coaliasquery: TIBQuery;
    RequestTestUpdqry: TIBQuery;
    TranExptQry: TIBQuery;
    CopyJobQuery: TIBQuery;
    OldStoreQuery: TIBQuery;
    JobRevQuery: TIBQuery;
    JobRevCopy: TIBQuery;
    UpdateJobRevQuery: TIBQuery;
    AuthJobQuery: TIBQuery;
    CurrentJobRevQuery: TIBQuery;
    JobTestQuery: TIBQuery;
    JobProdQuery: TIBQuery;
    JobTestNullQry: TIBQuery;
    JobProdNullQry: TIBQuery;
    DeleteJobRevQuery: TIBQuery;
    AddJobRevQuery: TIBQuery;
    DelSlaveOffQuery: TIBQuery;
    Trans2: TIBTransaction;
    TranDB: TIBDatabase;
    GrpStoreQuery: TIBQuery;
    GrpPromoQuery: TIBQuery;
    AllocItemDelQry: TIBQuery;
    OverQuery: TIBQuery;
    OverJobQuery: TIBQuery;
    UpdateOverQuery: TIBQuery;
    SQLEx: TIBSQL;
    GroupTmplInsertQuery: TIBQuery;
    GroupUpdateNameQuery: TIBQuery;
    GrpTmplInsertQuery: TIBQuery;
    GrpTmplUsageQuery: TIBQuery;
    GrpTmplQuery: TIBQuery;
    TmplQuery: TIBQuery;
    ImageVerQueryTmpl: TIBQuery;
    CurrentImageHdrQueryTmpl: TIBQuery;
    CurrentImageQueryTmpl: TIBQuery;
    ImageUpdateQueryTmpl: TIBQuery;
    ImageInsertQueryTmpl: TIBQuery;
    SQLQry: TIBQuery;
    OverTmplQuery: TIBQuery;
    OverJobTmplQuery: TIBQuery;
    GrpSubQuery: TIBQuery;
    GrpAvail: TIBQuery;
    RequestUpdateGroupX: TIBQuery;
    GrpDepUpQuery: TIBQuery;
    GrpDepDnQuery: TIBQuery;
    suUserAddQuery: TIBQuery;
    FastTranquery: TIBQuery;
    CredQuery: TIBQuery;
    CredAdd: TIBQuery;
    CredDel: TIBQuery;
    CredUpdate: TIBQuery;
    PosExQuery: TIBQuery;
    PosExUseQuery: TIBQuery;
    sha: TDCP_sha256;
    SQLEx2: TIBSQL;
    RequestUpdate: TIBQuery;
    POSTypeQuery: TIBQuery;
    cfgquery: TIBQuery;
    procedure DataModuleCreate(Sender: TObject);
    procedure DataModuleDestroy(Sender: TObject);
  private
    { Private declarations }
    values : TStringList;
  public
    { Public declarations }
    slavelog : TStringlist;
    function getHash(ss : string) : string;
    function nextID : integer;
    function nextVendorCode : integer;
    procedure showdb;
    procedure Log (s : string);
    procedure NotifyGroupOfChanges (Groups : TStringlist; retain : boolean);
    procedure NotifyStoreOfChanges (StoreID : String; retain : boolean);
    procedure NotifyJobChanges (JobID : integer; retain : boolean);
    procedure SaveValue (name : string; value : string);
    function GetValue (name : string; default : string) : string;
    function make_guid : string;
    procedure SelectTransDB(new : boolean);
  end;

function RcDatamodule : TRcDataMod;

implementation

uses
  IWServer, IWInit, global, ServerController, slaveunit;

const
  bools : array [boolean] of string = ('False','True');

function RcDatamodule : TRcDataMod;
begin
  Result := UserSession.RcDataMod;
end;

{$IFDEF Win32}
  {$R *.dfm}
{$ELSE}
  {$R *.xfm}
{$ENDIF}

function TRcDataMod.getHash(ss : string) : string;
var
   HashDigest: array of byte;
   j : integer;
   s : string;
begin
   sha.Init;
   sha.UpdateUnicodeStr('@recastWEB:'+ss);
   SetLength(HashDigest,sha.HashSize div 8);
   sha.Final(HashDigest[0]);  // get the output
   s := '';
   for j := 0 to Length(HashDigest) - 1 do  // convert it into a hex string
        s := s + IntToHex(HashDigest[j],2);
   result:=s;
end;

procedure TRcDataMod.SaveValue (name : string; value : string);
var
    so : TStringObj;
    i : integer;
begin
    so:=TStringObj.Create;
    so.value:=value;
    i:=values.IndexOf(uppercase(name));
    if (i>=0) then begin
       values.objects[i].Free;
       values.objects[i]:=so;
    end else begin
       values.AddObject(uppercase(name),so)
    end;
end;

function TRcDataMod.GetValue (name : string; default : string) : string;
var
  index : integer;
begin
  try
    index:=values.IndexOf(uppercase(name));
    if index>=0 then
       result:= TStringObj(values.Objects[index]).value
    else
       result:=default;
  except
    result:=default;
  end;
end;

procedure TRcDataMod.ShowDb;
var
  i : integer;
begin
  Log ('Transaction Active: '+bools[Trans.Active]);
  for i:=0 to ComponentCount-1 do
     if Components[i] is TDataset then begin
        With Components[i] as TDataset do begin
           if active then Log ('DB: '+name+' '+bools[active]);
        end;
     end;
end;

function TRcDataMod.make_guid : string;
var
  s : string;
begin
  s:=UserSession.Company+FormatDateTime('hhmmssddmmyy',now);
  while (length(s)<20) do s:=s+char(random(10)+48);
  result:=s;
end;

procedure TRcDataMod.Log (s : string);
begin
   FormIWMain.Log (FormatDateTime (ShortDateFormat+' hh:mm:ss',now)+' - '+s);
end;

procedure TRcDataMod.DataModuleCreate(Sender: TObject);
begin
   values:=tstringlist.create;
   randomize;
   if GetDBName<>'' then begin
      RecastDb.DatabaseName:=GetDBName;
      TranDb.DatabaseName:=GetDBName;
   end;
   RecastDb.Connected:=true;
   TranDb.Connected:=true;
   SiLangDispatcher1.LoadAllFromFile ('main.sil');
   slavelog := TStringlist.Create;
end;

procedure TRcDataMod.SelectTransDB(new : boolean);
begin
   TranDb.Connected:=false;
   if new then
      TranDb.DatabaseName:=GetTransDBName
   else
      TranDb.DatabaseName:=GetDBName;
   TranDb.Connected:=true;
end;

function TRcDataMod.nextID : integer;
begin
   NewIDQuery.Active:=True;
   Result:=NewIDQuery.FieldByName('GEN_ID').asInteger;
   NewIDQuery.Active:=False;
end;

function TRcDataMod.nextVendorCode : integer;
begin
   NewVendorCodeQuery.Active:=True;
   Result:=NewVendorCodeQuery.FieldByName('GEN_ID').asInteger;
   NewVendorCodeQuery.Active:=False;
end;

procedure TRcDataMod.NotifyGroupOfChanges (Groups : TStringlist; retain : boolean);
var
  i: integer;
begin
  Log ('Notify Groups...');
  with RcDataModule do begin
    StoreNotifyByGroupQuery.Transaction.Active:=true;
    StoreNotifyByGroupQuery.ParamByName('LastChange').AsDateTime:=now;
    for i:=0 to Groups.Count-1 do begin
      Log ('  Group '+Groups.Strings[i]);
      StoreNotifyByGroupQuery.ParamByName('COMPANY').AsString:=
         UserSession.Company;
      StoreNotifyByGroupQuery.ParamByName('GROUP').AsString:=Groups.Strings[i];
      StoreNotifyByGroupQuery.ExecSQL;
    end;
    if retain then StoreNotifyByGroupQuery.Transaction.CommitRetaining else StoreNotifyByGroupQuery.Transaction.Commit;
  end;
  if retain then Log ('[Retain=true]') else Log ('[Retain=false]');
end;

procedure TRcDataMod.NotifyStoreOfChanges (StoreID : String; retain : boolean);
begin
  Log ('Notify Store...'+StoreID);
  with RcDataModule do begin
    StoreNotifyQuery.Transaction.Active:=true;
    StoreNotifyQuery.ParamByName('LastChange').AsDateTime:=now;
    StoreNotifyQuery.ParamByName('COMPANY').AsString:=UserSession.Company;
    StoreNotifyQuery.ParamByName('ID').AsString:=StoreID;
    StoreNotifyQuery.ExecSQL;
    if retain then StoreNotifyQuery.Transaction.CommitRetaining else StoreNotifyQuery.Transaction.Commit;
  end;
  if retain then Log ('[Retain=true]') else Log ('[Retain=false]');
end;

procedure TRcDataMod.NotifyJobChanges (JobID : Integer; retain : boolean);
var
  Grps : TStringlist;
begin
  Grps:=TStringlist.create;
  with GrpAllocQuery do begin
    Transaction.Active:=true;
    Close;
    ParamByName('COMPANY').AsString:=UserSession.Company;
    ParamByName('ITEMID').AsInteger:=JobID;
    Open;
    while not eof do begin
       Grps.Add (FieldByName ('GroupId').AsString);
       next;
    end;
    close;
  end;
  RcDataModule.NotifyGroupOfChanges(Grps,retain);
  Grps.free;
end;

procedure TRcDataMod.DataModuleDestroy(Sender: TObject);
begin
  while values.Count>0 do begin
    values.objects[0].Free;
    values.Delete(0);
  end;
end;

end.
