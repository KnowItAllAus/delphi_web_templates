unit statform;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  IWCompButton, IWControl, IWCompEdit,
  IWGrids, IWCompLabel, IWExtCtrls, IWHTMLControls, IWContainer, IWRegion,
  IWBaseControl, IWVCLBaseControl, IWVCLBaseContainer, IWHTMLContainer,
  IWBaseHTMLControl, IWAppForm, IWSiLink, siComp, siLngLnk, footer_user,
  IWCompRectangle, statstitle;

type
  TformStats = class(TIWAppForm)
    siLangLinked1: TsiLangLinked;
    FrameTitle1: TStatsFrameTitle;
    IWRegion1: TIWRegion;
    IWRegion2: TIWRegion;
    IWRectangle2: TIWRectangle;
    IWRectangle1: TIWRectangle;
    VoucherLabel: TIWLabel;
    IWLabel1: TIWLabel;
    StartEdit: TIWEdit;
    IWLabel2: TIWLabel;
    EndEdit: TIWEdit;
    IWRadioGroup1: TIWRadioGroup;
    DisplayBtn: TIWButton;
    IWSiLink1: TIWSiLink;
    NextLink: TIWLink;
    PrevLink: TIWLink;
    userfooter1: Tuserfooter;
    StatGrid: TIWGrid;
    procedure StatGridRenderCell(ACell: TIWGridCell; const ARow,
      AColumn: Integer);
    procedure IWAppFormCreate(Sender: TObject);
    procedure DisplayBtnClick(Sender: TObject);
    procedure NextLinkClick(Sender: TObject);
    procedure PrevLinkClick(Sender: TObject);
    procedure IWAppFormDestroy(Sender: TObject);
    procedure userfooter1CancelClick(Sender: TObject);
    procedure FrameTitle1JournalLinkClick(Sender: TObject);
  private
    { Private declarations }
    offset: integer;
    ilist : TStringlist;
    procedure DisplayGrid;
  public
    { Public declarations }
  end;

var
  formStats: TformStats;

implementation

uses DataMod, ServerController, IWInit, cfgTypes, roleform, jnlform;
{$R *.DFM}

const
  MaxRec = 10;

procedure TformStats.StatGridRenderCell(ACell: TIWGridCell; const ARow,
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
      Font.Color := clBlack;
      if StatGrid.Cell[ARow, 0].Text <> '' then begin
        BGColor := clLtGray;
      end else begin
        BGColor := clNone;
      end;
    end;
  end;
end;

procedure TformStats.DisplayGrid;
var
  i: integer;
  recs: integer;
begin
  recs := 0;
  with StatGrid do begin
    Cell[0, 0].Text := SiLangLinked1.GetTextOrDefault ('Grid.Start');
    Cell[0, 1].Text := SiLangLinked1.GetTextOrDefault ('Grid.End');
    Cell[0, 2].Text := SiLangLinked1.GetTextOrDefault ('Grid.Stat');
    Cell[0, 3].Text := SiLangLinked1.GetTextOrDefault ('Grid.Tag');
    Cell[0, 4].Text := SiLangLinked1.GetTextOrDefault ('Grid.Count');
  end;

  try
    with RcDataModule do begin
      Trans.Active:=False;
      StatQuery.Close;
      StatQuery.ParamByName('COMPANY').AsString :=
        UserSession.Company;
      StatQuery.ParamByName('TIMESTART').AsDateTime :=
        StrToDate(StartEdit.Text);
      StatQuery.ParamByName('STARTDELTA').AsDateTime :=
        StrToDate(StartEdit.Text) - 1;
      StatQuery.ParamByName('TIMEEND').AsDateTime :=
        StrToDate(EndEdit.Text);
      StatQuery.Open;
      StatItemQuery.Prepare;
    end;
  except
  end;

  with StatGrid, rcDataModule do begin
    i := 1;
    RowCount := 1;
    StatItemQuery.ParamByName('COMPANY').AsString :=
      UserSession.Company;
    while not StatQuery.Eof and ((recs - offset) < MaxRec) do begin
      StatItemQuery.Close;
      StatItemQuery.ParamByName('ID').AsString :=
        StatQuery.FieldByName('ID').AsString;
      StatItemQuery.Open;
      if not StatItemQuery.Eof then begin
        inc(recs);
        if (recs > offset) then begin
          RowCount := RowCount + 1;
          with Cell[i, 0] do begin
            Text := StatQuery.FieldByName('TimeStart').AsString;
          end;
          with Cell[i, 1] do begin
            Text := StatQuery.FieldByName('TimeEnd').AsString;
          end;
          with Cell[i, 2] do begin
            Text := '';
          end;
          with Cell[i, 3] do begin
            Text := '';
          end;
          with Cell[i, 4] do begin
            Text := '';
          end;
          inc(i);
          while not StatItemQuery.Eof do begin
            RowCount := RowCount + 1;
            with Cell[i, 0] do begin
              Text := '';
            end;
            with Cell[i, 1] do begin
              Text := '';
            end;
            with Cell[i, 2] do begin
              Text := statname(StatItemQuery.FieldByName('STATTYPE').AsString);
            end;
            with Cell[i, 3] do begin
              Text := StatItemQuery.FieldByName('TAG').AsString;
            end;
            with Cell[i, 4] do begin
              Text := StatItemQuery.FieldByName('NUMBER').AsString;
            end;
            inc(i);
            StatItemQuery.Next;
          end;
        end;
      end;
      StatQuery.Next;
    end;
  end;
  nextlink.enabled := not RcDataModule.StatQuery.eof;
  prevlink.enabled := offset > 0;

  RcDataModule.StatQuery.Close;
  RcDataModule.StatItemQuery.Close;
end;

procedure TformStats.IWAppFormCreate(Sender: TObject);
begin
  IWSiLink1.InitForm;
  IList:=TStringlist.Create;
  StartEdit.Text := DateToStr(now - 7);
  EndEdit.Text := DateToStr(now);
  Offset := 0;
  DisplayGrid;
end;

procedure TformStats.DisplayBtnClick(Sender: TObject);
begin
  DisplayGrid;
end;

procedure TformStats.NextLinkClick(Sender: TObject);
begin
  Offset := Offset + MaxRec;
  DisplayGrid;
end;

procedure TformStats.PrevLinkClick(Sender: TObject);
begin
  Offset := Offset - MaxRec;
  if Offset <= 0 then Offset := 0;
  DisplayGrid;
end;

procedure TformStats.IWAppFormDestroy(Sender: TObject);
begin
   IList.free;
end;

procedure TformStats.userfooter1CancelClick(Sender: TObject);
begin
    TIWAppForm(WebApplication.ActiveForm).Release;
    Tsu_FormRole.Create (WebApplication).show;
end;

procedure TformStats.FrameTitle1JournalLinkClick(Sender: TObject);
begin
  TIWAppForm(WebApplication.ActiveForm).Release;
  TformJnl.Create(WebApplication).show;
end;

end.

