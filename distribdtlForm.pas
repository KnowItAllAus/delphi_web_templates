unit distribdtlForm;

interface

uses
  Classes, SysUtils, IWAppForm, IWApplication, IWColor, IWTypes,
  footer_user, Controls, Forms, baretitle, IWCompListbox, IWCompButton,
  IWGrids, IWCompEdit, IWCompLabel, IWCompRectangle, siComp, siLngLnk,
  IWVCLBaseControl, IWBaseControl, IWBaseHTMLControl, IWControl,
  IWHTMLControls, IWSiLink, IWVCLBaseContainer, IWContainer,
  IWHTMLContainer, IWRegion, IWCompMemo;

type
  Tformdistribdtl = class(TIWAppForm)
    FrameBareTitle1: TFrameBareTitle;
    IWRegion1: TIWRegion;
    IWSiLink1: TIWSiLink;
    silanglinked1: TsiLangLinked;
    BodyRegion: TIWRegion;
    IWRectangle1: TIWRectangle;
    JobLabel: TIWLabel;
    NameEdit: TIWEdit;
    IWLabel3: TIWLabel;
    IWRectangle2: TIWRectangle;
    IWRegion5: TIWRegion;
    GrpLabel: TIWLabel;
    GrpGrid: TIWGrid;
    GrpAddBtn: TIWButton;
    GrpCombo: TIWComboBox;
    IWLabel1: TIWLabel;
    DescEdit: TIWEdit;
    userfooter1: Tuserfooter;
    procedure IWAppFormCreate(Sender: TObject);
    procedure GrpGridRenderCell(ACell: TIWGridCell; const ARow,
      AColumn: Integer);
    procedure userfooter1CancelClick(Sender: TObject);
    procedure IWAppFormDestroy(Sender: TObject);
    procedure GrpAddBtnClick(Sender: TObject);
    procedure userfooter1Extra1Click(Sender: TObject);
    procedure GrpGridCellClick(ASender: TObject; const ARow,
      AColumn: Integer);
  private
    GrpList : TStringList;
    InitialGrps : TStringlist;
    procedure RefreshGrid;
    procedure ClearGrid;
  end;

implementation

{$R *.dfm}
uses datamod, distrib, graphics, servercontroller, cfgtypes;

type tag_obj = class
  test : boolean;
  s : string;
end;

procedure TFormDistribDtl.ClearGrid;
var
  r, c : integer;
begin
  for r:=0 to Grpgrid.RowCount-1 do
     for c:=0 to Grpgrid.ColumnCount-1 do
       Grpgrid.Cell[r,c].Tag.Free;
  GrpGrid.ColumnCount:=2;
  GrpGrid.RowCount:=1;
end;

procedure TFormDistribDtl.RefreshGrid;
var
  i : integer;
  s : string;
  _index : integer;
  test_group : boolean;
  has_delete : boolean;
  celltag : tag_obj;
begin
  GrpCombo.Items.Clear;
  GrpList.Clear;
  ClearGrid;
  RcDataModule.GroupQuery.Close;
  RcDataModule.GroupQuery.ParamByName('COMPANY').AsString:=
     UserSession.Company;
  RcDataModule.GroupQuery.Open;
  while not RcDataModule.GroupQuery.Eof do begin
     test_group:=RcDataModule.GroupQuery.FieldByName('TESTGROUP').AsString='Y';
     if (test_group or ((UserSession.privilege and PRIV_LIVE)<>0)) then begin
       GrpList.Add (RcDataModule.GroupQuery.FieldByName('ID').AsString);
       GrpCombo.Items.Add (RcDataModule.GroupQuery.FieldByName('Name').AsString);
     end;
     RcDataModule.GroupQuery.Next;
  end;
  RcDataModule.GroupQuery.Close;

  with RcDataModule.GrpAllocQuery do begin
    Close;
    ParamByName('COMPANY').AsString:=UserSession.Company;
    ParamByName('ITEMID').AsString:=RcDataModule.CurrentJobQuery.FieldByName('ID').AsString;
    Open;
  end;
  has_delete:=false;
  with GrpGrid do begin
    ColumnCount:=2;
    RowCount:=1;
    Cell[0, 0].Text := SiLangLinked1.GetTextOrDefault('Grid.Name');
    Cell[0, 1].Text := ' ';
    i:=1;
    while not RcDataModule.GrpAllocQuery.Eof do begin
      RowCount:=RowCount+1;
      test_group:=RcDataModule.GrpAllocQuery.FieldByName('TESTGROUP').AsString='Y';
      if (test_group or ((UserSession.privilege and PRIV_LIVE)<>0)) then begin
        with Cell[i, 1] do begin
          clickable:=true;
          text:=SiLangLinked1.GetTextOrDefault('Grid.Delete');;
          celltag:=tag_obj.create;
          celltag.test:=false;
          celltag.s:=RcDataModule.GrpAllocQuery.FieldByName('ID').AsString;
          tag:=celltag;
        end;
        has_delete:=true;
      end;
      try
        _index:=GrpList.indexof (RcDataModule.GrpAllocQuery.FieldByName('GROUPID').AsString);
      except
        _index:=-1;
      end;
      if _index>-1 then begin
         GrpList.Delete(_index);
         GrpCombo.Items.Delete(_index);
      end;
      with Cell[i, 0] do begin
        s := RcDataModule.GrpAllocQuery.FieldByName('NAME').AsString;
        while (copy(s,1,1)=' ') do delete (s,1,1);
        if s='' then
           text:='???'
           else
           text:=s;
        if test_group then begin
           font.Style:=[fsItalic];
           font.Color:=clRed;
        end;
      end;
      inc (i);
      RcDataModule.GrpAllocQuery.Next;
    end;
  end;
  RcDataModule.GrpAllocQuery.Close;
  GrpCombo.visible:=true;
  GrpAddBtn.Visible:=true;
  if (GrpCombo.items.count=0) or ((UserSession.privilege and PRIV_EDIT)=0) then begin
     GrpCombo.visible:=false;
     GrpAddBtn.Visible:=false;
  end;
  if not has_delete then GrpGrid.ColumnCount:=2;
end;

procedure Tformdistribdtl.IWAppFormCreate(Sender: TObject);
begin
  IWSilink1.InitForm;
  with RcDataModule.CurrentJobQuery do begin
     NameEdit.Text:=FieldByName ('Name').AsString;
     DescEdit.Caption:=FieldByName ('Description').AsString;
  end;
  GrpList:=TStringList.Create;

  InitialGrps:=TStringlist.create;
  with RcDataModule.GrpAllocQuery do begin
    Close;
    ParamByName('COMPANY').AsString:=UserSession.Company;
    ParamByName('ITEMID').AsString:=RcDataModule.CurrentJobQuery.FieldByName('ID').AsString;
    Open;
    while not eof do begin
       InitialGrps.Add (FieldByName ('GroupId').AsString);
       next;
    end;
    close;
  end;
  RefreshGrid;
end;

procedure Tformdistribdtl.GrpGridRenderCell(ACell: TIWGridCell; const ARow,
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

procedure Tformdistribdtl.userfooter1CancelClick(Sender: TObject);
begin
   RcDataModule.Trans.Rollback;
   TIWAppForm(WebApplication.ActiveForm).Release;
   TFormdistrib.Create(WebApplication).Show;
end;

procedure Tformdistribdtl.IWAppFormDestroy(Sender: TObject);
begin
   ClearGrid;
   GrpList.free;
   InitialGrps.Free;
end;

procedure Tformdistribdtl.GrpAddBtnClick(Sender: TObject);
begin
  if GrpCombo.ItemIndex=-1 then exit;
  try
    with RcDataModule.GrpAllocInsertQuery do begin
      ParamByName ('ID').AsInteger:=RcDataModule.NextId;
      ParamByName ('GROUPID').AsString:=GrpList.Strings[GrpCombo.ItemIndex];
      ParamByName ('ITEMID').AsString:=RcDataModule.CurrentJobQuery.FieldByName ('ID').AsString;
      ParamByName ('COMPANY').AsString:=UserSession.Company;
      ParamByName ('ITEMKIND').AsInteger:=2;
      ExecSQL;
    end;
  except
  end;
  GrpCombo.ItemIndex:=-1;
  RefreshGrid;
end;

procedure Tformdistribdtl.userfooter1Extra1Click(Sender: TObject);
var
  FinalGrps : TStringlist;
  GroupsAffected : TStringlist;
  i : integer;
begin
  FinalGrps:=TStringlist.create;
  GroupsAffected:=TStringList.Create;
  try
    try
      with RcDataModule.GrpAllocQuery do begin
        Close;
        ParamByName('COMPANY').AsString:=UserSession.Company;
        ParamByName('ITEMID').AsString:=RcDataModule.CurrentJobQuery.FieldByName('ID').AsString;
        Open;
        while not eof do begin
           FinalGrps.Add (FieldByName ('GroupId').AsString);
           next;
        end;
        close;
      end;

      for i:=0 to FinalGrps.Count-1 do begin
        if InitialGrps.IndexOf(FinalGrps.Strings[i])=-1 then begin
           GroupsAffected.Add(FinalGrps.Strings[i]);
        end;
      end;
      for i:=0 to InitialGrps.Count-1 do begin
        if FinalGrps.IndexOf(InitialGrps.Strings[i])=-1 then begin
           GroupsAffected.Add (InitialGrps.Strings[i]);
        end;
      end;
      RcDataModule.Trans.Commit;
      RcDataModule.NotifyGroupOfChanges (GroupsAffected,false);
    finally
      FinalGrps.Free;
      GroupsAffected.Free;
    end;
  except
    WebApplication.ShowMessage(userfooter1.silink_footer.GetTextOrDefault('DBError'));
    exit;
  end;

  TIWAppForm(WebApplication.ActiveForm).Release;
  TFormdistrib.Create(WebApplication).Show;
end;

procedure Tformdistribdtl.GrpGridCellClick(ASender: TObject; const ARow,
  AColumn: Integer);
begin
  with RcDataModule do begin
    GrpAllocDelQuery.ParamByName ('ID').AsString:=tag_obj(GrpGrid.Cell[ARow,1].tag).s;
    GrpAllocDelQuery.ParamByName ('COMPANY').AsString:=UserSession.Company;
    GrpAllocDelQuery.ExecSQL;
  end;
  RefreshGrid;
end;

end.
