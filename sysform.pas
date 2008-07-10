unit sysform;

interface

uses
  Classes, SysUtils, IWAppForm, IWApplication, IWColor, IWTypes,
  Controls, Forms, IWCompButton, IWCompLabel, IWVCLBaseControl,
  IWBaseControl, IWBaseHTMLControl, IWControl, IWGrids, Graphics,
  IWCompListbox, siComp, siLngLnk, IWHTMLControls, IWSiLink,
  IWCompRectangle, footer_user, IWVCLBaseContainer, IWContainer,
  IWHTMLContainer, IWRegion, admintitle;

type
  TFormSys = class(TIWAppForm)
    siLangLinked1: TsiLangLinked;
    IWRegion1: TIWRegion;
    IWRegion2: TIWRegion;
    StoreGrid: TIWGrid;
    StoreLabel: TIWLabel;
    StoreCombo: TIWComboBox;
    SlaveGrid: TIWGrid;
    IWLabel1: TIWLabel;
    slavecombo: TIWComboBox;
    IWSiLink1: TIWSiLink;
    RefreshBtn: TIWButton;
    IWRectangle1: TIWRectangle;
    IWRectangle2: TIWRectangle;
    AdminFrameTitle1: TAdminFrameTitle;
    userfooter1: Tuserfooter;
    procedure rendercell(ACell: TIWGridCell; const ARow, AColumn: Integer);
    procedure IWAppFormCreate(Sender: TObject);
    procedure RefreshBtnClick(Sender: TObject);
    procedure StoreComboChange(Sender: TObject);
    procedure slavecomboChange(Sender: TObject);
    procedure StoreGridCellClick(ASender: TObject; const ARow,
      AColumn: Integer);
    procedure userfooter1CancelClick(Sender: TObject);
  public
    procedure refreshstoregrid;
    procedure refreshslavegrid;
  end;

type myrec = record
   i : integer;
   s : string;
end;

const
   m : myrec = (i : 1; s : 'abc');

implementation

{$R *.dfm}
uses Servercontroller, datamod, AdminDM, IBQuery, db, storeform, roleform, cfgtypes;


procedure TFormSys.rendercell(ACell: TIWGridCell; const ARow,
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

procedure TFormSys.refreshstoregrid;
var
   query : TIBQuery;
   p : TParam;
begin
   query:=nil;
   case storecombo.itemindex of
      0 : query:=RcAdminData.storeoffquery;
      1 : query:=RcAdminData.storeonquery;
      2 : query:=RcAdminData.storeenabledquery;
      3 : query:=RcAdminData.storeallquery;
      4 : query:=RcAdminData.storePendingQuery;
      5 : query:=RcAdminData.storeDbgQuery;
   end;
   if query<>nil then with query do begin
      try
        p:=params.findparam ('LastComms');
        if (assigned(p)) then p.AsDateTime:=now - 2/24;  // 2 hours since contact
      except
      end;
      parambyname ('Company').AsString:=UserSession.Company;
      transaction.active:=false;
      transaction.active:=true;
      active:=true;
      with StoreGrid do begin
        Rowcount:=1;
        Cell[0, 0].Text := SiLangLinked1.GetTextOrDefault ('Grid.ID');
        Cell[0, 1].Text := SiLangLinked1.GetTextOrDefault ('Grid.Name');
        Cell[0, 2].Text := SiLangLinked1.GetTextOrDefault ('Grid.LastComms');
        Cell[0, 3].Text := SiLangLinked1.GetTextOrDefault ('Grid.Address');
        if UserSession.Company='0' then Cell[0, 4].Text := SiLangLinked1.GetTextOrDefault ('Grid.Company');
        while not eof do begin
          Rowcount:=RowCount+1;
          with Cell[Rowcount-1, 0] do begin
            Clickable := UserSession.Company<>'0';
            Text := FieldByName('ID').AsString;
          end;
          with Cell[Rowcount-1, 1] do begin
            Text := htmlquote(FieldByName('Name').AsString);
          end;
          with Cell[Rowcount-1, 2] do begin
            Text := FieldByName('LastComms').AsString;
          end;
          with Cell[Rowcount-1, 3] do begin
            Text := FieldByName('MAC').AsString;
          end;
          if UserSession.Company='0' then begin
            with Cell[Rowcount-1, 4] do begin
              Text := htmlquote(FieldByName('CompanyName').AsString);
            end;
          end;
          next;
        end;
      end;
      transaction.active:=false;
   end else begin
      Storegrid.rowcount:=0;
   end;
end;

procedure TFormSys.refreshslavegrid;
var
   query : TIBQuery;
   p : TParam;
begin
   query:=nil;
   case slavecombo.itemindex of
      0 : query:=RcAdminData.slaveoffquery;
      1 : query:=RcAdminData.slavependingquery;
      2 : query:=RcAdminData.slaveallenquery;
      3 : query:=RcAdminData.slaveallquery;
      4 : query:=RcAdminData.slavedbgquery;
      5 : query:=RcAdminData.slavebypassquery;
   end;
   if query<>nil then with query do begin
      try
        p:=query.Params.FindParam('LastContact');
        if (assigned(p)) then p.AsDateTime:=now - 2/24;  // 2 hours since contact
      except
      end;
      parambyname ('Company').AsString:=UserSession.Company;
      transaction.active:=false;
      transaction.active:=true;
      active:=true;
      with SlaveGrid do begin
        Rowcount:=1;
        Cell[0, 0].Text := SiLangLinked1.GetTextOrDefault ('Grid.Address');
        Cell[0, 1].Text := SiLangLinked1.GetTextOrDefault ('Grid.Aisle');
        Cell[0, 2].Text := SiLangLinked1.GetTextOrDefault ('Grid.Store');
        Cell[0, 3].Text := SiLangLinked1.GetTextOrDefault ('Grid.LastComms');
        Cell[0, 4].Text := SiLangLinked1.GetTextOrDefault ('Grid.Version');
        Cell[0, 5].Text := SiLangLinked1.GetTextOrDefault ('Grid.Bypass');
        if (UserSession.Company='0') then begin
           Cell[0,6].Text := SiLangLinked1.GetTextOrDefault ('Grid.Company');
        end;
        while not eof do begin
          Rowcount:=RowCount+1;
          with Cell[Rowcount-1, 0] do begin
            Text := FieldByName('Address').AsString;
          end;
          with Cell[Rowcount-1, 1] do begin
            Text := FieldByName('Pos').AsString;
          end;
          with Cell[Rowcount-1, 2] do begin
            Text := Htmlquote(FieldByName('Storename').AsString);
          end;
          with Cell[Rowcount-1, 3] do begin
            Text := FieldByName('LastContact').AsString;
          end;
          with Cell[Rowcount-1, 4] do begin
            Text := FieldByName('Ver').AsString;
          end;
          with Cell[Rowcount-1, 5] do begin
            Text := FieldByName('Bypass').AsString;
          end;
          if (UserSession.Company='0') then begin
            with Cell[Rowcount-1, 6] do begin
              Text := htmlquote(FieldByName('CompanyName').AsString);
            end;
          end;
          next;
        end;
      end;
      transaction.active:=false;
   end;
end;

procedure TFormSys.IWAppFormCreate(Sender: TObject);
begin
   IWSiLink1.InitForm;
   if (UserSession.Company='0') then begin
      SlaveGrid.ColumnCount:=SlaveGrid.ColumnCount+1;
      StoreGrid.ColumnCount:=StoreGrid.ColumnCount+1;
   end;
   try
     storecombo.itemindex:=strtoint(Rcdatamodule.getvalue (self.Name+'StoreCombo','0'));
   except
   end;
   try
     slavecombo.itemindex:=strtoint(Rcdatamodule.getvalue (self.Name+'SlaveCombo','0'));
   except
   end;

   refreshstoregrid;
   refreshslavegrid;
end;

procedure TFormSys.RefreshBtnClick(Sender: TObject);
begin
   refreshstoregrid;
   refreshslavegrid;
end;

procedure TFormSys.StoreComboChange(Sender: TObject);
begin
   RefreshStoreGrid;
   Rcdatamodule.SaveValue(self.Name+'StoreCombo',inttostr(storecombo.itemindex));
end;

procedure TFormSys.slavecomboChange(Sender: TObject);
begin
   refreshslavegrid;
   Rcdatamodule.SaveValue(self.Name+'SlaveCombo',inttostr(slavecombo.itemindex));
end;

procedure TFormSys.StoreGridCellClick(ASender: TObject; const ARow,
  AColumn: Integer);
var
  FS : TFormStore;
begin
  with RcDataModule.CurrentStoreQuery do begin
    Transaction.Active:=false;
    Close;
    ParamByName ('COMPANY').AsString:=TUserSession(WebApplication.Data).Company;
    ParamByName ('ID').AsString:=StoreGrid.Cell[Arow,AColumn].Text;
    RcDataModule.Trans.Active:=True;
    Open;
    TIWAppForm(WebApplication.ActiveForm).Release;
    FS:=TFormStore.Create (WebApplication);
    FS.referedby:=TFormSys;
    FS.show;
  end;
end;

procedure TFormSys.userfooter1CancelClick(Sender: TObject);
begin
   TIWAppForm(WebApplication.ActiveForm).Release;
   Tsu_formrole.Create(WebApplication).Show;
end;

end.
