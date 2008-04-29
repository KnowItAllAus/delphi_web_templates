unit possform;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  IWCompLabel, IWCompButton, IWControl, IWGrids, 
  IWExtCtrls, IWContainer, IWRegion, IWBaseControl,
  IWVCLBaseControl, IWVCLBaseContainer, IWBaseHTMLControl, IWAppForm,
  IWHTMLControls, IWSiLink, siComp, siLngLnk, IWCompRectangle,
  IWHTMLContainer, footer_user, admintitle;

type
  TformPoss = class(TIWAppForm)
    siLangLinked1: TsiLangLinked;
    IWRegion1: TIWRegion;
    IWRegion2: TIWRegion;
    PosLabel: TIWLabel;
    IWSiLink1: TIWSiLink;
    InsertBtn: TIWButton;
    PosGrid: TIWGrid;
    IWRectangle2: TIWRectangle;
    IWRectangle1: TIWRectangle;
    userfooter1: Tuserfooter;
    AdminFrameTitle1: TAdminFrameTitle;
    procedure PosGridCellClick(ASender: TObject; const ARow, AColumn: Integer);
    procedure InsertBtnClick(Sender: TObject);
    procedure PosGridRenderCell(ACell: TIWGridCell; const ARow,
      AColumn: Integer);
    procedure IWAppFormCreate(Sender: TObject);
    procedure userfooter1CancelClick(Sender: TObject);
  private
    { Private declarations }
    procedure EditPos (ID : String);
  public
    { Public declarations }
  end;

var
  formPoss: TformPoss;

implementation

uses datamod, db, servercontroller, IWInit, roleform, posForm;

{$R *.DFM}

procedure TformPoss.EditPos (ID : String);
begin
  with RcDataModule.CurrentPosQuery do begin
    Close;
    Transaction.Active:=True;
    ParamByName ('COMPANY').AsString:=UserSession.Company;
    ParamByName ('ID').AsString:=ID;
    Open;
    TIWAppForm(WebApplication.ActiveForm).Release;
    TFormPos.Create (WebApplication).show;
  end;
end;

procedure TformPoss.PosGridCellClick(ASender: TObject;const ARow, AColumn: Integer);
begin
  RcDataModule.Trans.Active:=False;
  EditPos (PosGrid.Cell[ARow,0].Text);
end;

procedure TformPoss.InsertBtnClick(Sender: TObject);
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
  EditPos (IntToStr(posID));
end;

procedure TformPoss.PosGridRenderCell(ACell: TIWGridCell; const ARow,
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

procedure TformPoss.IWAppFormCreate(Sender: TObject);
var
  i : integer;
begin
  IWSilink1.InitForm;
  RcDataModule.PosQuery.Close;
  RcDataModule.PosQuery.ParamByName('COMPANY').AsString:=
     UserSession.Company;
  RcDataModule.PosQuery.Open;
  with PosGrid do begin
    Cell[0, 0].Text := SiLangLinked1.GetTextOrDefault('Grid.Id');
    Cell[0, 1].Text := SiLangLinked1.GetTextOrDefault('Grid.Name');
    Cell[0, 2].Text := SiLangLinked1.GetTextOrDefault('Grid.Layout');
    i:=1;
    RowCount:=1;
    while not RcDataModule.PosQuery.Eof do begin
      RowCount:=RowCount+1;
      with Cell[i, 0] do begin
        Clickable := True;
        Text := RcDataModule.PosQuery.FieldByName('ID').AsString;
      end;
      with Cell[i, 1] do begin
        Text := RcDataModule.PosQuery.FieldByName('Name').AsString;
      end;
      with Cell[i, 2] do begin
        Text := RcDataModule.PosQuery.FieldByName('ProdLayout').AsString;
      end;
      inc (i);
      RcDataModule.PosQuery.Next;
    end;
  end;
  RcDataModule.PosQuery.Close;
end;

procedure TformPoss.userfooter1CancelClick(Sender: TObject);
begin
   TIWAppForm(WebApplication.ActiveForm).Release;
   Tsu_formrole.Create(WebApplication).Show;
end;

end.
