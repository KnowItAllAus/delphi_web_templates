unit editTmplForm;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  IWCompEdit, IWCompListbox, IWCompCheckbox, IWCompLabel,
  IWCompButton, IWControl, IWCompRectangle, IWGrids,
  IWHTMLControls, IWContainer, IWRegion, IWExtCtrls, IWBaseControl,
  IWVCLBaseControl, IWVCLBaseContainer, IWBaseHTMLControl, IWAppForm,
  IWSiLink, siComp, siLngLnk, footer_user, baretitle, IWHTMLContainer,
  ReferredClass, IWHTML40Container;

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
  ptype : string;
  paramtype : string;
  constraint : string;
  s : string;
  width : integer;
  height : integer;
end;

type int_tag_obj = class
  param : integer;
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
  if RcDataModule.GetValue ('JobInstance','JOB')='INSTANCE' then begin
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
  refjobid : integer;
  ftype : string;
  typeerror : boolean;
  //gpparamhdrid : integer;
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
      refjobid:=SQLQry.FieldByName ('REFERJOB').AsInteger;
      NameLbl.Caption:=SQLQry.FieldByName ('NAME').AsString;
      SQLQry.Close;
    end;
  except
    tmplid:=0;
  end;
  if tmplid=0 then exit;

  TmplGrid.RowCount:=0;
  with RcDataModule do begin
(*    SQLQry2.SQL.Clear;
    SQLQry2.Transaction.Active:=false;
    SQLQry2.Transaction.Active:=true;
    SQLQry2.SQL.Add('select GROUPPARAMTMPL.* '+
                    'from GROUPPARAMTMPL '+
                    'where GROUPPARAMTMPL.COMPANY=:COMPANY and GROUPPARAMTMPL.ID=:TMPLID '+
                    'order by GROUPPARAMTMPL.ID');
    SQLQry2.ParamByName ('TMPLID').AsInteger:=tmplid;
    SQLQry2.ParamByName ('COMPANY').AsString:=UserSession.Company;
    //gpparamhdrid:=SQLQry.FieldByName ('PARAMTMPLID').AsInteger;
    try
      SQLQry2.Open;
    except
      on e : exception do begin
       showmessage (e.message);
       exit;
      end;
    end;

    SQLQry.SQL.Clear;
    SQLQry.Transaction.Active:=false;
    SQLQry.Transaction.Active:=true;
    SQLQry.SQL.Add('select GROUPOBJHDR.CURRENTID, '+
                     //'GROUPPARAMOBJ.DATAFIELD as DATAFIELD, '+
                     'GROUPOBJHDR.ID as OBJID, '+
                     'GROUPOBJHDR.GUID as GUID, GROUPOBJHDR.PARAMTYPE as PTYPE, '+
                     'GROUPOBJHDR.NAME from GROUPOBJHDR '+
                     //'left join GROUPPARAMOBJ on GROUPPARAMOBJ.COMPANY=:COMPANY and GROUPPARAMOBJ.ID=GROUPOBJHDR.CURRENTID ' +
                     'where GROUPOBJHDR.COMPANY=:COMPANY and GROUPOBJHDR.GROUPPARAMTMPLID=:TMPLID '+
                     'order by GROUPOBJHDR.ID');

    SQLQry.ParamByName ('TMPLID').AsInteger:=tmplid;
    SQLQry.ParamByName ('COMPANY').AsString:=UserSession.Company;
    try
      SQLQry.Open;
    except
      on e : exception do begin
       showmessage (e.message);
       exit;
      end;
    end;

    SQLQry.SQL.Clear;
    SQLQry.Transaction.Active:=false;
    SQLQry.Transaction.Active:=true;
    SQLQry.SQL.Add('select GROUPOBJHDR.CURRENTID, '+
                     'GROUPPARAMOBJ.DATAFIELD as DATAFIELD, '+
                     'GROUPOBJHDR.ID as OBJID, '+
                     'GROUPOBJHDR.GUID as GUID, GROUPOBJHDR.PARAMTYPE as PTYPE, '+
                     'GROUPOBJHDR.NAME, JOBPARAMS.* from GROUPOBJHDR '+
                     'left join JOBPARAMS on JOBPARAMS.JOBID=:JOBID and JOBPARAMS.PARAMNAME=GROUPOBJHDR.NAME '+
                     'left join GROUPPARAMOBJ on GROUPPARAMOBJ.COMPANY=:COMPANY and GROUPPARAMOBJ.ID=GROUPOBJHDR.CURRENTID ' +
                     'where GROUPOBJHDR.COMPANY=:COMPANY and GROUPOBJHDR.GROUPPARAMTMPLID=:TMPLID '+
                     'order by GROUPOBJHDR.ID');

    SQLQry.ParamByName ('TMPLID').AsInteger:=tmplid;
    SQLQry.ParamByName ('JOBID').AsInteger:=refjobid;
    SQLQry.ParamByName ('COMPANY').AsString:=UserSession.Company;
    try
      SQLQry.Open;
    except
      on e : exception do begin
       showmessage (e.message);
       exit;
      end;
    end;
*)

    SQLQry.SQL.Clear;
    SQLQry.Transaction.Active:=false;
    SQLQry.Transaction.Active:=true;
    SQLQry.SQL.Add('select GROUPPARAMTMPL.*, GROUPOBJHDR.CURRENTID, '+
                     'GROUPOBJHDR.ID as OBJID, '+
                     'GROUPOBJHDR.GUID as GUID, GROUPOBJHDR.PARAMTYPE as PTYPE, '+
                     'GROUPOBJHDR.NAME, JOBPARAMS.* from GROUPPARAMTMPL '+
                     'left join GROUPOBJHDR on GROUPOBJHDR.GROUPPARAMTMPLID=GROUPPARAMTMPL.ID '+
                     'left join JOBPARAMS on JOBPARAMS.JOBID=:JOBID and JOBPARAMS.PARAMNAME=GROUPOBJHDR.NAME '+
                     'where GROUPPARAMTMPL.COMPANY=:COMPANY and GROUPPARAMTMPL.ID=:TMPLID '+
                     'order by GROUPPARAMTMPL.ID');

    SQLQry.ParamByName ('TMPLID').AsInteger:=tmplid;
    SQLQry.ParamByName ('JOBID').AsInteger:=refjobid;
    SQLQry.ParamByName ('COMPANY').AsString:=UserSession.Company;
    try
      SQLQry.Open;
    except
      on e : exception do begin
       showmessage (e.message);
       exit;
      end;
    end;

    with TmplGrid do begin
        ColumnCount:=8;
        RowCount:=1;
        Cell[0, 0].Text := SiLangLinked1.GetTextOrDefault ('Grid.Name');
        Cell[0, 1].Text := '';
        Cell[0, 2].Text := '';
        Cell[0, 3].Text := SiLangLinked1.GetTextOrDefault ('Grid.Type');
        Cell[0, 4].Text := SiLangLinked1.GetTextOrDefault ('Grid.Guid');
        Cell[0, 5].Text := SiLangLinked1.GetTextOrDefault ('Grid.Constraint');
        Cell[0, 6].Text := SiLangLinked1.GetTextOrDefault ('Grid.Note');
        Cell[0, 7].Text := SiLangLinked1.GetTextOrDefault ('Grid.Value');
        i:=1;
        while not SQLQry.Eof do begin
          if lasttmpl<>SQLQry.FieldByName('ID').AsString then begin
              RowCount:=RowCount+1;
              with Cell[i, 0] do begin
                Text := htmlquote(SQLQry.FieldByName('TEMPLATENAME').AsString);
              end;
              Cell[i, 1].text:=SiLangLinked1.GetTextOrDefault ('Grid.AddParam');
              Cell[i, 1].clickable:=true;
              Cell[i, 2].text:='';
              Cell[i, 3].text:='';
              Cell[i, 4].text:='';
              Cell[i, 5].text:='';
              Cell[i, 6].text:=htmlquote(SQLQry.FieldByName('NOTE').AsString);
              Cell[i, 7].text:='';
              celltag:=tag_obj.create;
              celltag.param:=false;
              celltag.paramtype:=SQLQry.FieldByName('PARAMTYPE').AsString;
              celltag.width:=0;
              if not SQLQry.FieldByName('MAXWIDTH').IsNull then
                 celltag.width:=SQLQry.FieldByName('MAXWIDTH').AsInteger;
              celltag.height:=0;
              if not SQLQry.FieldByName('MAXHEIGHT').IsNull then
                 celltag.height:=SQLQry.FieldByName('MAXHEIGHT').AsInteger;
              celltag.s:=SQLQry.FieldByName('ID').AsString;
              Cell[i, 0].Tag:=celltag;
              inc (i);
          end;
          if SQLQry.FieldByName('OBJID').AsString<>'' then begin
              RowCount:=RowCount+1;
              with Cell[i, 0] do begin
                Text := htmlquote(SQLQry.FieldByName('NAME').AsString);
              end;
              if Cell[i, 0].text='Instance' then begin
                Cell[i, 2].text:='';
                Cell[i, 1].text:='';
              end else begin
                Cell[i, 2].text:=SiLangLinked1.GetTextOrDefault ('Grid.Properties');
                Cell[i, 2].clickable:=true;
                Cell[i, 1].text:=SiLangLinked1.GetTextOrDefault ('Grid.Edit');
                Cell[i, 1].clickable:=true;
              end;
              Cell[i, 5].text:=htmlquote(SQLQry.FieldByName('FIELDCONSTRAINT').AsString);
              Cell[i, 6].text:='';
              Cell[i, 7].text:='';
              Cell[i, 4].text:=SQLQry.FieldByName('GUID').AsString;
              ftype:=SQLQry.FieldByName('PARAMTYPE').AsString;
              typeerror:=false;
              if ftype<>'' then
                case strtoparamtype(ftype) of
                  ft_object, ft_image_blob, ft_text_blob, ft_rendered_image_blob, ft_table_blob :
                    if SQLQry.FieldByName('PTYPE').AsString='F' then typeerror:=true;
                else
                   if SQLQry.FieldByName('PTYPE').AsString='O' then typeerror:=true;
                end;

              if ftype='' then
                 ftype:=SiLangLinked1.GetTextOrDefault ('Grid.unlinked');
              if SQLQry.FieldByName('PTYPE').AsString='F' then begin
                 Cell[i, 3].text:=SiLangLinked1.GetTextOrDefault ('Grid.Field')+' ('+ftype+')';
                 if not SQLQry.FieldByName('CURRENTID').IsNull then begin
                    Cell[i, 7].Tag:=TObject(SQLQry.FieldByName('CURRENTID').AsInteger);
                 end;
              end else
                 Cell[i, 3].text:=SiLangLinked1.GetTextOrDefault ('Grid.Object')+' ('+ftype+')';

              if typeerror then
                 Cell[i,3].text:=Cell[i,3].text+' - Type Error';

              celltag:=tag_obj.create;
              celltag.param:=true;
              celltag.ptype:=SQLQry.FieldByName('PTYPE').AsString;
              celltag.paramtype:=SQLQry.FieldByName('PARAMTYPE').AsString;
              celltag.s:=SQLQry.FieldByName('OBJID').AsString;
              celltag.constraint:=SQLQry.FieldByName('FIELDCONSTRAINT').AsString;
              Cell[i, 0].Tag:=celltag;
              inc (i);
          end;
          lasttmpl:=SQLQry.FieldByName('ID').AsString;
          SQLQry.Next;
        end;
      end;
      SQLQry.Close;
    end;

  with RcDataModule do begin
    SQLQry2.SQL.Clear;
    SQLQry2.Transaction.Active:=false;
    SQLQry2.Transaction.Active:=true;
                     //'left join GROUPPARAMOBJ on GROUPPARAMOBJ.COMPANY=:COMPANY and GROUPPARAMOBJ.ID=GROUPOBJHDR.CURRENTID ' +
    SQLQry2.SQL.Add('select GROUPPARAMOBJ.* '+
                    'from GROUPPARAMOBJ '+
                    'where GROUPPARAMOBJ.COMPANY=:COMPANY and GROUPPARAMOBJ.ID=:ID '+
                    'order by GROUPPARAMOBJ.ID');
    for i:=1 to TmplGrid.RowCount-1 do begin
      if integer(Tmplgrid.Cell[i,7].Tag)>0 then begin
        SQLQry2.ParamByName ('ID').AsInteger:=integer(Tmplgrid.Cell[i,7].Tag);
        SQLQry2.ParamByName ('COMPANY').AsString:=UserSession.Company;
        try
          SQLQry2.Open;
          Tmplgrid.Cell[i,7].text:=SQLQry2.FieldByName ('DATAFIELD').AsString;
          Tmplgrid.Cell[i,7].Tag:=nil;
          SQLQry2.Close;
        except
          on e : exception do begin
           showmessage (e.message);
           exit;
          end;
        end;
      end;
    end;
    SQLQry2.Close;
    SQLQry2.Transaction.Active:=false;
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
          RcDataModule.SaveValue ('edittmpltype',t.paramtype);
          RcDataModule.SaveValue ('edittmplconstraint',t.constraint);
          if t.ptype='F' then begin
             TformFieldVersionsTmpl.create(WebApplication).show;
          end else begin
             TformImageVersionsTmpl.create(WebApplication).show;
          end;
      end else if AColumn=2 then begin
          FPNE:=TFormParamNameEdit.create(WebApplication);
          FPNE.NameEdit.Text:=TmplGrid.Cell[ARow,0].Text;
          FPNE.ObjBtn.Checked:=t.ptype='O';
          FPNE.FieldBtn.Checked:=t.ptype='F';
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
