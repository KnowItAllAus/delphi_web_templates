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
  end;

procedure GotoJob (ID : String; name : string; rev : string; note : string);

implementation

uses DataMod, ServerController, IWInit, cfgTypes, roleform, Graphics, voucherForm, imagesform, jobrev;

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
      Cell[0, 2].Text := SiLink.GetTextOrDefault('Grid.Desc');
      Cell[0, 3].Text := SiLink.GetTextOrDefault('Grid.Status');
      i:=1;
      while not Eof do begin
        RowCount:=RowCount+1;
        with Cell[i, 0] do begin
          Text := FieldByName('ID').AsString;
          Clickable:=true;
        end;
        with Cell[i, 1] do begin
          Text := htmlquote(FieldByName('NAME').AsString);
          if FieldByName('TEMPLATE').AsString='1' then Text:=SiLink.GetTextOrDefault('Grid.Template')+': '+Text;
        end;
        with Cell[i, 2] do begin
          Text := htmlquote(FieldByName('DESCRIPTION').AsString);
        end;
        with Cell[i, 3] do begin
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

function job_exists (id : string) : boolean;
begin
   with RcDataModule do begin
       CurrentJobQuery.Transaction.Active:=false;
       CurrentJobQuery.Transaction.Active:=true;
       CurrentJobQuery.ParamByName('COMPANY').AsString:=UserSession.Company;
       CurrentJobQuery.ParamByName('ID').AsString:=id;
       CurrentJobQuery.Active:=false;
       CurrentJobQuery.Active:=true;
       result:=not CurrentJobQuery.FieldByName('ID').IsNull;
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
   if rev='' then begin
      if job_exists (ID) then begin
         TIWAppForm(WebApplication.ActiveForm).Release;
         TFormJobRev.Create(WebApplication).Show;
      end;
   end else begin
      if rev_exists (rev) then EditJobRev (rev,note) else begin
         UserSession.mru_delete (ID,rev);
         TIWAppForm(WebApplication.ActiveForm).Release;
         TFormJobs.Create(WebApplication).Show;
      end;
   end;
end;

procedure TformJobs.JobGridCellClick(ASender: TObject; const ARow,
  AColumn: Integer);
begin
   EditJob (JobGrid.Cell[ARow,0].text,JobGrid.Cell[ARow,1].text);
end;

end.
