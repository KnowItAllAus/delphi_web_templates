unit printerForm;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  IWCompButton, IWCompEdit, IWCompLabel, IWControl,
  IWCompRectangle, IWContainer, IWRegion, IWExtCtrls,
  IWBaseControl, IWVCLBaseControl, IWBaseHTMLControl, IWAppForm,
  IWHTMLControls, IWSiLink, siComp, siLngLnk, IWVCLBaseContainer,
  IWHTMLContainer, footer_user, baretitle, ReferredClass;

type
  TformPrinter = class(TIWAppForm)
    siLangLinked1: TsiLangLinked;
    FrameBareTitle1: TFrameBareTitle;
    userfooter1: Tuserfooter;
    IWRegion1: TIWRegion;
    IWRegion2: TIWRegion;
    PrinterLabel: TIWLabel;
    NewNameEdit: TIWEdit;
    IWLabel4: TIWLabel;
    IWLabel5: TIWLabel;
    NewAddrEdit: TIWEdit;
    NewIDEdit: TIWEdit;
    IWLabel6: TIWLabel;
    StatusLabel: TIWLabel;
    StatusEdit: TIWEdit;
    U0: TIWEdit;
    U1: TIWEdit;
    U2: TIWEdit;
    U3: TIWEdit;
    IWLabel7: TIWLabel;
    IWLabel3: TIWLabel;
    IWLabel2: TIWLabel;
    IWLabel1: TIWLabel;
    IWLabel8: TIWLabel;
    IWLabel9: TIWLabel;
    IWLabel10: TIWLabel;
    IWLabel11: TIWLabel;
    IWLabel12: TIWLabel;
    RegOpts: TIWEdit;
    PS2Opts: TIWEdit;
    BypassOpts: TIWEdit;
    AltOpts: TIWEdit;
    PrnOpts: TIWEdit;
    ConfigId: TIWEdit;
    IWLabel13: TIWLabel;
    IWSiLink1: TIWSiLink;
    DelBtn: TIWButton;
    IWRectangle1: TIWRectangle;
    IWRectangle2: TIWRectangle;
    IWLabel14: TIWLabel;
    POSEdit: TIWEdit;
    procedure IWAppFormCreate(Sender: TObject);
    procedure DelBtnClick(Sender: TObject);
    procedure OkBtnClick(Sender: TObject);
    procedure CancelBtnClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    referedby : referer_class;
    procedure GotoStoreEdit;
  end;

var
  formPrinter: TformPrinter;

implementation

uses datamod, db, servercontroller, IWInit, storeForm;

{$R *.DFM}

procedure TformPrinter.IWAppFormCreate(Sender: TObject);
begin
  IWSiLink1.InitForm;
  NewNameEdit.Text:=RcDataModule.CurrentPrinterQuery.FieldByName ('NAME').AsString;
  NewIDEdit.Text:=RcDataModule.CurrentPrinterQuery.FieldByName ('ID').AsString;
  NewAddrEdit.Text:=RcDataModule.CurrentPrinterQuery.FieldByName ('ADDRESS').AsString;
  PrinterLabel.Caption:=RcDataModule.CurrentstoreQuery.FieldByName ('NAME').AsString + ' - '+
                      RcDataModule.CurrentprinterQuery.FieldByName ('NAME').AsString;

  try
     // Printer data is from a different transaction for background isolation.
     with RcDataModule.CurrentPrinterCfgQuery do begin
        transaction.active:=false;
        close;
        transaction.active:=true;
        ParamByName ('Company').AsString:=RcDataModule.CurrentPrinterQuery.ParamByName ('Company').AsString;
        ParamByName ('Store').AsString:=RcDataModule.CurrentPrinterQuery.ParamByName ('Store').AsString;
        ParamByName ('Id').AsString:=RcDataModule.CurrentPrinterQuery.ParamByName ('Id').AsString;
        open;

        StatusEdit.Text:=FieldByName ('STATUS').AsString;
        U0.Text:=FieldByName ('U0').AsString;
        U1.Text:=FieldByName ('U1').AsString;
        U2.Text:=FieldByName ('U2').AsString;
        U3.Text:=FieldByName ('U3').AsString;
        AltOpts.Text:=FieldByName ('ALT').AsString;
        PrnOpts.Text:=FieldByName ('PRN').AsString;
        Ps2Opts.Text:=FieldByName ('PS2').AsString;
        RegOpts.Text:=FieldByName ('REGION').AsString;
        ConfigID.Text:=FieldByName ('CONFIGID').AsString;
        BypassOpts.Text:=FieldByName ('BYPASS').AsString;
        POSEdit.Text:=FieldByName ('POS').AsString;
        close;
        transaction.active:=false;
    end;
  except
  end;
end;

procedure TformPrinter.GotoStoreEdit;
var
  TFS : TFormStore;
begin
  TIWAppForm(WebApplication.ActiveForm).Release;
  TFS:=TFormStore.Create (WebApplication);
  TFS.referedby:=referedby;
  TFS.show;
end;

procedure TformPrinter.DelBtnClick(Sender: TObject);
begin
  with RcDataModule do begin
    PrinterDeleteQuery.ParamByName('ID').AsString:=
      CurrentPrinterQuery.FieldByName('ID').AsString;
    PrinterDeleteQuery.ParamByName('COMPANY').AsString:=
      CurrentPrinterQuery.FieldByName('COMPANY').AsString;
    PrinterDeleteQuery.ParamByName('STORE').AsString:=
      CurrentPrinterQuery.FieldByName('STORE').AsString;
    PrinterDeleteQuery.ExecSQL;
    PrnDataDelQuery.ParamByName('ID').AsString:=
      CurrentPrinterQuery.FieldByName('ID').AsString;
    PrnDataDelQuery.ParamByName('COMPANY').AsString:=
      CurrentPrinterQuery.FieldByName('COMPANY').AsString;
    PrnDataDelQuery.ParamByName('STORE').AsString:=
      CurrentPrinterQuery.FieldByName('STORE').AsString;
    PrnDataDelQuery.ExecSQL;
  end;
  GotoStoreEdit;
end;

procedure TformPrinter.OkBtnClick(Sender: TObject);
var
  s : string;
begin
  try
    s:=RcDataModule.CurrentPrinterQuery.FieldByName('ID').AsString;
    RcDataModule.PrinterUpdateQuery.ParamByName('ID').AsString:=s;
    s:=RcDataModule.CurrentPrinterQuery.FieldByName('COMPANY').AsString;
    RcDataModule.PrinterUpdateQuery.ParamByName('COMPANY').AsString:=s;
    s:=RcDataModule.CurrentPrinterQuery.FieldByName('STORE').AsString;
    RcDataModule.PrinterUpdateQuery.ParamByName('STORE').AsString:=s;

    RcDataModule.PrinterUpdateQuery.ParamByName('NAME').AsString:=
      NewNameEdit.Text;
    RcDataModule.PrinterUpdateQuery.ExecSQL;
    GotoStoreEdit;
  except
    WebApplication.ShowMessage(userfooter1.silink_footer.GetTextOrDefault('DBError'));
  end;
end;

procedure TformPrinter.CancelBtnClick(Sender: TObject);
begin
  GotoStoreEdit;
end;

end.

