unit Jobs;

interface

uses
  Classes, SysUtils, IWAppForm, IWApplication, IWColor, IWTypes, IWGrids,
  IWCompEdit, IWHTMLControls, IWExtCtrls, IWCompLabel, IWCompRectangle,
  IWVCLBaseControl, IWBaseControl, IWBaseHTMLControl, IWControl, IWSiLink,
  IWVCLBaseContainer, IWContainer, IWHTMLContainer, IWRegion, footer_user,
  Controls, Forms, promotitle, siComp, siLngLnk, IWCompButton, IWMain,
  IWHTML40Container, IWCompListbox, IWCompCheckbox;

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
    FindBtn: TIWButton;
    GuidEdit: TIWEdit;
    prodbox: TIWComboBox;
    disabledbox: TIWCheckBox;
    selall: TIWButton;
    disablebtn: TIWButton;
    procedure JobGridRenderCell(ACell: TIWGridCell; const ARow,
      AColumn: Integer);
    procedure IWAppFormCreate(Sender: TObject);
    procedure userfooter1CancelClick(Sender: TObject);
    procedure CreateBtnClick(Sender: TObject);
    procedure JobGridCellClick(ASender: TObject; const ARow,
      AColumn: Integer);
    procedure FindBtnClick(Sender: TObject);
    procedure selallClick(Sender: TObject);
    procedure disabledboxChange(Sender: TObject);
    procedure disablebtnClick(Sender: TObject);
  private
  public
    procedure RefreshGrid (selectall : boolean);
    procedure EditJob (ID : String; name : string);
    procedure NewTmplInstance(tmplid : string; tmplname : string);
  end;

procedure GotoJob (ID : String; name : string; rev : string; note : string);

implementation

uses DataMod, ServerController, IWInit, cfgTypes, roleform, Graphics,
     voucherForm, imagesform, jobrev, edittmplform, IBQuery, parse_utils, dialogs;

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
      if font.Color=clGreen then
        BGColor := clGreen
      else if Odd(ARow) then begin
        BGColor := clLtGray;
      end else begin
        BGColor := clNone;
      end;
      Font.Color := clBlack;
    end;
  end;
end;

procedure TformJobs.RefreshGrid (selectall : boolean);
var
  i : integer;
  istemplate : boolean;
  iq : TIBQuery;
  CheckBox: TIWCheckBox;
begin
  iq:=RcDataModule.JobAllQuery;
  disablebtn.caption:='Disable Selected';
  if disabledbox.checked then begin
     disablebtn.caption:='Enable Selected';
  end;

  with RcDataModule.JobAllQuery do begin
    Transaction.Active:=False;
    Transaction.Active:=True;
    Close;
    ParamByName('COMPANY').AsString:=UserSession.Company;
    ParamByName('ALL').AsString:='1';
    ParamByName('DISABLED').AsString:='0';
    if disabledbox.Checked then ParamByName('DISABLED').AsString:='1';
    Open;
    with JobGrid do begin
      RowCount:=1;
      Cell[0, 0].Text := SiLink.GetTextOrDefault('Grid.ID');
      Cell[0, 1].Text := SiLink.GetTextOrDefault('Grid.Name');
      Cell[0, 2].Text := SiLink.GetTextOrDefault('Grid.Note');
      Cell[0, 3].Text := SiLink.GetTextOrDefault('Grid.Desc');
      Cell[0, 4].Text := SiLink.GetTextOrDefault('Grid.Status');
      Cell[0, 5].Text := '';
      Cell[0, 6].Text := SiLink.GetTextOrDefault('Grid.Source');
      Cell[0, 7].Text := 'Selected';
      Cell[0, 8].Text := 'Refs';
      i:=1;
      while not Eof do begin
        RowCount:=RowCount+1;
        istemplate:=FieldByName('JOBKIND').AsString='TEMPLATE';
        if not istemplate then
           // If not a direct template, it may be a link to one
           // If the link has paramtmplid then it is a complete instance
           istemplate:=(FieldByName('REFERJOBKIND').AsString='TEMPLATE') and
                       (FieldByName('JOBKIND').AsString='LINK') and
                       (FieldByName('PARAMTMPLID').IsNull);
        with Cell[i, 0] do begin
          Text := FieldByName('ID').AsString;
          if FieldByName('JOBKIND').AsString='LINK' then begin
            Font.Style:=[fsItalic];
          end else Clickable:=true;
        end;
        with Cell[i, 1] do begin
          Text := htmlquote(FieldByName('NAME').AsString);
        end;
        with Cell[i, 2] do begin
          Text:='';
          if istemplate then Text:=SiLink.GetTextOrDefault('Grid.Template');
          if FieldByName('JOBKIND').AsString='LINK' then
             Text:=SiLink.GetTextOrDefault('Grid.Link')+' '+Text;
        end;
        with Cell[i, 5] do begin
          if istemplate then begin
            Text:=SiLink.GetTextOrDefault('Grid.NewInstance');
            Clickable:=true;
          end;
        end;
        with Cell[i, 6] do begin
          if FieldByName('JOBKIND').AsString='LINK' then begin
            Text:=htmlquote(SiLink.GetTextOrDefault('Grid.Import')+': '+FieldByName('REFERCONAME').AsString+' ['+FieldByName('REFERJOBNAME').AsString+']');
          end else if FieldByName('JOBKIND').AsString='INSTANCE' then begin
            if fieldbyname ('REFERJOBCO').AsString<>UserSession.Company then begin
                Text:=htmlquote(SiLink.GetTextOrDefault('Grid.Instance')+
                  ' : '+FieldByName('REFERCONAME').AsString+' ['+FieldByName('REFERJOBNAME').AsString+']');
            end else
                Text:=htmlquote(SiLink.GetTextOrDefault('Grid.Instance')+
                  ' : ['+FieldByName('REFERJOBNAME').AsString+']');
          end else
            Text:=SiLink.GetTextOrDefault('Grid.Original');
        end;
        with Cell[i, 3] do begin
          Text := htmlquote(ansistring(FieldByName('DESCRIPTION').AsString));
        end;
        with Cell[i, 8] do begin
          Text := ' '+FieldByName('Refs').AsString;
        end;
        with Cell[i, 4] do begin
          try
            Text := '';
            if not FieldByName('STATUS').IsNull then Text:=JobStatusNames[jobstates(FieldByName('STATUS').AsInteger)];
            font.Color:=clBlack;
            if (FieldByName('TEST_VER').AsString=FieldByName('PROD_VER').AsString) and
               (FieldByName('JOBKIND').AsString<>'LINK') and
               (FieldByName('JOBKIND').AsString<>'INSTANCE') then
                 font.Color:=clGreen;
          except
          end;
        end;
        with Cell[i, 7] do begin
          if (FieldByName('Refs').asinteger=0) and not FieldByName('PARAMTMPLID').IsNull then
          try
              control:=TIWCheckBox.create(self);
              with control as TIWCheckbox do begin
                checked:=selectall;
                caption:='';
                Width := 10;
                //onclick:=self.authclick;
                tag:=FieldByName('ID').asinteger;
              end;
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

procedure TformJobs.selallClick(Sender: TObject);
begin
  refreshgrid(true);
end;

procedure TformJobs.IWAppFormCreate(Sender: TObject);
begin
   Self.langlink.InitForm;
   RefreshGrid(false);
end;

procedure TformJobs.disablebtnClick(Sender: TObject);
var
  i : integer;
  found : boolean;
begin
  for i:=1 to JobGrid.RowCount-1 do begin
    if JobGrid.Cell[i,7].Control is TIWCheckBox then begin
      if (JobGrid.Cell[i,7].Control as TIWCheckBox).checked then begin
        if not found then begin
          with RcDataModule.SQLEx do begin
            Transaction.Active:=False;
            Transaction.Active:=True;
            Close;
            SQL.Clear;
            SQL.Add ('update JOBS set DISABLEDAT=:da where (COMPANY=:COMPANY) and');
            SQL.Add ('ID in ('+inttostr((JobGrid.Cell[i,7].Control as TIWCheckBox).Tag));
          end;
          found:=true;
        end else begin
          with RcDataModule.SQLEx do begin
            SQL.Add(','+inttostr((JobGrid.Cell[i,7].Control as TIWCheckBox).Tag));
          end;
        end;
      end;
    end;
  end;
  if found then begin
     with RcDataModule.SQLEx do begin
       SQL.Add(')');
       FormIWMain.Log (SQL.text);
       ParamByName('COMPANY').AsString:=UserSession.Company;
       ParamByName('da').AsDateTime:=now;
       if disabledbox.checked then ParamByName('da').clear;

       ExecQuery;
       Transaction.Commit;
     end;
     refreshgrid(disabledbox.Checked);
  end;
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

procedure TformJobs.disabledboxChange(Sender: TObject);
begin
  refreshgrid(false);
end;

procedure TformJobs.EditJob (ID : String; name : string);
begin
   GotoJob (ID,name,'','');
end;

procedure TformJobs.FindBtnClick(Sender: TObject);
var
  jobid : integer;
  jobname, rev, note : string;
  tq : TIBQuery;
begin
  tq:=RcDataModule.SQLQry;
  with tq do begin
     SQL.Clear;
     SQL.Add('SELECT i.COMPANY, i.ID, jv.NOTE, jv.ID as jobversion, j.name as jobname, j.id as jobid,'
             +' i.NAME, i.GUID, i.DESCRIPTION, i.TEMPLATE, j.test_ver, j.prod_ver '
             +' FROM IMAGEHDR i'
             +' left join JOBVERS jv on jv.id = i.JOBID'
             +' left join jobs j on j.id = jv.JOBID'
             +' where i.GUID like :guid'
             +' and i.company=:company');
    try
      //prepare;
      ParamByName('COMPANY').AsString:=UserSession.Company;
      ParamByName('GUID').AsString:=GuidEdit.text;
      Transaction.StartTransaction;
      try
        Open;
        while not eof do begin
          if prodbox.ItemIndex=0 then
             rev:=FieldByName ('test_ver').AsString
          else
             rev:=FieldByName ('prod_ver').AsString;
          jobid:=FieldByName ('JobID').AsInteger;
          jobname:=FieldByName ('jobname').AsString;
          note:=FieldByName ('Note').AsString;
          if rev=FieldByName ('jobversion').AsString then begin
             Transaction.active:=false;
             //RcDataModule.VoucherQuery.ParamByName('JOBID').AsInteger:=jobid;
             GotoJob (IntToStr(jobid),jobname,rev,note);
             exit;
          end;
          next;
        end;
      except
      end;
      close;
      Transaction.active:=false;
    except
      Transaction.active:=false;
    end;

    SQL.Clear;
    SQL.Add('select GROUPPARAMTMPL.*, GROUPOBJHDR.ID as OBJID,');
    SQL.Add('GROUPOBJHDR.GUID as GUID, GROUPOBJHDR.PARAMTYPE as PTYPE,');
    SQL.Add('JOBS.ID as jobid,');
    SQL.Add('GROUPOBJHDR.NAME from GROUPPARAMTMPL');
    SQL.Add('left join GROUPOBJHDR on GROUPOBJHDR.GROUPPARAMTMPLID=GROUPPARAMTMPL.ID');
    SQL.Add('left join JOBS on JOBS.PARAMTMPLID=GROUPPARAMTMPL.ID');
    SQL.Add('where GROUPPARAMTMPL.COMPANY=:COMPANY');
    SQL.Add('and groupobjhdr.guid like :guid and GROUPOBJHDR.PARAMTYPE=''O''');

    try
      //prepare;
      ParamByName('COMPANY').AsString:=UserSession.Company;
      ParamByName('GUID').AsString:=GuidEdit.text;
      Transaction.StartTransaction;
      try
        Open;
        if not eof then begin
          jobid:=FieldByName ('JobID').AsInteger;
          GotoJob (IntToStr(jobid),jobname,'','');
          exit;
        end;
      except
      end;
      close;
      Transaction.active:=false;
    except
      Transaction.active:=false;
    end;
  end;
  WebApplication.ShowMessage(silink.GetTextOrDefault('NotFound'), smAlert);
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
   RcDataModule.SaveValue ('JobInstance','JOB');
   if rev='' then begin
      if job_exists (ID,kind) then begin
         TIWAppForm(WebApplication.ActiveForm).Release;
         if (kind=2) then begin  // Template instance
           RcDataModule.SaveValue ('JobInstance','INSTANCE');
           TFormEditTmpl.Create(WebApplication).Show;
         end else if (kind=3) then begin  // Linked job
           RcDataModule.SaveValue ('JobInstance','LINK');
           TFormEditTmpl.Create(WebApplication).Show;
         end else begin
           if kind=1 then begin
              RcDataModule.SaveValue ('JobInstance','TEMPLATE');
           end;
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

function findconstraint (fieldname : string; constraint : string) : string;
var
  param : string;
  value : string;
begin
  result:='';
  param:=uppercase(copy (constraint,1,pos('=',constraint)-1));
  value:=copy (constraint,length(param)+2,999);
  if param=fieldname then begin
     result:=dequotedstr(value);
  end;
end;

function getdefault (s : string) : string;
var
  sl : TStringlist;
  i : integer;
begin
  sl:=TStringlist.Create;
  result:='';
  try
    GetCommaFields(sl, s);
    for I := 0 to sl.Count-1 do begin
      result:=findConstraint ('DEFAULT',sl[i]);
      if result<>'' then exit;
    end;
  finally
    sl.Free;
  end;
end;

procedure TformJobs.NewTmplInstance (tmplid : string; tmplname : string);
var
  newinstanceid :  integer;
  newjobid : integer;
  newname : string;
  kind : string;
  tmplco : string;
  tmplrealid : string;
  defaultvalue : string;
  valueid : integer;
  paramconstraints : string;
  headerid : string;
  imageid : integer;
begin
  tmplco:=usersession.company;
  tmplrealid:=tmplid;
  with RcDataModule.SQLQry do begin
    SQL.Clear;
    SQL.Add('select * from JOBS');
    SQL.Add('where ID=:ID and COMPANY=:COMPANY');
    ParamByName('COMPANY').AsString:=UserSession.Company;
    ParamByName('ID').AsString:=tmplid;
    Open;
    if not eof then begin
      kind:=FieldByName ('JobKind').AsString;
      if kind='LINK' then begin
         tmplrealid:=FieldByName ('REFERJOB').AsString;
         tmplco:=FieldByName ('REFERJOBCO').AsString;
      end;
    end;
    close;
  end;

  // Tmplrealid and tmplco now point to the real job and source co.

  newjobid:=0;
  try
    with RcDataModule.GrpTmplInsertQuery do begin
      newinstanceid:=RcDataModule.NextId;
      ParamByName ('ID').AsInteger:=newinstanceid;
      ParamByName ('COMPANY').AsString:=UserSession.Company;
      ParamByName ('GROUPPARAMHDRID').AsString:='0';
      ParamByName ('TEMPLATENAME').AsString:=tmplname;
      ParamByName ('JOBTEMPLATEID').AsString:=tmplrealid;
      ParamByName ('JOBTEMPLATECO').AsString:=tmplco;
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
      SQLQry.ParamByName ('JOBID').AsString:=tmplrealid;
      SQLQry.ParamByName ('COMPANY').AsString:=tmplco;
      SQLQry.Open;

      // Create job entry that links to groupparamtmpl just created.
      SQLEx.SQL.Clear;
      SQLEx.SQL.Add('insert into JOBS (ID,COMPANY,NAME,DESCRIPTION,TEMPLATE,REFERJOB,REFERJOBCO,PARAMTMPLID,STATUS,JOBKIND) VALUES (:ID,:COMPANY,:NAME,:DESCRIPTION,:TEMPLATE,:JOB,:JOBCO,:TMPLID,3,:JOBKIND)');
      newjobid:=rcdatamodule.nextID;
      SQLEx.ParamByName ('ID').AsString:=inttostr(newjobid);
      SQLEx.ParamByName ('TMPLID').AsInteger:=newinstanceid;
      SQLEx.ParamByName ('COMPANY').AsString:=UserSession.Company;
      newname:='<'+tmplname+'>';
      SQLEx.ParamByName ('NAME').AsString:=newname;
      SQLEx.ParamByName ('JOB').AsString:=tmplrealid;
      SQLEx.ParamByName ('JOBCO').AsString:=tmplco;
      SQLEx.ParamByName ('TEMPLATE').AsString:='2';
      SQLEx.ParamByName ('JOBKIND').AsString:='INSTANCE';
      SQLEx.ExecQuery;

      while not SQLQry.EOF do begin
        SQLEx.SQL.Clear;
        SQLEx.SQL.Add('insert into GROUPOBJHDR (ID,COMPANY,NAME,GUID,GROUPPARAMTMPLID,PARAMTYPE) VALUES (:ID,:COMPANY,:NAME,:GUID,:HDR,:PARAMTYPE)');
        headerid:=inttostr(rcdatamodule.nextID);
        SQLEx.ParamByName ('ID').AsString:=headerid;
        SQLEx.ParamByName ('HDR').AsInteger:=newinstanceid;
        SQLEx.ParamByName ('COMPANY').AsString:=UserSession.Company;
        SQLEx.ParamByName ('NAME').AsString:=SQLQry.FieldByName('PARAMNAME').AsString;
        if (SQLQry.FieldByName ('PARAMTYPE').AsString='Object') or
           (SQLQry.FieldByName ('PARAMTYPE').AsString='Image') or
           (SQLQry.FieldByName ('PARAMTYPE').AsString='Rendered Image') or
           (SQLQry.FieldByName ('PARAMTYPE').AsString='Text Block')
           then begin
           SQLEx.ParamByName ('PARAMTYPE').AsString:='O';
           SQLEx.ParamByName ('GUID').AsString:=RcDataModule.make_guid;
           SQLEx.ExecQuery;
        end else begin
           SQLEx.ParamByName ('PARAMTYPE').AsString:='F';
           SQLEx.ExecQuery;
           paramconstraints:=SQLQry.FieldByName ('FIELDCONSTRAINT').AsString;
           defaultvalue:=getdefault (paramconstraints);
           if defaultvalue<>'' then begin
             valueId:=nextID;
             SQLEx2.SQL.Clear;
             SQLEx2.SQL.Add('insert into GROUPPARAMOBJ (ID,COMPANY,PARAMOBJID,CREATEDBY,CREATEDTIME,DATAFIELD) VALUES (:ID,:COMPANY,:HDR,:CREATEDBY,:CREATEDTIME,:DATAFIELD)');
             SQLEx2.ParamByName ('ID').AsString:=inttostr(ValueID);
             SQLEx2.ParamByName ('HDR').AsString:=headerid;
             SQLEx2.ParamByName ('COMPANY').AsString:=UserSession.Company;
             SQLEx2.ParamByName ('CREATEDBY').AsString:=UserSession.User;
             SQLEx2.ParamByName ('CREATEDTIME').AsDateTime:=now;
             SQLEx2.ParamByName ('DATAFIELD').AsString:=defaultvalue;
             SQLEx2.ExecQuery;
             SQLEx2.SQL.Clear;
             SQLEx2.SQL.Add('update GROUPOBJHDR set CURRENTID=:CURRENT where ID=:ID and COMPANY=:COMPANY');
             SQLEx2.ParamByName ('CURRENT').AsString:=inttostr(ValueID);
             SQLEx2.ParamByName ('ID').AsString:=headerid;
             SQLEx2.ParamByName ('COMPANY').AsString:=UserSession.Company;
             SQLEx2.ExecQuery;
           end;
        end;
        SQLQry.Next;
      end;

      // Add an instance field automatically
      SQLEx.SQL.Clear;
      SQLEx.SQL.Add('insert into GROUPOBJHDR (ID,COMPANY,NAME,GUID,GROUPPARAMTMPLID,PARAMTYPE) VALUES (:ID,:COMPANY,:NAME,:GUID,:HDR,:PARAMTYPE)');
      headerid:=inttostr(rcdatamodule.nextID);
      SQLEx.ParamByName ('ID').AsString:=headerid;
      SQLEx.ParamByName ('HDR').AsInteger:=newinstanceid;
      SQLEx.ParamByName ('COMPANY').AsString:=UserSession.Company;
      SQLEx.ParamByName ('NAME').AsString:='Instance';
      SQLEx.ParamByName ('PARAMTYPE').AsString:='F';
      SQLEx.ExecQuery;
      defaultvalue:=inttostr(newjobid);
      if defaultvalue<>'' then begin
       valueId:=nextID;
       SQLEx2.SQL.Clear;
       SQLEx2.SQL.Add('insert into GROUPPARAMOBJ (ID,COMPANY,PARAMOBJID,CREATEDBY,CREATEDTIME,DATAFIELD) VALUES (:ID,:COMPANY,:HDR,:CREATEDBY,:CREATEDTIME,:DATAFIELD)');
       SQLEx2.ParamByName ('ID').AsString:=inttostr(ValueID);
       SQLEx2.ParamByName ('HDR').AsString:=headerid;
       SQLEx2.ParamByName ('COMPANY').AsString:=UserSession.Company;
       SQLEx2.ParamByName ('CREATEDBY').AsString:=UserSession.User;
       SQLEx2.ParamByName ('CREATEDTIME').AsDateTime:=now;
       SQLEx2.ParamByName ('DATAFIELD').AsString:=defaultvalue;
       SQLEx2.ExecQuery;
       SQLEx2.SQL.Clear;
       SQLEx2.SQL.Add('update GROUPOBJHDR set CURRENTID=:CURRENT where ID=:ID and COMPANY=:COMPANY');
       SQLEx2.ParamByName ('CURRENT').AsString:=inttostr(ValueID);
       SQLEx2.ParamByName ('ID').AsString:=headerid;
       SQLEx2.ParamByName ('COMPANY').AsString:=UserSession.Company;
       SQLEx2.ExecQuery;
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
