unit groupnameform;

interface

uses
  Classes, SysUtils, IWAppForm, IWApplication, IWColor, IWTypes, baretitle,
  Forms, footer_user, siComp, siLngLnk, IWCompEdit, IWCompLabel,
  IWCompRectangle, IWVCLBaseControl, IWBaseControl, IWBaseHTMLControl,
  IWControl, IWHTMLControls, IWSiLink, Controls, IWVCLBaseContainer,
  IWContainer, IWHTMLContainer, IWRegion, IWCompButton, IWHTML40Container;

type
  TFormGroupnameEdit = class(TIWAppForm)
    IWRegion1: TIWRegion;
    IWSiLink1: TIWSiLink;
    BodyRegion: TIWRegion;
    IWRectangle2: TIWRectangle;
    IWRectangle1: TIWRectangle;
    JobLabel: TIWLabel;
    NameEdit: TIWEdit;
    IWLabel3: TIWLabel;
    silanglinked1: TsiLangLinked;
    FrameBareTitle1: TFrameBareTitle;
    userfooter1: Tuserfooter;
    procedure userfooter1Extra2Click(Sender: TObject);
    procedure userfooter1CancelClick(Sender: TObject);
  public
  end;

implementation

{$R *.dfm}

uses datamod, voucherform, ServerController, jobrev, grpdtlform;

procedure TFormGroupnameEdit.userfooter1Extra2Click(Sender: TObject);
var
  rbs : rawbytestring;
  ss : utf8string;
  s : string;
  i : integer;
begin
  try
    With RcDataModule.GroupUpdateNameQuery do begin
        s:=NameEdit.Text;
        ParamByName ('Name').AsWideString:=NameEdit.Text;
        ParamByName ('Company').AsString:=UserSession.Company;
        ParamByName ('ID').AsString:=RcDataModule.GetValue ('editgroup','');
        ExecSQL;
        Transaction.Commit;
    end;
  except
    RcDataModule.GroupUpdateNameQuery.Transaction.Rollback;
    WebApplication.ShowMessage(userfooter1.silink_footer.GetTextOrDefault('DBError'));
  end;
  TIWAppForm(WebApplication.ActiveForm).Release;
  TFormGrpDtl.Create(WebApplication).Show;
end;

procedure TFormGroupnameEdit.userfooter1CancelClick(Sender: TObject);
begin
   TIWAppForm(WebApplication.ActiveForm).Release;
   TFormGrpDtl.Create(WebApplication).Show;
end;

end.
