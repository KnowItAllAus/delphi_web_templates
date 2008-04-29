unit formCo;

interface

uses
  Classes, SysUtils, IWAppForm, IWApplication, IWColor, IWTypes,
  IWCompButton, IWGrids, IWCompEdit, IWVCLBaseControl, IWBaseControl,
  IWBaseHTMLControl, IWControl, IWCompLabel, Controls, Forms,
  IWCompRectangle, IWHTMLControls, IWSiLink, IWVCLBaseContainer,
  IWContainer, IWHTMLContainer, IWRegion, footer_user, baretitle, siComp,
  siLngLnk, admintitle, IWCompListbox, GpTimeZone, IWCompCheckbox;

type
  Tsu_coForm = class(TIWAppForm)
    userfooter1: Tuserfooter;
    IWRegion1: TIWRegion;
    IWRegion2: TIWRegion;
    IWLabel1: TIWLabel;
    IWSiLink1: TIWSiLink;
    IWRectangle2: TIWRectangle;
    IWRectangle1: TIWRectangle;
    VEdit: TIWEdit;
    IWLabel7: TIWLabel;
    UserGrid: TIWGrid;
    IWLabel8: TIWLabel;
    PEdit: TIWEdit;
    CoEdit: TIWEdit;
    IWLabel2: TIWLabel;
    IWLabel3: TIWLabel;
    IDEdit: TIWEdit;
    IWLabel6: TIWLabel;
    IWLabel4: TIWLabel;
    unameedit: TIWEdit;
    IWLabel5: TIWLabel;
    pwdedit: TIWEdit;
    CreateUserBtn: TIWButton;
    IWLabel9: TIWLabel;
    silink1: TsiLangLinked;
    FrameBareTitle1: TFrameBareTitle;
    IWLabel10: TIWLabel;
    TimeEdit: TIWEdit;
    IWLabel11: TIWLabel;
    AliasEdit: TIWEdit;
    IWLabel12: TIWLabel;
    NotifyEdit: TIWEdit;
    TimezoneBox: TIWComboBox;
    IWLabel13: TIWLabel;
    NClassCombo: TIWComboBox;
    StrictBox: TIWCheckBox;
    procedure IWAppFormCreate(Sender: TObject);
    procedure UserGridRenderCell(ACell: TIWGridCell; const ARow,
      AColumn: Integer);
    procedure CancelBtnClick(Sender: TObject);
    procedure DelBtnClick(Sender: TObject);
    procedure PostButtonClick(Sender: TObject);
    procedure CreateUserClick(Sender: TObject);
    procedure UserGridCellClick(ASender: TObject; const ARow,
      AColumn: Integer);
    procedure IWAppFormDestroy(Sender: TObject);
  private
  public
    procedure RefreshGrid;
  end;

implementation

uses datamod, Graphics, db, su_main, IWInit, su_pwdform, cfgtypes, servercontroller;

{$R *.dfm}

type TZ_obj = class (TObject)
   zonename : string;
end;

procedure GoCos;
begin
   TIWAppForm(WebApplication.ActiveForm).Release;
   if UserSession.Company<>'0' then
     with RcDataModule.CoQuery do begin
       Close;
       ParamByName ('ID').AsString:=UserSession.company;
       Transaction.Active:=True;
       Open;
       Tsu_CoForm.Create (WebApplication).show;
     end
   else
     Tsu_FormMain.Create(WebApplication).Show;
end;

procedure Tsu_coForm.IWAppFormCreate(Sender: TObject);
var
   Rc : TRcDataMod;
   i : integer;
   tz : tz_obj;
   zone : string;
   selectname : string;
begin
   self.IWSiLink1.InitForm;
   Rc:=RcDataModule;
   Timezonebox.itemindex:=-1;
   with Rc.CoQuery do begin
      CoEdit.Text:=FieldByName ('Name').AsString;
      IdEdit.Text:=FieldByName ('ID').AsString;
      VEdit.Text:=FieldByName ('JOURNALVEND').AsString;
      PEdit.Text:=FieldByName ('JOURNALPROD').AsString;
      TimeEdit.Text:=FieldByName ('TimeOffset').AsString;
      AliasEdit.Text:=FieldByName ('AliasName').AsString;
      NotifyEdit.Text:=FieldByName ('Notify').AsString;
      StrictBox.Checked:=FieldByName ('Strict').AsString='1';
      try
        NClassCombo.ItemIndex:=FieldByName ('NotifyClass').AsInteger;
      except
      end;
      zone:=FieldByName ('TIMEZONE').AsString;
   end;
   selectname:='';
   for i:=0 to UserSession.TimeZones.Count-1 do with UserSession.TimeZones.Items[i] do begin
      tz:=tz_obj.create;
      tz.zonename:=Englishname;
      TimezoneBox.Items.AddObject(DisplayName,tz);
      if zone=Englishname then
         selectname:=Displayname;
   end;
   TimeZoneBox.ItemIndex:=TimeZoneBox.Items.Indexof(selectname);
   RefreshGrid;
end;

procedure Tsu_coForm.RefreshGrid;
var
  i : integer;
begin
  RcDataModule.suUserQuery.Close;
  RcDataModule.suUserQuery.ParamByName('COMPANY').AsString:=RcDataModule.CoQuery.FieldByName ('ID').AsString;
  RcDataModule.suUserQuery.Open;
  with UserGrid do begin
    Cell[0, 0].Text := 'User ID';
    Cell[0, 1].Text := 'Privilege';
    i:=1;
    RowCount:=1;
    while not RcDataModule.suUserQuery.Eof do begin
      RowCount:=RowCount+1;
      with Cell[i, 0] do begin
        Text := RcDataModule.suUserQuery.FieldByName('USERID').AsString;
        Clickable:=true;
      end;
      with Cell[i, 1] do begin
        Text := RcDataModule.suUserQuery.FieldByName('PRIVILEGE').AsString;
      end;
      inc (i);
      RcDataModule.suUserQuery.Next;
    end;
  end;
  RcDataModule.suUserQuery.Close;
end;

procedure Tsu_coForm.UserGridRenderCell(ACell: TIWGridCell; const ARow,
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

procedure Tsu_coForm.CancelBtnClick(Sender: TObject);
begin
  RcDataModule.CurrentStoreQuery.Transaction.Active:=False;
  TIWAppForm(WebApplication.ActiveForm).Release;
  Tsu_FormMain.Create(WebApplication).Show;
end;

procedure Tsu_coForm.DelBtnClick(Sender: TObject);
begin
  RcDataModule.suCoDeleteQuery.ParamByName('ID').AsString:=
    RcDataModule.CoQuery.FieldByName('ID').AsString;
  RcDataModule.suCoDeleteQuery.ExecSQL;
  RcDataModule.suCoDeleteQuery.Transaction.Commit;
  TIWAppForm(WebApplication.ActiveForm).Release;
  Tsu_FormMain.Create(WebApplication).Show;
end;

procedure Tsu_coForm.PostButtonClick(Sender: TObject);
begin
  try
    with RcDataModule.suCoUpdateQuery do begin
       ParamByName ('ID').AsString:=RcDataModule.CoQuery.FieldByName('ID').AsString;
       ParamByName ('NAME').AsString:=CoEdit.Text;
       ParamByName ('JOURNALVEND').AsString:=VEdit.Text;
       ParamByName ('JOURNALPROD').AsString:=PEdit.Text;
       ParamByName ('ALIASNAME').AsString:=ansilowercase(AliasEdit.Text);
       ParamByName ('NOTIFY').AsString:=Notifyedit.text;
       ParamByName ('STRICT').AsInteger:=Ord(StrictBox.checked);
       ParamByName ('NOTIFYCLASS').AsInteger:=NClassCombo.ItemIndex;
       if Timezonebox.ItemIndex>-1 then begin
          ParamByName('TIMEZONE').AsString:=tz_obj(TimeZoneBox.Items.Objects[TimeZoneBox.ItemIndex]).zonename;
       end else begin
          ParamByName('TIMEZONE').AsString:='';
       end;
       try
         ParamByName ('TIMEOFFSET').AsInteger:=StrToInt (TimeEdit.Text);
       except
         ParamByName ('TIMEOFFSET').AsInteger:=0;
       end;
       ExecSQL;
       Transaction.Commit;
       TIWAppForm(WebApplication.ActiveForm).Release;
       Tsu_FormMain.Create(WebApplication).Show;
    end;
  except
    WebApplication.ShowMessage(userfooter1.siLink_footer.GetTextOrDefault('DBError'));
  end;
end;

procedure Tsu_coForm.CreateUserClick(Sender: TObject);
begin
  with RcDataModule.suUserInsertQuery do begin
    ParamByName('COMPANY').AsString:=RcDataModule.CoQuery.FieldByName('ID').AsString;
    ParamByName('USERID').AsString:=unameEdit.text;
    ParamByName('PASSWD').AsString:=pwdedit.text;
    ExecSQL;
    RefreshGrid;
  end;
end;

procedure Tsu_coForm.UserGridCellClick(ASender: TObject; const ARow,
  AColumn: Integer);
var
    pwdform : Tsupwdform;
begin
    with RcDataModule.changepasswd do begin
      ParamByName('COMPANY').AsString:=RcDataModule.CoQuery.FieldByName('ID').AsString;
      ParamByName('ID').AsString:=UserGrid.Cell[ARow,0].Text;
      TIWAppForm(WebApplication.ActiveForm).Release;
      pwdform:=Tsupwdform.Create(WebApplication);
      try
        pwdform.setpriv(strtoint(UserGrid.Cell[ARow,1].Text));
      except
        pwdform.setpriv(0);
      end;
      pwdform.Show;
    end;
end;

procedure Tsu_coForm.IWAppFormDestroy(Sender: TObject);
var
   i : integer;
begin
   For i:=0 to Timezonebox.items.Count-1 do
       TimeZoneBox.Items.Objects[i].free;
end;

end.
