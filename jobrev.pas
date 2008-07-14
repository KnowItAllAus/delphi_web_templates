unit jobrev;

interface

uses
  Classes, SysUtils, IWAppForm, IWApplication, IWColor, IWTypes, siComp,
  siLngLnk, IWCompButton, IWGrids, IWCompLabel, IWCompRectangle,
  IWVCLBaseControl, IWBaseControl, IWBaseHTMLControl, IWControl,
  IWHTMLControls, IWSiLink, IWVCLBaseContainer, IWContainer,
  IWHTMLContainer, IWRegion, footer_user, Controls, Forms, promotitle,
  IWCompCheckbox, IWCompMemo, IWCompEdit, IWCompListbox;

type
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
    NameLbl: TIWLabel;
    NameEdit: TIWEdit;
    AddParamBtn: TIWButton;
    TypeCombo: TIWComboBox;
    TypeLbl: TIWLabel;
    procedure IWAppFormCreate(Sender: TObject);
    procedure JobGridRenderCell(ACell: TIWGridCell; const ARow,
      AColumn: Integer);
    procedure JobGridCellClick(ASender: TObject; const ARow,
      AColumn: Integer);
    procedure EditJobBtnClick(Sender: TObject);
    procedure userfooter1CancelClick(Sender: TObject);
    procedure CreateBtnClick(Sender: TObject);
    procedure AddParamBtnClick(Sender: TObject);
    procedure ParamGridRenderCell(ACell: TIWGridCell; const ARow,
      AColumn: Integer);
    procedure ParamGridCellClick(ASender: TObject; const ARow,
      AColumn: Integer);
    procedure IWAppFormDestroy(Sender: TObject);
  public
    procedure RefreshGrid;
  end;

procedure EditJobRev (ID : String; note : string);

implementation

{$R *.dfm}

uses Graphics, datamod, ServerController, voucherform, jobdtl, Jobs, CfgTypes, IWInit;

const paramtypes : array [1..4] of string = ('Object','Text','Date','Time','Integer');

type tag_obj = class
  s : string;
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
      end else if JobGrid.Cell[ARow,1].text='*' then begin
        BGColor := TColor($60C060);
      end else if Odd(ARow) then begin
        BGColor := clLtGray;
      end else begin
        BGColor := clNone;
      end;
    end;
  end;
end;

procedure TFormJobRev.RefreshGrid;
var
  i : integer;
  prod,test : string;
  r : integer;
  t : tag_obj;
begin
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
      Cell[0, 1].Text := SiLink.GetTextOrDefault('Grid.Auth');
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
        end;
        with Cell[i, 1] do begin
          try
            Text := '';
            if FieldByName('AUTH').AsString='1' then
                Text:='*';
          except
          end;
        end;
        with Cell[i, 2] do begin
          Text := FieldByName('NOTE').AsString;
        end;
        with Cell[i, 3] do begin
          Text := FieldByName('CREATEDBY').AsString;
        end;
        with Cell[i, 4] do begin
          Text := FieldByName('CREATEDAT').AsString;
        end;
        with Cell[i, 5] do begin
          Text := FieldByName('AUTHBY').AsString;
        end;
        with Cell[i, 6] do begin
          Text := FieldByName('AUTHAT').AsString;
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
      Cell[0, 0].Text := SiLink.GetTextOrDefault('Grid.Parameter');
      Cell[0, 1].Text := SiLink.GetTextOrDefault('Grid.Type');
      Cell[0, 2].Text := '';
      i:=1;
      while not Eof do begin
        RowCount:=RowCount+1;
        with Cell[i, 0] do begin
          Text := htmlquote(FieldByName('PARAMNAME').AsString);
          t:=tag_obj.create;
          t.s:=FieldByName('ID').AsString;
          tag:=t;
        end;
        with Cell[i, 1] do begin
          try
            Text := FieldByName('PARAMTYPE').AsString;
          except
          end;
        end;
        with Cell[i, 2] do begin
          Text := SiLink.GetTextOrDefault('Grid.Delete');
          Clickable:=true;
        end;
        inc (i);
        Next;
      end;
    end;
    Close;
    Transaction.Active:=False;
  end;
end;

procedure TFormJobRev.IWAppFormCreate(Sender: TObject);
begin
   Self.langlink.InitForm;
   JobNameLbl.Caption:=JobNameLbl.Caption+' '+Usersession.JobName;
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
     if FieldByName ('Template').AsString='1' then begin
        templatelbl.visible:=true;
        ParamGrid.Visible:=true;
        AddParamBtn.Visible:=true;
        TypeLbl.Visible:=true;
        NameLbl.Visible:=true;
        NameEdit.Visible:=true;
        TypeCombo.Visible:=true;
     end;
     Transaction.Commit;
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

procedure TFormJobRev.AddParamBtnClick(Sender: TObject);
begin
  if NameEdit.Text<>'' then try
    with RcDataModule.SQLQry do begin
      Transaction.Active:=False;
      Transaction.Active:=True;
      Close;
      SQL.Clear;
      SQL.Add ('insert into JOBPARAMS (COMPANY,JOBID,ID,PARAMNAME,PARAMTYPE) Values (:COMPANY,:JOBID,:ID,:NAME,:TYPE)');
      ParamByName('COMPANY').AsString:=UserSession.Company;
      ParamByName('JOBID').AsInteger:=UserSession.JobHdrID;
      ParamByName('ID').AsInteger:=RcDataModule.NextId;
      ParamByName('NAME').AsString:=NameEdit.Text;
      ParamByName('TYPE').AsString:=ParamTypes[TypeCombo.ItemIndex+1];
      ExecSQL;
      Transaction.Commit;
    end;
  except
  end;
  NameEdit.Text:='';
  RefreshGrid;
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
var
  t : tag_obj;
begin
  t:=tag_obj(ParamGrid.Cell[ARow,0].tag);
  try
    with RcDataModule.SQLQry do begin
      Transaction.Active:=False;
      Transaction.Active:=True;
      Close;
      SQL.Clear;
      SQL.Add ('delete from JOBPARAMS where COMPANY=:COMPANY and ID=:ID');
      ParamByName('COMPANY').AsString:=UserSession.Company;
      ParamByName('ID').AsString:=t.s;
      ExecSQL;
      Transaction.Commit;
    end;
  except
  end;
  RefreshGrid;
end;

procedure TFormJobRev.IWAppFormDestroy(Sender: TObject);
var
  r : integer;
begin
  for r:=1 to Paramgrid.RowCount-1 do
    Paramgrid.Cell[r,0].Tag.Free;
end;

end.
