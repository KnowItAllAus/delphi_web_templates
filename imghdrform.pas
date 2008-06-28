unit imghdrform;

interface

uses
  Classes, SysUtils, IWAppForm, IWApplication, IWColor, IWTypes, siComp,
  siLngLnk, IWCompRectangle, IWHTMLControls, IWSiLink, IWCompLabel,
  IWCompCheckbox, IWVCLBaseControl, IWBaseControl, IWBaseHTMLControl,
  IWControl, IWCompEdit, IWVCLBaseContainer, IWContainer, IWHTMLContainer,
  IWRegion, footer_user, Controls, Forms, baretitle;

type
  TFormImgHdr = class(TIWAppForm)
    FrameBareTitle1: TFrameBareTitle;
    userfooter1: Tuserfooter;
    IWRegion1: TIWRegion;
    IWRegion2: TIWRegion;
    NewTagEdit: TIWEdit;
    SuppressBox: TIWCheckBox;
    IWLabel3: TIWLabel;
    IWLabel1: TIWLabel;
    NewNameEdit: TIWEdit;
    IWLabel2: TIWLabel;
    NewIDEdit: TIWEdit;
    IWSiLink1: TIWSiLink;
    IWRectangle2: TIWRectangle;
    IWRectangle1: TIWRectangle;
    IWLabel4: TIWLabel;
    NewDescEdit: TIWEdit;
    siLangLinked1: TsiLangLinked;
    TemplateBox: TIWCheckBox;
    procedure userfooter1Extra1Click(Sender: TObject);
    procedure IWAppFormCreate(Sender: TObject);
    procedure userfooter1CancelClick(Sender: TObject);
    procedure DelBtnClick(Sender: TObject);
  public
    procedure setTemplate(istemplate : boolean);
  end;

implementation

{$R *.dfm}
uses datamod, db, servercontroller, IWInit, cfgtypes, imagesform, voucherform;


procedure TFormImgHdr.userfooter1Extra1Click(Sender: TObject);
begin
   try
     With RcDataModule.UpdateImgHdrQuery do begin
        ParamByName('Name').AsString:=NewNameEdit.Text;
        ParamByName('Company').AsString:=UserSession.Company;
        ParamByName('Description').AsString:=NewDescEdit.Text;
        ParamByName('Id').AsString:=NewIDEdit.Text;
        ParamByName('Tag').AsString:=NewTagEdit.Text;
        ParamByName('Suppress').AsInteger:=Ord (SuppressBox.Checked);
        ParamByName('Template').AsInteger:=Ord (TemplateBox.Checked);
        ExecSQL;
        Transaction.Commit;
     end;
     TIWAppForm(WebApplication.ActiveForm).Release;
     if UserSession.JobRevID=0 then begin
        TFormImages.Create (WebApplication).show;
     end else begin
        TFormVoucher.Create (WebApplication).show;
     end;
   except
     WebApplication.ShowMessage(userfooter1.silink_footer.GetTextOrDefault('DBError'));
   end;
end;

procedure TFormImgHdr.IWAppFormCreate(Sender: TObject);
begin
   With RcDataModule.CurrentImageHdrQuery do begin
      Transaction.Active:=true;
      Open;
      NewIDEdit.Text:=FieldByName ('ID').AsString;
      NewTagEdit.Text:=FieldByName ('Tag').AsString;
      NewNameEdit.Text:=FieldByName ('Name').AsString;
      NewDescEdit.Text:=FieldByName ('Description').AsString;
      SuppressBox.Checked:=FieldByName ('Suppress').AsString='1';
      TemplateBox.Checked:=(FieldByName ('Template').AsString='1');
   end;
end;

procedure TformImgHdr.setTemplate(istemplate : boolean);
begin
   TemplateBox.visible:=istemplate;
   if not istemplate then TemplateBox.checked:=false;
end;

procedure TFormImgHdr.userfooter1CancelClick(Sender: TObject);
begin
   RcDataModule.CurrentImageHdrQuery.Transaction.Active:=false;
   RcDataModule.CurrentImageHdrQuery.Active:=false;
   TIWAppForm(WebApplication.ActiveForm).Release;
   if UserSession.JobRevID=0 then begin
      TFormImages.Create (WebApplication).show;
   end else begin
      TFormVoucher.Create (WebApplication).show;
   end;
end;

procedure TFormImgHdr.DelBtnClick(Sender: TObject);
begin
   With RcDataModule.ImageHdrDeleteQuery do begin
      ParamByName('ID').AsString:=NewIDEdit.Text;
      ParamByName('COMPANY').AsString:=UserSession.Company;
      ExecSQL;
      Transaction.Commit;
      TIWAppForm(WebApplication.ActiveForm).Release;
      if UserSession.JobRevID=0 then begin
         TFormImages.Create (WebApplication).show;
      end else begin
         TFormVoucher.Create (WebApplication).show;
      end;
   end;
end;

end.
