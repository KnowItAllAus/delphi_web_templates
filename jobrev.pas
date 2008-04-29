unit jobrev;

interface

uses
  Classes, SysUtils, IWAppForm, IWApplication, IWColor, IWTypes, siComp,
  siLngLnk, IWCompButton, IWGrids, IWCompLabel, IWCompRectangle,
  IWVCLBaseControl, IWBaseControl, IWBaseHTMLControl, IWControl,
  IWHTMLControls, IWSiLink, IWVCLBaseContainer, IWContainer,
  IWHTMLContainer, IWRegion, footer_user, Controls, Forms, promotitle,
  IWCompCheckbox, IWCompMemo, IWCompEdit;

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
    procedure IWAppFormCreate(Sender: TObject);
    procedure JobGridRenderCell(ACell: TIWGridCell; const ARow,
      AColumn: Integer);
    procedure JobGridCellClick(ASender: TObject; const ARow,
      AColumn: Integer);
    procedure EditJobBtnClick(Sender: TObject);
    procedure userfooter1CancelClick(Sender: TObject);
    procedure CreateBtnClick(Sender: TObject);
  public
    procedure RefreshGrid;
  end;

procedure EditJobRev (ID : String; note : string);

implementation

{$R *.dfm}

uses Graphics, datamod, ServerController, voucherform, jobdtl, Jobs, CfgTypes, IWInit;


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
begin
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
      EditJobRev (JobGrid.Cell[ARow,0].text,JobGrid.Cell[ARow,2].text)
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

end.
