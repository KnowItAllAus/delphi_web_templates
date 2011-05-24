unit newparamform;

interface

uses
  Classes, SysUtils, IWAppForm, IWApplication, IWColor, IWTypes, baretitle,
  Forms, footer_user, siComp, siLngLnk, IWCompEdit, IWCompLabel,
  IWCompRectangle, IWVCLBaseControl, IWBaseControl, IWBaseHTMLControl,
  IWControl, IWHTMLControls, IWSiLink, Controls, IWVCLBaseContainer,
  IWContainer, IWHTMLContainer, IWRegion, IWCompButton, IWCompRadioButton,
  IWHTML40Container;

type
  TFormParamCreate = class(TIWAppForm)
    IWRegion1: TIWRegion;
    IWSiLink1: TIWSiLink;
    BodyRegion: TIWRegion;
    IWRectangle2: TIWRectangle;
    IWRectangle1: TIWRectangle;
    ParamLabel: TIWLabel;
    NameEdit: TIWEdit;
    IWLabel3: TIWLabel;
    silanglinked1: TsiLangLinked;
    FrameBareTitle1: TFrameBareTitle;
    userfooter1: Tuserfooter;
    ObjBtn: TIWRadioButton;
    FieldBtn: TIWRadioButton;
    procedure userfooter1Extra2Click(Sender: TObject);
    procedure userfooter1CancelClick(Sender: TObject);
    procedure IWAppFormCreate(Sender: TObject);
  public
  end;

implementation

{$R *.dfm}

uses datamod, voucherform, ServerController, jobrev, grptmplform, edittmplform;

procedure TFormParamCreate.userfooter1Extra2Click(Sender: TObject);
begin
  try
    with RcDataModule do begin
      SQLQry.Transaction.Active:=false;
      SQLQry.Transaction.Active:=true;
      SQLQry.SQL.Clear;
      SQLQry.SQL.Add('insert into GROUPOBJHDR (ID,COMPANY,NAME,GUID,GROUPPARAMTMPLID,PARAMTYPE) VALUES (:ID,:COMPANY,:NAME,:GUID,:HDR,:PARAMTYPE)');
      SQLQry.ParamByName ('ID').AsString:=inttostr(rcdatamodule.nextID);
      SQLQry.ParamByName ('HDR').AsString:=RcDataModule.GetValue('edittmplinstance','');
      SQLQry.ParamByName ('COMPANY').AsString:=UserSession.Company;
      SQLQry.ParamByName ('NAME').AsString:=NameEdit.Text;
      if objbtn.checked then SQLQry.ParamByName ('PARAMTYPE').AsString:='O' else SQLQry.ParamByName ('PARAMTYPE').AsString:='F';
      SQLQry.ParamByName ('GUID').AsString:=RcDataModule.make_guid;
      SQLQry.ExecSQL;
      SQLQry.Transaction.Commit;
    end;
  except
    WebApplication.ShowMessage(userfooter1.silink_footer.GetTextOrDefault('DBError'));
  end;
  TIWAppForm(WebApplication.ActiveForm).Release;
  if (RcDataModule.GetValue ('JobInstance','N')='INSTANCE') then
     TFormEditTmpl.Create(WebApplication).Show
  else
     TformGrpTmpl.Create(WebApplication).Show;
end;

procedure TFormParamCreate.userfooter1CancelClick(Sender: TObject);
begin
   TIWAppForm(WebApplication.ActiveForm).Release;
   TformGrpTmpl.create(WebApplication).show;
end;

procedure TFormParamCreate.IWAppFormCreate(Sender: TObject);
begin
  NameEdit.Text:=SiLangLinked1.GetTextOrDefault ('NewParameter');
end;

end.
