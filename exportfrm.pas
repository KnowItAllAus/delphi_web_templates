unit exportfrm;

interface

uses
  Classes, SysUtils, IWAppForm, IWApplication, IWColor, IWTypes, siComp,
  siLngLnk, IWCompRectangle, IWHTMLControls, IWSiLink, IWGrids,
  IWVCLBaseControl, IWBaseControl, IWBaseHTMLControl, IWControl,
  IWCompLabel, IWVCLBaseContainer, IWContainer, IWHTMLContainer, IWRegion,
  footer_user, Controls, Forms, distribtitle, IWCompButton, IWCompListbox,
  IWHTML40Container;

type
  TFormExport = class(TIWAppForm)
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
    JobCombo: TIWComboBox;
    IWLabel1: TIWLabel;
    IWLabel2: TIWLabel;
    CoCombo: TIWComboBox;
    ExportBtn: TIWButton;
    procedure userfooter1CancelClick(Sender: TObject);
    procedure IWAppFormCreate(Sender: TObject);
    procedure JobGridRenderCell(ACell: TIWGridCell; const ARow,
      AColumn: Integer);
    procedure JobGridCellClick(ASender: TObject; const ARow,
      AColumn: Integer);
    procedure IWAppFormDestroy(Sender: TObject);
    procedure ExportBtnClick(Sender: TObject);
  public
    joblist : TStringlist;
    colist : TStringlist;
    procedure drawgrid;
    procedure GetGroupName (ID : Integer; Co : Integer; var n : string; var t : boolean);
  end;

implementation

{$R *.dfm}

uses roleform, datamod, ServerController, Graphics, distribdtlForm, cfgtypes;

procedure TFormExport.GetGroupName (ID : Integer; Co : Integer; var n : string; var t : boolean);
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

procedure TFormExport.drawgrid;
var
  i : integer;
  t : boolean;
  n : string;
begin
  with RcDataModule.SQLQry do begin
    Transaction.Active:=False;
    Transaction.Active:=True;
    Close;
    SQL.Clear;
    SQL.Add ('Select JOBS.*, COMPANY.NAME as coname from jobs');
    SQL.Add ('join COMPANY on COMPANY.ID=JOBS.COMPANY');
    SQL.Add ('where REFERJOBCO=:COMPANY and JOBKIND=''LINK'' order by JOBS.NAME');
    ParamByName('COMPANY').AsString:=UserSession.Company;
    Open;
    with JobGrid do begin
      RowCount:=1;
      Cell[0, 0].Text := 'ID';
      Cell[0, 1].Text := 'Name';
      Cell[0, 2].Text := 'Description';
      Cell[0, 3].Text := 'Company';
      Cell[0, 4].Text := '';
      i:=1;
      while not Eof do begin
        RowCount:=RowCount+1;
        with Cell[i, 0] do begin
          Text := FieldByName('ID').AsString;
//          Clickable:=true;
        end;
        with Cell[i, 1] do begin
          Text := htmlquote(FieldByName('NAME').AsString);
        end;
        with Cell[i, 2] do begin
          Text := htmlquote(FieldByName('DESCRIPTION').AsString);
        end;
        with Cell[i, 3] do begin
          Text := htmlquote(FieldByName('coname').AsString);
        end;
        with Cell[i, 4] do begin
          Text := 'Delete';
          Clickable:=true;
        end;
        inc (i);
        Next;
      end;
    end;
    Close;
    Transaction.Active:=False;
  end;
  try
    with RcDataModule do begin
      SQLQry.SQL.Clear;
      SQLQry.Transaction.Active:=false;
      SQLQry.Transaction.Active:=true;
      SQLQry.SQL.Add('select * from JOBS where COMPANY=:COMPANY and (JOBKIND=''JOB'' or');
      SQLQry.SQL.Add('JOBKIND=''INSTANCE'' or JOBKIND=''TEMPLATE'') order by NAME');
      SQLQry.ParamByName ('COMPANY').AsString:=UserSession.Company;
      SQLQry.Open;
      JobList.Clear;
      JobCombo.Items.clear;
      while not SQLQry.Eof do begin
         JobCombo.Items.Add (SQLQry.FieldByName('Name').AsString);
         JobList.Add (SQLQry.FieldByName('ID').AsString);
         SQLQry.Next;
      end;
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
  if (UserSession.privilege and PRIV_EXPORT)=0 then begin
     jobcombo.Visible:=false;
     Cocombo.Visible:=false;
     ExportBtn.Visible:=false;
  end;
end;

procedure TFormExport.userfooter1CancelClick(Sender: TObject);
begin
   TIWAppForm(WebApplication.ActiveForm).Release;
   Tsu_FormRole.Create(WebApplication).Show;
end;

procedure TFormExport.IWAppFormCreate(Sender: TObject);
begin
   self.IWSiLink1.InitForm;
   Joblist:=TStringlist.create;
   CoList:=TStringlist.create;
   drawGrid;
end;

procedure TFormExport.JobGridRenderCell(ACell: TIWGridCell; const ARow,
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

procedure TFormExport.JobGridCellClick(ASender: TObject; const ARow,
  AColumn: Integer);
begin
  with RcDataModule.SQLEx do begin
      SQL.Clear;
      Transaction.Active:=false;
      Transaction.Active:=true;
      SQL.Add('delete from JOBS where ID=:ID and REFERJOBCO=:COMPANY');
      ParamByName ('ID').AsString:=JobGrid.Cell[ARow,0].Text;
      ParamByName ('Company').AsString:=UserSession.Company;
      ExecQuery;
      transaction.commit;
  end;
  DrawGrid;
end;

procedure TFormExport.IWAppFormDestroy(Sender: TObject);
begin
  CoList.free;
  JobList.free;
end;

procedure TFormExport.ExportBtnClick(Sender: TObject);
var
  kind : string;
  paramtmplid : string;
  paramco : string;
  referjob : string;
  referjobco : string;
begin
  if (JobCombo.itemindex=-1) then exit;
  if (CoCombo.Itemindex=-1) then exit;
  with RcDataModule.SQLQry do begin
    SQL.Clear;
    SQL.Add('select * from JOBS');
    SQL.Add('where ID=:ID and COMPANY=:COMPANY');
    ParamByName('COMPANY').AsString:=UserSession.Company;
    ParamByName('ID').AsString:=JobList[JobCombo.itemindex];
    Open;
    if not eof then begin
      kind:=FieldByName ('JobKind').AsString;
      paramtmplid:='';
      referjob:='';
      referjobco:='';
      paramtmplid:='';
      paramco:='';
      if kind='INSTANCE' then begin
         //paramtmplid:=FieldByName ('PARAMTMPLID').AsString;
         //paramco:=UserSession.Company;
         // paramco must be the current co as it is an instance within this co.
         referjob:=JobList[JobCombo.itemindex];
         referjobco:=UserSession.Company;
         //referjob:=FieldByName ('REFERJOB').AsString;
         //referjobco:=FieldByName ('REFERJOBCO').AsString;
         // This instance may refer to either a local job or an imported job.
      end else if kind='TEMPLATE' then begin
         // Local job, no parameters to export
         referjob:=JobList[JobCombo.itemindex];
         referjobco:=UserSession.Company;
      end else if kind='JOB' then begin
         // no params for normal jobs
         referjob:=JobList[JobCombo.itemindex];
         referjobco:=UserSession.Company;
         // This job may refer to either a local job or an imported job.
      end else if kind='LINK' then begin
         // No need to deal with LINKs here as we only allow export of instances or local jobs.
      end;
    end;
  end;

  with RcDataModule.SQLEx do begin
    SQL.Clear;
    SQL.Add('insert into JOBS');
    SQL.Add('(ID,COMPANY,NAME,JOBKIND,TEMPLATE,REFERJOB,REFERJOBCO,PARAMTMPLID,PARAMCO)');
    SQL.Add('VALUES (:ID,:COMPANY,:NAME,''LINK'',3,:REFERJOB,:REFERJOBCO,:PARAMTMPLID,:PARAMCO)');

    ParamByName('COMPANY').AsString:=CoList[CoCombo.itemindex];
    ParamByName('ID').AsString:=inttostr(RcDataModule.nextID);
    ParamByName('NAME').AsString:=JobCombo.Items[Jobcombo.itemindex];
    ParamByName('REFERJOB').AsString:=referjob;
    ParamByName('REFERJOBCO').AsString:=referjobco;
    ParamByName('PARAMTMPLID').Clear;
    ParamByName('PARAMCO').Clear;
    if kind='INSTANCE' then begin
       ParamByName('PARAMTMPLID').AsString:=paramtmplid;
       ParamByName('PARAMCO').AsString:=paramco;
    end;

    ExecQuery;
    Transaction.Commit;
    drawgrid;
  end;
end;

end.
