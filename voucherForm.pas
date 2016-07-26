unit voucherForm;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  IWControl, IWCompRectangle, IWGrids, IWDBGrids,
  IWHTMLControls, IWCompLabel, IWCompEdit, IWDBStdCtrls, IWCompButton,
  IWExtCtrls, IWDBExtCtrls, IWContainer, IWRegion,
  IWBaseControl, IWVCLBaseControl, IWVCLBaseContainer, IWBaseHTMLControl,
  IWAppForm, IWSiLink, siComp, siLngLnk, IWHTMLContainer, footer_user,
  baretitle, IWCompCheckbox, IWHTML40Container;

type
  TFormVoucher = class(TIWAppForm)
    FrameBareTitle1: TFrameBareTitle;
    userfooter1: Tuserfooter;
    IWRegion1: TIWRegion;
    IWSiLink1: TIWSiLink;
    BodyRegion: TIWRegion;
    IWRectangle2: TIWRectangle;
    IWRectangle1: TIWRectangle;
    VoucherGrid: TIWGrid;
    InsertBtn: TIWButton;
    silanglinked1: TsiLangLinked;
    JobLabel: TIWLabel;
    NoteLabel: TIWLabel;
    NoteEdit: TIWEdit;
    EditJobRevBtn: TIWButton;
    ImageGrid: TIWGrid;
    IWLabel3: TIWLabel;
    IWLabel4: TIWLabel;
    ImageBtn: TIWButton;
    AuthBox: TIWCheckBox;
    ProdBox: TIWCheckBox;
    TestBox: TIWCheckBox;
    FormatBox: TIWCheckBox;
    templatelbl: TIWLabel;
    procedure IWAppFormCreate(Sender: TObject);
    procedure VoucherGridRenderCell(ACell: TIWGridCell; const ARow,
      AColumn: Integer);
    procedure VoucherGridCellClick(ASender: TObject;const ARow, AColumn: Integer);
    procedure InsertBtnClick(Sender: TObject);
    procedure EditVoucher (ID : String);
    procedure IWAppFormDestroy(Sender: TObject);
    procedure userfooter1CancelClick(Sender: TObject);
    procedure EditJobRevBtnClick(Sender: TObject);
    procedure ImageBtnClick(Sender: TObject);
    procedure ImageGridCellClick(ASender: TObject; const ARow,
      AColumn: Integer);
    procedure AuthBoxClick(Sender: TObject);
    procedure TestBoxClick(Sender: TObject);
    procedure ProdBoxClick(Sender: TObject);
    procedure FormatBoxChange(Sender: TObject);
  private
    { Private declarations }
    IList : TStringList;
    GList : TStringList;
    enableclicks : boolean;
    istemplate : boolean;
    procedure EditHdr (ID : String);
    procedure DrawImageGrid;
    procedure EditImage (ID : String);
    procedure EditParams (ID : String);
    procedure RefreshPage;
  public
    { Public declarations }
  end;

var
  FormVoucher: TFormVoucher;

implementation

uses datamod, db, servercontroller, IWInit, voucherEditForm, voucherEditForm2, jobrev, jobrevdtlForm,
     imghdrform, cfgtypes, imagerevform, paramform;

{$R *.DFM}

procedure TformVoucher.EditImage (ID : String);
begin
  with RcDataModule.ImageVerQuery do begin
    Close;
    ParamByName ('COMPANY').AsString:=UserSession.Company;
    ParamByName ('HDRID').AsString:=ID;
  end;
  with RcDataModule.CurrentImagehdrQuery do begin
    Close;
    ParamByName ('COMPANY').AsString:=UserSession.Company;
    ParamByName ('ID').AsString:=ID;
  end;
  TIWAppForm(WebApplication.ActiveForm).Release;
  TFormImageVersions.Create (WebApplication).show;
end;

procedure TFormVoucher.DrawImageGrid;
var
  i : integer;
  s : string;
  templateobj : boolean;
begin
  RcDataModule.ImageJobQuery.Close;
  RcDataModule.ImageJobQuery.ParamByName('COMPANY').AsString:=
     UserSession.Company;
  RcDataModule.ImageJobQuery.ParamByName('JOBID').AsInteger:=
     UserSession.JobRevID;
  RcDataModule.ImageJobQuery.Open;
  with ImageGrid, RcDataModule.ImageJobQuery do begin
    Cell[0, 0].Text := SiLangLinked1.GetTextOrDefault('Grid.Name');
    Cell[0, 1].Text := SiLangLinked1.GetTextOrDefault('Grid.Type');
    Cell[0, 2].Text := SiLangLinked1.GetTextOrDefault('Grid.Desc');
    Cell[0, 3].Text := SiLangLinked1.GetTextOrDefault('Grid.GUID');
    Cell[0, 4].Text := '';
    i:=1;
    RowCount:=1;
    while not Eof do begin
      RowCount:=RowCount+1;
      GList.Add(FieldByName('ID').AsString);
      templateobj:=FieldByName('Template').AsString='1';
      with Cell[i, 0] do begin
        Clickable := True;
        if templateobj then
           Font.color:=clWhite
        else if (FieldByName('PROD_ID').AsString='') or (FieldByName('PROD_ID').AsString='0') then begin
           Font.Color:=clRed;
        end;
        s := htmlquote(FieldByName('Name').AsString);
        while (copy(s,1,1)=' ') do system.delete (s,1,1);
        if (s='') then
           text:='- - - - -'
           else
           text:=s;
      end;
      with Cell[i, 2] do begin
        text:=htmlquote(FieldByName('Description').AsString);
      end;
      with Cell[i, 1] do begin
        if FieldByName('refcount').AsString='0' then Font.color:=clYellow;
        try
           if templateobj then
              Text:='TMPL ('+FieldByName('refcount').AsString+')'
           else if FieldByName('Datamode').IsNull then
              Text:='- -'
           else
              Text:=DataModeNamesAbbr [datamodes(FieldByName('Datamode').AsInteger)]+' ('+FieldByName('refcount').AsString+')';
        except
           Text:='---';
        end;
      end;
      with Cell[i, 3] do begin
        if templateobj then Text:=''
           else Text := FieldByName('GUID').AsString;
      end;
      with Cell[i, 4] do begin
        Text := SiLangLinked1.GetTextOrDefault('Grid.Properties');
        Clickable:=true;
      end;
      inc (i);
      Next;
    end;
  end;
  RcDataModule.ImageJobQuery.Close;
end;

procedure TFormVoucher.RefreshPage;
var
  i: Integer;
  s : string;
begin
  JobLabel.Caption:=Usersession.JobName;
  NoteEdit.Caption:=UserSession.JobRevNote;
  enableclicks:=false;

  with RcDataModule.CurrentJobQuery do try
    Transaction.Active:=true;
    Open;
    ProdBox.Checked:=FieldByName('PROD_VER').AsString=IntToStr(UserSession.JobRevID);
    TestBox.Checked:=FieldByName('TEST_VER').AsString=IntToStr(UserSession.JobRevID);
    istemplate:=FieldByName('TEMPLATE').AsString='1';
    TemplateLbl.visible:=istemplate;
    RcDataModule.Trans.Rollback;
  except
    ProdBox.Checked:=false;
    TestBox.Checked:=false;
  end;

  with RcDataModule.CurrentJobRevQuery do try
    Transaction.Active:=true;
    ParamByName('COMPANY').AsString:=UserSession.Company;
    ParamByName('ID').AsInteger:=UserSession.JobRevID;
    Open;
    AuthBox.Checked:=FieldByName('AUTH').AsString='1';
    Close;
    Transaction.Rollback;
  except
    AuthBox.Checked:=false;
  end;

  ProdBox.Enabled:=AuthBox.Checked and ((UserSession.privilege and PRIV_LIVE)<>0);;

  ImageBtn.Enabled:=not AuthBox.Checked or not UserSession.Strictrules;
  InsertBtn.Enabled:=not AuthBox.Checked or not UserSession.Strictrules;
  EditJobRevBtn.Enabled:=not AuthBox.Checked or not UserSession.Strictrules;
  UserSession.Readonly:=AuthBox.Checked and UserSession.Strictrules;
  AuthBox.Enabled:=(UserSession.privilege and PRIV_LIVE)<>0;

  RcDataModule.Trans.Active:=true;
  RcDataModule.VoucherQuery.ParamByName('COMPANY').AsString:=
     TUserSession(WebApplication.Data).Company;
  RcDataModule.VoucherQuery.Open;

  with VoucherGrid do begin
    Cell[0, 0].Text := SiLangLinked1.GetTextOrDefault('Grid.Name');
    Cell[0, 1].Text := SiLangLinked1.GetTextOrDefault('Grid.Trigger');
    if istemplate then begin
       VoucherGrid.ColumnCount:=3;
       Cell[0, 2].Text := '';
    end;
    i:=1;
    RowCount:=1;
    while not RcDataModule.VoucherQuery.Eof do begin
      RowCount:=RowCount+1;
      IList.Add (RcDataModule.VoucherQuery.FieldByName('ID').AsString);
      with Cell[i, 0] do begin
        clickable:=true;
        s := htmlquote(RcDataModule.VoucherQuery.FieldByName('Name').AsString);
        while (copy(s,1,1)=' ') do delete (s,1,1);
        if s='' then
           text:=SiLangLinked1.GetTextOrDefault('Grid.NoName')
           else
           text:=s;
      end;
      with Cell[i, 1] do begin
        Text := RcDataModule.VoucherQuery.FieldByName('Trig').AsString;
      end;
      if istemplate then with Cell[i, 2] do begin
        Text := SiLangLinked1.GetTextOrDefault('Grid.Params');
        clickable:=true;
      end;
      inc (i);
      RcDataModule.VoucherQuery.Next;
    end;
  end;
  RcDataModule.VoucherQuery.Close;

  DrawImageGrid;
  RcDataModule.Trans.Active:=true;
  enableclicks:=true;
end;


procedure TFormVoucher.IWAppFormCreate(Sender: TObject);
begin
  inherited;
  enableclicks:=false;
  IWSilink1.InitForm;
  IList:=TStringList.Create;
  GList:=TStringList.Create;
  formatbox.checked:=usersession.NewLayout;
  with RcDataModule.CurrentJobQuery do try
    Transaction.Active:=true;
    Open;
    ProdBox.Checked:=FieldByName('PROD_VER').AsString=IntToStr(UserSession.JobRevID);
    TestBox.Checked:=FieldByName('TEST_VER').AsString=IntToStr(UserSession.JobRevID);
    istemplate:=FieldByName('TEMPLATE').AsString='1';
    TemplateLbl.visible:=istemplate;
    RcDataModule.Trans.Rollback;
  except
    ProdBox.Checked:=false;
    TestBox.Checked:=false;
  end;
  RefreshPage;
end;

procedure TFormVoucher.VoucherGridRenderCell(ACell: TIWGridCell; const ARow,
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
      if Font.Color=clRed then begin
        BGColor:=clRed;
        font.color:=clBlack;
      end else if Font.Color=clWhite then begin
        BGColor:=clWhite;
        font.color:=clBlack;
      end else if Font.Color=clYellow then begin
        BGColor:=clYellow;
        font.color:=clBlack;
      end else if Odd(ARow) then begin
        BGColor := clLtGray;
      end else begin
        BGColor := clNone;
      end;
{      // We set the tags here, because when we delete we need to renumber them
      if AColumn = 4 then begin
        TIWButton(ACell.Control).Tag := ARow;
      end;}
    end;
  end;
end;

procedure TFormVoucher.EditVoucher (ID : String);
begin
  with RcDataModule.CurrentVoucherQuery do begin
    Close;
    ParamByName ('COMPANY').AsString:=TUserSession(WebApplication.Data).Company;
    ParamByName ('ID').AsString:=ID;
    Open;
    TIWAppForm(WebApplication.ActiveForm).Release;
    if formatbox.checked then TFormVoucherEdit2.Create (WebApplication).show else
       TFormVoucherEdit.Create (WebApplication).show;
  end;
end;

procedure TFormVoucher.EditParams (ID : String);
begin
  RcDataModule.SaveValue ('EditVoucherId',ID);
  with RcDataModule.CurrentVoucherQuery do begin
    Close;
    ParamByName ('COMPANY').AsString:=TUserSession(WebApplication.Data).Company;
    ParamByName ('ID').AsString:=ID;
    Open;
    TIWAppForm(WebApplication.ActiveForm).Release;
    TParamForm.Create (WebApplication).show;
  end;
end;

procedure TFormVoucher.VoucherGridCellClick(ASender: TObject;const ARow, AColumn: Integer);
begin
  inherited;
  case AColumn of
    0 : EditVoucher (IList.Strings[ARow-1]);
    2 : EditParams (IList.Strings[ARow-1]);
  end;
end;

procedure TFormVoucher.InsertBtnClick(Sender: TObject);
var
  voucherId : integer;
begin
  inherited;
  voucherId:=RcDataModule.nextID;
  RcDataModule.VoucherInsertQuery.Transaction.Active:=True;
  RcDataModule.VoucherInsertQuery.ParamByName('ID').AsInteger:=
    voucherId;
  RcDataModule.VoucherInsertQuery.ParamByName('IDKEY').AsInteger:=
    voucherId;
  RcDataModule.VoucherInsertQuery.ParamByName('JOBID').AsInteger:=
    UserSession.JobRevID;
  RcDataModule.VoucherInsertQuery.ParamByName('TAG').AsString:='';
  RcDataModule.VoucherInsertQuery.ParamByName('TRIG').AsString:='';
  RcDataModule.VoucherInsertQuery.ParamByName('NAME').AsString:=
    'New Voucher';
  RcDataModule.VoucherInsertQuery.ParamByName('COMPANY').AsString:=
    TUserSession(WebApplication.Data).Company;
  RcDataModule.VoucherInsertQuery.ExecSQL;
  EditVoucher (IntToStr(voucherID));
end;

procedure TFormVoucher.IWAppFormDestroy(Sender: TObject);
begin
  IList.free;
  GList.Free;
end;

procedure TFormVoucher.userfooter1CancelClick(Sender: TObject);
begin
   UserSession.JobRevID:=0;
   RcDataModule.Trans.Rollback;
   TIWAppForm(WebApplication.ActiveForm).Release;
   TFormJobRev.Create(WebApplication).Show;
end;

procedure TFormVoucher.EditJobRevBtnClick(Sender: TObject);
begin
   TIWAppForm(WebApplication.ActiveForm).Release;
   TFormJobRevDtl.Create(WebApplication).Show;
end;

procedure TformVoucher.EditHdr (ID : String);
var
  TFIH : TFormImgHdr;
begin
  RcDataModule.SaveValue('ImageHdrId',ID);
  with RcDataModule.CurrentImagehdrQuery do begin
    Close;
    Transaction.Active:=false;
    ParamByName ('COMPANY').AsString:=UserSession.Company;
    ParamByName ('ID').AsString:=ID;
  end;
  TIWAppForm(WebApplication.ActiveForm).Release;
  TFIH:=TFormImgHdr.Create (WebApplication);
  //TFIH.setTemplate(istemplate);
  TFIH.show;
end;

procedure TFormVoucher.ImageBtnClick(Sender: TObject);
begin
  EditHdr ('0');
end;

procedure TFormVoucher.ImageGridCellClick(ASender: TObject; const ARow,
  AColumn: Integer);
begin
  RcDataModule.ImageInsertQuery.Transaction.Active:=False;
  if (AColumn=0) then
     EditImage (GList.Strings[ARow-1])
     else
     EditHdr (GList.Strings[ARow-1]);
end;

procedure TFormVoucher.AuthBoxClick(Sender: TObject);
begin
  if (not AuthBox.Checked) and ProdBox.Checked then begin
    with RcDataModule.JobProdNullQry do begin
      Transaction.Active:=true;
      ParamByName ('COMPANY').AsString:=UserSession.Company;
      ParamByName ('ID').AsInteger:=UserSession.JobHdrID;
      ParamByName ('LASTCHANGED').AsDateTime:=Now;
      ExecSQL;
      Transaction.commit;
    end;
  end;
  with RcDataModule.AuthJobQuery do begin
    Transaction.Active:=true;
    ParamByName ('COMPANY').AsString:=TUserSession(WebApplication.Data).Company;
    ParamByName ('ID').AsInteger:=UserSession.JobRevID;
    ParamByName ('AUTH').AsInteger:=ord (AuthBox.Checked);
    ParamByName ('AUTHBY').AsString:=UserSession.User;
    ParamByName ('AUTHAT').AsDateTime:=Now;
    ExecSQL;
    Transaction.commit;
  end;
  RefreshPage;
end;

procedure TFormVoucher.TestBoxClick(Sender: TObject);
begin
  with RcDataModule.JobTestQuery do begin
    Transaction.Active:=true;
    ParamByName ('COMPANY').AsString:=TUserSession(WebApplication.Data).Company;
    ParamByName ('ID').AsInteger:=UserSession.JobHdrID;
    if TestBox.Checked then ParamByName ('TESTID').AsInteger:=UserSession.JobRevID else
       ParamByName ('TESTID').clear;
    ParamByName ('LASTCHANGED').AsDateTime:=Now;
    ExecSQL;
    Transaction.Commit;
    RefreshPage;
  end;
end;

procedure TFormVoucher.ProdBoxClick(Sender: TObject);
begin
  if not authbox.Checked then begin
     ProdBox.Checked:=false;
     exit;   // State already taken care of in Auth onclick.
  end;
  with RcDataModule.JobProdQuery do begin
    Transaction.Active:=true;
    ParamByName ('COMPANY').AsString:=UserSession.Company;
    ParamByName ('ID').AsInteger:=UserSession.JobHdrID;
    if ProdBox.Checked then ParamByName ('PRODID').AsInteger:=UserSession.JobRevID else
       ParamByName ('PRODID').clear;
    ParamByName ('LASTCHANGED').AsDateTime:=Now;
    ExecSQL;
    Transaction.Commit;
    RcDataModule.NotifyJobChanges(UserSession.JobHdrID,false);
    RefreshPage;
  end;
end;

procedure TFormVoucher.FormatBoxChange(Sender: TObject);
begin
   usersession.NewLayout:=formatbox.checked;
end;

end.
