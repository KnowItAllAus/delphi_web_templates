unit distrib;

interface

uses
  Classes, SysUtils, IWAppForm, IWApplication, IWColor, IWTypes, siComp,
  siLngLnk, IWCompRectangle, IWHTMLControls, IWSiLink, IWGrids,
  IWVCLBaseControl, IWBaseControl, IWBaseHTMLControl, IWControl,
  IWCompLabel, IWVCLBaseContainer, IWContainer, IWHTMLContainer, IWRegion,
  footer_user, Controls, Forms, distribtitle;

type
  TFormDistrib = class(TIWAppForm)
    userfooter1: Tuserfooter;
    IWRegion1: TIWRegion;
    IWRegion2: TIWRegion;
    GrpLabel: TIWLabel;
    JobGrid: TIWGrid;
    IWSiLink1: TIWSiLink;
    IWRectangle1: TIWRectangle;
    IWRectangle2: TIWRectangle;
    silink_footer: TsiLangLinked;
    DistribFrameTitle1: TDistribFrameTitle;
    procedure userfooter1CancelClick(Sender: TObject);
    procedure IWAppFormCreate(Sender: TObject);
    procedure JobGridRenderCell(ACell: TIWGridCell; const ARow,
      AColumn: Integer);
    procedure JobGridCellClick(ASender: TObject; const ARow,
      AColumn: Integer);
  public
    procedure drawgrid;
    procedure GetGroupName (ID : Integer; Co : Integer; var n : string; var t : boolean);
  end;

implementation

{$R *.dfm}

uses roleform, datamod, ServerController, Graphics, distribdtlForm;

procedure TFormDistrib.GetGroupName (ID : Integer; Co : Integer; var n : string; var t : boolean);
begin
  n:='';
  t:=false;
  with RcDataModule.GroupDetailQuery do begin
     try
       Close;
       ParamByName ('COMPANY').AsInteger:=Co;
       ParamByName ('ID').AsInteger:=Id;
       n:='*Unknown*';
       Open;
       if Eof then exit;
       n:=FieldByName ('NAME').AsString;
       t:=FieldByName ('TESTGROUP').AsString='Y';
     finally
       Close;
     end;
  end;
end;

procedure TFormDistrib.drawgrid;
var
  i : integer;
  t : boolean;
  n : string;
begin
  with RcDataModule.JobQuery do begin
    Transaction.Active:=False;
    Transaction.Active:=True;
    Close;
    ParamByName('COMPANY').AsString:=UserSession.Company;
    Open;
    with JobGrid do begin
      RowCount:=1;
      Cell[0, 0].Text := 'ID';
      Cell[0, 1].Text := 'Name';
      Cell[0, 2].Text := 'Description';
      i:=1;
      while not Eof do begin
        RowCount:=RowCount+1;
        with Cell[i, 0] do begin
          Text := FieldByName('ID').AsString;
          Clickable:=true;
        end;
        with Cell[i, 1] do begin
          Text := FieldByName('NAME').AsString;
        end;
        with Cell[i, 2] do begin
          Text := FieldByName('DESCRIPTION').AsString;
        end;
        inc (i);
        with RcDataModule.GrpAllocQuery do begin
          Close;
          ParamByName('COMPANY').AsString:=UserSession.Company;
          ParamByName('ITEMID').AsString:=RcDataModule.JobQuery.FieldByName('ID').AsString;
          Open;
          while not Eof do begin
              RowCount:=RowCount+1;
              with Cell[i, 1] do begin
                GetGroupName(FieldByName('GROUPID').AsInteger, strtoint(UserSession.Company),n,t);
                text:=n;
                if t then begin
                   Font.Color:=clRed;
                   Font.Style:=[fsItalic];
                end;
              end;
              inc (i);
              Next;
          end;
          Close;
        end;
        Next;
      end;
    end;
    Close;
    Transaction.Active:=False;
  end;
end;

procedure TFormDistrib.userfooter1CancelClick(Sender: TObject);
begin
   TIWAppForm(WebApplication.ActiveForm).Release;
   Tsu_FormRole.Create(WebApplication).Show;
end;

procedure TFormDistrib.IWAppFormCreate(Sender: TObject);
begin
   self.IWSiLink1.InitForm;
   drawGrid;
end;

procedure TFormDistrib.JobGridRenderCell(ACell: TIWGridCell; const ARow,
  AColumn: Integer);
begin
  with ACell do begin
    // Title Row
    if JobGrid.Cell[ARow,0].Text<>'' then begin
        BGColor := clNone;
    end else begin
        BGColor := clLtGray;
    end;
    if ARow = 0 then begin
      Alignment := taCenter;
      BGColor := clBlue;
      Font.Style := [fsBold];
      Font.Color := clWhite;
    end;
  end;
end;

procedure TFormDistrib.JobGridCellClick(ASender: TObject; const ARow,
  AColumn: Integer);
begin
  with RcDataModule.CurrentJobQuery do begin
     Transaction.Active:=true;
     ParamByName ('ID').AsInteger:=strtoint(JobGrid.Cell[ARow,0].text);
     ParamByName ('Company').AsString:=UserSession.Company;
     Open;
  end;
  TIWAppForm(WebApplication.ActiveForm).Release;
  TFormdistribdtl.Create(WebApplication).Show;
end;

end.
