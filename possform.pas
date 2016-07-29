unit possform;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  IWCompLabel, IWCompButton, IWControl, IWGrids, 
  IWExtCtrls, IWContainer, IWRegion, IWBaseControl,
  IWVCLBaseControl, IWVCLBaseContainer, IWBaseHTMLControl, IWAppForm,
  IWHTMLControls, IWSiLink, siComp, siLngLnk, IWCompRectangle,
  IWHTMLContainer, footer_user, admintitle, IWHTML40Container;

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
    procedure ExPos (ID : String; aname : string);
    procedure DeleteClick(Sender: TObject);
    procedure DrawGrid;
  public
    { Public declarations }
  end;

var
  formPoss: TformPoss;

implementation

uses datamod, db, servercontroller, IWInit, roleform, posForm, posExForm, cfgtypes;

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

procedure TformPoss.DeleteClick(Sender: TObject);
begin
    with RcDataModule.PosDeleteQuery do begin
      try
        Transaction.Active:=False;
        Transaction.StartTransaction;
        ParamByName('COMPANY').AsString:=UserSession.Company;
        ParamByName('ID').AsInteger:=(Sender as TIWButton).tag;
        ExecSQL;
        Transaction.Commit;
        DrawGrid;
      except
        Transaction.Active:=False;
      end;
    end;
end;

procedure TformPoss.ExPos (ID : String; aname : string);
var
  posex : TFormPosEx;
begin
  with RcDataModule.CurrentPosQuery do begin
    Close;
    Transaction.Active:=True;
    ParamByName ('COMPANY').AsString:=UserSession.Company;
    ParamByName ('ID').AsString:=ID;
    Open;
    TIWAppForm(WebApplication.ActiveForm).Release;
    posex:=TFormPosEx.Create (WebApplication);
    posex.setpos(strtoint(id),aname);
    posex.show;
  end;
end;

procedure TformPoss.PosGridCellClick(ASender: TObject;const ARow, AColumn: Integer);
begin
  if AColumn=0 then begin
     RcDataModule.Trans.Active:=False;
     EditPos (PosGrid.Cell[ARow,0].Text);
  end else
     ExPos (PosGrid.Cell[ARow,0].Text, PosGrid.Cell[ARow,1].Text);
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
begin
  IWSilink1.InitForm;
  DrawGrid;
end;

procedure TformPoss.DrawGrid;
var
  i : integer;
  imported,super : boolean;
  layoutcol : integer;
begin
  RcDataModule.PosQuery.Close;
  RcDataModule.PosQuery.ParamByName('COMPANY').AsString:=
     UserSession.Company;
  RcDataModule.PosQuery.Open;
  PosGrid.ColumnCount:=3;
  if (UserSession.privilege and PRIV_SUPER)<>0 then begin
     PosGrid.ColumnCount:=4;
  end;
  with PosGrid do begin
    Cell[0, 0].Text := SiLangLinked1.GetTextOrDefault('Grid.Id');
    Cell[0, 1].Text := SiLangLinked1.GetTextOrDefault('Grid.Name');
    if (UserSession.privilege and PRIV_SUPER)<>0 then begin
      Cell[0, 2].Text := SiLangLinked1.GetTextOrDefault('');
      Cell[0, 3].Text := SiLangLinked1.GetTextOrDefault('Grid.Layout');
    end else begin
      Cell[0, 2].Text := SiLangLinked1.GetTextOrDefault('Grid.Layout');
    end;
    i:=1;
    RowCount:=1;
    super:=(UserSession.privilege and PRIV_SUPER)<>0;
    layoutcol:=2;
    if super then layoutcol:=3;

    while not RcDataModule.PosQuery.Eof do begin
      RowCount:=RowCount+1;
      imported:=(RcDataModule.PosQuery.FieldByName('REFPOSID').AsString<>'');
      with Cell[i, 0] do begin
        if not imported then begin
          Clickable := True;
        end;
        Text := RcDataModule.PosQuery.FieldByName('ID').AsString;
      end;
      with Cell[i, 1] do begin
         if RcDataModule.PosQuery.FieldByName('FromCo').IsNull then
            Text := RcDataModule.PosQuery.FieldByName('Name').AsString
         else
            Text := RcDataModule.PosQuery.FieldByName('Name').AsString+' ('+RcDataModule.PosQuery.FieldByName('FromCo').AsString+')'
      end;
      if (UserSession.privilege and PRIV_SUPER)<>0 then begin
        with Cell[i, 2] do begin
          Clickable := True;
          Text := SiLangLinked1.GetTextOrDefault('Grid.Export');
        end;
      end;
      with Cell[i, layoutcol] do begin
        if (RcDataModule.PosQuery.FieldByName('REFPOSID').AsString='') then begin
          Text := htmlquote(RcDataModule.PosQuery.FieldByName('ProdLayout').AsString);
        end else begin
          Control := TIWButton.Create(Self);
          with TIWButton(Control) do begin
            Caption := 'Delete';
            Width := 80;
            Height:= 20;
            Confirmation:='Delete '+RcDataModule.PosQuery.FieldByName('Name').AsString+'?';
            onClick:=DeleteClick;
            tag:=RcDataModule.POSQuery.FieldByName('ID').AsInteger;
          end;
        end;
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
