unit imghdrform;

interface

uses
  Classes, SysUtils, IWAppForm, IWApplication, IWColor, IWTypes, siComp,
  siLngLnk, IWCompRectangle, IWHTMLControls, IWSiLink, IWCompLabel,
  IWCompCheckbox, IWVCLBaseControl, IWBaseControl, IWBaseHTMLControl,
  IWControl, IWCompEdit, IWVCLBaseContainer, IWContainer, IWHTMLContainer,
  IWRegion, footer_user, Controls, Forms, baretitle, IWCompListbox,
  IWCompButton;

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
    ObjectCombo: TIWComboBox;
    ParamLbl: TIWLabel;
    SetNameBtn: TIWButton;
    procedure userfooter1Extra1Click(Sender: TObject);
    procedure IWAppFormCreate(Sender: TObject);
    procedure userfooter1CancelClick(Sender: TObject);
    procedure DelBtnClick(Sender: TObject);
    procedure TemplateBoxClick(Sender: TObject);
    procedure SetNameBtnClick(Sender: TObject);
  private
    hdrid : string;
  public
    //procedure setTemplate(istemplate : boolean);
  end;

implementation

{$R *.dfm}
uses datamod, db, servercontroller, IWInit, cfgtypes, imagesform, voucherform, Graphics;


procedure TFormImgHdr.userfooter1Extra1Click(Sender: TObject);
var
   ImageId : integer;
begin
   if HdrId='0' then begin
      try
        with RcDataModule.ImageHdrInsertQuery do begin
          ImageId:=RcDataModule.nextID;
          Transaction.Active:=True;
          ParamByName('NAME').AsString:=NewNameEdit.Text;
          ParamByName('ID').AsInteger:=ImageId;
          ParamByName('JOBID').AsInteger:=UserSession.JobRevID;
          ParamByName('COMPANY').AsString:=UserSession.Company;
          ParamByName('GUID').AsString:=RcDataModule.make_guid;
          ParamByName('Tag').AsString:=NewTagEdit.Text;
          ParamByName('Suppress').AsInteger:=Ord (SuppressBox.Checked);
          ParamByName('Template').AsInteger:=Ord (TemplateBox.Checked);
          ParamByName('Description').AsString:=NewDescEdit.Text;
          ExecSQL;
          Transaction.commit;
        end;
      except
        WebApplication.ShowMessage(userfooter1.silink_footer.GetTextOrDefault('DBError'));
      end;
   end else begin
     try
       With RcDataModule.UpdateImgHdrQuery do begin
          Transaction.Active:=true;
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
     except
       WebApplication.ShowMessage(userfooter1.silink_footer.GetTextOrDefault('DBError'));
     end;
   end;
   if UserSession.JobRevID=0 then begin
      TFormImages.Create (WebApplication).show;
   end else begin
      TFormVoucher.Create (WebApplication).show;
   end;
end;

procedure TFormImgHdr.IWAppFormCreate(Sender: TObject);
begin
   hdrid:=RcDataModule.GetValue('ImageHdrId','');
   if hdrid='0' then begin
     NewNameEdit.text:=SiLangLinked1.GetTextOrDefault('NewObject');
     ObjectCombo.Visible:=false;
     NewNameEdit.Editable:=true;
     NewNameEdit.BGColor:=clNone;
     ParamLbl.Visible:=False;
     NewIDEdit.Text:='';
     NewTagEdit.Text:='';
     NewDescEdit.Text:='';
     SetNameBtn.Visible:=false;
   end else begin
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
     if TemplateBox.Checked then begin
        ObjectCombo.Visible:=true;
        NewNameEdit.Editable:=false;
        NewNameEdit.BGColor:=clSilver;
        ParamLbl.Visible:=true;
        SetNameBtn.Visible:=true;
     end else begin
        ObjectCombo.Visible:=false;
        NewNameEdit.Editable:=true;
        NewNameEdit.BGColor:=clNone;
        ParamLbl.Visible:=False;
        SetNameBtn.Visible:=false;
     end;
   end;
   with RcDataModule.SQLQry do begin
     SQL.Clear;
     SQL.Add ('select * from JOBPARAMS where COMPANY=:COMPANY and JOBID=:JOBID and PARAMTYPE="Object"');
     ParamByName ('COMPANY').AsString:=UserSession.Company;
     ParamByName ('JOBID').AsString:=RcDataModule.GetValue('EditJob','');
     Open;
     while not eof do begin
        ObjectCombo.Items.Add (FieldByName('Paramname').AsString);
        next;
     end;
     Close;
     Transaction.Active:=false;
   end;
end;

(*procedure TformImgHdr.setTemplate(istemplate : boolean);
begin
   TemplateBox.visible:=istemplate;
   if not istemplate then TemplateBox.checked:=false;
end;*)

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

procedure TFormImgHdr.TemplateBoxClick(Sender: TObject);
begin
   if TemplateBox.Checked then begin
      ObjectCombo.Visible:=true;
      NewNameEdit.Editable:=false;
      NewNameEdit.BGColor:=clLtGray;
      ParamLbl.Visible:=true;
      SetNameBtn.Visible:=true;
   end else begin
      ObjectCombo.Visible:=false;
      NewNameEdit.Editable:=true;
      NewNameEdit.BGColor:=clNone;
      ParamLbl.Visible:=False;
      SetNameBtn.Visible:=false;
   end;
end;

procedure TFormImgHdr.SetNameBtnClick(Sender: TObject);
begin
  NewNameEdit.Text:=ObjectCombo.Items[ObjectCombo.ItemIndex];
end;

end.
