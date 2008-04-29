unit overviewform;

interface

uses
  Classes, SysUtils, IWAppForm, IWApplication, IWColor, IWTypes, IWControl,
  IWGrids, IWCompLabel, IWCompRectangle, IWVCLBaseControl,
  IWBaseControl, IWBaseHTMLControl, IWHTMLControls, IWSiLink,
  IWVCLBaseContainer, IWContainer, IWHTMLContainer, IWRegion, footer_user,
  Controls, Forms, promotitle, siComp, siLngLnk, distribtitle, IWCompButton,
  IWCompListbox, IWCompRadioButton;

type
  TFormOverview = class(TIWAppForm)
    userfooter1: Tuserfooter;
    IWRegion1: TIWRegion;
    IWSiLink1: TIWSiLink;
    BodyRegion: TIWRegion;
    IWRectangle2: TIWRectangle;
    IWRectangle1: TIWRectangle;
    ImageLabel: TIWLabel;
    OverGrid: TIWGrid;
    silanglinked1: TsiLangLinked;
    DistribFrameTitle1: TDistribFrameTitle;
    storebtn: TIWRadioButton;
    jobbtn: TIWRadioButton;
    procedure OverGridRenderCell(ACell: TIWGridCell; const ARow,
      AColumn: Integer);
    procedure IWAppFormCreate(Sender: TObject);
    procedure userfooter1CancelClick(Sender: TObject);
    procedure OverGridCellClick(ASender: TObject; const ARow,
      AColumn: Integer);
    procedure IWAppFormDestroy(Sender: TObject);
    procedure StoreComboChange(Sender: TObject);
  private
    procedure RefreshGrid;
    procedure RefreshStoreGrid;
    procedure RefreshJobGrid;
  end;

implementation

{$R *.dfm}
uses Graphics, DataMod, roleform, ServerController, storegrpform, grpForm, ReferredClass;

const storecol = $00EBDAD0;

type tag_obj = class
  test : boolean;
  s : string;
end;

procedure TFormOverview.OverGridRenderCell(ACell: TIWGridCell;
  const ARow, AColumn: Integer);
begin
  with ACell do begin
    // Title Row
    if ARow = 0 then begin
      Alignment := taCenter;
      BGColor := clBlue;
      Font.Style := [fsBold];
      Font.Color := clWhite;
    end;
  end;
end;

procedure TFormOverview.RefreshJobGrid;
var
  i : integer;
  jobid : integer;
  groupid : integer;
  celltag : tag_obj;
begin
  jobid:=0;
  groupid:=0;
  RcDataModule.OverJobQuery.Transaction.Active:=true;
  RcDataModule.OverJobQuery.ParamByName('COMPANY').AsString:=UserSession.Company;
  RcDataModule.OverJobQuery.Open;
  with OverGrid do begin
    Cell[0, 2].Text := SiLangLinked1.GetTextOrDefault('Grid.Store');
    Cell[0, 1].Text := SiLangLinked1.GetTextOrDefault('Grid.Group');
    Cell[0, 0].Text := SiLangLinked1.GetTextOrDefault('Grid.Job');
    i:=1;
    RowCount:=1;
    while not RcDataModule.OverJobQuery.Eof do begin
      if jobid<>RcDataModule.OverJobQuery.FieldByName('JID').AsInteger then begin
        RowCount:=RowCount+1;
        Cell[i, 1].BGColor:=clLtGray;
        Cell[i, 2].BGColor:=clLtGray;
        groupid:=0;
        with Cell[i, 0] do begin
           Text :=RcDataModule.OverJobQuery.FieldByName('JN').AsString;
           jobid:=RcDataModule.OverJobQuery.FieldByName('JID').AsInteger;
           inc (i);
           BGColor:=clLtGray;
        end;
      end;
      if RcDataModule.OverJobQuery.FieldByName('gN').AsString<>'' then begin
        if RcDataModule.OverJobQuery.FieldByName('gID').AsInteger<>groupid then begin
          RowCount:=RowCount+1;
          with Cell[i, 1] do begin
            Clickable := True;
            Text :=RcDataModule.OverJobQuery.FieldByName('gN').AsString;
            groupid:=RcDataModule.OverJobQuery.FieldByName('gID').AsInteger;
            BGColor:=Storecol;
            celltag:=tag_obj.create;
            celltag.test:=false;
            celltag.s:=inttostr(groupid);
            tag:=celltag;
            if RcDataModule.OverJobQuery.FieldByName('TEST').AsString='Y' then begin
               Font.Style:=[fsItalic];
               celltag.test:=true;
            end;
            inc(i);
          end;
        end;
      end;
      if RcDataModule.OverJobQuery.FieldByName('sdn').AsString<>'' then begin
        RowCount:=RowCount+1;
        with Cell[i, 2] do begin
          Clickable:=True;
          BGColor:=clWhite;
          text:=RcDataModule.OverJobQuery.FieldByName('sdn').AsString;
          celltag:=tag_obj.create;
          celltag.s:=RcDataModule.OverJobQuery.FieldByName('sdid').AsString;
          celltag.test:=false;
          if RcDataModule.OverJobQuery.FieldByName('stest').AsString='1' then begin
             Font.Style:=[fsItalic];
             celltag.test:=true;
          end;
          tag:=celltag;
          inc(i);
        end;
      end;
      RcDataModule.OverJobQuery.Next;
    end;
  end;
  RcDataModule.OverJobQuery.Close;
  RcDataModule.OverJobQuery.Transaction.Active:=false;
end;

procedure TFormOverview.RefreshStoreGrid;
var
  i : integer;
  storeid : integer;
  groupid : integer;
  celltag : tag_obj;
begin
  storeid:=0;
  groupid:=0;
  RcDataModule.OverQuery.Transaction.Active:=true;
  RcDataModule.OverQuery.ParamByName('COMPANY').AsString:=UserSession.Company;
  RcDataModule.OverQuery.Open;
  with OverGrid do begin
    Cell[0, 0].Text := SiLangLinked1.GetTextOrDefault('Grid.Store');
    Cell[0, 1].Text := SiLangLinked1.GetTextOrDefault('Grid.Group');
    Cell[0, 2].Text := SiLangLinked1.GetTextOrDefault('Grid.Job');
    i:=1;
    RowCount:=1;
    while not RcDataModule.OverQuery.Eof do begin
      if storeid<>RcDataModule.OverQuery.FieldByName('sdID').AsInteger then begin
        RowCount:=RowCount+1;
        Cell[i, 1].BGColor:=clWhite;
        Cell[i, 2].BGColor:=clWhite;
        groupid:=0;
        with Cell[i, 0] do begin
          Clickable:=True;
          BGColor:=clWhite;
          text:=RcDataModule.OverQuery.FieldByName('sdn').AsString;
          storeid:=RcDataModule.OverQuery.FieldByName('sdID').AsInteger;
          celltag:=tag_obj.create;
          celltag.test:=false;
          if RcDataModule.OverQuery.FieldByName('stest').AsString='1' then begin
             Font.Style:=[fsItalic];
             celltag.test:=true;
          end;
          celltag.s:=inttostr(storeid);
          tag:=celltag;
          inc(i);
        end;
      end;
      if RcDataModule.OverQuery.FieldByName('gN').AsString<>'' then begin
        if RcDataModule.OverQuery.FieldByName('gID').AsInteger<>groupid then begin
          RowCount:=RowCount+1;
          with Cell[i, 1] do begin
            Clickable := True;
            Text :=RcDataModule.OverQuery.FieldByName('gN').AsString;
            groupid:=RcDataModule.OverQuery.FieldByName('gID').AsInteger;
            BGColor:=Storecol;
            celltag:=tag_obj.create;
            celltag.s:=inttostr(groupid);
            celltag.test:=false;
            if RcDataModule.OverQuery.FieldByName('TEST').AsString='Y' then begin
               Font.Style:=[fsItalic];
               celltag.test:=true;
            end;
            tag:=celltag;
            inc(i);
          end;
        end;
      end;
      if RcDataModule.OverQuery.FieldByName('JN').AsString<>'' then begin
        RowCount:=RowCount+1;
        with Cell[i, 2] do begin
           Text :=RcDataModule.OverQuery.FieldByName('JN').AsString;
           inc (i);
           BGColor:=clLtGray;
        end;
      end;
      RcDataModule.OverQuery.Next;
    end;
  end;
  RcDataModule.OverQuery.Close;
  RcDataModule.OverQuery.Transaction.Active:=false;
end;

procedure TFormOverview.RefreshGrid;
var
  r, c : integer;
begin
  for r:=0 to Overgrid.RowCount-1 do
     for c:=0 to Overgrid.ColumnCount-1 do
       Overgrid.Cell[r,c].Tag.Free;
  if storebtn.checked then refreshstoregrid else refreshjobgrid;
end;

procedure TFormOverview.IWAppFormCreate(Sender: TObject);
begin
   Storebtn.checked:=RcDataModule.GetValue('overview_stores','1')='1';
   jobbtn.checked:=not storebtn.checked;
   RefreshGrid;
end;

procedure TFormOverview.userfooter1CancelClick(Sender: TObject);
begin
   TIWAppForm(WebApplication.ActiveForm).Release;
   Tsu_FormRole.Create (WebApplication).show;
end;

procedure TFormOverview.OverGridCellClick(ASender: TObject; const ARow,
  AColumn: Integer);
var
  tfg : TformGrpStore;
begin
  if AColumn<>1 then begin
    TIWAppForm(WebApplication.ActiveForm).Release;
    RcDatamodule.CurrentStoreQuery.ParamByName('ID').AsString:=tag_obj(overgrid.Cell[arow,acolumn].tag).s;
    tfg:=TformGrpStore.Create (WebApplication);
    tfg.StoreLabel.caption:=overgrid.Cell[arow,acolumn].text;
    tfg.populate_fields(tag_obj(overgrid.Cell[arow,acolumn].tag).test);
    tfg.show;
  end else begin
    EditGroup (tag_obj(overgrid.Cell[arow,acolumn].tag).s,TformOverview);
  end;
end;

procedure TFormOverview.IWAppFormDestroy(Sender: TObject);
var
  r,c : integer;
begin
  for r:=0 to Overgrid.RowCount-1 do
     for c:=0 to Overgrid.ColumnCount-1 do
       Overgrid.Cell[r,c].Tag.Free;
end;

procedure TFormOverview.StoreComboChange(Sender: TObject);
begin
   rcdatamodule.SaveValue('overview_stores',inttostr(ord(storebtn.checked)));
   RefreshGrid;
end;

end.
