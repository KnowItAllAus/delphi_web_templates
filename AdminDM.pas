unit AdminDM;

interface

uses
  SysUtils, Classes, DB, IBDatabase, IBCustomDataSet, IBQuery;

type
  TAdminData = class(TDataModule)
    StoreEnabledQuery: TIBQuery;
    StoreOnQuery: TIBQuery;
    StoreOffQuery: TIBQuery;
    StoreDbgQuery: TIBQuery;
    StoreAllQuery: TIBQuery;
    StorePendingQuery: TIBQuery;
    Trans: TIBTransaction;
    RecastDB: TIBDatabase;
    SlaveAllEnQuery: TIBQuery;
    SlaveAllQuery: TIBQuery;
    SlavePendingQuery: TIBQuery;
    SlaveOffQuery: TIBQuery;
    SlaveDbgQuery: TIBQuery;
    SlaveBypassQuery: TIBQuery;
    SlaveOnQuery: TIBQuery;
    procedure DataModuleCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

function RcAdminData : TAdminData;

implementation

uses
  IWServer, IWInit, global, ServerController;

{$R *.dfm}

function RcAdminData : TAdminData;
begin
  Result := UserSession.AdminData;
end;

procedure TAdminData.DataModuleCreate(Sender: TObject);
begin
   if GetDBName<>'' then
      RecastDb.DatabaseName:=GetDBName;
   RecastDb.Connected:=true;
end;

end.
