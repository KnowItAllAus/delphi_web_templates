unit jobrev;

interface

uses
  Classes, SysUtils, IWAppForm, IWApplication, IWColor, IWTypes, siComp,
  siLngLnk, IWCompButton, IWGrids, IWCompLabel, IWCompRectangle,
  IWVCLBaseControl, IWBaseControl, IWBaseHTMLControl, IWControl,
  IWHTMLControls, IWSiLink, IWVCLBaseContainer, IWContainer,
  IWHTMLContainer, IWRegion, footer_user, Controls, Forms, promotitle,
  IWCompCheckbox, IWCompMemo, IWCompEdit, IWCompListbox, IWHTML40Container,
  Generics.Collections;

type
  ParamRec = record
    name : string;
    constraint : string;
    ftype : string;
    note : string;
    id : string;
  end;

  TFormJobRev = class(TIWAppForm)
    userfooter1: Tuserfooter;
    IWRegion1: TIWRegion;
    langlink: TIWSiLink;
    BodyRegion: TIWRegion;
    IWRectangle2: TIWRectangle;
    IWRectangle1: TIWRectangle;
    JobsLabel: TIWLabel;
    JobGrid: TIWGrid;
    CreateBtn: TIWButton;
    silink: TsiLangLinked;
    JobNameLbl: TIWLabel;
    PromoFrameTitle1: TPromoFrameTitle;
    IWLabel2: TIWLabel;
    IWLabel3: TIWLabel;
    StatEdit: TIWEdit;
    DescEdit: TIWEdit;
    EditJobBtn: TIWButton;
    NoteEdit: TIWEdit;
    NoteLabel: TIWLabel;
    templatelbl: TIWLabel;
    ParamGrid: TIWGrid;
    NameEdit: TIWEdit;
    ParamSaveBtn: TIWButton;
    TypeCombo: TIWComboBox;
    TypeLbl: TIWLabel;
    IWLabel1: TIWLabel;
    DomainEdit: TIWEdit;
    ConstraintEdit: TIWEdit;
    ConstraintLbl: TIWLabel;
    NameLbl: TIWLabel;
    ParamDelBtn: TIWButton;
    ParamCancelBtn: TIWButton;
    paramnotelbl: TIWLabel;
    paramnoteedit: TIWEdit;
    CleanBtn: TIWButton;
    IWCheckBox1: TIWCheckBox;
    procedure IWAppFormCreate(Sender: TObject);
    procedure JobGridRenderCell(ACell: TIWGridCell; const ARow,
      AColumn: Integer);
    procedure JobGridCellClick(ASender: TObject; const ARow,
      AColumn: Integer);
    procedure EditJobBtnClick(Sender: TObject);
    procedure userfooter1CancelClick(Sender: TObject);
    procedure CreateBtnClick(Sender: TObject);
    procedure ParamSaveBtnClick(Sender: TObject);
    procedure ParamGridRenderCell(ACell: TIWGridCell; const ARow,
      AColumn: Integer);
    procedure ParamGridCellClick(ASender: TObject; const ARow,
      AColumn: Integer);
    procedure IWAppFormDestroy(Sender: TObject);
    procedure ParamDelBtnClick(Sender: TObject);
    procedure ParamCancelBtnClick(Sender: TObject);
    procedure CleanBtnClick(Sender: TObject);
  private
    currentparamindex : integer;
    prod,test,last : string;
    paramlist : TList<paramrec>;
    procedure RefreshParamGrid;
    procedure AuthClick(Sender: TObject);
  public
    procedure RefreshGrid;
  end;

procedure EditJobRev (ID : String; note : string);

implementation

{$R *.dfm}

uses Graphics, datamod, ServerController, voucherform, jobdtl, Jobs, CfgTypes, IWInit, dialogs;

procedure TFormJobRev.AuthClick(Sender: TObject);
begin
  with RcDataModule.SQLEx do begin
    Transaction.Active:=False;
    Transaction.Active:=True;
    Close;
    SQL.Clear;
    SQL.Add ('delete from JOBVERS where COMPANY=:COMPANY and JOBID=:JOBID and (ID<>:PROD) and (ID<>:TEST) and (ID<>:LAST)');
    ParamByName('COMPANY').AsString:=UserSession.Company;
    ParamByName('JOBID').AsInteger:=UserSession.JobHdrID;
    ParamByName('LAST').AsString:=last;
    ParamByName('PROD').AsString:=prod;
    ParamByName('TEST').AsString:=test;
    ExecQuery;
    Transaction.Commit;
  end;
  (*if (not AuthBox.Checked) and ProdBox.Checked then begin
    with RcDataModule.JobProdNullQry do begin
      Transaction.Active:=true;
      ParamByName ('COMPANY').AsString:=UserSession.Company;
      ParamByName ('ID').AsInteger:=UserSession.JobHdrID;
      ParamByName ('LASTCHANGED').AsDateTime:=Now;
      ExecSQL;
      Transaction.commit;
    end;
  end;
  with RcDataModule.AuthJobQuery do begin
    Transaction.Active:=true;
    ParamByName ('COMPANY').AsString:=TUserSession(WebApplication.Data).Company;
    ParamByName ('ID').AsInteger:=UserSession.JobRevID;
    ParamByName ('AUTH').AsInteger:=ord (AuthBox.Checked);
    ParamByName ('AUTHBY').AsString:=UserSession.User;
    ParamByName ('AUTHAT').AsDateTime:=Now;
    ExecSQL;
    Transaction.commit;
  end;
  RefreshPage;*)
end;

procedure TFormJobRev.JobGridRenderCell(ACell: TIWGridCell; const ARow,
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
      if (AColumn=7) and (ACell.text<>'') then begin
        BGColor := clWhite;
      end else if JobGrid.Cell[ARow,6].text<>'' then begin
        BGColor := TColor($60C060);
      end else if Odd(ARow) then begin
        BGColor := clLtGray;
      end else begin
        BGColor := clNone;
      end;
    end;
  end;
end;

procedure TFormJobRev.RefreshParamGrid;

var
  i : integer;
  pr : paramrec;
begin
  nameedit.text:='';
  typecombo.itemindex:=-1;
  constraintedit.text:='';
  paramnoteedit.text:='';
  nameedit.enabled:=true;
  nameedit.color:=$ffffff;
  typecombo.enabled:=true;
  currentparamindex:=-1;
  paramdelbtn.visible:=false;
  paramcancelbtn.visible:=false;
  paramsavebtn.caption:='Add';
  paramlist.clear;

  with RcDataModule.SQLQry do begin
    Transaction.Active:=False;
    Transaction.Active:=True;
    Close;
    SQL.Clear;
    SQL.Add ('select * from JOBPARAMS where COMPANY=:COMPANY and JOBID=:JOBID');
    ParamByName('COMPANY').AsString:=UserSession.Company;
    ParamByName('JOBID').AsInteger:=UserSession.JobHdrID;
    Open;
    with ParamGrid do begin
      RowCount:=1;
      if (UserSession.privilege and PRIV_LIVE)=0 then ParamGrid.ColumnCount:=4 else ParamGrid.ColumnCount:=5;
      Cell[0, 0].Text := SiLink.GetTextOrDefault('');
      Cell[0, 1].Text := SiLink.GetTextOrDefault('Grid.Parameter');
      Cell[0, 2].Text := SiLink.GetTextOrDefault('Grid.Type');
      Cell[0, 3].Text := SiLink.GetTextOrDefault('Grid.Constraints');
      Cell[0, 4].Text := SiLink.GetTextOrDefault('Grid.Note');
      if (UserSession.privilege and PRIV_LIVE)<>0 then Cell[0, 0].Text := '';
      i:=1;
      while not Eof do begin
        RowCount:=RowCount+1;
        with Cell[i, 1] do begin
          Text := htmlquote(FieldByName('PARAMNAME').AsString);
          pr.name:=FieldByName('PARAMNAME').AsString;
          pr.id:=FieldByName('ID').AsString;
        end;
        with Cell[i, 2] do begin
          try
            Text:=TypeCombo.Items[ord(strtoparamtype(FieldByName('PARAMTYPE').AsString))];
            pr.ftype:=FieldByName('PARAMTYPE').AsString;
          except
          end;
        end;
        with Cell[i, 3] do begin
          try
            Text := htmlquote(FieldByName('FIELDCONSTRAINT').AsString);
            pr.constraint:=FieldByName('FIELDCONSTRAINT').AsString;
          except
          end;
        end;
        with Cell[i, 4] do begin
          try
            Text := htmlquote(FieldByName('NOTE').AsString);
            pr.note:=FieldByName('NOTE').AsString;
          except
          end;
        end;
        if (UserSession.privilege and PRIV_LIVE)<>0 then begin
           with Cell[i, 0] do begin
             Text := SiLink.GetTextOrDefault('Grid.Edit');
             Clickable:=true;
           end;
        end;
        inc (i);
        Next;
        paramlist.Add(pr);
      end;
    end;
    Close;
    Transaction.Active:=False;
  end;
end;

procedure TFormJobRev.RefreshGrid;
var
  i : integer;
  r : integer;
begin
  last:='';
  for r:=1 to Paramgrid.RowCount-1 do
    Paramgrid.Cell[r,0].Tag.Free;

  with RcDataModule.CurrentJobQuery do begin
    Transaction.Active:=False;
    Open;
    Prod:=FieldByName ('PROD_VER').AsString;
    Test:=FieldByName ('TEST_VER').AsString;
    Close;
  end;

  with RcDataModule.JobRevQuery do begin
    Transaction.Active:=False;
    Transaction.Active:=True;
    Close;
    ParamByName('COMPANY').AsString:=UserSession.Company;
    Open;
    with JobGrid do begin
      RowCount:=1;
      Cell[0, 0].Text := SiLink.GetTextOrDefault('Grid.ID');
      Cell[0, 1].Text := ''; //SiLink.GetTextOrDefault('Grid.Auth');
      Cell[0, 2].Text := SiLink.GetTextOrDefault('Grid.Note');
      Cell[0, 3].Text := SiLink.GetTextOrDefault('Grid.CreatedBy');
      Cell[0, 4].Text := SiLink.GetTextOrDefault('Grid.CreatedAt');
      Cell[0, 5].Text := SiLink.GetTextOrDefault('Grid.AuthBy');
      Cell[0, 6].Text := SiLink.GetTextOrDefault('Grid.AuthAt');
      Cell[0, 7].Text := SiLink.GetTextOrDefault('Grid.Config');
      Cell[0, 8].Text := '';
      i:=1;
      while not Eof do begin
        RowCount:=RowCount+1;
        with Cell[i, 0] do begin
          Text := FieldByName('ID').AsString;
          Clickable:=true;
          self.last:=text;
        end;
        with Cell[i, 1] do begin
          try
            Text := '';
            if (Cell[i,0].text=test) or (Cell[i,0].Text=prod) or ((UserSession.privilege and PRIV_LIVE)=0) then begin
              Text:=text+'---';
            end else begin
              control:=TIWCheckBox.create(self);
              with TIWCheckBox(Control) do begin
                checked:=false;
                caption:='';
                Width := 10;
                //onclick:=self.authclick;
                tag:=FieldByName('ID').asinteger;
              end;
            end;
          except
          end;
        end;
        with Cell[i, 2] do begin
          Text := utf8decode(FieldByName('NOTE').AsString);
        end;
        with Cell[i, 3] do begin
          Text := FieldByName('CREATEDBY').AsString;
        end;
        with Cell[i, 4] do begin
          Text := FieldByName('CREATEDAT').AsString;
        end;
        with Cell[i, 5] do begin
          Text := FieldByName('AUTHBY').AsString;
          if FieldByName('AUTH').AsString<>'1' then text:='';
        end;
        with Cell[i, 6] do begin
          Text := FieldByName('AUTHAT').AsString;
          if FieldByName('AUTH').AsString<>'1' then text:='';
        end;
        with Cell[i, 7] do begin
          Text:='';
          if Cell[i,0].text=test then Text:=Text+SiLink.GetTextOrDefault('Grid.Test');
          if Cell[i,0].Text=prod then begin
            if Text<>'' then Text:=Text+' + ';
            Text:=Text+SiLink.GetTextOrDefault('Grid.Prod');
          end;
        end;
        with Cell[i, 8] do begin
          Text := SiLink.GetTextOrDefault('Grid.Copy');
          clickable:=true;
        end;
        inc (i);
        Next;
      end;
    end;
    Close;
    Transaction.Active:=False;
  end;
  RefreshParamGrid;
end;

procedure TFormJobRev.IWAppFormCreate(Sender: TObject);
begin
   Self.langlink.InitForm;
   JobNameLbl.Caption:=JobNameLbl.Caption+' '+Usersession.JobName;
   paramlist:=TList<paramrec>.create;
   RefreshGrid;

   with RcDataModule.CurrentJobQuery do begin
     Transaction.Active:=true;
     Open;
     try
       StatEdit.Text:=JobStatusNames[jobstates(FieldByName ('Status').AsInteger)];
     except
       StatEdit.Text:='- - - - -';
     end;
     DescEdit.Caption:=FieldByName ('Description').AsString;
     DomainEdit.Caption:=FieldByName ('JobDomain').AsString;
     if FieldByName ('Template').AsString='1' then begin
        templatelbl.visible:=true;
        ParamGrid.Visible:=true;
        ParamSaveBtn.Visible:=true;
        TypeLbl.Visible:=true;
        NameLbl.Visible:=true;
        NameEdit.Visible:=true;
        TypeCombo.Visible:=true;
        constraintedit.visible:=true;
        paramnoteedit.visible:=true;
        constraintlbl.visible:=true;
        paramnotelbl.visible:=true;
        //lengthedit.Visible:=true;
        //heightedit.Visible:=true;
        //lenlabel.Visible:=true;
        //heightlabel.Visible:=true;
     end;
     Transaction.Active:=false;
   end;
   if (UserSession.privilege and PRIV_LIVE)=0 then begin
      TypeCombo.Visible:=false;
      ParamSaveBtn.Visible:=false;
      TypeLbl.Visible:=false;
      NameLbl.Visible:=false;
      NameEdit.Visible:=false;
      constraintedit.visible:=false;
      paramnoteedit.visible:=false;
      constraintlbl.visible:=false;
      paramnotelbl.visible:=false;
      EditJobBtn.Visible:=false;
      Cleanbtn.Visible:=false;
   end;
end;

procedure EditJobRev (ID : String; note : string);
begin
   with RcDataModule do begin
      Trans.Active:=false;
      UserSession.JobRevID:=strtoint (ID);
      UserSession.JobRevNote:=note;
      VoucherQuery.ParamByName('JOBID').AsString:=ID;
   end;
   TIWAppForm(WebApplication.ActiveForm).Release;
   UserSession.mru_add(inttostr(UserSession.JobHdrID),UserSession.JobName,inttostr(UserSession.JobRevID),note);
   TFormVoucher.Create(WebApplication).Show;
end;

procedure TformJobRev.JobGridCellClick(ASender: TObject; const ARow,
  AColumn: Integer);
begin
   if AColumn=0 then
      EditJobRev (htmlunquote(JobGrid.Cell[ARow,0].text),JobGrid.Cell[ARow,2].text)
   else with RcDataModule do begin
      Trans.Active:=False;
      JobRevCopy.ParamByName('COMPANY').AsString:=UserSession.Company;
      JobRevCopy.ParamByName('JOBREV').AsString:=JobGrid.Cell[ARow,0].text;
      JobRevCopy.ParamByName('COPY_BY').AsString:=UserSession.User;
      JobRevCopy.ParamByName('COPY_AT').AsDateTime:=now;
      Trans.Active:=True;
      JobRevCopy.ExecSQL;
      Trans.Commit;
      RefreshGrid;
   end;
end;

procedure TFormJobRev.EditJobBtnClick(Sender: TObject);
begin
   TIWAppForm(WebApplication.ActiveForm).Release;
   TFormJobDtl.Create(WebApplication).Show;
end;

procedure TFormJobRev.userfooter1CancelClick(Sender: TObject);
begin
    TIWAppForm(WebApplication.ActiveForm).Release;
    TFormJobs.Create (WebApplication).show;
end;

procedure TFormJobRev.CleanBtnClick(Sender: TObject);
var
  i : integer;
begin
  for i:=1 to JobGrid.RowCount-1 do begin
    if JobGrid.Cell[i,1].Control is TIWCheckBox then begin
      if (JobGrid.Cell[i,1].Control as TIWCheckBox).checked then begin
        with RcDataModule.SQLEx do begin
          Transaction.Active:=False;
          Transaction.Active:=True;
          Close;
          SQL.Clear;
          SQL.Add ('delete from JOBVERS where COMPANY=:COMPANY and JOBID=:JOBID and (ID=:ID)');
          ParamByName('COMPANY').AsString:=UserSession.Company;
          ParamByName('JOBID').AsInteger:=UserSession.JobHdrID;
          ParamByName('ID').AsInteger:=(JobGrid.Cell[i,1].Control as TIWCheckBox).Tag;
          ExecQuery;
          Transaction.Commit;
        end;
      end;
    end;
  end;
  refreshgrid;
end;

procedure TFormJobRev.CreateBtnClick(Sender: TObject);
begin
  with RcDataModule.AddJobRevQuery do begin
    ParamByName ('COMPANY').AsString:=TUserSession(WebApplication.Data).Company;
    ParamByName ('JOBID').AsInteger:=UserSession.JobHdrID;
    ParamByName ('ID').AsInteger:=RcDataModule.NextID;
    ParamByName ('NOTE').AsString:=NoteEdit.Text;
    ParamByName ('CREATEDBY').AsString:=UserSession.User;
    ParamByName ('CREATEDAT').AsDateTime:=now;
    ExecSQL;
    RcDataModule.Trans.Commit;
    RefreshGrid;
  end;
end;

procedure TFormJobRev.ParamCancelBtnClick(Sender: TObject);
begin
  RefreshParamGrid;
end;

procedure TFormJobRev.ParamDelBtnClick(Sender: TObject);
begin
  try
    with RcDataModule.SQLQry do begin
      Transaction.Active:=False;
      Transaction.Active:=True;
      Close;
      SQL.Clear;
      SQL.Add ('delete from JOBPARAMS where COMPANY=:COMPANY and ID=:ID');
      ParamByName('COMPANY').AsString:=UserSession.Company;
      ParamByName('ID').AsString:=paramlist[currentparamindex].id;
      ExecSQL;
      Transaction.Commit;
    end;
  except
  end;
  RefreshParamGrid;
end;

procedure TFormJobRev.ParamSaveBtnClick(Sender: TObject);
var
  x : integer;
  j : integer;
  co : string;
begin
  if currentparamindex>=0 then begin

    if NameEdit.Text<>'' then try
      with RcDataModule.SQLQry do begin
        Transaction.Active:=False;
        Transaction.Active:=True;
        Close;
        SQL.Clear;
        SQL.Add ('update JOBPARAMS set NOTE=:NOTE, PARAMTYPE=:TYPE, FIELDCONSTRAINT=:FIELDCONSTRAINT where'
        +' COMPANY=:COMPANY and JOBID=:JOBID and ID=:ID');
        co:=UserSession.Company;
        ParamByName('COMPANY').AsString:=co;
        j:=UserSession.JobHdrID;
        ParamByName('JOBID').AsInteger:=j;
        ParamByName('ID').AsString:=paramlist[currentparamindex].id;
        ParamByName('NOTE').AsString:=paramnoteedit.text;
        ParamByName('TYPE').AsString:=ParamNames[paramtypes(TypeCombo.ItemIndex)];
        ParamByName('FIELDCONSTRAINT').AsString:=ConstraintEdit.Text;
        ExecSQL;
        Transaction.Commit;
      end;
    except
{      on e : exception do
        webapplication.showmessage(e.message); }
    end;

  end else begin
    if typecombo.ItemIndex=-1 then begin
       WebApplication.ShowMessage('Error : No parameter type', smAlert);
       exit;
    end;

    if NameEdit.Text<>'' then try
      with RcDataModule.SQLQry do begin
        Transaction.Active:=False;
        Transaction.Active:=True;
        Close;
        SQL.Clear;
        SQL.Add ('insert into JOBPARAMS (COMPANY,JOBID,ID,PARAMNAME,PARAMTYPE,FIELDCONSTRAINT,NOTE) Values (:COMPANY,:JOBID,:ID,:NAME,:TYPE,:FIELDCONSTRAINT,:NOTE)');
        ParamByName('COMPANY').AsString:=UserSession.Company;
        ParamByName('JOBID').AsInteger:=UserSession.JobHdrID;
        ParamByName('ID').AsInteger:=RcDataModule.NextId;
        ParamByName('NAME').AsString:=NameEdit.Text;
        ParamByName('FIELDCONSTRAINT').AsString:=ConstraintEdit.Text;
        ParamByName('NOTE').AsString:=ParamNoteEdit.Text;
        ParamByName('TYPE').AsString:=ParamNames[paramtypes(TypeCombo.ItemIndex)];
        ExecSQL;
        Transaction.Commit;
      end;
    except
    end;
  end;
  NameEdit.Text:='';
  ConstraintEdit.Text:='';
  RefreshParamGrid;
end;

procedure TFormJobRev.ParamGridRenderCell(ACell: TIWGridCell; const ARow,
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

procedure TFormJobRev.ParamGridCellClick(ASender: TObject; const ARow,
  AColumn: Integer);
begin
  currentparamindex:=ARow-1;
  constraintedit.text:=paramlist[currentparamindex].constraint; //  ParamGrid.Cell[ARow,3].Text;
  nameedit.text:=paramlist[currentparamindex].name;
  typecombo.itemindex:= ord(strtoparamtype(paramlist[currentparamindex].ftype));
  nameedit.enabled:=false;
  nameedit.color:=$d0d0d0;
  paramdelbtn.visible:=true;
  paramcancelbtn.visible:=true;
  paramsavebtn.caption:='Update';
end;

procedure TFormJobRev.IWAppFormDestroy(Sender: TObject);
var
  r : integer;
begin
  paramlist.free;
  for r:=1 to Paramgrid.RowCount-1 do
    Paramgrid.Cell[r,0].Tag.Free;
end;

end.
