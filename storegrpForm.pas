unit storegrpForm;

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
  TformGrpStore = class(TIWAppForm)
    siLangLinked1: TsiLangLinked;
    IWRegion1: TIWRegion;
    IWRegion2: TIWRegion;
    StoreLabel: TIWLabel;
    GrpGrid: TIWGrid;
    GroupCombo: TIWComboBox;
    IWLabel3: TIWLabel;
    AddGrpBtn: TIWButton;
    IWSiLink1: TIWSiLink;
    userfooter1: Tuserfooter;
    IWRectangle1: TIWRectangle;
    IWRectangle2: TIWRectangle;
    FrameBareTitle1: TFrameBareTitle;
    procedure CancelBtnClick(Sender: TObject);
    procedure PostButtonClick(Sender: TObject);
    procedure IWAppFormCreate(Sender: TObject);
    procedure IWAppFormDestroy(Sender: TObject);
    procedure AddGrpBtnClick(Sender: TObject);
    procedure GrpGridCellClick(ASender: TObject; const ARow,
      AColumn: Integer);
    procedure IWAppFormDefaultAction(Sender: TObject);
    procedure GrpGridRenderCell(ACell: TIWGridCell; const ARow,
      AColumn: Integer);
  private
    GrpList : TStringList;
    GList : TStringList;
    referedby : referer_class;
    teststore : boolean;
    procedure drawGroupGrid;
    { Private declarations }
  public
    { Public declarations }
    procedure populate_fields (is_test_store : boolean);
  end;

implementation

uses datamod, db, servercontroller, IWInit, PrinterForm, cfgtypes, global, overviewform;

{$R *.DFM}

procedure GoStores(referedby : referer_class);
begin
   RcDataModule.Trans.Active:=False;
   RcDataModule.Trans.StartTransaction;
   TIWAppForm(WebApplication.ActiveForm).Release;
   if (referedby=nil) then
     TFormOverview.create(WebApplication).show
   else
     referer_class.create(WebApplication).show;
end;

procedure TformGrpStore.CancelBtnClick(Sender: TObject);
begin
  RcDataModule.CurrentStoreQuery.Transaction.Active:=False;
  GoStores(referedby);
end;

procedure TformGrpStore.PostButtonClick(Sender: TObject);
begin
  try
    RcDataModule.GrpAllocInsertQuery.Transaction.Commit;
  except
    WebApplication.ShowMessage(userfooter1.silink_footer.GetTextOrDefault('DBError'));
    exit;
  end;

  try
    RcDataModule.NotifyStoreOfChanges (RcDataModule.CurrentstoreQuery.ParamByName('ID').AsString,false);
  except
  end;

  GoStores(referedby);
end;

procedure TformGrpStore.IWAppFormCreate(Sender: TObject);
begin
  IWSilink1.InitForm;
  GrpList:=TStringlist.create;
  GList:=TStringlist.create;
end;

procedure TformGrpStore.populate_fields (is_test_store : boolean);
begin
  teststore:=is_test_store;
  DrawGroupGrid;
  if is_test_store then Storelabel.Font.Style:=[fsItalic];
end;

procedure TformGrpStore.IWAppFormDestroy(Sender: TObject);
begin
  GrpList.Free;
  GList.Free;
end;

procedure TformGrpStore.AddGrpBtnClick(Sender: TObject);
begin
  if GroupCombo.ItemIndex=-1 then exit;
  try
    with RcDataModule.GrpAllocInsertQuery do begin
      ParamByName ('ID').AsInteger:=RcDataModule.NextId;
      ParamByName ('GROUPID').AsString:=GList.Strings[GroupCombo.ItemIndex];
      ParamByName ('ITEMID').AsString:=RcDataModule.CurrentStoreQuery.ParamByName ('ID').AsString;
      ParamByName ('COMPANY').AsString:=UserSession.Company;
      ParamByName ('ITEMKIND').AsInteger:=1;
      ExecSQL;
    end;
  except
  end;
  DrawGroupGrid;
  GroupCombo.ItemIndex:=-1;
end;

procedure TformGrpStore.DrawGroupGrid;
var
  i : integer;
  _index : integer;
  GrpID : integer;
  haslink : boolean;
begin
  RcDataModule.GroupQuery.Close;
  RcDataModule.GroupQuery.ParamByName('COMPANY').AsString:=
     UserSession.Company;
  RcDataModule.GroupQuery.Open;
  GroupCombo.Items.Clear;
  GList.Clear;
  with GroupCombo do begin
    while not RcDataModule.GroupQuery.Eof do begin
      GList.Add (RcDataModule.GroupQuery.FieldByName('ID').AsString);
      Items.Add (RcDataModule.GroupQuery.FieldByName('Name').AsString);
      RcDataModule.GroupQuery.Next;
    end;
  end;
  GroupCombo.ItemIndex:=-1;
  RcDataModule.GroupQuery.Close;

  GrpGrid.RowCount:=0;
  GrpList.Clear;
  with RcDataModule do begin
    GrpAllocQuery.Close;
    GrpAllocQuery.ParamByName('COMPANY').AsString:=
       UserSession.Company;
    GrpAllocQuery.ParamByName('ITEMID').AsString:=
       CurrentStoreQuery.ParamByName('ID').AsString;
    GrpAllocQuery.Open;
    haslink:=false;
    with GrpGrid do begin
      ColumnCount:=2;
      RowCount:=1;
      Cell[0, 1].Text := '';
      Cell[0, 0].Text := htmlquote(SiLangLinked1.GetTextOrDefault ('Grid.Name'));
      i:=1;
      while not GrpAllocQuery.Eof do begin
        RowCount:=RowCount+1;
        with Cell[i, 1] do begin
          if teststore or ((UserSession.privilege and PRIV_LIVE)<>0) then begin
              Clickable := True;
              GrpList.Add (GrpAllocQuery.FieldByName('ID').AsString);
              Text:=SiLangLinked1.GetTextOrDefault ('Grid.Delete');
              haslink:=true;
          end else begin
              Text:='';
          end;
        end;
        with Cell[i, 0] do begin
          GrpID:=GrpAllocQuery.FieldByName('GROUPID').AsInteger;
          _Index:=GList.IndexOf (IntToStr(GrpID));
          if _Index>-1 then begin
             GList.Delete(_Index);
             GroupCombo.Items.Delete(_Index);
          end;
          Text := htmlquote(GrpAllocQuery.FieldByName('NAME').AsString);
          if GrpAllocQuery.FieldByName('TESTGROUP').AsString='Y' then
             Font.Style:=[fsitalic];
        end;
        inc (i);
        GrpAllocQuery.Next;
      end;
    end;
    GrpAllocQuery.Close;
  end;
  if not haslink then GrpGrid.ColumnCount:=1;
  if (GroupCombo.Items.Count=0) or ((UserSession.privilege and PRIV_EDIT)=0) then begin
    GroupCombo.visible:=false;
    AddGrpBtn.Visible:=false;
  end else begin
    GroupCombo.visible:=true;
    AddGrpBtn.Visible:=true;
  end;
end;

procedure TformGrpStore.GrpGridCellClick(ASender: TObject; const ARow,
  AColumn: Integer);
begin
  with RcDataModule do begin
    GrpAllocDelQuery.ParamByName ('ID').AsString:=GrpList.Strings[ARow-1];
    GrpAllocDelQuery.ParamByName ('COMPANY').AsString:=UserSession.Company;
    GrpAllocDelQuery.ExecSQL;
  end;
  DrawGroupGrid;
end;

procedure TformGrpStore.IWAppFormDefaultAction(Sender: TObject);
begin
  PostButtonClick (Sender);
end;

procedure TformGrpStore.GrpGridRenderCell(ACell: TIWGridCell; const ARow,
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

end.
