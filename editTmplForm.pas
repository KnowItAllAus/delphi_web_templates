unit editTmplForm;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  IWCompEdit, IWCompListbox, IWCompCheckbox, IWCompLabel,
  IWCompButton, IWControl, IWCompRectangle, IWGrids,
  IWHTMLControls, IWContainer, IWRegion, IWExtCtrls, IWBaseControl,
  IWVCLBaseControl, IWVCLBaseContainer, IWBaseHTMLControl, IWAppForm,
  IWSiLink, siComp, siLngLnk, footer_user, baretitle, IWHTMLContainer,
  ReferredClass;

type
  TformEditTmpl = class(TIWAppForm)
    siLangLinked1: TsiLangLinked;
    IWRegion1: TIWRegion;
    IWRegion2: TIWRegion;
    TmplLabel: TIWLabel;
    TmplGrid: TIWGrid;
    IWSiLink1: TIWSiLink;
    userfooter1: Tuserfooter;
    IWRectangle1: TIWRectangle;
    IWRectangle2: TIWRectangle;
    FrameBareTitle1: TFrameBareTitle;
    NameLbl: TIWLabel;
    EditBtn: TIWButton;
    procedure CancelBtnClick(Sender: TObject);
    procedure IWAppFormCreate(Sender: TObject);
    procedure TmplGridCellClick(ASender: TObject; const ARow,
      AColumn: Integer);
    procedure IWAppFormDefaultAction(Sender: TObject);
    procedure TmplGridRenderCell(ACell: TIWGridCell; const ARow,
      AColumn: Integer);
    procedure IWAppFormDestroy(Sender: TObject);
    procedure userfooter1Extra1Click(Sender: TObject);
    procedure EditBtnClick(Sender: TObject);
  private
    referedby : referer_class;
    TemplateIDList : TStringList;
    procedure drawTmplGrid;
    { Private declarations }
  public
    { Public declarations }
  end;

implementation

uses datamod, db, servercontroller, IWInit, PrinterForm, cfgtypes, global, overviewform, jobdtl,
     grpdtlform, tmplnameform, paramnameform, imagerevformTmpl, newparamform, fieldRevFormTmpl, jobs;

{$R *.DFM}

type tag_obj = class
  param : boolean;
  paramtype : string;
  s : string;
end;

procedure GoParent(referedby : referer_class);
var
   FGD : TFormGrpDtl;
begin
   TIWAppForm(WebApplication.ActiveForm).Release;
   FGD:=TFormGrpDtl.create(WebApplication);
   FGD.referedby:=referedby;
   FGD.show;
end;

procedure TformEditTmpl.CancelBtnClick(Sender: TObject);
begin
  if RcDataModule.GetValue ('JobInstance','Y')='Y' then begin
     TIWAppForm(WebApplication.ActiveForm).Release;
     TFormJobs.Create(WebApplication).Show;
  end else GoParent(referedby);
end;

procedure TformEditTmpl.IWAppFormCreate(Sender: TObject);
begin
  IWSilink1.InitForm;
  TemplateIDList:=TStringList.Create;
(*  with RcDataModule.SQLQry do begin
     Active:=false;
     SQL.clear;
     SQL.Add ('select * from GROUPATTR where ID=:ID and COMPANY=:COMPANY');
     ParamByName('COMPANY').AsString:=UserSession.Company;
     ParamByName('ID').AsString:=RcDataModule.GetValue ('editgroup','');
     Open;
     Close;
  end; *)
  DrawTmplGrid;
end;

procedure TformEditTmpl.DrawTmplGrid;
var
  i,r,c : integer;
  celltag : tag_obj;
  lasttmpl: string;
  tmplid : integer;
begin
  lasttmpl:='';
  for r:=0 to Tmplgrid.RowCount-1 do
    for c:=0 to Tmplgrid.ColumnCount-1 do
      Tmplgrid.Cell[r,c].Tag.Free;

  try
    with RcDataModule do begin
      SQLQry.SQL.Clear;
      SQLQry.Transaction.Active:=false;
      SQLQry.Transaction.Active:=true;
      SQLQry.SQL.Add('select * from JOBS where COMPANY=:COMPANY and ID=:JOBID');
      SQLQry.ParamByName ('JOBID').AsString:=RcDataModule.GetValue ('editjob','');
      SQLQry.ParamByName ('COMPANY').AsString:=UserSession.Company;
      SQLQry.Open;
      tmplid:=SQLQry.FieldByName ('PARAMTMPLID').AsInteger;
      NameLbl.Caption:=SQLQry.FieldByName ('NAME').AsString;
      SQLQry.Close;
    end;
  except
    tmplid:=0;
  end;
  if tmplid=0 then exit;

  TmplGrid.RowCount:=0;
  with RcDataModule do begin
      SQLQry.SQL.Clear;
      SQLQry.Transaction.Active:=false;
      SQLQry.Transaction.Active:=true;
      SQLQry.SQL.Add('select GROUPPARAMTMPL.*, GROUPOBJHDR.ID as OBJID, '+
                     'GROUPOBJHDR.GUID as GUID, GROUPOBJHDR.PARAMTYPE as PARAMTYPE, '+
                     'GROUPOBJHDR.NAME from GROUPPARAMTMPL '+
                     'left join GROUPOBJHDR on GROUPOBJHDR.GROUPPARAMTMPLID=GROUPPARAMTMPL.ID '+
                     'where GROUPPARAMTMPL.COMPANY=:COMPANY and GROUPPARAMTMPL.ID=:TMPLID '+
                     'order by GROUPPARAMTMPL.ID');
      SQLQry.ParamByName ('TMPLID').AsInteger:=tmplid;
      SQLQry.ParamByName ('COMPANY').AsString:=UserSession.Company;
      SQLQry.Open;
      with TmplGrid do begin
        ColumnCount:=6;
        RowCount:=1;
        Cell[0, 1].Text := '';
        Cell[0, 2].Text := '';
        Cell[0, 3].Text := SiLangLinked1.GetTextOrDefault ('Grid.Type');
        Cell[0, 4].Text := SiLangLinked1.GetTextOrDefault ('Grid.Guid');
        Cell[0, 0].Text := SiLangLinked1.GetTextOrDefault ('Grid.Name');
        Cell[0, 5].Text := SiLangLinked1.GetTextOrDefault ('Grid.Note');
        i:=1;
        while not SQLQry.Eof do begin
          if lasttmpl<>SQLQry.FieldByName('ID').AsString then begin
              RowCount:=RowCount+1;
              with Cell[i, 0] do begin
                Text := htmlquote(SQLQry.FieldByName('TEMPLATENAME').AsString);
              end;
              Cell[i, 2].text:='';
              Cell[i, 1].text:=SiLangLinked1.GetTextOrDefault ('Grid.AddParam');
              Cell[i, 1].clickable:=true;
              Cell[i, 3].text:='';
              Cell[i, 4].text:='';
              Cell[i, 5].text:=htmlquote(SQLQry.FieldByName('NOTE').AsString);
              celltag:=tag_obj.create;
              celltag.param:=false;
              celltag.s:=SQLQry.FieldByName('ID').AsString;
              Cell[i, 0].Tag:=celltag;
              inc (i);
          end;
          if SQLQry.FieldByName('OBJID').AsString<>'' then begin
              RowCount:=RowCount+1;
              with Cell[i, 0] do begin
                Text := htmlquote(SQLQry.FieldByName('NAME').AsString);
              end;
              Cell[i, 2].text:=SiLangLinked1.GetTextOrDefault ('Grid.Properties');
              Cell[i, 2].clickable:=true;
              Cell[i, 1].text:=SiLangLinked1.GetTextOrDefault ('Grid.Edit');
              Cell[i, 1].clickable:=true;
              Cell[i, 5].text:='';
              Cell[i, 4].text:=SQLQry.FieldByName('GUID').AsString;
              if SQLQry.FieldByName('PARAMTYPE').AsString='F' then
                 Cell[i, 3].text:=SiLangLinked1.GetTextOrDefault ('Grid.Field')
                 else
                 Cell[i, 3].text:=SiLangLinked1.GetTextOrDefault ('Grid.Object');
              celltag:=tag_obj.create;
              celltag.param:=true;
              celltag.paramtype:=SQLQry.FieldByName('PARAMTYPE').AsString;
              celltag.s:=SQLQry.FieldByName('OBJID').AsString;
              Cell[i, 0].Tag:=celltag;
              inc (i);
          end;
          lasttmpl:=SQLQry.FieldByName('ID').AsString;
          SQLQry.Next;
        end;
      end;
      SQLQry.Close;
    end;
end;

procedure TformEditTmpl.TmplGridCellClick(ASender: TObject; const ARow,
  AColumn: Integer);
var
  t : tag_obj;
  FPNE : TFormParamNameEdit;
  FTNE : TFormTmplNameEdit;
begin
  t:=tag_obj(TmplGrid.Cell[ARow,0].tag);
  if assigned(t) then begin
    if t.param then begin
      RcDataModule.SaveValue ('editparam',t.s);
      if AColumn=1 then begin
          TIWAppForm(WebApplication.ActiveForm).Release;
          if t.paramtype='F' then begin
             TformFieldVersionsTmpl.create(WebApplication).show;
          end else begin
             TformImageVersionsTmpl.create(WebApplication).show;
          end;
      end else if AColumn=2 then begin
          FPNE:=TFormParamNameEdit.create(WebApplication);
          FPNE.NameEdit.Text:=TmplGrid.Cell[ARow,0].Text;
          TIWAppForm(WebApplication.ActiveForm).Release;
          FPNE.show;
      end;
    end else begin
      RcDataModule.SaveValue ('edittmplinstance',t.s);
      if AColumn=2 then begin
        FTNE:=TFormTmplNameEdit.create(WebApplication);
        FTNE.NameEdit.Text:=htmlunquote(TmplGrid.Cell[ARow,0].Text);
        FTNE.NoteEdit.Text:=htmlquote(TmplGrid.Cell[ARow,5].Text);
        TIWAppForm(WebApplication.ActiveForm).Release;
        FTNE.show;
      end else if AColumn=1 then begin
        TIWAppForm(WebApplication.ActiveForm).Release;
        TFormParamCreate.create(WebApplication).show;
      end;
    end;
  end;
end;

procedure TformEditTmpl.IWAppFormDefaultAction(Sender: TObject);
begin
  CancelBtnClick (Sender);
end;

procedure TformEditTmpl.TmplGridRenderCell(ACell: TIWGridCell; const ARow,
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
      if tag_obj(TmplGrid.Cell[ARow,0].Tag).param then begin
        BGColor := clLtGray;
      end else begin
        BGColor := clWhite;
      end;
    end;
  end;
end;

procedure TformEditTmpl.IWAppFormDestroy(Sender: TObject);
var
  r,c : integer;
begin
  for r:=0 to Tmplgrid.RowCount-1 do
    for c:=0 to Tmplgrid.ColumnCount-1 do
      Tmplgrid.Cell[r,c].Tag.Free;
  TemplateIDList.Free;
end;

procedure TformEditTmpl.userfooter1Extra1Click(Sender: TObject);
begin
  with RcDataModule.DeleteJobQuery do begin
    ParamByName ('COMPANY').AsString:=UserSession.Company;
    ParamByName ('ID').AsInteger:=UserSession.JobHdrID;
    ExecSQL;
    RcDataModule.Trans.Commit;
    TIWAppForm(WebApplication.ActiveForm).Release;
    TFormJobs.Create (WebApplication).show;
  end;
end;

procedure TformEditTmpl.EditBtnClick(Sender: TObject);
begin
  TIWAppForm(WebApplication.ActiveForm).Release;
  TFormJobDtl.Create (WebApplication).show;
end;

end.
