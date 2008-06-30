unit grptmplForm;

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
  TformGrpTmpl = class(TIWAppForm)
    siLangLinked1: TsiLangLinked;
    IWRegion1: TIWRegion;
    IWRegion2: TIWRegion;
    TmplLabel: TIWLabel;
    TmplGrid: TIWGrid;
    GroupCombo: TIWComboBox;
    IWLabel3: TIWLabel;
    AddGrpBtn: TIWButton;
    IWSiLink1: TIWSiLink;
    userfooter1: Tuserfooter;
    IWRectangle1: TIWRectangle;
    IWRectangle2: TIWRectangle;
    FrameBareTitle1: TFrameBareTitle;
    procedure CancelBtnClick(Sender: TObject);
    procedure IWAppFormCreate(Sender: TObject);
    procedure AddGrpBtnClick(Sender: TObject);
    procedure TmplGridCellClick(ASender: TObject; const ARow,
      AColumn: Integer);
    procedure IWAppFormDefaultAction(Sender: TObject);
    procedure TmplGridRenderCell(ACell: TIWGridCell; const ARow,
      AColumn: Integer);
    procedure IWAppFormDestroy(Sender: TObject);
  private
    referedby : referer_class;
    procedure drawTmplGrid;
    { Private declarations }
  public
    { Public declarations }
  end;

implementation

uses datamod, db, servercontroller, IWInit, PrinterForm, cfgtypes, global, overviewform,
     grpdtlform, tmplnameform, paramnameform, imagerevformTmpl;

{$R *.DFM}

type tag_obj = class
  param : boolean;
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

procedure TformGrpTmpl.CancelBtnClick(Sender: TObject);
begin
  GoParent(referedby);
end;

procedure TformGrpTmpl.IWAppFormCreate(Sender: TObject);
begin
  IWSilink1.InitForm;
  DrawTmplGrid;
end;

procedure TformGrpTmpl.AddGrpBtnClick(Sender: TObject);
begin
  if GroupCombo.ItemIndex=-1 then exit;
  try
    with RcDataModule.GrpTmplInsertQuery do begin
      ParamByName ('ID').AsInteger:=RcDataModule.NextId;
      ParamByName ('COMPANY').AsString:=UserSession.Company;
      ParamByName ('GROUPPARAMHDRID').AsString:=RcDataModule.GetValue ('edittmpl','');
      ParamByName ('TEMPLATENAME').AsString:=GroupCombo.Items[GroupCombo.ItemIndex];
      ExecSQL;
      Transaction.Commit;
    end;
  except
    WebApplication.ShowMessage(userfooter1.silink_footer.GetTextOrDefault('DBError'));
  end;
  DrawTmplGrid;
  GroupCombo.ItemIndex:=-1;
end;

procedure TformGrpTmpl.DrawTmplGrid;
var
  i,r,c : integer;
  celltag : tag_obj;
  lasttmpl: string;
begin
  lasttmpl:='';
  for r:=0 to Tmplgrid.RowCount-1 do
    for c:=0 to Tmplgrid.ColumnCount-1 do
      Tmplgrid.Cell[r,c].Tag.Free;

  with RcDataModule.TmplQuery do begin
     Close;
     ParamByName('COMPANY').AsString:=UserSession.Company;
     Open;
     GroupCombo.Items.Clear;
     while not Eof do begin
        GroupCombo.Items.Add (FieldByName('Name').AsString);
        Next;
     end;
     GroupCombo.ItemIndex:=-1;
     Close;
  end;

  TmplGrid.RowCount:=0;
  with RcDataModule do begin
    GrpTmplUsageQuery.Close;
    GrpTmplUsageQuery.ParamByName('COMPANY').AsString:=
       UserSession.Company;
    GrpTmplUsageQuery.ParamByName('HDRID').AsString:=
       RcDataModule.GetValue ('edittmpl','');
    GrpTmplUsageQuery.Open;

    with TmplGrid do begin
      ColumnCount:=3;
      RowCount:=1;
      Cell[0, 1].Text := '';
      Cell[0, 2].Text := '';
      Cell[0, 0].Text := SiLangLinked1.GetTextOrDefault ('Grid.Name');
      i:=1;
      while not GrpTmplUsageQuery.Eof do begin
        if lasttmpl<>GrpTmplUsageQuery.FieldByName('ID').AsString then begin
            RowCount:=RowCount+1;
            with Cell[i, 0] do begin
              Text := GrpTmplUsageQuery.FieldByName('TEMPLATENAME').AsString;
            end;
            Cell[i, 2].text:=SiLangLinked1.GetTextOrDefault ('Grid.Properties');
            Cell[i, 2].clickable:=true;
            Cell[i, 1].text:=SiLangLinked1.GetTextOrDefault ('Grid.AddParam');
            Cell[i, 1].clickable:=true;
            celltag:=tag_obj.create;
            celltag.param:=false;
            celltag.s:=GrpTmplUsageQuery.FieldByName('ID').AsString;
            Cell[i, 0].Tag:=celltag;
            inc (i);
        end;
        if GrpTmplUsageQuery.FieldByName('OBJID').AsString<>'' then begin
            RowCount:=RowCount+1;
            with Cell[i, 0] do begin
              Text := GrpTmplUsageQuery.FieldByName('NAME').AsString;
            end;
            Cell[i, 2].text:=SiLangLinked1.GetTextOrDefault ('Grid.Properties');
            Cell[i, 2].clickable:=true;
            Cell[i, 1].text:=SiLangLinked1.GetTextOrDefault ('Grid.Edit');
            Cell[i, 1].clickable:=true;
            celltag:=tag_obj.create;
            celltag.param:=true;
            celltag.s:=GrpTmplUsageQuery.FieldByName('OBJID').AsString;
            Cell[i, 0].Tag:=celltag;
            inc (i);
        end;
        lasttmpl:=GrpTmplUsageQuery.FieldByName('ID').AsString;
        GrpTmplUsageQuery.Next;
      end;
    end;
    GrpTmplUsageQuery.Close;
  end;
end;

procedure TformGrpTmpl.TmplGridCellClick(ASender: TObject; const ARow,
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
          TformImageVersionsTmpl.create(WebApplication).show;
      end else if AColumn=2 then begin
          FPNE:=TFormParamNameEdit.create(WebApplication);
          FPNE.NameEdit.Text:=TmplGrid.Cell[ARow,0].Text;
          TIWAppForm(WebApplication.ActiveForm).Release;
          FPNE.show;
      end;
    end else begin
      if AColumn=2 then begin
        RcDataModule.SaveValue ('edittmplinstance',t.s);
        FTNE:=TFormTmplNameEdit.create(WebApplication);
        FTNE.NameEdit.Text:=TmplGrid.Cell[ARow,0].Text;
        TIWAppForm(WebApplication.ActiveForm).Release;
        FTNE.show;
      end else if AColumn=1 then begin
        try
          with RcDataModule do begin
            SQLEx.Transaction.Active:=false;
            SQLEx.Transaction.Active:=true;
            SQLEx.SQL.Clear;
            SQLEx.SQL.Add('insert into GROUPOBJHDR (ID,COMPANY,NAME,GUID,GROUPPARAMTMPLID) VALUES (:ID,:COMPANY,:NAME,:GUID,:HDR)');
            SQLEx.ParamByName ('ID').AsString:=inttostr(rcdatamodule.nextID);
            SQLEx.ParamByName ('HDR').AsString:=t.s;
            SQLEx.ParamByName ('COMPANY').AsString:=UserSession.Company;
            SQLEx.ParamByName ('NAME').AsString:=SiLangLinked1.GetTextOrDefault ('Grid.NewParameter');
            SQLEx.ParamByName ('GUID').AsString:=RcDataModule.make_guid;
            SQLEx.ExecQuery;
            SQLEx.Transaction.Commit;
          end;
        except
          WebApplication.ShowMessage(userfooter1.silink_footer.GetTextOrDefault('DBError'));
        end;
        DrawTmplGrid;
      end;
    end;
    DrawTmplGrid;
  end;
end;

procedure TformGrpTmpl.IWAppFormDefaultAction(Sender: TObject);
begin
  CancelBtnClick (Sender);
end;

procedure TformGrpTmpl.TmplGridRenderCell(ACell: TIWGridCell; const ARow,
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

procedure TformGrpTmpl.IWAppFormDestroy(Sender: TObject);
var
  r,c : integer;
begin
  for r:=0 to Tmplgrid.RowCount-1 do
    for c:=0 to Tmplgrid.ColumnCount-1 do
      Tmplgrid.Cell[r,c].Tag.Free;
end;

end.
