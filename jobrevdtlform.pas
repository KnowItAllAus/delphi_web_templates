unit jobrevdtlform;

interface

uses
  Classes, SysUtils, IWAppForm, IWApplication, IWColor, IWTypes, baretitle,
  Forms, footer_user, siComp, siLngLnk, IWCompEdit, IWCompLabel,
  IWCompRectangle, IWVCLBaseControl, IWBaseControl, IWBaseHTMLControl,
  IWControl, IWHTMLControls, IWSiLink, Controls, IWVCLBaseContainer,
  IWContainer, IWHTMLContainer, IWRegion, IWCompButton, IWHTML40Container;

type
  TFormJobRevDtl = class(TIWAppForm)
    IWRegion1: TIWRegion;
    IWSiLink1: TIWSiLink;
    BodyRegion: TIWRegion;
    IWRectangle2: TIWRectangle;
    IWRectangle1: TIWRectangle;
    JobLabel: TIWLabel;
    NoteEdit: TIWEdit;
    IWLabel3: TIWLabel;
    silanglinked1: TsiLangLinked;
    FrameBareTitle1: TFrameBareTitle;
    userfooter1: Tuserfooter;
    DelJobRevBtn: TIWButton;
    procedure userfooter1Extra2Click(Sender: TObject);
    procedure userfooter1CancelClick(Sender: TObject);
    procedure IWAppFormCreate(Sender: TObject);
    procedure DelJobRevBtnClick(Sender: TObject);
  public
  end;

implementation

{$R *.dfm}

uses datamod, voucherform, ServerController, jobrev;

procedure TFormJobRevDtl.userfooter1Extra2Click(Sender: TObject);
var
  s : ansistring;
  w : widestring;
  i : integer;
begin
  try
    With RcDataModule.UpdateJobRevQuery do begin
        w:=NoteEdit.Text;
        s:=utf8encode(NoteEdit.Text);
        setlength (w,length(s));
        for i := 1 to length (s) do
           w[i]:=char(ord(s[i]));
        ParamByName ('Note').AsString:=w;
        ParamByName ('Company').AsString:=UserSession.Company;
        ParamByName ('ID').AsInteger:=UserSession.JobRevID;
        ExecSQL;
    end;

    rcDataModule.Trans.Commit;
    UserSession.JobRevNote:=NoteEdit.Text;
  except
    rcDataModule.Trans.Rollback;
    WebApplication.ShowMessage(userfooter1.silink_footer.GetTextOrDefault('DBError'));
  end;
  TIWAppForm(WebApplication.ActiveForm).Release;
  TFormVoucher.Create(WebApplication).Show;
end;

procedure TFormJobRevDtl.userfooter1CancelClick(Sender: TObject);
begin
   rcDataModule.Trans.Rollback;
   TIWAppForm(WebApplication.ActiveForm).Release;
   TFormVoucher.Create(WebApplication).Show;
end;

procedure TFormJobRevDtl.IWAppFormCreate(Sender: TObject);
begin
   NoteEdit.Text:=Usersession.JobRevNote;
end;

procedure TFormJobRevDtl.DelJobRevBtnClick(Sender: TObject);
begin
  with RcDataModule.DeleteJobRevQuery do begin
    ParamByName ('COMPANY').AsString:=UserSession.Company;
    ParamByName ('ID').AsInteger:=UserSession.JobRevID;
    ExecSQL;
    RcDataModule.Trans.Commit;
    TIWAppForm(WebApplication.ActiveForm).Release;
    TFormJobRev.Create (WebApplication).show;
  end;
end;

end.
