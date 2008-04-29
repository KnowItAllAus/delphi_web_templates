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
    procedure IWAppFormCreate(Sender: TObject);
    procedure PostButtonClick(Sender: TObject);
    procedure DelBtnClick(Sender: TObject);
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
  private
    StoreIdList : TStringlist;
    PromoIdList : TStringlist;
    sList : TStringlist;
    pList : TStringList;
    has_live_stores : boolean;
    procedure InitCombos;
    procedure DrawGrids;
  public
    referedby : referer_class;
  end;

implementation

uses datamod, db, servercontroller, IWInit, grpForm, graphics, cfgtypes, dialogs;

{$R *.dfm}

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
begin
  has_live_stores:=false;
  StoreGrid.ColumnCount:=2;
  VoucherGrid.ColumnCount:=2;
  With StoreGrid do begin
      RowCount:=1;
      Cell[0, 0].Text := SiLangLinked1.GetTextOrDefault('Grid.Name');
      Cell[0, 1].Text:='';
  end;
  With VoucherGrid do begin
      RowCount:=1;
      Cell[0, 0].Text := SiLangLinked1.GetTextOrDefault('Grid.Name');
      Cell[0, 1].Text:='';
  end;
  sList.Clear;
  pList.Clear;
  storedel:=false;
  with RcDataModule do begin
    GrpUseQuery.Close;
    GrpUseQuery.ParamByName('COMPANY').AsString:=
       UserSession.Company;
    GrpUseQuery.ParamByName('GROUPID').AsString:=
       CurrentGroupQuery.FieldByName('ID').AsString;
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
            pList.Add (GrpUseQuery.FieldByName('ITEMID').AsString);
            if testbox.Checked then begin
              can_delete:=(UserSession.privilege and PRIV_EDIT)<>0;
            end else begin
              can_delete:=(UserSession.privilege and PRIV_LIVE)<>0;
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
    GrpStoreQuery.ParamByName('GROUPID').AsString:=
       RcDataModule.GetValue ('editgroup','');
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
    GrpPromoQuery.ParamByName('GROUPID').AsString:=
       CurrentGroupQuery.FieldByName('ID').AsString;
    GrpPromoQuery.Open;
    PromoCombo.Items.Clear;
    promoIdList.Clear;
    while not GrpPromoQuery.Eof do begin
       PromoCombo.Items.Add(GrpPromoQuery.FieldByName('NAME').AsString);
       promoIdList.Add(GrpPromoQuery.FieldByName('ID').AsString);
       GrpPromoQuery.next;
    end;
    GrpPromoQuery.Close;
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
   end;
   DrawGrids;
   InitCombos;
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

procedure TFormGrpDtl.PostButtonClick(Sender: TObject);
begin
  with RcDataModule do begin
      GroupUpdateQuery.ParamByName('ID').AsString:=RcDataModule.GetValue('editgroup','');
      GroupUpdateQuery.ParamByName('COMPANY').AsString:=UserSession.Company;
      GroupUpdateQuery.ParamByName('NAME').AsString:=NameEdit.Text;
      if Testbox.Checked then GroupUpdateQuery.ParamByName('TESTGROUP').AsString:='Y'
         else GroupUpdateQuery.ParamByName('TESTGROUP').AsString:='N';
      GroupUpdateQuery.ExecSQL;
      GroupUpdateQuery.Transaction.Commit;
  end;
  GoReferer (referedby);
end;

procedure TFormGrpDtl.DelBtnClick(Sender: TObject);
begin
  with RcDataModule.GroupDeleteQuery do begin
      ParamByName('ID').AsString:=
        RcDataModule.CurrentGroupQuery.FieldByName('ID').AsString;
      ParamByName('COMPANY').AsString:=
        RcDataModule.CurrentGroupQuery.FieldByName('COMPANY').AsString;
      ExecSQL;
      Transaction.Commit;
  end;
  GoReferer (referedby);
end;

procedure TFormGrpDtl.CancelBtnClick(Sender: TObject);
begin
   RcDataModule.Trans.Rollback;
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
begin
   StoreIdList.Free;
   PromoIdList.Free;
   SList.Free;
   PList.Free;
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
       ParamByName ('GROUPID').AsString:=RcDataModule.CurrentGroupQuery.FieldByName ('ID').AsString;
       ParamByName ('ITEMID').AsString:=StoreIDList.Strings[storecombo.ItemIndex];
       ParamByName ('COMPANY').AsString:=UserSession.Company;
       ParamByName ('ITEMKIND').AsInteger:=1;
       ExecSQL;
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
       ParamByName ('GROUPID').AsString:=RcDataModule.CurrentGroupQuery.FieldByName ('ID').AsString;
       ParamByName ('ITEMID').AsString:=PromoIDList.Strings[promocombo.ItemIndex];
       ParamByName ('COMPANY').AsString:=UserSession.Company;
       ParamByName ('ITEMKIND').AsInteger:=2;
       ExecSQL;
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
  with RcDataModule do begin
    AllocItemDelQry.ParamByName ('ITEMID').AsString:=sList[ARow-1];
    AllocItemDelQry.ParamByName ('ITEMKIND').AsString:='1';
    AllocItemDelQry.ParamByName ('COMPANY').AsString:=UserSession.Company;
    AllocItemDelQry.ExecSQL;
  end;
  DrawGrids;
  InitCombos;
end;

procedure TFormGrpDtl.VoucherGridCellClick(ASender: TObject; const ARow,
  AColumn: Integer);
begin
  with RcDataModule do begin
    AllocItemDelQry.ParamByName ('ITEMID').AsString:=pList[ARow-1];
    AllocItemDelQry.ParamByName ('ITEMKIND').AsString:='2';
    AllocItemDelQry.ParamByName ('COMPANY').AsString:=UserSession.Company;
    AllocItemDelQry.ExecSQL;
  end;
  DrawGrids;
  InitCombos;
end;

procedure TFormGrpDtl.TestBoxChange(Sender: TObject);
begin
  DrawGrids;
  InitCombos;
end;

end.
