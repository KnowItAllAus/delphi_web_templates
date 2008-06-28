unit jobdtl;

interface

uses
  Classes, SysUtils, IWAppForm, IWApplication, IWColor, IWTypes,
  IWCompButton, siComp, siLngLnk, IWCompEdit, IWCompLabel, IWCompRectangle,
  IWVCLBaseControl, IWBaseControl, IWBaseHTMLControl, IWControl,
  IWHTMLControls, IWSiLink, IWVCLBaseContainer, IWContainer,
  IWHTMLContainer, IWRegion, footer_user, Controls, Forms, baretitle,
  IWCompListbox, IWCompRadioButton, IWCompCheckbox;

type
  TFormJobDtl = class(TIWAppForm)
    FrameBareTitle1: TFrameBareTitle;
    userfooter1: Tuserfooter;
    IWRegion1: TIWRegion;
    IWSiLink1: TIWSiLink;
    BodyRegion: TIWRegion;
    IWRectangle2: TIWRectangle;
    IWRectangle1: TIWRectangle;
    JobLabel: TIWLabel;
    IWLabel1: TIWLabel;
    IWLabel2: TIWLabel;
    DescEdit: TIWEdit;
    silanglinked1: TsiLangLinked;
    NameEdit: TIWEdit;
    IWLabel3: TIWLabel;
    EditBtn: TIWRadioButton;
    TestBtn: TIWRadioButton;
    ReadyBtn: TIWRadioButton;
    ActiveBtn: TIWRadioButton;
    ArchiveBtn: TIWRadioButton;
    DelJobRevBtn: TIWButton;
    TemplateBox: TIWCheckBox;
    procedure IWAppFormCreate(Sender: TObject);
    procedure userfooter1Extra2Click(Sender: TObject);
    procedure userfooter1CancelClick(Sender: TObject);
    procedure DelJobRevBtnClick(Sender: TObject);
  public
    old_status : integer;
    new_status : integer;
  end;

implementation

{$R *.dfm}

uses datamod, jobrev, servercontroller, jobs, IBQuery, dialogs;


procedure TFormJobDtl.IWAppFormCreate(Sender: TObject);
begin
  RcDataModule.Trans.Active:=false;
  RcDataModule.Trans.Active:=true;
  RcDataModule.CurrentJobQuery.Open;
  with RcDataModule.CurrentJobQuery do begin
    DescEdit.Text:=FieldByName ('Description').AsString;
    try
      old_status:=FieldByName ('Status').AsInteger;
      new_status:=old_status;
      case old_status of
        0 : EditBtn.Checked:=true;
        1 : TestBtn.Checked:=true;
        2 : ReadyBtn.Checked:=true;
        3 : ActiveBtn.Checked:=true;
        4 : ArchiveBtn.Checked:=true;
      end;
    except
    end;
    NameEdit.Text:=FieldByName ('Name').AsString;
    TemplateBox.Checked:=FieldByName ('Template').AsString='1';
  end;
end;

procedure TFormJobDtl.userfooter1Extra2Click(Sender: TObject);
var
  Grps : TStringlist;
  tq : tibquery;
begin
  try
    tq:=RcDataModule.UpdateJobQuery;
    With tq do begin
        if EditBtn.Checked then  new_status:=0;
        if TestBtn.Checked then  new_status:=1;
        if ReadyBtn.Checked then  new_status:=2;
        if ActiveBtn.Checked then  new_status:=3;
        if ArchiveBtn.Checked then  new_status:=4;
        ParamByName ('Status').AsInteger:=new_status;
        ParamByName ('Name').AsString:=NameEdit.Text;
        ParamByName ('Description').AsString:=DescEdit.Text;
        ParamByName ('LastChanged').AsDateTime:=Now;
        ParamByName ('Company').AsString:=UserSession.Company;
        ParamByName ('ID').AsInteger:=RcDataModule.CurrentJobQuery.FieldByName ('ID').AsInteger;
        ParamByName ('TEMPLATE').AsInteger:=Ord (TemplateBox.Checked);
        ExecSQL;
        RcDataModule.CurrentJobQuery.Close;
        RcDataModule.CurrentJobQuery.Open;
    end;

    if ((old_status in [0,2,4]) and (new_status in [1,3])) or ((new_status in [0,2,4]) and (old_status in [1,3])) then begin
        Grps:=TStringlist.create;
        with RcDataModule.GrpAllocQuery do begin
          Close;
          ParamByName('COMPANY').AsString:=UserSession.Company;
          ParamByName('ITEMID').AsString:=RcDataModule.CurrentJobQuery.FieldByName('ID').AsString;
          Open;
          while not eof do begin
             Grps.Add (FieldByName ('GroupId').AsString);
             next;
          end;
          close;
        end;
        RcDataModule.NotifyGroupOfChanges(Grps,true);
        Grps.free;
    end;

    rcDataModule.Trans.Commit;
    UserSession.JobName:=NameEdit.Text;
  except
    rcDataModule.Trans.Rollback;
    WebApplication.ShowMessage(userfooter1.silink_footer.GetTextOrDefault('DBError'));
  end;
  TIWAppForm(WebApplication.ActiveForm).Release;
  TFormJobRev.Create(WebApplication).Show;
end;

procedure TFormJobDtl.userfooter1CancelClick(Sender: TObject);
begin
   rcDataModule.Trans.Rollback;
   TIWAppForm(WebApplication.ActiveForm).Release;
   TFormJobRev.Create(WebApplication).Show;
end;

procedure TFormJobDtl.DelJobRevBtnClick(Sender: TObject);
begin
  with RcDataModule.DeleteJobQuery do begin
    ParamByName ('COMPANY').AsString:=UserSession.Company;
    ParamByName ('ID').AsInteger:=UserSession.JobHdrID;
    ExecSQL;
    RcDataModule.Trans.Commit;
    TIWAppForm(WebApplication.ActiveForm).Release;
    TFormJobs.Create (WebApplication).show;
  end;
end;

end.
