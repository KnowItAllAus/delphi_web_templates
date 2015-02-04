unit credsForm;

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
  TformCreds = class(TIWAppForm)
    siLangLinked1: TsiLangLinked;
    IWRegion1: TIWRegion;
    IWRegion2: TIWRegion;
    CredLabel: TIWLabel;
    IWLabel1: TIWLabel;
    NameEdit: TIWEdit;
    valueEdit: TIWEdit;
    IWLabel2: TIWLabel;
    CredGrid: TIWGrid;
    IWSiLink1: TIWSiLink;
    FrameBareTitle1: TFrameBareTitle;
    userfooter1: Tuserfooter;
    IWRectangle1: TIWRectangle;
    IWRectangle2: TIWRectangle;
    storenamelbl: TIWLabel;
    IWLabel3: TIWLabel;
    lookupedit: TIWEdit;
    IWLabel4: TIWLabel;
    domainedit: TIWEdit;
    DelCredBtn: TIWButton;
    Vendoredit: TIWEdit;
    IWLabel5: TIWLabel;
    CancelCredBtn: TIWButton;
    AddCredBtn: TIWButton;
    procedure CancelBtnClick(Sender: TObject);
    procedure IWAppFormCreate(Sender: TObject);
    procedure CredGridRenderCell(ACell: TIWGridCell; const ARow,
      AColumn: Integer);
    procedure IWAppFormDestroy(Sender: TObject);
    procedure CredGridCellClick(ASender: TObject; const ARow, AColumn: Integer);
    procedure CancelCredBtnClick(Sender: TObject);
    procedure DelCredBtnClick(Sender: TObject);
    procedure AddCredBtnClick(Sender: TObject);
  private
    procedure drawCredGrid;
    { Private declarations }
  public
    { Public declarations }
    referedby : referer_class;
  end;

implementation

uses datamod, db, servercontroller, IWInit, cfgtypes, global, parse_utils, IWTypes, dateutils, StoresForm;

{$R *.DFM}


procedure GoReferer(referedby : referer_class);
begin
   RcDataModule.Trans.Active:=False;
   RcDataModule.Trans.StartTransaction;
   TIWAppForm(WebApplication.ActiveForm).Release;
   referedby.Create(WebApplication).Show;
end;

procedure TformCreds.AddCredBtnClick(Sender: TObject);
begin
  if (nameedit.readonly=false) then begin
    with RcDataModule.CredAdd do begin
      ParamByName('VENDOR').AsString:=VendorEdit.Text;
      ParamByName('STORE_ID').AsString:=RcDataModule.CredQuery.ParamByName('STORE_ID').AsString;
      ParamByName('MDOMAIN').AsString:=domainedit.text;
      ParamByName('FTYPE').AsString:='M';
      if lookupedit.text<>'' then
         ParamByName('FTYPE').AsString:='L';
      ParamByName('DATA').AsString:=valueedit.text;
      ParamByName('LOOKUP').AsString:=lookupedit.text;
      ParamByName('NAME').AsString:=nameedit.text;
      ExecSQL;
      transaction.Commit;
    end;
  end else begin
    with RcDataModule.CredUpdate do begin
      ParamByName('VENDOR').AsString:=VendorEdit.Text;
      ParamByName('STORE_ID').AsString:=RcDataModule.CredQuery.ParamByName('STORE_ID').AsString;
      ParamByName('MDOMAIN').AsString:=domainedit.text;
      ParamByName('FTYPE').AsString:='M';
      if lookupedit.text<>'' then
         ParamByName('FTYPE').AsString:='L';
      ParamByName('DATA').AsString:=valueedit.text;
      ParamByName('LOOKUP').AsString:=lookupedit.text;
      ParamByName('NAME').AsString:=nameedit.text;
      ExecSQL;
      transaction.Commit;
    end;
  end;
  drawcredgrid;
  CancelCredBtnClick(Sender);
end;

procedure TformCreds.CancelBtnClick(Sender: TObject);
begin
   TIWAppForm(WebApplication.ActiveForm).Release;
   TFormStores.Create(WebApplication).Show;
end;

procedure TformCreds.DrawCredGrid;
var
  i : integer;
  dt : TDateTime;
begin
  with RcDataModule.CredQuery do begin
     open;
  end;

  with CredGrid do begin
    RowCount:=1;
    Cell[0, 1].Text := SiLangLinked1.GetTextOrDefault ('Grid.Vendor');
    Cell[0, 2].Text := SiLangLinked1.GetTextOrDefault ('Grid.Domain');
    Cell[0, 3].Text := SiLangLinked1.GetTextOrDefault ('Grid.Name');
    Cell[0, 4].Text := SiLangLinked1.GetTextOrDefault ('Grid.Lookup');
    Cell[0, 5].Text := SiLangLinked1.GetTextOrDefault ('Grid.FType');
    Cell[0, 6].Text := SiLangLinked1.GetTextOrDefault ('Grid.Data');
    Cell[0, 0].Text := SiLangLinked1.GetTextOrDefault ('');
    i:=1;
    while not RcDataModule.CredQuery.Eof do begin
      RowCount:=i+1;
      with Cell[i, 0] do begin
        Clickable:=true;
        Text := SiLangLinked1.GetTextOrDefault ('Grid.Edit');
      end;
      with Cell[i, 1] do begin
        Text := RcDataModule.CredQuery.FieldByName('VENDOR').AsString;
      end;
      with Cell[i, 2] do begin
        Text := RcDataModule.CredQuery.FieldByName('MDOMAIN').AsString;
      end;
      with Cell[i, 3] do begin
        Text := RcDataModule.CredQuery.FieldByName('NAME').AsString;
      end;
      with Cell[i, 4] do begin
        Text := RcDataModule.CredQuery.FieldByName('LOOKUP').AsString;
      end;
      with Cell[i, 5] do begin
        Text := RcDataModule.CredQuery.FieldByName('FTYPE').AsString;
      end;
      with Cell[i, 6] do begin
        Text := RcDataModule.CredQuery.FieldByName('DATA').AsString;
      end;

      inc (i);
      RcDataModule.CredQuery.Next;
    end;
  end;
  RcDataModule.CredQuery.Close;
end;

procedure TformCreds.IWAppFormCreate(Sender: TObject);
var
  i : integer;
  co : string;
begin
  IWSilink1.InitForm;
  co:=TUserSession(WebApplication.Data).Company;
  DrawCredGrid;
  CancelCredBtnClick(sender);
end;

procedure TformCreds.CancelCredBtnClick(Sender: TObject);
begin
  LookupEdit.text:='';
  NameEdit.text:='';
  VendorEdit.text:='';
  DomainEdit.text:='';
  ValueEdit.text:='';
  NameEdit.readonly:=false;
  NameEdit.BGColor:=clNone;
  CancelCredBtn.Visible:=false;
  DelCredBtn.Visible:=false;
  AddCredBtn.Caption:='Add';
end;

procedure TformCreds.CredGridCellClick(ASender: TObject; const ARow,
  AColumn: Integer);
begin
  LookupEdit.text:=htmlquote(CredGrid.Cell[ARow,4].Text);
  NameEdit.text:=htmlquote(CredGrid.Cell[ARow,3].Text);
  VendorEdit.text:=htmlquote(CredGrid.Cell[ARow,1].Text);
  DomainEdit.text:=htmlquote(CredGrid.Cell[ARow,2].Text);
  ValueEdit.text:=htmlquote(CredGrid.Cell[ARow,6].Text);
  NameEdit.readonly:=true;
  NameEdit.BGColor:=clGray;
  CancelCredBtn.Visible:=true;
  AddCredBtn.Caption:='Update';
  DelCredBtn.Visible:=true;
end;

procedure TformCreds.CredGridRenderCell(ACell: TIWGridCell; const ARow,
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

procedure TformCreds.DelCredBtnClick(Sender: TObject);
begin
  with RcDataModule.CredDel do begin
    ParamByName ('NAME').AsString:=nameedit.Text;
    ParamByName ('STORE_ID').AsString:=RcDataModule.CredQuery.ParamByName('STORE_ID').AsString;
    ExecSQL;
    transaction.Commit;
  end;
  drawcredgrid;
  CancelCredBtnClick(sender);
end;

procedure TformCreds.IWAppFormDestroy(Sender: TObject);
begin
end;

(*procedure TformCreds.DrawCredGrid;
var
  i : integer;
  _index : integer;
  GrpID : integer;
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
       CurrentStoreQuery.FieldByName('ID').AsString;
    GrpAllocQuery.Open;
    with GrpGrid do begin
      RowCount:=1;
      Cell[0, 0].Text := '';
      Cell[0, 1].Text := SiLangLinked1.GetTextOrDefault ('Grid.Name');
      i:=1;
      while not GrpAllocQuery.Eof do begin
        RowCount:=RowCount+1;
        with Cell[i, 0] do begin
          Clickable := True;
          GrpList.Add (GrpAllocQuery.FieldByName('ID').AsString);
          Text:='Del';
        end;
        with Cell[i, 1] do begin
          GrpID:=GrpAllocQuery.FieldByName('GROUPID').AsInteger;
          _Index:=GList.IndexOf (IntToStr(GrpID));
          if _Index>-1 then begin
             GList.Delete(_Index);
             GroupCombo.Items.Delete(_Index);
          end;
          Text := htmlquote(GetGroupName (GrpID, StrToInt(UserSession.Company)));
        end;
        inc (i);
        GrpAllocQuery.Next;
      end;
    end;
    GrpAllocQuery.Close;
  end;
end;
*)

end.
