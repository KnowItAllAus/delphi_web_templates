unit grpdtlform;

interface

uses
  Classes, SysUtils, IWAppForm, IWApplication, IWColor, IWTypes,
  IWCompButton, IWGrids, IWVCLBaseControl, IWBaseControl,
  IWBaseHTMLControl, IWControl, IWCompLabel, Controls, Forms,
  IWCompEdit, IWHTMLControls, IWSiLink, siComp, siLngLnk, IWCompRectangle,
  footer_user, IWVCLBaseContainer, IWContainer, IWHTMLContainer, IWRegion,
  baretitle, IWCompCheckbox, IWCompListbox, ReferredClass;

type
  TFormGrpDtl = class(TIWAppForm)
    siLangLinked1: TsiLangLinked;
    FrameBareTitle1: TFrameBareTitle;
    IWRegion1: TIWRegion;
    userfooter1: Tuserfooter;
    IWRegion2: TIWRegion;
    GrpLabel: TIWLabel;
    IWLabel2: TIWLabel;
    NameEdit: TIWEdit;
    IWLabel1: TIWLabel;
    StoreGrid: TIWGrid;
    VoucherGrid: TIWGrid;
    IWLabel6: TIWLabel;
    DelBtn: TIWButton;
    IWSiLink1: TIWSiLink;
    IWRectangle1: TIWRectangle;
    IWRectangle2: TIWRectangle;
    TestBox: TIWCheckBox;
    StoreCombo: TIWComboBox;
    AddStoreBtn: TIWButton;
    AddJobBtn: TIWButton;
    PromoCombo: TIWComboBox;
    TemplateGrid: TIWGrid;
    IWLabel3: TIWLabel;
    NewTmplRevBtn: TIWButton;
    IWLabel4: TIWLabel;
    EditBtn: TIWButton;
    procedure IWAppFormCreate(Sender: TObject);
    procedure CancelBtnClick(Sender: TObject);
    procedure StoreGridRenderCell(ACell: TIWGridCell; const ARow,
      AColumn: Integer);
    procedure IWAppFormDestroy(Sender: TObject);
    procedure AddStoreBtnClick(Sender: TObject);
    procedure AddJobBtnClick(Sender: TObject);
    procedure StoreGridCellClick(ASender: TObject; const ARow,
      AColumn: Integer);
    procedure VoucherGridCellClick(ASender: TObject; const ARow,
      AColumn: Integer);
    procedure TestBoxChange(Sender: TObject);
    procedure NewTmplRevBtnClick(Sender: TObject);
    procedure DelBtnClick(Sender: TObject);
    procedure EditBtnClick(Sender: TObject);
    procedure TemplateGridCellClick(ASender: TObject; const ARow,
      AColumn: Integer);
  private
    StoreIdList : TStringlist;
    PromoIdList : TStringlist;
    sList : TStringlist;
    pList : TStringList;
    has_live_stores : boolean;
    currenttemplate : string;
    procedure InitCombos;
    procedure DrawGrids;
  public
    referedby : referer_class;
  end;

implementation

uses datamod, db, servercontroller, IWInit, grpForm, graphics, cfgtypes, dialogs, groupnameform, grptmplform,
     TmplRevPropform;

{$R *.dfm}

type tag_obj = class
  s : string;
end;

procedure GoReferer (referedby : referer_class);
begin
   RcDataModule.Trans.Active:=False;
   RcDataModule.Trans.StartTransaction;
   TIWAppForm(WebApplication.ActiveForm).Release;
   if referedby=nil then
      TFormGrp.Create(WebApplication).Show
   else
      referedby.Create(WebApplication).Show;
end;

procedure TFormGrpDtl.DrawGrids;
var
  can_delete : boolean;
  storedel : boolean;
  r, c : integer;
  celltag : tag_obj;
begin
  for r:=0 to Templategrid.RowCount-1 do
    for c:=0 to Templategrid.ColumnCount-1 do
      Templategrid.Cell[r,c].Tag.Free;
  has_live_stores:=false;
  StoreGrid.ColumnCount:=2;
  VoucherGrid.ColumnCount:=3;
  With StoreGrid do begin
      RowCount:=1;
      Cell[0, 0].Text := SiLangLinked1.GetTextOrDefault('Grid.Name');
      Cell[0, 1].Text:='';
  end;
  With VoucherGrid do begin
      RowCount:=1;
      Cell[0, 0].Text := SiLangLinked1.GetTextOrDefault('Grid.Name');
      Cell[0, 1].Text:='';
      Cell[0, 2].Text:='';
  end;
  With TemplateGrid do begin
      RowCount:=1;
      Cell[0, 0].Text := SiLangLinked1.GetTextOrDefault('Grid.Date');
      Cell[0, 1].Text := SiLangLinked1.GetTextOrDefault('Grid.Selected');
      Cell[0, 2].Text := '';
      Cell[0, 3].Text := '';
      Cell[0, 4].Text := SiLangLinked1.GetTextOrDefault('Grid.Note');
  end;
  sList.Clear;
  pList.Clear;
  storedel:=false;
  with RcDataModule do begin
    GrpUseQuery.Close;
    GrpUseQuery.ParamByName('COMPANY').AsString:=
       UserSession.Company;
    GrpUseQuery.ParamByName('GROUPID').AsString:=RcDataModule.GetValue ('editgroup','');
    GrpUseQuery.Open;
    while not GrpUseQuery.Eof do begin
        if GrpUseQuery.FieldByName('ITEMKIND').AsInteger=1 then begin
            StoreGrid.RowCount:=StoreGrid.RowCount+1;
            with StoreGrid.Cell[StoreGrid.RowCount-1, 0] do begin
              Text := GrpUseQuery.FieldByName('STORENAME').AsString;
              if GrpUseQuery.FieldByName('stest').AsString='1' then begin
                 Font.Style:=[fsItalic];
              end else begin
                 has_live_stores:=true;
              end;
            end;
            sList.Add (GrpUseQuery.FieldByName('ITEMID').AsString);
            StoreGrid.Cell[StoreGrid.RowCount-1,1].text:='';
            if (GrpUseQuery.FieldByName('stest').AsString='1') or
               ((UserSession.privilege and PRIV_LIVE)<>0) then begin
              StoreGrid.Cell[StoreGrid.RowCount-1,1].text:=SiLangLinked1.GetTextOrDefault('Grid.Delete');
              StoreGrid.Cell[StoreGrid.RowCount-1,1].Clickable := True;
              storedel:=true;
            end;
        end else if GrpUseQuery.FieldByName('ITEMKIND').AsInteger=2 then begin
            VoucherGrid.RowCount:=VoucherGrid.RowCount+1;
            with VoucherGrid.Cell[VoucherGrid.RowCount-1, 0] do begin
              Text := GrpUseQuery.FieldByName('JOBNAME').AsString;
            end;
            pList.Add (GrpUseQuery.FieldByName('ID').AsString);
            if testbox.Checked then begin
              can_delete:=(UserSession.privilege and PRIV_EDIT)<>0;
            end else begin
              can_delete:=(UserSession.privilege and PRIV_LIVE)<>0;
            end;
            if GrpUseQuery.FieldByName('TEMPLATE').AsString='1' then begin
              VoucherGrid.Cell[VoucherGrid.RowCount-1,2].text:='Params';
              VoucherGrid.Cell[VoucherGrid.RowCount-1,2].Clickable:=true;
            end else begin
              VoucherGrid.Cell[VoucherGrid.RowCount-1,2].text:='';
            end;
            if can_delete then begin
              VoucherGrid.Cell[VoucherGrid.RowCount-1,1].text:=SiLangLinked1.GetTextOrDefault('Grid.Delete');
              VoucherGrid.Cell[VoucherGrid.RowCount-1,1].Clickable := True;
            end else
              VoucherGrid.Cell[VoucherGrid.RowCount-1,1].text:='';
        end;
        GrpUseQuery.Next;
    end;
    GrpUseQuery.Close;
    GrpUseQuery.Transaction.Active:=false;
  end;
  with RcDataModule do begin
    GrpTmplQuery.Close;
    GrpTmplQuery.ParamByName('COMPANY').AsString:=
       UserSession.Company;
    GrpTmplQuery.ParamByName('GROUPID').AsString:=RcDataModule.GetValue ('editgroup','');
    GrpTmplQuery.Open;
    while not GrpTmplQuery.Eof do begin
        TemplateGrid.RowCount:=TemplateGrid.RowCount+1;
        with TemplateGrid.Cell[TemplateGrid.RowCount-1, 0] do begin
          celltag:=tag_obj.create;
          celltag.s:=GrpTmplQuery.FieldByName('ID').AsString;
          tag:=celltag;
          Text := GrpTmplQuery.FieldByName('REVDATE').AsString;
          TemplateGrid.Cell[TemplateGrid.RowCount-1, 1].text:='';
          if GrpTmplQuery.FieldByName('PARAMVER').AsString<>'' then begin
             TemplateGrid.Cell[TemplateGrid.RowCount-1, 1].text:=SiLangLinked1.GetTextOrDefault('Grid.Current');;
          end;
        end;
        TemplateGrid.Cell[TemplateGrid.RowCount-1,4].text:=GrpTmplQuery.FieldByName('NOTE').AsString;
        with TemplateGrid.Cell[TemplateGrid.RowCount-1,2] do begin
          text:=SiLangLinked1.GetTextOrDefault('Grid.Edit');
          Clickable:=true;
        end;
        with TemplateGrid.Cell[TemplateGrid.RowCount-1,3] do begin
          text:=SiLangLinked1.GetTextOrDefault('Grid.Properties');
          Clickable:=true;
        end;
        GrpTmplQuery.Next;
    end;
    GrpTmplQuery.Close;
    GrpTmplQuery.Transaction.Active:=false;
  end;
  if not testbox.checked and ((UserSession.privilege and PRIV_LIVE)=0) then Vouchergrid.columncount:=1;
  if not storedel then storegrid.columncount:=1;
  if has_live_stores then begin
     testbox.enabled:=false;
  end else begin
     testbox.enabled:=(UserSession.privilege and PRIV_LIVE)<>0;
  end;
end;

procedure TFormGrpDtl.InitCombos;
var
  live_store : boolean;
begin
  with RcDataModule do begin
    GrpStoreQuery.Close;
    GrpStoreQuery.ParamByName('COMPANY').AsString:=
       UserSession.Company;
    GrpStoreQuery.ParamByName('GROUPID').AsString:=RcDataModule.GetValue ('editgroup','');
    GrpStoreQuery.Open;
    StoreCombo.Items.Clear;
    storeIdList.Clear;
    while not GrpStoreQuery.Eof do begin
       live_store:=GrpStoreQuery.FieldByName('TEST').AsString<>'1';
       if (not live_store) or
          (not testbox.checked and ((UserSession.privilege and PRIV_LIVE)<>0)) then begin
         StoreCombo.Items.Add(GrpStoreQuery.FieldByName('NAME').AsString);
         storeIdList.Add(GrpStoreQuery.FieldByName('ID').AsString);
       end;
       GrpStoreQuery.next;
    end;
    GrpStoreQuery.Close;

    GrpPromoQuery.Close;
    GrpPromoQuery.ParamByName('COMPANY').AsString:=
       UserSession.Company;
    GrpPromoQuery.ParamByName('GROUPID').AsString:=RcDataModule.GetValue ('editgroup','');
    GrpPromoQuery.Open;
    PromoCombo.Items.Clear;
    promoIdList.Clear;
    while not GrpPromoQuery.Eof do begin
       if (GrpPromoQuery.FieldByName('Template').AsString<>'1') then begin
          PromoCombo.Items.Add(GrpPromoQuery.FieldByName('NAME').AsString);
          promoIdList.Add(GrpPromoQuery.FieldByName('ID').AsString);
       end;
       GrpPromoQuery.next;
    end;
    GrpPromoQuery.Close;
    GrpPromoQuery.Transaction.Active:=false;
  end;
  if not testbox.Checked then begin
    addjobbtn.Visible:=(promocombo.Items.Count>0) and ((UserSession.privilege and PRIV_LIVE)<>0);
  end else begin
    addjobbtn.Visible:=(promocombo.Items.Count>0) and ((UserSession.privilege and PRIV_EDIT)<>0);
  end;
  promocombo.visible:=addjobbtn.Visible;
  storecombo.visible:=storecombo.Items.Count>0;
  addstorebtn.Visible:=storecombo.Items.Count>0;
end;


procedure TFormGrpDtl.IWAppFormCreate(Sender: TObject);
begin
   StoreIdList := TStringlist.Create;
   PromoIdList := TStringlist.Create;
   sList:=TStringList.create;
   pList:=TStringList.create;

   IWSiLink1.InitForm;
   DelBtn.Confirmation:=SiLangLinked1.GetTextOrDefault('Delete');
   with RcDataModule.CurrentGroupQuery do begin
     ParamByName ('ID').AsString:=RcDataModule.GetValue('editgroup','');
     ParamByName ('COMPANY').AsString:=UserSession.Company;
     Transaction.Active:=true;
     Open;
     NameEdit.Text:=FieldByName('NAME').AsString;
     TestBox.Checked:=FieldByName('TESTGROUP').AsString='Y';
     CurrentTemplate:=FieldByName('PARAMVER').AsString;
     DrawGrids;
     InitCombos;
     Transaction.Active:=false;
   end;
   if (UserSession.privilege and PRIV_EDIT)=0 then begin  // No edit privilege
      testbox.Enabled:=false;
      DelBtn.visible:=false;
      nameedit.enabled:=false;
      nameedit.BGColor:=clbtnhighlight;
   end else if (UserSession.privilege and PRIV_LIVE)=0 then begin // No live privilege
      testbox.Enabled:=false;
      DelBtn.visible:=testbox.Checked;
      nameedit.enabled:=testbox.Checked;
      if not testbox.Checked then begin
         nameedit.BGColor:=clbtnhighlight;
      end;
   end;
end;

procedure TFormGrpDtl.CancelBtnClick(Sender: TObject);
begin
   GoReferer (referedby);
end;

procedure TFormGrpDtl.StoreGridRenderCell(ACell: TIWGridCell; const ARow,
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
      if Odd(ARow) then begin
        BGColor := clLtGray;
      end else begin
        BGColor := clNone;
      end;
    end;
  end;
end;

procedure TFormGrpDtl.IWAppFormDestroy(Sender: TObject);
var
  r,c : integer;
begin
   StoreIdList.Free;
   PromoIdList.Free;
   SList.Free;
   PList.Free;
   for r:=0 to Templategrid.RowCount-1 do
     for c:=0 to Templategrid.ColumnCount-1 do
       Templategrid.Cell[r,c].Tag.Free;
end;

procedure TFormGrpDtl.AddStoreBtnClick(Sender: TObject);
var
   index : integer;
begin
   index:=storecombo.ItemIndex;
   if index<0 then exit;
   try
     with RcDataModule.GrpAllocInsertQuery do begin
       ParamByName ('ID').AsInteger:=RcDataModule.NextId;
       ParamByName ('GROUPID').AsString:=RcDataModule.GetValue ('editgroup','');
       ParamByName ('ITEMID').AsString:=StoreIDList.Strings[storecombo.ItemIndex];
       ParamByName ('COMPANY').AsString:=UserSession.Company;
       ParamByName ('ITEMKIND').AsInteger:=1;
       ExecSQL;
       Transaction.Commit;
     end;
   except
   end;
   storecombo.items.Delete(index);
   storeidlist.Delete(index);
   if storecombo.Items.Count=0 then begin
      storecombo.visible:=false;
      addstorebtn.Visible:=false;
   end;
   storecombo.itemindex:=-1;
   DrawGrids;
end;

procedure TFormGrpDtl.AddJobBtnClick(Sender: TObject);
var
   index : integer;
begin
   index:=promocombo.ItemIndex;
   if index<0 then exit;
   try
     with RcDataModule.GrpAllocInsertQuery do begin
       ParamByName ('ID').AsInteger:=RcDataModule.NextId;
       ParamByName ('GROUPID').AsString:=RcDataModule.GetValue ('editgroup','');
       ParamByName ('ITEMID').AsString:=PromoIDList.Strings[promocombo.ItemIndex];
       ParamByName ('COMPANY').AsString:=UserSession.Company;
       ParamByName ('ITEMKIND').AsInteger:=2;
       ExecSQL;
       Transaction.Commit;
     end;
   except
   end;
   promocombo.items.Delete(index);
   promoidlist.Delete(index);
   promocombo.itemindex:=-1;
   if promocombo.Items.Count=0 then begin
       promocombo.visible:=false;
       addjobbtn.Visible:=false;
   end;
   DrawGrids;
end;

procedure TFormGrpDtl.StoreGridCellClick(ASender: TObject; const ARow,
  AColumn: Integer);
begin
  with RcDataModule.AllocItemDelQry do begin
    ParamByName ('ITEMID').AsString:=sList[ARow-1];
    ParamByName ('ITEMKIND').AsString:='1';
    ParamByName ('COMPANY').AsString:=UserSession.Company;
    ExecSQL;
    Transaction.commit;
  end;
  DrawGrids;
  InitCombos;
end;

procedure TFormGrpDtl.VoucherGridCellClick(ASender: TObject; const ARow,
  AColumn: Integer);
begin
  try
    with RcDataModule do begin
      SQLEx.Transaction.Active:=false;
      SQLEx.Transaction.Active:=true;
      SQLEx.SQL.Clear;
      SQLEx.SQL.Add('delete from GROUPALLOC where ID=:ID and ITEMKIND=2 and COMPANY=:COMPANY');
      SQLEx.ParamByName ('ID').AsString:=PList[ARow-1];
      SQLEx.ParamByName ('COMPANY').AsString:=UserSession.Company;
      SQLEx.ExecQuery;
      SQLEx.Transaction.Commit;
    end;
  except
  end;
  DrawGrids;
  InitCombos;
end;

procedure TFormGrpDtl.TestBoxChange(Sender: TObject);
begin
  DrawGrids;
  InitCombos;
  with RcDataModule.GroupUpdateTestQuery do begin
    ParamByName('ID').AsString:=RcDataModule.GetValue('editgroup','');
    ParamByName('COMPANY').AsString:=UserSession.Company;
    if Testbox.Checked then ParamByName('TESTGROUP').AsString:='Y'
       else ParamByName('TESTGROUP').AsString:='N';
    ExecSQL;
    Transaction.Commit;
  end;  
end;

procedure TFormGrpDtl.NewTmplRevBtnClick(Sender: TObject);
begin
   try
     with RcDataModule.GroupTmplInsertQuery do begin
       ParamByName ('ID').AsInteger:=RcDataModule.NextId;
       ParamByName ('GROUPID').AsString:=RcDataModule.GetValue ('editgroup','');
       ParamByName ('COMPANY').AsString:=UserSession.Company;
       ParamByName ('REVDATE').AsDateTime:=now;
       ExecSQL;
       Transaction.Commit;
     end;
   except
   end;
   DrawGrids;
end;

procedure TFormGrpDtl.DelBtnClick(Sender: TObject);
begin
  with RcDataModule.GroupDeleteQuery do begin
      ParamByName('ID').AsString:=RcDataModule.GetValue ('editgroup','');
      ParamByName('COMPANY').AsString:=UserSession.Company;
      ExecSQL;
      Transaction.Commit;
  end;
  GoReferer (referedby);
end;

procedure TFormGrpDtl.EditBtnClick(Sender: TObject);
var
   TFGNE : TFormGroupNameEdit;
begin
   TIWAppForm(WebApplication.ActiveForm).Release;
//   if referedby=nil then
   TFGNE:=TFormGroupNameEdit.Create(WebApplication);
   TFGNE.NameEdit.Text:=NameEdit.Text;
   TFGNE.show;
end;

procedure TFormGrpDtl.TemplateGridCellClick(ASender: TObject; const ARow,
  AColumn: Integer);
var
   FGT : TFormGrpTmpl;
   TRP : TFormTmplRevProp;
begin
   RcDataModule.SaveValue ('edittmpl',tag_obj(templategrid.Cell[arow,0].tag).s);
   TIWAppForm(WebApplication.ActiveForm).Release;
   if AColumn=2 then begin
     FGT:=TFormGrpTmpl.create(WebApplication);
     //FGT.CurrentBox.Checked:=CurrentTemplate=tag_obj(templategrid.Cell[arow,0].tag).s;
     FGT.show;
   end else begin
     TRP:=TFormTmplRevProp.create(WebApplication);
     TRP.NoteEdit.Text:=templategrid.Cell[arow,4].Text;
     TRP.show;
   end;
end;

end.
