unit pwmain;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, DB, IBDatabase, DCPcrypt2, DCPsha256, IBCustomDataSet,
  IBQuery, IBSQL;

type
  TForm1 = class(TForm)
    sha: TDCP_sha256;
    Trans: TIBTransaction;
    RecastDB: TIBDatabase;
    Memo1: TMemo;
    update: TIBSQL;
    Nameedit: TEdit;
    Button2: TButton;
    passedit: TEdit;
    Label1: TLabel;
    Label2: TLabel;
    procedure Button2Click(Sender: TObject);
  private
    { Private declarations }
    function gethash (ss : string) : string;
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}

procedure TForm1.Button2Click(Sender: TObject);
var
  hash : string;
  user : string;
begin
  user:=nameedit.text;
  hash:=gethash('@recastWEB:'+passedit.Text);
  if user<>'' then begin
    memo1.Lines.Add('User ['+user+'] Set pass '+hash);
    recastdb.Open;
    update.Transaction.Active:=true;
    update.ParamByName('userid').AsString:=user;
    update.ParamByName('pass').AsString:=hash;
    update.ExecQuery;
    trans.Commit;
    recastdb.Close;
  end else begin
    memo1.Lines.Add('The hash for '+passedit.text+' is '+hash);
  end;
end;

function TForm1.gethash (ss : string) : string;
var
   hash : string;
   HashDigest: array of byte;
   j : integer;
   s : string;
begin
   sha.Init;
   sha.UpdateUnicodeStr(ss);
   SetLength(HashDigest,sha.HashSize div 8);
   sha.Final(HashDigest[0]);  // get the output
   s := '';
   for j := 0 to Length(HashDigest) - 1 do  // convert it into a hex string
        s := s + IntToHex(HashDigest[j],2);
   result:=s;
end;

(*procedure TForm1.Button1Click(Sender: TObject);
var
  pw : string;
  id : string;
  hash : string;
begin
  recastdb.Open;
  getpasswords.Open;
  while not getpasswords.Eof do begin
    pw:=getpasswords.FieldByName('passwd').AsString;
    id:=getpasswords.FieldByName('id').AsString;
    hash:=gethash('@recastWEB:'+pw);
    memo1.Lines.Add(id+' : '+pw+'-->'+hash);
    update.ParamByName('id').AsString:=id;
    update.ParamByName('pass').AsString:=hash;
    update.ExecQuery;
    getpasswords.Next;
  end;
  trans.Commit;
end;
*)

end.
