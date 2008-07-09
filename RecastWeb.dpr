program RecastWeb;
{PUBDIST}

uses
  SysUtils,
  Forms,
  IWMain,
  ServerController in 'ServerController.pas' {RcWebController: TDataModule},
  login in 'login.pas' {form_login: TIWForm1},
  datamod in 'datamod.pas' {RcDataMod: TDataModule},
  imageupFormTmpl in 'imageupFormTmpl.pas' {FormImageUpTmpl: TIWAppForm},
  voucherForm in 'voucherForm.pas' {FormVoucher: TIWAppForm},
  grptmplForm in 'grptmplForm.pas' {formGrpTmpl: TIWAppForm},
  printerForm in 'printerForm.pas' {formPrinter: TIWAppForm},
  sendForm in 'sendForm.pas' {formSend: TIWAppForm},
  passwdForm in 'passwdForm.pas' {FormPasswd: TIWAppForm},
  statform in 'statform.pas' {formStats: TIWAppForm},
  posForm in 'posForm.pas' {FormPOS: TIWAppForm},
  possform in 'possform.pas' {formPoss: TIWAppForm},
  global in 'global.pas',
  voucherEditForm2 in 'voucherEditForm2.pas' {FormVoucherEdit2: TIWAppForm},
  storesForm in 'storesForm.pas' {formStores: TIWAppForm},
  jnlform in 'jnlform.pas' {formJnl: TIWAppForm},
  imagesForm in 'imagesForm.pas' {formImages: TIWAppForm},
  grpForm in 'grpForm.pas' {formGrp: TIWAppForm},
  grpdtlform in 'grpdtlform.pas' {FormGrpDtl: TIWAppForm},
  su_main in 'su_main.pas' {su_FormMain: TIWAppForm},
  formCo in 'formCo.pas' {su_coForm: TIWAppForm},
  su_pwdform in 'su_pwdform.pas' {supwdform: TIWAppForm},
  sysform in 'sysform.pas' {formsys: TIWAppForm},
  baretitle in 'baretitle.pas' {FrameBareTitle: TFrame},
  statstitle in 'statstitle.pas' {StatsFrameTitle: TFrame},
  roleform in 'roleform.pas' {su_FormRole: TIWAppForm},
  langfooter in 'langfooter.pas' {langfooter: TFrame},
  footer_user in 'footer_user.pas' {userfooter: TFrame},
  cocopyForm in 'cocopyForm.pas' {Copyform: TIWAppForm},
  selectlang in 'selectlang.pas' {FormLanguage: TIWAppForm},
  promotitle in 'promotitle.pas' {PromoFrameTitle: TFrame},
  Jobs in 'Jobs.pas' {formJobs: TIWAppForm},
  admintitle in 'Admintitle.pas' {AdminFrameTitle: TFrame},
  distribtitle in 'Distribtitle.pas' {DistribFrameTitle: TFrame},
  ReferredClass in 'ReferredClass.pas',
  jobdtl in 'jobdtl.pas' {FormJobDtl: TIWAppForm},
  CfgTypes in '..\common\CfgTypes.pas',
  distribdtlForm in 'distribdtlForm.pas' {formdistribdtl: TIWAppForm},
  fieldrevformTmpl in 'fieldrevformTmpl.pas' {formFieldVersionsTmpl: TIWAppForm},
  imghdrform in 'imghdrform.pas' {FormImgHdr: TIWAppForm},
  overviewform in 'overviewform.pas' {FormOverview: TIWAppForm},
  distribstatusform in 'distribstatusform.pas' {formDistribStatus: TIWAppForm},
  distrib in 'distrib.pas' {FormDistrib: TIWAppForm},
  voucherNewEditForm in 'voucherNewEditForm.pas' {FormVoucherNewEdit: TIWAppForm},
  jobrev in 'jobrev.pas' {FormJobRev: TIWAppForm},
  jobrevdtlform in 'jobrevdtlform.pas' {FormJobRevDtl: TIWAppForm},
  voucherEditForm in 'voucherEditForm.pas' {FormVoucherEdit: TIWAppForm},
  storeForm in 'storeForm.pas' {formStore: TIWAppForm},
  AdminDM in 'AdminDM.pas' {AdminData: TDataModule},
  paramForm in 'paramform.pas' {IWForm2: TIWAppForm},
  tmplnameform in 'tmplnameform.pas' {FormTmplnameEdit: TIWAppForm},
  storegrpForm in 'storegrpForm.pas' {formGrpStore: TIWAppForm},
  imageupForm in 'imageupForm.pas' {FormImageUp: TIWAppForm},
  newparamform in 'C:\Program Files\Borland\Delphi7\Lib\newparamform.pas' {FormParamCreate: TIWAppForm},
  TmplRevPropform in 'TmplRevPropform.pas' {FormTmplRevProp: TIWAppForm},
  imagerevform in 'imagerevform.pas' {formImageVersions: TIWAppForm},
  groupnameform in 'groupnameform.pas' {FormGroupnameEdit: TIWAppForm},
  imagerevformTmpl in 'imagerevformTmpl.pas' {formImageVersionsTmpl: TIWAppForm},
  paramnameform in 'paramnameform.pas' {FormParamnameEdit: TIWAppForm};

{$R *.res}

begin
  Application.Initialize;
  Application.updateFormatSettings:=False;
  shortdateformat:='dd/mm/yy';
  shorttimeformat:='hh:mm';
  longdateformat:='dd/mm/yy';
  longtimeformat:='hh:mm';
  Application.CreateForm(TFormIWMain, FormIWMain);
  Application.Run;
end.
