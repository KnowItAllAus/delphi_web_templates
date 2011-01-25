unit Jobs;

interface

uses
  Classes, SysUtils, IWAppForm, IWApplication, IWColor, IWTypes, IWGrids,
  IWCompEdit, IWHTMLControls, IWExtCtrls, IWCompLabel, IWCompRectangle,
  IWVCLBaseControl, IWBaseControl, IWBaseHTMLControl, IWControl, IWSiLink,
  IWVCLBaseContainer, IWContainer, IWHTMLContainer, IWRegion, footer_user,
  Controls, Forms, promotitle, siComp, siLngLnk, IWCompButton;

type
  TformJobs = class(TIWAppForm)
    userfooter1: Tuserfooter;
    IWRegion1: TIWRegion;
    langlink: TIWSiLink;
    BodyRegion: TIWRegion;
    IWRectangle2: TIWRectangle;
    IWRectangle1: TIWRectangle;
    JobsLabel: TIWLabel;
    NewJobEdit: TIWEdit;
    JobGrid: TIWGrid;
    silink: TsiLangLinked;
    CreateBtn: TIWButton;
    PromoFrameTitle1: TPromoFrameTitle;
    procedure JobGridRenderCell(ACell: TIWGridCell; const ARow,
      AColumn: Integer);
    procedure IWAppFormCreate(Sender: TObject);
    procedure userfooter1CancelClick(Sender: TObject);
    procedure CreateBtnClick(Sender: TObject);
    procedure JobGridCellClick(ASender: TObject; const ARow,
      AColumn: Integer);
  private
  public
    procedure RefreshGrid;
    procedure EditJob (ID : String; name : string);
    procedure NewTmplInstance(tmplid : string; tmplname : string);
  end;

procedure GotoJob (ID : String; name : string; rev : string; note : string);

implementation

uses DataMod, ServerController, IWInit, cfgTypes, roleform, Graphics,
     voucherForm, imagesform, jobrev, edittmplform;

{$R *.dfm}


procedure TformJobs.JobGridRenderCell(ACell: TIWGridCell; const ARow,
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

procedure TformJobs.RefreshGrid;
var
  i : integer;
  istemplate : boolean;
begin
  with RcDataModule.JobAllQuery do begin
    Transaction.Active:=False;
    Transaction.Active:=True;
    Close;
    ParamByName('COMPANY').AsString:=UserSession.Company;
    ParamByName('ALL').AsString:='1';
    Open;
    with JobGrid do begin
      RowCount:=1;
      Cell[0, 0].Text := SiLink.GetTextOrDefault('Grid.ID');
      Cell[0, 1].Text := SiLink.GetTextOrDefault('Grid.Name');
      Cell[0, 2].Text := SiLink.GetTextOrDefault('Grid.Note');
      Cell[0, 3].Text := SiLink.GetTextOrDefault('Grid.Desc');
      Cell[0, 4].Text := SiLink.GetTextOrDefault('Grid.Status');
      Cell[0, 5].Text := '';
      i:=1;
      while not Eof do begin
        RowCount:=RowCount+1;
        istemplate:=FieldByName('TEMPLATE').AsString='1';
        with Cell[i, 0] do begin
          Text := FieldByName('ID').AsString;
          Clickable:=true;
        end;
        with Cell[i, 1] do begin
          Text := htmlquote(FieldByName('NAME').AsString);
        end;
        with Cell[i, 2] do begin
          Text:='';
          if istemplate then Text:=SiLink.GetTextOrDefault('Grid.Template');
        end;
        with Cell[i, 5] do begin
          if istemplate then begin
            Text:=SiLink.GetTextOrDefault('Grid.NewInstance');
            Clickable:=true;
          end;
        end;
        with Cell[i, 3] do begin
          Text := htmlquote(FieldByName('DESCRIPTION').AsString);
        end;
        with Cell[i, 4] do begin
          try
            Text := '';
            if not FieldByName('STATUS').IsNull then Text:=JobStatusNames[jobstates(FieldByName('STATUS').AsInteger)];
          except
          end;
        end;
        inc (i);
        Next;
      end;
    end;
    Close;
    Transaction.Active:=False;
  end;
end;

procedure TformJobs.IWAppFormCreate(Sender: TObject);
begin
   Self.langlink.InitForm;
   RefreshGrid;
end;

procedure TformJobs.userfooter1CancelClick(Sender: TObject);
begin
   TIWAppForm(WebApplication.ActiveForm).Release;
   Tsu_FormRole.Create (WebApplication).show;
end;

procedure TformJobs.CreateBtnClick(Sender: TObject);
var
  nextid : integer;
begin
  with RcDataModule.JobInsertQuery do begin
    Transaction.StartTransaction;
    ParamByName('COMPANY').AsString:=UserSession.Company;
    NextId:=RcDataModule.nextID;
    ParamByName('ID').AsString:=inttostr(nextID);
    ParamByName('NAME').AsString:=newjobedit.text;
    ParamByName ('JOBKIND').AsString:='JOB';
    ExecSQL;
    RcDataModule.JobInsertQuery.Transaction.Commit;
    RcDataModule.VoucherQuery.ParamByName('JOBID').AsInteger:=nextID;
    EditJob (IntToStr(nextID),'');
  end;
end;

procedure TformJobs.EditJob (ID : String; name : string);
begin
   GotoJob (ID,name,'','');
end;

function job_exists (id : string; var kind : integer) : boolean;
begin
   kind:=0;
   with RcDataModule do begin
       CurrentJobQuery.Transaction.Active:=false;
       CurrentJobQuery.Transaction.Active:=true;
       CurrentJobQuery.ParamByName('COMPANY').AsString:=UserSession.Company;
       CurrentJobQuery.ParamByName('ID').AsString:=id;
       CurrentJobQuery.Active:=false;
       CurrentJobQuery.Active:=true;
       result:=not CurrentJobQuery.FieldByName('ID').IsNull;
       if not CurrentJobQuery.FieldByName('TEMPLATE').isnull then kind:=CurrentJobQuery.FieldByName('TEMPLATE').AsInteger;
       CurrentJobQuery.Active:=false;
       CurrentJobQuery.Transaction.Active:=false;
   end;
end;

function rev_exists (id : string) : boolean;
begin
   with RcDataModule do begin
       CurrentJobRevQuery.Transaction.Active:=false;
       CurrentJobRevQuery.Transaction.Active:=true;
       CurrentJobRevQuery.ParamByName('COMPANY').AsString:=UserSession.Company;
       CurrentJobRevQuery.ParamByName('ID').AsString:=id;
       CurrentJobRevQuery.Active:=false;
       CurrentJobRevQuery.Active:=true;
       result:=not CurrentJobRevQuery.FieldByName('ID').IsNull;
       CurrentJobRevQuery.Active:=false;
       CurrentJobRevQuery.Transaction.Active:=false;
   end;
end;

procedure GotoJob (ID : String; name : string; rev : string; note : string);
var
   kind : integer;
begin
   UserSession.JobHdrID:=strtoint (ID);
   UserSession.JobName := name;
   RcDataModule.SaveValue ('EditJob',ID);
   with RcDataModule do begin
      Trans.Active:=false;
      CurrentJobQuery.ParamByName('COMPANY').AsString:=UserSession.Company;
      CurrentJobQuery.ParamByName('ID').AsInteger:=UserSession.JobHdrID;
      JobRevQuery.ParamByName('COMPANY').AsString:=UserSession.Company;
      JobRevQuery.ParamByName('JOBID').AsString:=ID;
   end;
   RcDataModule.SaveValue ('JobInstance','N');
   if rev='' then begin
      if job_exists (ID,kind) then begin
         TIWAppForm(WebApplication.ActiveForm).Release;
         if (kind=2) then begin  // Template instance
           RcDataModule.SaveValue ('JobInstance','Y');
           TFormEditTmpl.Create(WebApplication).Show;
         end else begin
           TFormJobRev.Create(WebApplication).Show;
         end;
      end;
   end else begin
      if rev_exists (rev) then EditJobRev (rev,note) else begin
         UserSession.mru_delete (ID,rev);
         TIWAppForm(WebApplication.ActiveForm).Release;
         TFormJobs.Create(WebApplication).Show;
      end;
   end;
end;

procedure TformJobs.NewTmplInstance (tmplid : string; tmplname : string);
var
  newinstanceid :  integer;
  newjobid : integer;
  newname : string;
begin
  newjobid:=0;
  try
    with RcDataModule.GrpTmplInsertQuery do begin
      newinstanceid:=RcDataModule.NextId;
      ParamByName ('ID').AsInteger:=newinstanceid;
      ParamByName ('COMPANY').AsString:=UserSession.Company;
      ParamByName ('GROUPPARAMHDRID').AsString:='0';
      ParamByName ('TEMPLATENAME').AsString:=tmplname;
      ParamByName ('JOBTEMPLATEID').AsString:=tmplid;
      ParamByName ('NOTE').AsString:=datetimetostr (now);
      ExecSQL;
      Transaction.Commit;
    end;
  except
    WebApplication.ShowMessage(userfooter1.silink_footer.GetTextOrDefault('DBError'));
    exit;
  end;

  // Automatically add template parameters
  try
    with RcDataModule do begin
      SQLQry.SQL.Clear;
      SQLQry.Transaction.Active:=false;
      SQLQry.Transaction.Active:=true;
      SQLQry.SQL.Add('select * from JOBPARAMS where COMPANY=:COMPANY and JOBID=:JOBID');
      SQLQry.ParamByName ('JOBID').AsString:=tmplid;
      SQLQry.ParamByName ('COMPANY').AsString:=UserSession.Company;
      SQLQry.Open;

      // Create job entry that links to groupparamtmpl just created.
      SQLEx.SQL.Clear;
      SQLEx.SQL.Add('insert into JOBS (ID,COMPANY,NAME,DESCRIPTION,TEMPLATE,REFERJOB,PARAMTMPLID,STATUS,JOBKIND) VALUES (:ID,:COMPANY,:NAME,:DESCRIPTION,:TEMPLATE,:JOB,:TMPLID,3,:JOBKIND)');
      newjobid:=rcdatamodule.nextID;
      SQLEx.ParamByName ('ID').AsString:=inttostr(newjobid);
      SQLEx.ParamByName ('TMPLID').AsInteger:=newinstanceid;
      SQLEx.ParamByName ('COMPANY').AsString:=UserSession.Company;
      newname:='New Instance of '+tmplname;
      SQLEx.ParamByName ('NAME').AsString:=newname;
      SQLEx.ParamByName ('JOB').AsString:=tmplid;
      SQLEx.ParamByName ('TEMPLATE').AsString:='2';
      SQLEx.ParamByName ('JOBKIND').AsString:='INSTANCE';
      SQLEx.ExecQuery;

      while not SQLQry.EOF do begin
        SQLEx.SQL.Clear;
        SQLEx.SQL.Add('insert into GROUPOBJHDR (ID,COMPANY,NAME,GUID,GROUPPARAMTMPLID,PARAMTYPE) VALUES (:ID,:COMPANY,:NAME,:GUID,:HDR,:PARAMTYPE)');
        SQLEx.ParamByName ('ID').AsString:=inttostr(rcdatamodule.nextID);
        SQLEx.ParamByName ('HDR').AsInteger:=newinstanceid;
        SQLEx.ParamByName ('COMPANY').AsString:=UserSession.Company;
        SQLEx.ParamByName ('NAME').AsString:=SQLQry.FieldByName('PARAMNAME').AsString;
        if SQLQry.FieldByName ('PARAMTYPE').AsString='Object' then
           SQLEx.ParamByName ('PARAMTYPE').AsString:='O'
        else
           SQLEx.ParamByName ('PARAMTYPE').AsString:='F';
        SQLEx.ParamByName ('GUID').AsString:=RcDataModule.make_guid;
        SQLEx.ExecQuery;
        SQLQry.Next;
      end;
      SQLEx.Transaction.Commit;
      SQLQry.Transaction.Active:=false;
    end;
  except
    WebApplication.ShowMessage(userfooter1.silink_footer.GetTextOrDefault('DBError'));
  end;
  EditJob (inttostr(newjobid),newname);
end;


procedure TformJobs.JobGridCellClick(ASender: TObject; const ARow,
  AColumn: Integer);
begin
   if AColumn=5 then begin
      NewTmplInstance (JobGrid.Cell[ARow,0].text,JobGrid.Cell[ARow,1].text);
   end else EditJob (JobGrid.Cell[ARow,0].text,JobGrid.Cell[ARow,1].text);
end;

end.
