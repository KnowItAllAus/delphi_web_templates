unit sendForm;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  IWCompButton, IWControl, IWCompLabel,
  IWExtCtrls, IWContainer, IWRegion, IWBaseControl, IWVCLBaseControl, IWAppForm,
  IWVCLBaseContainer, IWBaseHTMLControl, IWHTMLControls, IWSiLink, siComp,
  siLngLnk, IWCompListbox, IWCompRectangle, IWHTMLContainer, footer_user,
  distribtitle, IWCompEdit, IWCompTimeEdit;

type
  TformSend = class(TIWAppForm)
    siLangLinked1: TsiLangLinked;
    DistribFrameTitle1: TDistribFrameTitle;
    userfooter1: Tuserfooter;
    IWRegion1: TIWRegion;
    IWRegion2: TIWRegion;
    IWRectangle1: TIWRectangle;
    IWRectangle2: TIWRectangle;
    RequestLabel: TIWLabel;
    CompanyLabel: TIWLabel;
    LiveGroups: TIWComboBox;
    AllBtn: TIWButton;
    IWSiLink1: TIWSiLink;
    TestBtn: TIWButton;
    TestGroups: TIWComboBox;
    TimeEdit: TIWEdit;
    IWLabel1: TIWLabel;
    procedure IWAppFormCreate(Sender: TObject);
    procedure IWAppFormDestroy(Sender: TObject);
    procedure userfooter1CancelClick(Sender: TObject);
    procedure AllBtnClick(Sender: TObject);
    procedure TestBtnClick(Sender: TObject);
  private
    { Private declarations }
    TList : TStringList;
    LList : TStringList;
    procedure PublishToGroup (g : string; buildtime : TDateTime);
  public
    { Public declarations }
  end;

var
  formSend: TformSend;

implementation

uses
  ServerController, datamod, IWInit, IWTypes, RoleForm, cfgtypes;

{$R *.DFM}

procedure TformSend.PublishToGroup (g : string; buildtime : TDateTime);
begin
    with RcDataModule.RequestUpdateGroupX do begin
      try
        Transaction.Active:=False;
        Transaction.StartTransaction;
        ParamByName('COMPANY').AsString:=UserSession.Company;
        ParamByName('PUBTIME').AsDateTime:=buildtime;
        ParamByName('GROUPID').AsString:=g;
        ExecSQL;
        Transaction.Commit;
        WebApplication.ShowMessage(SiLangLinked1.GetTextOrDefault('UpdateRequested'), smAlert);
      except
        Transaction.Active:=False;
        WebApplication.ShowMessage(SiLangLinked1.GetTextOrDefault('UpdateRejected'), smAlert);
      end;
    end;
(*    with RcDataModule.RequestUpdateGroup do begin
      try
        Transaction.Active:=False;
        Transaction.StartTransaction;
        ParamByName('COMPANY').AsString:=UserSession.Company;
        ParamByName('BUILDTIME').AsDateTime:=buildtime;
        ParamByName('GROUP').AsString:=g;
        ExecSQL;
        Transaction.Commit;
        WebApplication.ShowMessage(SiLangLinked1.GetTextOrDefault('UpdateRequested'), smAlert);
      except
        Transaction.Active:=False;
        WebApplication.ShowMessage(SiLangLinked1.GetTextOrDefault('UpdateRejected'), smAlert);
      end;
    end;*)
end;

procedure TformSend.IWAppFormCreate(Sender: TObject);
begin
  TList:=TStringList.Create;
  LList:=TStringList.Create;
  RcDataModule.Trans.Active:=False;
  RcDataModule.Trans.StartTransaction;
  RcDataModule.GroupQuery.Close;
  RcDataModule.GroupQuery.ParamByName('COMPANY').AsString:=
     UserSession.Company;
  RcDataModule.GroupQuery.Open;
  TList.Add(RcDataModule.GroupQuery.FieldByName('ID').AsString);
  LList.Add(RcDataModule.GroupQuery.FieldByName('ID').AsString);
  LiveGroups.Items.Add (SiLangLinked1.GetTextOrDefault('AllLiveGroups'));
  TestGroups.Items.Add (SiLangLinked1.GetTextOrDefault('AllTestGroups'));
  while not RcDataModule.GroupQuery.Eof do begin
    if (RcDataModule.GroupQuery.FieldByName('TESTGROUP').AsString='Y') then begin
      TestGroups.Items.Add (RcDataModule.GroupQuery.FieldByName('Name').AsString);
      TList.Add(RcDataModule.GroupQuery.FieldByName('ID').AsString)
    end else begin
      LiveGroups.Items.Add (RcDataModule.GroupQuery.FieldByName('Name').AsString);
      LList.Add(RcDataModule.GroupQuery.FieldByName('ID').AsString);
    end;
    RcDataModule.GroupQuery.Next;
  end;
  if (UserSession.privilege and PRIV_LIVE)=0 then AllBtn.Enabled:=false;
  LiveGroups.ItemIndex:=0;
  TestGroups.ItemIndex:=0;
  RcDataModule.GroupQuery.Close;
  RcDataModule.Trans.Active:=False;
  IWSiLink1.InitForm;
  CompanyLabel.Caption:=UserSession.CompanyName;
  TimeEdit.Text:=DateTimeToStr (now);
end;

procedure TformSend.IWAppFormDestroy(Sender: TObject);
begin
   FreeAndNil(LList);
   FreeAndNil(TList);
end;

procedure TformSend.userfooter1CancelClick(Sender: TObject);
begin
   TIWAppForm(WebApplication.ActiveForm).Release;
   Tsu_FormRole.Create (WebApplication).show;
end;

procedure TformSend.AllBtnClick(Sender: TObject);
var
    ptime : TDateTime;
begin
    try
      ptime:=StrToDateTime (TimeEdit.Text);
    except
      WebApplication.ShowMessage(SiLangLinked1.GetTextOrDefault('InvalidTime'), smAlert);
      exit;
    end;
    if LiveGroups.ItemIndex>0 then begin
      PublishToGroup (LList.Strings[LiveGroups.ItemIndex],ptime);
    end else with RcDataModule.RequestUpdate do begin
      try
        Transaction.Active:=False;
        Transaction.StartTransaction;
        ParamByName('BUILDTIME').AsDateTime:=ptime;
        ParamByName('COMPANY').AsString:=UserSession.Company;
        ExecSQL;
        Transaction.Commit;
        WebApplication.ShowMessage(SiLangLinked1.GetTextOrDefault('UpdateRequested'), smAlert);
      except
        Transaction.Active:=False;
        WebApplication.ShowMessage(SiLangLinked1.GetTextOrDefault('UpdateRejected'), smAlert);
      end;
    end;
end;

procedure TformSend.TestBtnClick(Sender: TObject);
var
    ptime : TDateTime;
begin
    try
      ptime:=StrToDateTime (TimeEdit.Text);
    except
      WebApplication.ShowMessage(SiLangLinked1.GetTextOrDefault('InvalidTime'), smAlert);
      exit;
    end;
    if TestGroups.ItemIndex>0 then begin
      PublishToGroup (TList.Strings[TestGroups.ItemIndex],ptime);
    end else with RcDataModule.RequestTestUpdqry do begin
      try
        Transaction.Active:=False;
        Transaction.StartTransaction;
        ParamByName('COMPANY').AsString:=UserSession.Company;
        ParamByName('BUILDTIME').AsDateTime:=ptime;
        ExecSQL;
        Transaction.Commit;
        WebApplication.ShowMessage(SiLangLinked1.GetTextOrDefault('UpdateRequested'), smAlert);
      except
        Transaction.Active:=False;
        WebApplication.ShowMessage(SiLangLinked1.GetTextOrDefault('UpdateRejected'), smAlert);
      end;
    end;
end;

end.
