unit jnlform;

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
  TformJnl = class(TIWAppForm)
    StatsFrameTitle1: TStatsFrameTitle;
    IWRegion1: TIWRegion;
    IWRegion2: TIWRegion;
    VoucherLabel: TIWLabel;
    IWLabel1: TIWLabel;
    StartEdit: TIWEdit;
    IWLabel2: TIWLabel;
    EndEdit: TIWEdit;
    IWLink1: TIWLink;
    siLangLinked1: TsiLangLinked;
    IWSiLink1: TIWSiLink;
    DisplayBtn: TIWButton;
    PrevBtn: TIWButton;
    NextBtn: TIWButton;
    DelJnlBtn: TIWButton;
    userfooter1: Tuserfooter;
    IWRectangle1: TIWRectangle;
    IWRectangle2: TIWRectangle;
    TranGrid: TIWGrid;
    StoreCombo: TIWComboBox;
    IWLabel3: TIWLabel;
    StartTime: TIWEdit;
    IWLabel4: TIWLabel;
    EndTime: TIWEdit;
    ExptCombo: TIWComboBox;
    utccombo: TIWComboBox;
    procedure TranGridRenderCell(ACell: TIWGridCell; const ARow,
      AColumn: Integer);
    procedure IWAppFormCreate(Sender: TObject);
    procedure DisplayBtnClick(Sender: TObject);
    procedure NextLinkClick(Sender: TObject);
    procedure PrevLinkClick(Sender: TObject);
    procedure DelJnlBtnClick(Sender: TObject);
    procedure ExportClick(Sender: TObject);
    procedure StatsFrameTitle1ActivityLinkClick(Sender: TObject);
    procedure userfooter1CancelClick(Sender: TObject);
    procedure IWAppFormDestroy(Sender: TObject);
    procedure StoreComboChange(Sender: TObject);
  private
    { Private declarations }
    offset: integer;
    storeidlist : TStringlist;
    laststart : TDateTime;
    lastend : TDateTime;
    lastStore : integer;
    procedure DisplayGrid;
    procedure MakeTranFiles (hdr : TStream; itm : TStream; option : integer);
    procedure WriteRecord (s : TStream; D : TDataset; items : integer);
    function GetStoreName (Id : string) : string;
  public
    { Public declarations }
  end;

var
  formJnl: TformJnl;
  seq : integer;

implementation

uses DataMod, ServerController, IWInit, cfgTypes, statform, roleform, parse;
{$R *.DFM}

const
  MaxRec = 20;
  MaxExport = 100000;

function TformJnl.GetStoreName (Id : string) : string;
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

procedure TformJnl.TranGridRenderCell(ACell: TIWGridCell; const ARow,
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


procedure TformJnl.DisplayGrid;
var
  i: integer;
  storename : string;
  timeoffset : TDateTime;
  recs : integer;
  newstart : TDateTime;
  newend : TDatetime;
  newstore : integer;
  f : TField;
  s2 : string;
begin
  recs:=0;
  timeoffset:=(utccombo.itemindex-12)*60/1440;
  RcDataModule.Trans.Active:=False;
  RcDataModule.Trans2.Active:=False;
  with TranGrid do begin
    Cell[0, 0].Text := siLangLinked1.GetTextOrDefault('Grid.Time');
    Cell[0, 1].Text := siLangLinked1.GetTextOrDefault('Grid.Customer');
    Cell[0, 2].Text := siLangLinked1.GetTextOrDefault('Grid.Desc');
    Cell[0, 3].Text := siLangLinked1.GetTextOrDefault('Grid.Qty');
    Cell[0, 4].Text := siLangLinked1.GetTextOrDefault('Grid.Amount');
    Cell[0, 5].Text := siLangLinked1.GetTextOrDefault('Grid.Price');
    Cell[0, 6].Text := siLangLinked1.GetTextOrDefault('Grid.Stock');
  end;

  try
    with RcDataModule.TranQuery do begin
      Close;
      ParamByName('COMPANY').AsString := UserSession.Company;
      newstore:=StrToInt (StoreIDList.Strings[StoreCombo.ItemIndex]);
      Parambyname('STOREID').AsInteger := newstore;
      newstart:=StrToDate(StartEdit.Text)+StrToTime (StartTime.Text)-timeOffset;
      ParamByName('TIMESTART').AsDateTime := newstart;
      newend:= StrToDate(EndEdit.Text)+StrToTime (EndTime.Text)-timeOffset;
      if (newstart<>laststart) or (newend<>lastend) or (newstore<>laststore) then offset:=0;
      laststart:=newstart; lastend:=newend; laststore:=newstore;
      ParamByName('TIMEEND').AsDateTime := newend;
      ParamByName('maxrec').AsInteger := MaxRec+1;
      ParamByName('offset').AsInteger := offset;
      Open;
      RcDataModule.TranItemQuery.Prepare;
    end;
  except
  end;

  with TranGrid, rcDataModule do begin
    i := 1;
    RowCount := 1;
    TranItemQuery.ParamByName('COMPANY').AsString :=
      UserSession.Company;
    while not TranQuery.Eof and (recs<maxrec) do begin
      inc (recs);
      TranItemQuery.Close;
      TranItemQuery.ParamByName('TRANID').AsString :=
        TranQuery.FieldByName('ID').AsString;
      TranItemQuery.Open;
      if not TranItemQuery.Eof then begin
          RowCount := RowCount + 1;
          with Cell[i, 0] do begin
            Text := FormatDateTime ('dd/mm/yy hh:mm',TranQuery.FieldByName('TRANDATE').AsDateTime+timeOffset);
          end;
          with Cell[i, 1] do begin
            Text := TranQuery.FieldByName('CUSTID').AsString;
          end;
          with Cell[i, 2] do begin
            storename:=GetStoreName (TranQuery.FieldByName('STOREID').AsString);
            if Storename='' then storename:='['+TranQuery.FieldByName('STOREID').AsString+']';
            Text := siLangLinked1.GetTextOrDefault('Grid.Store')+'='+storename+', '+
                    siLangLinked1.GetTextOrDefault('Grid.Printer')+'='+
                    TranQuery.FieldByName('POS').AsString+' ('+
                    TranQuery.FieldByName('PRINTER').AsString + ')';
          end;
          with Cell[i, 3] do begin
            Text := TranQuery.FieldByName('TRANNUM').AsString;
          end;
          with Cell[i, 4] do begin
            Text := TranQuery.FieldByName('TRANOP').AsString;;
          end;
          with Cell[i, 5] do begin
            Text := TranQuery.FieldByName('TRANAISLE').AsString;
          end;
          with Cell[i, 6] do begin
            if TranQuery.FieldByName ('TOTAL').IsNull then begin
               Text := TranQuery.FieldByName('OTHER').AsString;
            end else begin
               Text := '['+TranQuery.FieldByName('TOTAL').AsString+'] '
                    +TranQuery.FieldByName('OTHER').AsString;
            end;
          end;
          inc(i);
          while not TranItemQuery.Eof do begin
            RowCount := RowCount + 1;
            with Cell[i, 0] do begin
              Text := '';
            end;
            with Cell[i, 1] do begin
              f:=TranItemQuery.FieldByName('RESOLVEDBC');
              if (f=nil) then
                  Text:=''
                  else
                  Text := htmlquote(f.AsString);
            end;
            with Cell[i, 2] do begin
              s2:=TranItemQuery.FieldByName('DESCRIPTION').AsString;
              //s1:=System.Utf8ToUnicodeString(s2);
              Text := htmlquoteutf8(ansistring(s2));
              //Text := htmlquoteutf8(TranItemQuery.FieldByName('DESCRIPTION').AsString);
            end;
            with Cell[i, 3] do begin
              Text := htmlquoteutf8(System.Utf8ToUnicodeString(TranItemQuery.FieldByName('QUANTITY').AsString));
            end;
            with Cell[i, 4] do begin
              Text := htmlquoteutf8(System.Utf8ToUnicodeString(TranItemQuery.FieldByName('AMOUNT').AsString));
            end;
            with Cell[i, 5] do begin
              Text := htmlquoteutf8(System.Utf8ToUnicodeString(TranItemQuery.FieldByName('UNITPRICE').AsString));
            end;
            with Cell[i, 6] do begin
              Text := htmlquoteutf8(System.Utf8ToUnicodeString(TranItemQuery.FieldByName('STOCKID').AsString));
            end;
            inc(i);
            TranItemQuery.Next;
          end;
      end; { if not TranItemQuery }
      TranQuery.Next;
    end; { while tranquery }
  end; {with }
  nextBtn.visible:= not RcDataModule.TranQuery.Eof;
  prevBtn.visible:= offset > 0;

  RcDataModule.TranQuery.Close;
  RcDataModule.TranItemQuery.Close;
  RcDataModule.Trans.Active:=False;
  RcDataModule.Trans2.Active:=False;
end;


(*procedure TformJnl.DisplayGrid;
var
  i: integer;
  storename : string;
  timeoffset : TDateTime;
  recs : integer;
  newstart : TDateTime;
  newend : TDatetime;
  newstore : integer;
  f : TField;
  newrec : boolean;
begin
  recs:=0;
  timeoffset:=(utccombo.itemindex-12)*60/1440;
  RcDataModule.Trans.Active:=False;
  RcDataModule.Trans2.Active:=False;
  with TranGrid do begin
    Cell[0, 0].Text := siLangLinked1.GetTextOrDefault('Grid.Time');
    Cell[0, 1].Text := siLangLinked1.GetTextOrDefault('Grid.Customer');
    Cell[0, 2].Text := siLangLinked1.GetTextOrDefault('Grid.Desc');
    Cell[0, 3].Text := siLangLinked1.GetTextOrDefault('Grid.Qty');
    Cell[0, 4].Text := siLangLinked1.GetTextOrDefault('Grid.Amount');
    Cell[0, 5].Text := siLangLinked1.GetTextOrDefault('Grid.Price');
    Cell[0, 6].Text := siLangLinked1.GetTextOrDefault('Grid.Stock');
  end;

  try
    with RcDataModule.FastTranQuery do begin
      Close;
      ParamByName('COMPANY').AsString := UserSession.Company;
      newstore:=StrToInt (StoreIDList.Strings[StoreCombo.ItemIndex]);
      Parambyname('STOREID').AsInteger := newstore;
      newstart:=StrToDate(StartEdit.Text)+StrToTime (StartTime.Text)-timeOffset;
      ParamByName('TIMESTART').AsDateTime := newstart;
      newend:= StrToDate(EndEdit.Text)+StrToTime (EndTime.Text)-timeOffset;
      if (newstart<>laststart) or (newend<>lastend) or (newstore<>laststore) then offset:=0;
      laststart:=newstart; lastend:=newend; laststore:=newstore;
      ParamByName('TIMEEND').AsDateTime := newend;
      ParamByName('maxrec').AsInteger := MaxRec+1;
      ParamByName('offset').AsInteger := offset;
      Open;
    end;
  except
  end;

  with TranGrid, rcDataModule do begin
    i := 1;
    RowCount := 1;
    TranItemQuery.ParamByName('COMPANY').AsString :=
      UserSession.Company;
    while not FastTranQuery.Eof and (recs<maxrec) do begin
      newrec:=false;
      if (FastTranQuery.FieldByName('ID').AsInteger<>lastID) then begin
         inc (recs);
         newrec:=true;
      end;
      while not FastTranItemQuery.Eof then begin
          RowCount := RowCount + 1;
          with Cell[i, 0] do begin
            Text := FormatDateTime ('dd/mm/yy hh:mm',TranQuery.FieldByName('TRANDATE').AsDateTime+timeOffset);
          end;
          with Cell[i, 1] do begin
            Text := TranQuery.FieldByName('CUSTID').AsString;
          end;
          with Cell[i, 2] do begin
            storename:=GetStoreName (TranQuery.FieldByName('STOREID').AsString);
            if Storename='' then storename:='['+TranQuery.FieldByName('STOREID').AsString+']';
            Text := siLangLinked1.GetTextOrDefault('Grid.Store')+'='+storename+', '+
                    siLangLinked1.GetTextOrDefault('Grid.Printer')+'='+
                    TranQuery.FieldByName('POS').AsString+' ('+
                    TranQuery.FieldByName('PRINTER').AsString + ')';
          end;
          with Cell[i, 3] do begin
            Text := TranQuery.FieldByName('TRANNUM').AsString;
          end;
          with Cell[i, 4] do begin
            Text := TranQuery.FieldByName('TRANOP').AsString;;
          end;
          with Cell[i, 5] do begin
            Text := TranQuery.FieldByName('TRANAISLE').AsString;
          end;
          with Cell[i, 6] do begin
            if TranQuery.FieldByName ('TOTAL').IsNull then begin
               Text := TranQuery.FieldByName('OTHER').AsString;
            end else begin
               Text := '['+TranQuery.FieldByName('TOTAL').AsString+'] '
                    +TranQuery.FieldByName('OTHER').AsString;
            end;
          end;
          inc(i);
          while not TranItemQuery.Eof do begin
            RowCount := RowCount + 1;
            with Cell[i, 0] do begin
              Text := '';
            end;
            with Cell[i, 1] do begin
              f:=TranItemQuery.FieldByName('RESOLVEDBC');
              if (f=nil) then
                  Text:=''
                  else
                  Text := htmlquote(f.AsString);
            end;
            with Cell[i, 2] do begin
              Text := htmlquote(TranItemQuery.FieldByName('DESCRIPTION').AsString);
            end;
            with Cell[i, 3] do begin
              Text := TranItemQuery.FieldByName('QUANTITY').AsString;
            end;
            with Cell[i, 4] do begin
              Text := TranItemQuery.FieldByName('AMOUNT').AsString;
            end;
            with Cell[i, 5] do begin
              Text := TranItemQuery.FieldByName('UNITPRICE').AsString;
            end;
            with Cell[i, 6] do begin
              Text := TranItemQuery.FieldByName('STOCKID').AsString;
            end;
            inc(i);
            TranItemQuery.Next;
          end;
      end; { if not TranItemQuery }
      TranQuery.Next;
    end; { while tranquery }
  end; {with }
  nextBtn.visible:= not RcDataModule.TranQuery.Eof;
  prevBtn.visible:= offset > 0;

  RcDataModule.FastTranQuery.Close;
//  RcDataModule.TranItemQuery.Close;
  RcDataModule.Trans.Active:=False;
  RcDataModule.Trans2.Active:=False;
end;
*)

procedure TformJnl.IWAppFormCreate(Sender: TObject);
begin
  IWSiLink1.InitForm;
  StartEdit.Text := DateToStr(now);
  EndEdit.Text := DateToStr(now);
  StartTime.Text:='00:00';
  EndTime.Text:='23:59';
  Offset := 0;
  StoreCombo.Clear;
  StoreIDList:=TStringList.Create;
  StoreIDList.Add('0');
  StoreCombo.Items.Add (siLangLinked1.GetTextOrDefault('All Stores'));
  StoreCombo.ItemIndex:=0;
  utccombo.itemindex:=round(usersession.timeoffset * 1440 / 60) + 12;

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

procedure TformJnl.DisplayBtnClick(Sender: TObject);
begin
  RcDataModule.Trans2.Active:=False;
  DisplayGrid;
  RcDataModule.Trans2.Active:=False;
end;

procedure TformJnl.NextLinkClick(Sender: TObject);
begin
  Offset := Offset + MaxRec;
  DisplayGrid;
end;

procedure TformJnl.PrevLinkClick(Sender: TObject);
begin
  Offset := Offset - MaxRec;
  if Offset <= 0 then Offset := 0;
  DisplayGrid;
end;

procedure TformJnl.DelJnlBtnClick(Sender: TObject);
begin
  RcDataModule.Trans2.Active:=False;
  RcDataModule.Trans2.StartTransaction;
  RcDataModule.DelAllJnlItemQuery.ParamByName ('COMPANY').AsString :=
      UserSession.Company;
  RcDataModule.DelAllJnlItemQuery.ExecSQL;
  RcDataModule.Trans2.Commit;
  Offset:=0;
  DisplayGrid;
end;

procedure TFormJnl.WriteRecord (s : TStream; D : TDataset; items : integer);
var
  str : ansistring;
  i : integer;
  count : integer;
  itm : boolean;
  fname : string;
  value : string;
begin
  str:='';
  count:=0;
  for i:=0 to D.FieldCount-1 do begin
     value:=quote(D.Fields[i].AsString);
     fname:=D.Fields[i].FieldName;
     if fname='STOREID' then begin
        value:=quote(GetStoreName(D.Fields[i].AsString));
     end;
     itm:=copy (fname,1,5)='ITEM_';
     case items of
       0 : if not itm then begin
             if (count>0) then str:=str+',';
             str:=str+value;
             inc(count);
           end;
       1 : if itm then begin
             if (count>0) then str:=str+',';
             str:=str+value;
             inc(count);
           end;
       2 : if (fname<>'ITEM_ID') and (fname<>'ITEM_TRANID') then begin
             if (count>0) then str:=str+',';
             str:=str+value;
             inc(count);
           end;
       3 : if (fname<>'ITEM_ID') and (fname<>'ITEM_TRANID') then begin
             if itm then begin
               if (count>0) then str:=str+',';
               str:=str+value;
               inc(count);
             end else begin
               if (count>0) then str:=str+',';
               inc(count);
             end;
           end;
     end;
  end;
  str:=str+#13#10;
  s.write (str[1],length(str));
end;

procedure WriteNames (s : TStream; D : TDataset; items : integer);
var
  str : ansistring;
  i : integer;
  fname : string;
  count : integer;
  itm : boolean;
begin
  str:='';
  count:=0;
  for i:=0 to D.FieldCount-1 do begin
     fname:=D.Fields[i].FieldName;
     itm:=copy(fname,1,5)='ITEM_';
     case items of
       0 : if not itm then begin
             if (count>0) then str:=str+',';
             str:=str+quote(fname);
             inc(count);
           end;
       1 : if itm then begin
             fname:=copy(fname,6,length(fname));
             if (count>0) then str:=str+',';
             str:=str+quote(fname);
             inc(count);
           end;
       2 : if (fname<>'ITEM_ID') and (fname<>'ITEM_TRANID') then begin
             if (count>0) then str:=str+',';
             str:=str+quote(fname);
             inc(count);
           end;
     end;
  end;
  str:=str+#13#10;
  s.write (str[1],length(str));
end;

procedure TformJnl.MakeTranFiles (hdr : TStream; itm : TStream; option : integer);
var
  recs: integer;
  timeoffset : TDatetime;
  lasttran : integer;
begin
  RcDataModule.Trans2.Active:=False;
  recs:=0;
  timeoffset:=(utccombo.itemindex-12)*60/1440;
  try
    with RcDataModule.TranExptQry do begin
      Close;
      ParamByName('COMPANY').AsString :=
        UserSession.Company;
      ParamByName('STOREID').AsInteger:=strtoint(StoreIDList.Strings[StoreCombo.ItemIndex]);
      ParamByName('TIMESTART').AsDateTime :=
        StrToDate(StartEdit.Text)+StrToTime (StartTime.Text)-timeOffset;
      ParamByName('TIMEEND').AsDateTime :=
        StrToDate(EndEdit.Text)+StrToTime (EndTime.Text)-timeOffset;
      Open;
    end;
  except
  end;

  with TranGrid, rcDataModule do begin
    case option of
      0,2 : begin
        WriteNames (itm,TranExptQry,2);
      end;
      1 : begin
        WriteNames (hdr,TranExptQry,0);
        WriteNames (itm,TranExptQry,1);
      end;
    end;
    RowCount := 1;
    lasttran:=0;
    while not TranExptQry.Eof and (recs < MaxExport) do begin
      case option of
        0: begin
          WriteRecord (itm,TranExptQry,2);
        end;
        2: begin
            if (TranExptQry.FieldByName('ID').AsInteger=lasttran) then
               WriteRecord (itm,TranExptQry,3)
               else
               WriteRecord (itm,TranExptQry,2)
        end;
        1: begin
          if (TranExptQry.FieldByName('ID').AsInteger<>lasttran) then
             WriteRecord (hdr,TranExptQry,0);
          WriteRecord (itm,TranExptQry,1);
        end;
      end;
      lasttran:=TranExptQry.FieldByName('ID').AsInteger;
      TranExptQry.Next;
      inc (recs);
    end;
  end;
  RcDataModule.TranExptQry.Close;
  RcDataModule.Trans2.Active:=False;
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


procedure TformJnl.ExportClick(Sender: TObject);
var
   Zipper : TAbZipper;
   filename : string;
   hdr : TMemoryStream;
   itm : TMemoryStream;
   ms : tmemorystream;
   EnvVar: Array [0..255] of char;
begin
   EnvVar[0]:=#0;
   GetEnvironmentVariable(PChar('tmp'), EnvVar, 255);

   filename:=String (EnvVar) + '\' + getname + '.zip';
   hdr:=nil;
   if ExptCombo.ItemIndex=1 then hdr:=TMemoryStream.Create;
   itm:=TMemoryStream.Create;
   try
     MakeTranFiles (hdr,itm,ExptCombo.Itemindex);
     Zipper:=TAbZipper.Create (self);
     Zipper.Filename:=filename;
     try
       if assigned (hdr) then Zipper.AddFromStream ('header.txt',hdr);
       Zipper.AddFromStream ('items.txt',itm);
       Zipper.Save;
     finally
       Zipper.free;
     end;
   finally
     if assigned(hdr) then hdr.free;
     itm.free;
   end;
   ms:=tmemorystream.create;
   ms.LoadFromFile (filename);
   deletefile (filename);
   WebApplication.SendStream(ms,true,'',
       'export_'+formatdatetime ('yymmdd-hhmm',StrToDate(StartEdit.Text)+StrToTime(StartTime.Text)-usersession.timeoffset)+'-'+
       formatdatetime ('yymmdd-hhmm',StrToDate(EndEdit.Text)+StrToTime(EndTime.Text)-usersession.timeoffset)+'.zip');
end;

procedure TformJnl.StatsFrameTitle1ActivityLinkClick(Sender: TObject);
begin
  TIWAppForm(WebApplication.ActiveForm).Release;
  TformStats.Create(WebApplication).show;
end;

procedure TformJnl.userfooter1CancelClick(Sender: TObject);
begin
  TIWAppForm(WebApplication.ActiveForm).Release;
  Tsu_FormRole.Create (WebApplication).show;
end;

procedure TformJnl.IWAppFormDestroy(Sender: TObject);
begin
  StoreIDList.free;
end;

procedure TformJnl.StoreComboChange(Sender: TObject);
begin
  RcDataModule.Trans2.Active:=False;
  RcDataModule.Trans.Active:=False;
  DisplayGrid;
  RcDataModule.Trans2.Active:=False;
  RcDataModule.Trans.Active:=False;
end;

end.

