unit gwform;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  IWCompButton, IWControl, IWCompEdit,
  IWGrids, IWCompLabel, IWExtCtrls, IWHTMLControls, IWContainer, IWRegion,
  IWBaseControl, IWVCLBaseContainer, IWVCLBaseControl, IWHTMLContainer,
  IWBaseHTMLControl, IWAppForm, AbBase, AbBrowse, AbZBrows, AbZipper,
  IWSiLink, siComp, siLngLnk, IWCompRectangle, footer_user, statstitle,
  IWCompListbox, IWCompCheckbox, IWHTML40Container, db;

type
  Tformgw = class(TIWAppForm)
    StatsFrameTitle1: TStatsFrameTitle;
    IWRegion1: TIWRegion;
    IWRegion2: TIWRegion;
    VoucherLabel: TIWLabel;
    IWLabel1: TIWLabel;
    StartEdit: TIWEdit;
    IWLabel2: TIWLabel;
    EndEdit: TIWEdit;
    siLangLinked1: TsiLangLinked;
    IWSiLink1: TIWSiLink;
    DisplayBtn: TIWButton;
    PrevBtn: TIWButton;
    NextBtn: TIWButton;
    userfooter1: Tuserfooter;
    IWRectangle1: TIWRectangle;
    IWRectangle2: TIWRectangle;
    TranGrid: TIWGrid;
    StoreCombo: TIWComboBox;
    IWLabel3: TIWLabel;
    StartTime: TIWEdit;
    IWLabel4: TIWLabel;
    EndTime: TIWEdit;
    loyaltytx: TIWCheckBox;
    nonloyaltytx: TIWCheckBox;
    getpts: TIWCheckBox;
    search: TIWCheckBox;
    update: TIWCheckBox;
    other: TIWCheckBox;
    Redeem: TIWCheckBox;
    adjust: TIWCheckBox;
    IWLabel5: TIWLabel;
    procedure TranGridRenderCell(ACell: TIWGridCell; const ARow,
      AColumn: Integer);
    procedure IWAppFormCreate(Sender: TObject);
    procedure DisplayBtnClick(Sender: TObject);
    procedure NextLinkClick(Sender: TObject);
    procedure PrevLinkClick(Sender: TObject);
    procedure StatsFrameTitle1ActivityLinkClick(Sender: TObject);
    procedure userfooter1CancelClick(Sender: TObject);
    procedure IWAppFormDestroy(Sender: TObject);
    procedure StoreComboChange(Sender: TObject);
    procedure StatsFrameTitle1JournalLinkClick(Sender: TObject);
  private
    { Private declarations }
    offset: integer;
    storeidlist : TStringlist;
    laststart : TDateTime;
    lastend : TDateTime;
    lastStore : string;
    procedure DisplayGrid;
    function GetStoreName (Id : string) : string;
  public
    { Public declarations }
  end;

var
  formgw: Tformgw;
  seq : integer;

implementation

uses DataMod, ServerController, IWInit, cfgTypes, statform, roleform, parse, jnlform;
{$R *.DFM}

const
  MaxRec = 200;
  MaxExport = 100000;

function Tformgw.GetStoreName (Id : string) : string;
var
  i : integer;
begin
  i:=storeidlist.IndexOf(Id);
  try
    result:=StoreCombo.Items[i];
  except
    result:='';
  end;
end;

procedure Tformgw.TranGridRenderCell(ACell: TIWGridCell; const ARow,
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
      if TranGrid.Cell[ARow, 0].Text <> '' then begin
        BGColor := clLtGray;
      end else begin
        BGColor := clNone;
      end;
    end;
  end;
end;


procedure Tformgw.DisplayGrid;
var
  i: integer;
  storename : string;
  timeoffset : TDateTime;
  recs : integer;
  newstart : TDateTime;
  newend : TDatetime;
  newstore : string;
  f : TField;
  s2 : string;
  opts : string;
begin
  recs:=0;
  timeoffset:=0; //(utccombo.itemindex-12)*60/1440;
  with TranGrid do begin
    Cell[0, 0].Text := 'Time';
    Cell[0, 1].Text := 'Request';
    Cell[0, 2].Text := 'Device';
    Cell[0, 3].Text := 'Message';
    Cell[0, 4].Text := 'Server Msg';
    Cell[0, 5].Text := 'Customer';
    Cell[0, 6].Text := 'Name';
    Cell[0, 7].Text := 'Transaction';
    Cell[0, 8].Text := 'Rewards';
    Cell[0, 9].Text := 'Points';
  end;

  try
    RcDataModule.gwdb.Open;
    with RcDataModule.gwquery do begin
      opts:='';
      if loyaltytx.Checked then opts:=opts+',''ltyt''';
      if nonloyaltytx.Checked then opts:=opts+',''nonlt''';
      if search.Checked then opts:=opts+',''srch''';
      if update.Checked then opts:=opts+',''updm''';
      if getpts.Checked then opts:=opts+',''getpts''';
      if redeem.Checked then opts:=opts+',''rdm''';
      if adjust.Checked then opts:=opts+',''adjpt''';
      if other.Checked then begin
         opts:=opts+',''stmbr''';
         opts:=opts+',''mbrgp''';
         opts:=opts+',''hist''';
      end;
      if opts='' then exit;
      system.delete (opts,1,1); // Leading ','

      Close;
      SQL.Clear;
      SQL.Add('SELECT first :maxrec skip :offset');
      SQL.Add('p.* FROM Prime p');
      SQL.Add('WHERE p.SITENAME  = :STORE');
      SQL.Add('AND p.REQUESTDATE  >= :TIMESTART');
      SQL.Add('AND p.REQUESTDATE  <= :TIMEEND');
      SQL.Add('AND p.REQUESTTYPE in ('+opts+')');
      SQL.Add('Order BY p.REQUESTDATE');

      newstore:=StoreCombo.Text;
      Parambyname('STORE').AsString := StoreCombo.text;
      newstart:=StrToDate(StartEdit.Text)+StrToTime (StartTime.Text)-timeOffset;
      ParamByName('TIMESTART').AsDateTime := newstart;
      newend:= StrToDate(EndEdit.Text)+StrToTime (EndTime.Text)-timeOffset;
      if (newstart<>laststart) or (newend<>lastend) or (newstore<>laststore) then offset:=0;
      laststart:=newstart; lastend:=newend; laststore:=StoreCombo.text;
      ParamByName('TIMEEND').AsDateTime := newend;
      ParamByName('maxrec').AsInteger := MaxRec+1;
      ParamByName('offset').AsInteger := offset;
      Open;
    end;
  except
  on e : exception do showmessage (e.message);
  end;

  with TranGrid, rcDataModule do begin
    i := 1;
    RowCount := 1;
    while not gwQuery.Eof and (recs<maxrec) do begin
      inc (recs);
      if not gwQuery.Eof then begin
          RowCount := RowCount + 1;
          with Cell[i, 0] do begin
            Text := FormatDateTime ('dd/mm/yy hh:mm',gwQuery.FieldByName('RequestDATE').AsDateTime+timeOffset);
          end;
          with Cell[i, 1] do begin
            Text := gwQuery.FieldByName('RequestType').AsString;
          end;
          with Cell[i, 2] do begin
            Text := gwQuery.FieldByName('DEVICE').AsString;
          end;
          with Cell[i, 3] do begin
            Text := gwQuery.FieldByName('ReturnMessage').AsString;
          end;
          with Cell[i, 4] do begin
            Text := gwQuery.FieldByName('ServerStatus').AsString;;
          end;
          with Cell[i, 5] do begin
            Text := gwQuery.FieldByName('CUSTOMERID').AsString;
          end;
          with Cell[i, 6] do begin
            Text := gwQuery.FieldByName('NAME').AsString;
          end;
          with Cell[i, 7] do begin
            Text := gwQuery.FieldByName('TRANSACTIONID').AsString;
          end;
          with Cell[i, 8] do begin
            Text := gwQuery.FieldByName('REWARDS').AsString;
          end;
          with Cell[i, 9] do begin
            Text := gwQuery.FieldByName('POINTS').AsString;
          end;
          inc(i);
      end; { if not TranItemQuery }
      gwQuery.Next;
    end; { while tranquery }
  end; {with }
  nextBtn.visible:= not RcDataModule.gwQuery.Eof;
  prevBtn.visible:= offset > 0;

  RcDataModule.gwQuery.Close;
  RcDataModule.gwTran.Active:=False;
end;

procedure Tformgw.IWAppFormCreate(Sender: TObject);
begin
  IWSiLink1.InitForm;
  StartEdit.Text := DateToStr(now);
  EndEdit.Text := DateToStr(now);
  StartTime.Text:='00:00';
  EndTime.Text:='23:59';
  Offset := 0;
  StoreCombo.Clear;
  StoreCombo.Items.Add('--------');
  StoreIDList:=TStringList.Create;
  StoreIDList.Add('0');
  StoreCombo.ItemIndex:=0;

  RcDataModule.Trans2.Active:=False;
  with RcDataModule.StoreQuery do begin
     ParamByName ('Company').AsString:=UserSession.Company;
     Open;
     while not eof do begin
        StoreCombo.Items.Add (FieldByName ('Name').AsString);
        StoreIDList.Add (FieldByName ('ID').AsString);
        next;
     end;
  end;
  DisplayGrid;
  RcDataModule.Trans2.Active:=False;
end;

procedure Tformgw.DisplayBtnClick(Sender: TObject);
begin
  if storecombo.ItemIndex=0 then exit;
  RcDataModule.Trans2.Active:=False;
  DisplayGrid;
  RcDataModule.Trans2.Active:=False;
end;

procedure Tformgw.NextLinkClick(Sender: TObject);
begin
  Offset := Offset + MaxRec;
  DisplayGrid;
end;

procedure Tformgw.PrevLinkClick(Sender: TObject);
begin
  Offset := Offset - MaxRec;
  if Offset <= 0 then Offset := 0;
  DisplayGrid;
end;

function getname : string;
var
  s :String;
begin
  s:=Formatdatetime ('hhmmss_yymmdd_',now);
  s:=s+inttostr(random(65535))+inttostr(seq);
  inc(seq);
  result:=s;
end;

procedure Tformgw.StatsFrameTitle1ActivityLinkClick(Sender: TObject);
begin
  TIWAppForm(WebApplication.ActiveForm).Release;
  Tformgw.Create(WebApplication).show;
end;

procedure Tformgw.StatsFrameTitle1JournalLinkClick(Sender: TObject);
begin
  TIWAppForm(WebApplication.ActiveForm).Release;
  Tformjnl.Create(WebApplication).show;
end;

procedure Tformgw.userfooter1CancelClick(Sender: TObject);
begin
  TIWAppForm(WebApplication.ActiveForm).Release;
  Tsu_FormRole.Create (WebApplication).show;
end;

procedure Tformgw.IWAppFormDestroy(Sender: TObject);
begin
  StoreIDList.free;
end;

procedure Tformgw.StoreComboChange(Sender: TObject);
begin
  RcDataModule.Trans2.Active:=False;
  RcDataModule.Trans.Active:=False;
  DisplayGrid;
  RcDataModule.Trans2.Active:=False;
  RcDataModule.Trans.Active:=False;
end;

end.

