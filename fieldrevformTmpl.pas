unit fieldrevformTmpl;

interface

uses
  Classes, SysUtils, IWAppForm, IWApplication, IWColor, IWTypes,
  IWHTMLControls, IWExtCtrls, IWGrids, IWCompLabel, IWCompRectangle,
  IWVCLBaseControl, IWBaseControl, IWBaseHTMLControl, IWControl, IWSiLink,
  IWVCLBaseContainer, IWContainer, IWHTMLContainer, IWRegion, footer_user,
  Controls, Forms, baretitle, siComp, siLngLnk, IWCompMemo,
  IWCompListbox, IWCompEdit, IWCompButton, cfgtypes, IWHTML40Container;

type
  TformFieldVersionsTmpl = class(TIWAppForm)
    FrameBareTitle1: TFrameBareTitle;
    userfooter1: Tuserfooter;
    IWRegion1: TIWRegion;
    BodyRegion: TIWRegion;
    IWRectangle2: TIWRectangle;
    IWRectangle1: TIWRectangle;
    ImageLabel: TIWLabel;
    ImageGrid: TIWGrid;
    IWSiLink1: TIWSiLink;
    siLangLinked1: TsiLangLinked;
    NameEdit: TIWEdit;
    NewBtn: TIWButton;
    ValueEdit: TIWEdit;
    IWLabel1: TIWLabel;
    FieldTypeLbl: TIWLabel;
    procedure IWAppFormCreate(Sender: TObject);
    procedure ImageGridRenderCell(ACell: TIWGridCell; const ARow,
      AColumn: Integer);
    procedure ImageGridCellClick(ASender: TObject; const ARow,
      AColumn: Integer);
    procedure userfooter1CancelClick(Sender: TObject);
    procedure NewBtnClick(Sender: TObject);
  private
    current : string;
    procedure RefreshGrid;
  end;

implementation

{$R *.dfm}

uses datamod, graphics, serverController, jpeg, db, imagesform, imageupformtmpl, grptmplform,
IBCustomDataSet, IBQuery, IBDatabase, editTmplForm,
  IBTable, IBUpdateSQL, dialogs;

var
  t : TIBTransaction;

procedure TformFieldVersionsTmpl.RefreshGrid;
var
  i : integer;
  s : string;
begin
  RcDataModule.ImageVerQueryTmpl.Transaction.Active:=true;
  with RcDataModule do begin
    CurrentImageHdrQueryTmpl.ParamByName('ID').AsString:=GetValue ('editparam','');
    CurrentImageHdrQueryTmpl.ParamByName ('COMPANY').AsString:=UserSession.Company;
    CurrentImageHdrQueryTmpl.Open;
    NameEdit.text:=CurrentImageHdrQueryTmpl.FieldByName('NAME').AsString;
    current:=CurrentImageHdrQueryTmpl.FieldByName('CURRENTID').AsString;
    CurrentImageHdrQueryTmpl.Close;
    ImageVerQueryTmpl.ParamByName('HDRID').AsString:=GetValue ('editparam','');
    ImageVerQueryTmpl.ParamByName ('COMPANY').AsString:=UserSession.Company;
    ImageVerQueryTmpl.Open;
  end;
  ImageGrid.ColumnCount:=5;
  with ImageGrid do begin
    Cell[0, 0].Text := SiLangLinked1.GetTextOrDefault('Grid.ID');
    Cell[0, 1].Text := SiLangLinked1.GetTextOrDefault('Grid.Created');
    Cell[0, 2].Text := SiLangLinked1.GetTextOrDefault('Grid.InUse');
    Cell[0, 3].Text := SiLangLinked1.GetTextOrDefault('Grid.User');
    Cell[0, 4].Text := SiLangLinked1.GetTextOrDefault('Grid.Value');
    i:=1;
    RowCount:=1;
    while not RcDataModule.ImageVerQueryTmpl.Eof do begin
      RowCount:=RowCount+1;
      with Cell[i, 0] do begin
        Clickable := True;
        s:=RcDataModule.ImageVerQueryTmpl.FieldByName('ID').AsString;
        text:=s;
        Cell [i,2].text:='';
        if s=current then begin
           Cell[i,2].text:='['+SiLangLinked1.GetTextOrDefault('Grid.Current')+']';
        end;
      end;
      with Cell[i, 1] do begin
        Text :=RcDataModule.ImageVerQueryTmpl.FieldByName('CREATEDTIME').AsString;
      end;
      with Cell[i, 3] do begin
        Text :=htmlquote(RcDataModule.ImageVerQueryTmpl.FieldByName('CREATEDBY').AsString);
      end;
      with Cell[i, 4] do begin
        Text :=htmlquote(RcDataModule.ImageVerQueryTmpl.FieldByName('DATAFIELD').AsString);
      end;
      inc (i);
      RcDataModule.ImageVerQueryTmpl.Next;
    end;
  end;
  RcDataModule.ImageVerQueryTmpl.Close;
  RcDataModule.ImageVerQueryTmpl.Transaction.Active:=false;
end;

procedure TformFieldVersionsTmpl.IWAppFormCreate(Sender: TObject);
begin
  t:=RcDataModule.Trans;
  IWSiLink1.InitForm;
  RefreshGrid;
  if UserSession.ReadOnly then begin
     newbtn.enabled:=false;
     ValueEdit.enabled:=false;
  end;
  ValueEdit.Text:='';
  FieldTypeLbl.caption:=RcDataModule.GetValue ('edittmpltype','???');
end;

procedure TformFieldVersionsTmpl.ImageGridRenderCell(ACell: TIWGridCell;
  const ARow, AColumn: Integer);
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
      if (AColumn=0) and false then begin
        BGColor:=clYellow;
        Font.Color:=clBlack;
      end else if Odd(ARow) then begin
        BGColor := clLtGray;
      end else begin
        BGColor := clNone;
      end;
    end;
  end;
end;


procedure TformFieldVersionsTmpl.ImageGridCellClick(ASender: TObject;
  const ARow, AColumn: Integer);
begin
    try
      with RcDataModule do begin
        SQLQry.Transaction.Active:=false;
        SQLQry.Transaction.Active:=true;
        SQLQry.SQL.Clear;
        SQLQry.SQL.Add('update GROUPOBJHDR set CURRENTID=:CURRENT where ID=:ID and COMPANY=:COMPANY');
        SQLQry.ParamByName ('ID').AsString:=RcDataModule.GetValue ('editparam','');
        SQLQry.ParamByName ('CURRENT').AsString:=ImageGrid.Cell[ARow,0].Text;
        SQLQry.ParamByName ('COMPANY').AsString:=UserSession.Company;
        SQLQry.ExecSQL;
        SQLQry.Transaction.Commit;
        RefreshGrid;
      end;
    except
    end;
end;

procedure TformFieldVersionsTmpl.userfooter1CancelClick(Sender: TObject);
begin
   TIWAppForm(WebApplication.ActiveForm).Release;
   if (RcDataModule.GetValue ('JobInstance','N')='INSTANCE') then
      TFormEditTmpl.Create(WebApplication).Show
   else
      TformGrpTmpl.Create(WebApplication).Show;
end;

procedure TformFieldVersionsTmpl.NewBtnClick(Sender: TObject);
var
  ImageId : integer;
begin
  with RcDataModule do begin
    Trans.Active:=true;
    ImageId:=nextID;
    try
      with RcDataModule do begin
        SQLQry.Transaction.Active:=false;
        SQLQry.Transaction.Active:=true;
        SQLQry.SQL.Clear;
        SQLQry.SQL.Add('insert into GROUPPARAMOBJ (ID,COMPANY,PARAMOBJID,CREATEDBY,CREATEDTIME,DATAFIELD) VALUES (:ID,:COMPANY,:HDR,:CREATEDBY,:CREATEDTIME,:DATAFIELD)');
        SQLQry.ParamByName ('ID').AsString:=inttostr(ImageID);
        SQLQry.ParamByName ('HDR').AsString:=RcDataModule.GetValue ('editparam','');
        SQLQry.ParamByName ('COMPANY').AsString:=UserSession.Company;
        SQLQry.ParamByName ('CREATEDBY').AsString:=UserSession.User;
        SQLQry.ParamByName ('CREATEDTIME').AsDateTime:=now;
        SQLQry.ParamByName ('DATAFIELD').AsString:=ValueEdit.text;
        SQLQry.ExecSQL;
        SQLQry.Transaction.Commit;
        SQLQry.Transaction.Active:=false;
        SQLQry.Transaction.Active:=true;
        SQLQry.SQL.Clear;
        SQLQry.SQL.Add('update GROUPOBJHDR set CURRENTID=:CURRENT where ID=:ID and COMPANY=:COMPANY');
        SQLQry.ParamByName ('CURRENT').AsString:=inttostr(ImageID);
        SQLQry.ParamByName ('ID').AsString:=RcDataModule.GetValue ('editparam','');
        SQLQry.ParamByName ('COMPANY').AsString:=UserSession.Company;
        SQLQry.ExecSQL;
        SQLQry.Transaction.Commit;
      end;
    except
      WebApplication.ShowMessage(userfooter1.silink_footer.GetTextOrDefault('DBError'));
    end;
  end;
  RefreshGrid;
  ValueEdit.Text:='';
end;

end.
