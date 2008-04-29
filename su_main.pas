unit su_main;

interface

uses
  Classes, SysUtils, IWAppForm, IWApplication, IWColor, IWTypes,
  IWCompLabel, IWVCLBaseControl, IWBaseControl, IWBaseHTMLControl,
  IWControl, IWExtCtrls, Controls, Forms, IWVCLBaseContainer, IWContainer,
  IWHTMLContainer, IWRegion, IWCompButton, IWGrids,
  IWCompEdit, IWHTMLControls, IWSiLink, siComp, siLngLnk, baretitle,
  footer_user, IWCompRectangle, IWCompListbox, admintitle;

type
  Tsu_FormMain = class(TIWAppForm)
    siLangLinked1: TsiLangLinked;
    IWRegion1: TIWRegion;
    IWRegion2: TIWRegion;
    NewCoLabel: TIWLabel;
    langnamelabel: TIWLabel;
    coEdit: TIWEdit;
    CreateCoBtn: TIWButton;
    LangNameBtn: TIWButton;
    LangNameEdit: TIWEdit;
    IWLabel1: TIWLabel;
    IWSiLink1: TIWSiLink;
    IWRectangle2: TIWRectangle;
    IWRectangle1: TIWRectangle;
    CompanyCombo: TIWComboBox;
    IWLabel3: TIWLabel;
    userfooter1: Tuserfooter;
    ViewBtn: TIWButton;
    Cpybtn: TIWButton;
    AdminFrameTitle1: TAdminFrameTitle;
    procedure CoGridRenderCell(ACell: TIWGridCell; const ARow,
      AColumn: Integer);
    procedure IWAppFormCreate(Sender: TObject);
    procedure CreateCoBtnClick(Sender: TObject);
    procedure LangNameBtnClick(Sender: TObject);
    procedure userfooter1CancelBtnClick(Sender: TObject);
    procedure IWAppFormDestroy(Sender: TObject);
    procedure ViewClick(Sender: TObject);
    procedure CopyLinkClick(Sender: TObject);
  public
    iList : TStringList;
    procedure GetCompanyList;
    procedure EditCo (co : string);
  end;

implementation

{$R *.dfm}

uses graphics, db, datamod, iwmain, servercontroller, formCo, cfgtypes, roleform, cocopyform;

procedure Tsu_FormMain.CoGridRenderCell(ACell: TIWGridCell; const ARow,
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

procedure Tsu_FormMain.IWAppFormCreate(Sender: TObject);
begin
  self.IWSiLink1.InitForm;
  if (UserSession.privilege and PRIV_SUPER)=0 then begin
    langnameedit.visible:=false;
    langnamebtn.Visible:=false;
    langnamelabel.Visible:=false;
    createCoBtn.Visible:=false;
    newcolabel.Visible:=false;
    coEdit.Visible:=false;
    CpyBtn.Visible:=false;
  end;
  iList:=TStringList.create;
  GetCompanyList;
  if CompanyCombo.Items.count=1 then begin
     CompanyCombo.itemindex:=0;
  end;
end;

procedure Tsu_FormMain.GetCompanyList;
begin
  iList.Clear;
  CompanyCombo.Items.Clear;
  RcDataModule.suCoQuery.Transaction.Active:=False;
  RcDataModule.suCoQuery.Transaction.StartTransaction;
  RcDataModule.suCoQuery.Close;
  RcDataModule.suCoQuery.Open;
  while not RcDataModule.suCoQuery.Eof do begin
    if (UserSession.UserCompany='0') or (UserSession.Company=RcDataModule.suCoQuery.FieldByName('ID').AsString) then begin
      CompanyCombo.Items.Add(RcDataModule.suCoQuery.FieldByName('ID').AsString+': '+
             RcDataModule.suCoQuery.FieldByName('Name').AsString);
      IList.Add(RcDataModule.suCoQuery.FieldByName('ID').AsString);
    end;
    RcDataModule.suCoQuery.Next;
  end;
  RcDataModule.suCoQuery.Close;
  RcDataModule.suCoQuery.Transaction.Active:=False;
end;

procedure Tsu_FormMain.EditCo (co : string);
begin
  with RcDataModule.CoQuery do begin
    Close;
    ParamByName ('ID').AsString:=co;
    Transaction.Active:=True;
    Open;
    TIWAppForm(WebApplication.ActiveForm).Release;
    Tsu_CoForm.Create (WebApplication).show;
  end;
end;

procedure Tsu_FormMain.CreateCoBtnClick(Sender: TObject);
begin
  try
    with RcDataModule.suCoInsertQuery do begin
      ParamByName ('ID').AsString:=coEdit.Text;
      ParamByName ('NAME').AsString:='New Company';
      Transaction.Active:=True;
      ExecSQL;
      EditCo (coEdit.Text);
    end;
  except
    WebApplication.ShowMessage(userfooter1.silink_footer.GetTextOrDefault('DBError'));
  end;
end;

procedure Tsu_FormMain.LangNameBtnClick(Sender: TObject);
var
   names : TStringlist;
begin
   with siLangLinked1.LangDispatcher do begin
      names:=TStringlist.create;
      names.assign (langnames);
      names.add (langnameedit.text);
      langnames:=names;
      names.free;
      SaveAllToFile ('main.sil','!@#$%');
   end;
end;

procedure Tsu_FormMain.userfooter1CancelBtnClick(Sender: TObject);
begin
   TIWAppForm(WebApplication.ActiveForm).Release;
   Tsu_formrole.Create(WebApplication).Show;
end;

procedure Tsu_FormMain.IWAppFormDestroy(Sender: TObject);
begin
   iList.Free;
end;

procedure Tsu_FormMain.ViewClick(Sender: TObject);
begin
  RcDataModule.coQuery.Transaction.Active:=false;
  if CompanyCombo.itemindex>=0 then
     EditCo (IList.strings[CompanyCombo.itemindex]);
end;

procedure Tsu_FormMain.CopyLinkClick(Sender: TObject);
var
   TC : TCopyForm;
begin
   If CompanyCombo.ItemIndex=-1 then exit;
   RcDataModule.Trans.Active:=False;
   RcDataModule.Trans.StartTransaction;
   TIWAppForm(WebApplication.ActiveForm).Release;
   // Create the next form
   TC:=TcopyForm.Create(WebApplication);
   TC.FromLabel.Caption:=CompanyCombo.Items[CompanyCombo.ItemIndex];
   TC.ilist.assign (IList);
   TC.CompanyCombo.Items.Assign(CompanyCombo.Items);
   TC.From_Co:=IList.Strings[CompanyCombo.ItemIndex];
   TC.Show;
end;

end.
