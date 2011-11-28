unit distribstatusform;

interface

uses
  Classes, SysUtils, IWAppForm, IWApplication, IWColor, IWTypes,
  IWCompRectangle, IWCompListbox, IWCompButton, IWHTMLControls, IWSiLink,
  IWCompLabel, IWVCLBaseControl, IWBaseControl, IWBaseHTMLControl,
  IWControl, IWGrids, IWVCLBaseContainer, IWContainer, IWHTMLContainer,
  IWRegion, footer_user, Controls, Forms, distribtitle, siComp, siLngLnk,
  IWHTML40Container, IWCompCheckbox;

type
  TformDistribStatus = class(TIWAppForm)
    DistribFrameTitle1: TDistribFrameTitle;
    userfooter1: Tuserfooter;
    IWRegion1: TIWRegion;
    IWRegion2: TIWRegion;
    StoreLabel: TIWLabel;
    IWSiLink1: TIWSiLink;
    RefreshBtn: TIWButton;
    IWLabel1: TIWLabel;
    IWLabel3: TIWLabel;
    OffCombo: TIWComboBox;
    IWLabel2: TIWLabel;
    IWRectangle1: TIWRectangle;
    IWRectangle2: TIWRectangle;
    siLangLinked1: TsiLangLinked;
    advancedbox: TIWCheckBox;
    storeGrid: TIWGrid;
    procedure IWAppFormCreate(Sender: TObject);
    procedure RefreshBtnClick(Sender: TObject);
    procedure StoreGridRenderCell(ACell: TIWGridCell; const ARow,
      AColumn: Integer);
    procedure userfooter1CancelClick(Sender: TObject);
    procedure advancedboxAsyncClick(Sender: TObject;
      EventParams: TStringList);
  private
    IList : TList;
    advanced : boolean;
    procedure RefreshGrid;
  end;

implementation

{$R *.dfm}

uses db, datamod, servercontroller, IWInit, graphics, roleform, cfgtypes;

type
   SRObj = class
                LastComms : TDateTime;
                Enabled : boolean;
           end;


procedure TformDistribStatus.RefreshGrid;
var
  i : integer;
  SRO : SRObj;
  commtime : tdatetime;
begin
  RcDataModule.StoreQuery.Transaction.Active:=False;
  RcDataModule.StoreQuery.Transaction.StartTransaction;
  RcDataModule.StoreQuery.Close;
  RcDataModule.StoreQuery.ParamByName('COMPANY').AsString:=
     UserSession.Company;
  RcDataModule.StoreQuery.Open;
  with StoreGrid do begin
    if advanced then
      columncount:=11
    else
      columncount:=6;
    //Cell[0, 0].Text := SiLangLinked1.GetTextOrDefault ('Grid.Id');
    Cell[0, 0].Text := SiLangLinked1.GetTextOrDefault ('Grid.Name');
    Cell[0, 1].Text := SiLangLinked1.GetTextOrDefault ('Grid.POS');
    Cell[0, 2].Text := SiLangLinked1.GetTextOrDefault ('Grid.Enabled');
    Cell[0, 3].Text := SiLangLinked1.GetTextOrDefault ('Grid.Cfg');
    Cell[0, 4].Text := SiLangLinked1.GetTextOrDefault ('Grid.Sent');
    Cell[0, 5].Text := SiLangLinked1.GetTextOrDefault ('Grid.CommsAge');
    if advanced then begin
      Cell[0, 6].Text := SiLangLinked1.GetTextOrDefault ('Grid.Printer');
      Cell[0, 7].Text := SiLangLinked1.GetTextOrDefault ('Grid.Size');
      Cell[0, 8].Text := SiLangLinked1.GetTextOrDefault ('Grid.Published');
      Cell[0, 9].Text := SiLangLinked1.GetTextOrDefault ('Grid.MAC');
      Cell[0, 10].Text := SiLangLinked1.GetTextOrDefault ('Grid.Location');
    end;
    i:=1;
    RowCount:=1;

    while not RcDataModule.StoreQuery.Eof do begin
      RowCount:=RowCount+1;
      with Cell[i, 0] do begin
        Text := htmlquote(RcDataModule.StoreQuery.FieldByName('Name').AsString);
      end;
      with Cell[i, 1] do begin
        Text := htmlquote(RcDataModule.StoreQuery.FieldByName('POSName').AsString);
      end;
      with Cell[i, 2] do begin
        if (RcDataModule.StoreQuery.FieldByName('Enabled').AsInteger=0) then
           Text:='No' else Text:='Yes';
      end;
      with Cell[i, 3] do begin
        Text := RcDataModule.StoreQuery.FieldByName('ConfigId').AsString;
        if RcDataModule.StoreQuery.FieldByName ('ConfigUpdate').AsString='1' then
           Text:=Text+'*';
      end;
      with Cell[i, 4] do begin
        Text := RcDataModule.StoreQuery.FieldByName('ConfigIdTx').AsString;
      end;
      with Cell[i, 5] do begin
        if not RcDataModule.StoreQuery.FieldByName('LastComms').IsNull then
           commtime:=now-RcDataModule.StoreQuery.FieldByName('LastComms').AsDateTime
           else
           commtime:=0;
        if commtime<=0 then
            text:='- - -'
        else if abs(commtime)<1 then
            text := TimeToStr (commtime)
        else if commtime>1 then
            text:=floattostrf (commtime,fffixed,7,2)+' Days';
        if (RcDataModule.StoreQuery.FieldByName('Enabled').AsInteger=0) then
           Text:='';
      end;
      if advanced then with Cell[i, 6] do begin
        Text := htmlquote(RcDataModule.StoreQuery.FieldByName('Printer').AsString);
      end;
      if advanced then with Cell[i, 7] do begin
        Text := RcDataModule.StoreQuery.FieldByName('ConfigSize').AsString;
        //if assigned(blob) then Text := Inttostr(blob.Blobsize) else Text:='<Null>';
      end;
      if advanced then with Cell[i, 8] do begin
        Text := RcDataModule.StoreQuery.FieldByName('ConfigDate').AsString;
      end;
      if advanced then with Cell[i, 9] do begin
        Text := RcDataModule.StoreQuery.FieldByName('MAC').AsString;
      end;
      if advanced then with Cell[i, 10] do begin
        Text := RcDataModule.StoreQuery.FieldByName('Location').AsString;
      end;
      SRO:=SRObj.create;
      if not RcDataModule.StoreQuery.FieldByName('LastComms').IsNull then
         SRO.lastcomms:=RcDataModule.StoreQuery.FieldByName('LastComms').AsDateTime
         else
         SRO.lastcomms:=0;
      SRO.Enabled:=RcDataModule.StoreQuery.FieldByName('Enabled').AsInteger=1;
      ilist.Add (SRO);
      inc (i);
      RcDataModule.StoreQuery.Next;
    end;
  end;
  RcDataModule.StoreQuery.Close;
  RcDataModule.StoreQuery.Transaction.commit;
end;


procedure TformDistribStatus.IWAppFormCreate(Sender: TObject);
begin
  IWSiLink1.InitForm;
  IList:=TList.Create;
  advanced:=false;
  RefreshGrid;
end;

procedure TformDistribStatus.RefreshBtnClick(Sender: TObject);
begin
  RefreshGrid;
end;

procedure TformDistribStatus.StoreGridRenderCell(ACell: TIWGridCell;
  const ARow, AColumn: Integer);
begin
  with ACell do begin
    // Title Row
    if odd(ARow) then begin
      BGColor := clLtGray;
    end else begin
      BGColor := clNone;
    end;
    if ARow = 0 then begin
      Alignment := taCenter;
      BGColor := clBlue;
      Font.Style := [fsBold];
      Font.Color := clWhite;
    end else case AColumn of
      3 :
          if (StoreGrid.Cell[ARow,3].Text<>StoreGrid.Cell[ARow,4].Text) then begin
             BGColor := clYellow;
          end;
      0 :
          with SRObj(IList.Items[ARow-1]) do begin
            if enabled then begin
              if (lastcomms<now - strtoint(offcombo.text)/(60*24)) and enabled then begin
                BGColor := clRed;
              end else begin
                BGColor := TColor($60C060);
              end;
            end;
          end;
      2 :
          if not SRObj(IList.Items[ARow-1]).enabled then begin
             BGColor := clBlack;
             Font.Color := clWhite;
          end;
    end;
  end;
end;

procedure TformDistribStatus.userfooter1CancelClick(Sender: TObject);
begin
   TIWAppForm(WebApplication.ActiveForm).Release;
   Tsu_FormRole.Create (WebApplication).show;
end;

procedure TformDistribStatus.advancedboxAsyncClick(Sender: TObject;
  EventParams: TStringList);
begin
  advanced:=Advancedbox.checked;
  Refreshgrid;
end;

end.
