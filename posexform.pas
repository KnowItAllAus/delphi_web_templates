unit posexform;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  IWCompLabel, IWCompButton, IWControl, IWGrids, 
  IWExtCtrls, IWContainer, IWRegion, IWBaseControl,
  IWVCLBaseControl, IWVCLBaseContainer, IWBaseHTMLControl, IWAppForm,
  IWHTMLControls, IWSiLink, siComp, siLngLnk, IWCompRectangle,
  IWHTMLContainer, footer_user, admintitle, IWHTML40Container, IWCompListbox;

type
  TformPosEx = class(TIWAppForm)
    siLangLinked1: TsiLangLinked;
    IWRegion1: TIWRegion;
    IWRegion2: TIWRegion;
    PosLabel: TIWLabel;
    IWSiLink1: TIWSiLink;
    PosGrid: TIWGrid;
    IWRectangle2: TIWRectangle;
    IWRectangle1: TIWRectangle;
    userfooter1: Tuserfooter;
    AdminFrameTitle1: TAdminFrameTitle;
    PosNameLbl: TIWLabel;
    IWLabel2: TIWLabel;
    CoCombo: TIWComboBox;
    ExportBtn: TIWButton;
    procedure PosGridCellClick(ASender: TObject; const ARow, AColumn: Integer);
    procedure InsertBtnClick(Sender: TObject);
    procedure PosGridRenderCell(ACell: TIWGridCell; const ARow,
      AColumn: Integer);
    procedure IWAppFormCreate(Sender: TObject);
    procedure userfooter1CancelClick(Sender: TObject);
    procedure ExportBtnClick(Sender: TObject);
  private
    { Private declarations }
    posid : Integer;
    posname : string;
    colist : TStringlist;
    procedure DrawGrid;
  public
    { Public declarations }
    procedure setpos (id : integer; name : string);
  end;

var
  formPosEx: TformPosEx;

implementation

uses datamod, db, servercontroller, IWInit, roleform, posForm, cfgtypes;

{$R *.DFM}

procedure TformPosEx.PosGridCellClick(ASender: TObject;const ARow, AColumn: Integer);
begin
  RcDataModule.Trans.Active:=False;
  try
    with RcDataModule do begin
      SQLEx.SQL.Clear;
      SQLEx.Transaction.Active:=false;
      SQLEx.Transaction.Active:=true;
      SQLEx.SQL.Add('delete from POS where ID=:ID');
      SQLEx.ParamByName ('ID').AsInteger:=integer(posgrid.Cell[ARow, 0].tag);
      SQLEx.ExecQuery;
      SQLEx.Transaction.commit;
    end;
  except
  end;
  DrawGrid;
end;

procedure TformPosEx.ExportBtnClick(Sender: TObject);
begin
  try
    with RcDataModule do begin
      SQLEx.SQL.Clear;
      SQLEx.Transaction.Active:=false;
      SQLEx.Transaction.Active:=true;
      SQLEx.SQL.Add('insert into POS (ID, NAME, REFPOSID, COMPANY, REFCOMPANY) VALUES (:ID,:NAME,:REFPOSID,:COMPANY,:REFCOMPANY)');
      SQLEx.ParamByName ('REFCOMPANY').AsString:=UserSession.Company;
      SQLEx.ParamByName ('COMPANY').AsString:=colist[cocombo.itemindex];
      SQLEx.ParamByName ('REFPOSID').AsInteger:=posid;
      SQLEx.ParamByName ('ID').AsInteger:=rcdatamodule.nextid;
      SQLEx.ParamByName ('NAME').AsString:='['+posname+']';
      SQLEx.ExecQuery;
      SQLEx.Transaction.commit;
    end;
  except
  end;
end;

procedure TformPosEx.InsertBtnClick(Sender: TObject);
var
  posid : integer;
begin
  posId:=RcDataModule.nextID;
  RcDataModule.posInsertQuery.Transaction.Active:=False;
  RcDataModule.posInsertQuery.Transaction.StartTransaction;
  RcDataModule.posInsertQuery.ParamByName('ID').AsInteger:=
    posId;
  RcDataModule.posInsertQuery.ParamByName('PRODEND').AsString:='';
  RcDataModule.posInsertQuery.ParamByName('PRODSTART').AsString:='';
  RcDataModule.posInsertQuery.ParamByName('NAME').AsString:=
    'New POS';
  RcDataModule.posInsertQuery.ParamByName('COMPANY').AsString:=
    UserSession.Company;
  RcDataModule.posInsertQuery.ExecSQL;
end;

procedure TformPosEx.setpos (id : integer; name : string);
begin
  posid:=id;
  posname:=name;
  posnamelbl.Caption:=name;
  DrawGrid;
end;


procedure TformPosEx.PosGridRenderCell(ACell: TIWGridCell; const ARow,
  AColumn: Integer);
begin
  with ACell do begin
    // Title Row
    if ARow = 0 then begin
      Alignment := taCenter;
      BGColor := clBlue;
      Font.Style := [fsBold];
      Font.Color := clWhite;
    end else begin
      // Alternate Row Colors
      if Odd(ARow) then begin
        BGColor := clLtGray;
      end else begin
        BGColor := clNone;
      end;
    end;
  end;
end;

procedure TFormPosEx.DrawGrid;
var
  i : integer;
begin
  RcDataModule.PosExQuery.Close;
//select POS.ID as POSID, COMPANY.ID as COMPANY, COMPANY.NAME as NAME from POS join company on company.id=pos.company
//where pos.REFPOSID=:POSID
  RcDataModule.PosExQuery.ParamByName('POSID').AsInteger:=
     posid;
  RcDataModule.PosExQuery.Open;
  with PosGrid do begin
    Cell[0, 0].Text := SiLangLinked1.GetTextOrDefault('Grid.Company');
    Cell[0, 1].Text := SiLangLinked1.GetTextOrDefault('');
    i:=1;
    RowCount:=1;
    while not RcDataModule.PosExQuery.Eof do begin
      RowCount:=RowCount+1;
      with Cell[i, 0] do begin
        Text := RcDataModule.PosExQuery.FieldByName('Name').AsString;
        Cell[i, 0].Tag:=TObject(RcDataModule.PosExQuery.FieldByName('POSID').asInteger);
      end;
      with Cell[i, 1] do begin
        Clickable := True;
        Text := SiLangLinked1.GetTextOrDefault('Grid.Delete');
      end;
      inc (i);
      RcDataModule.PosExQuery.Next;
    end;
  end;
  RcDataModule.PosExQuery.Close;
  try
    with RcDataModule do begin
      SQLQry.SQL.Clear;
      SQLQry.Transaction.Active:=false;
      SQLQry.Transaction.Active:=true;
      SQLQry.SQL.Add('select * from COMPANY where ID!=:COMPANY and ENABLED=1 order by name');
      SQLQry.ParamByName ('COMPANY').AsString:=UserSession.Company;
      SQLQry.Open;
      CoList.clear;
      CoCombo.Items.clear;
      while not SQLQry.Eof do begin
         CoCombo.Items.Add (SQLQry.FieldByName('Name').AsString);
         CoList.Add (SQLQry.FieldByName('ID').AsString);
         SQLQry.next;
      end;
      SQLQry.close;
    end;
  except
  end;
end;

procedure TformPosEx.IWAppFormCreate(Sender: TObject);
begin
  IWSilink1.InitForm;
  CoList:=TStringlist.Create;
end;

procedure TformPosEx.userfooter1CancelClick(Sender: TObject);
begin
   TIWAppForm(WebApplication.ActiveForm).Release;
   Tsu_formrole.Create(WebApplication).Show;
end;

end.
