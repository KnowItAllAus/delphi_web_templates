unit credsForm;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  IWCompEdit, IWCompListbox, IWCompCheckbox, IWCompLabel,
  IWCompButton, IWControl, IWCompRectangle, IWGrids,
  IWHTMLControls, IWContainer, IWRegion, IWExtCtrls, IWBaseControl,
  IWVCLBaseControl, IWVCLBaseContainer, IWBaseHTMLControl, IWAppForm,
  IWSiLink, siComp, siLngLnk, footer_user, baretitle, IWHTMLContainer,
  ReferredClass, IWHTML40Container, Generics.Collections, Pipes, SuperObject,
  IWCompMemo;

type
  TformCreds = class(TIWAppForm)
    siLangLinked1: TsiLangLinked;
    IWRegion1: TIWRegion;
    IWRegion2: TIWRegion;
    CredLabel: TIWLabel;
    IWLabel1: TIWLabel;
    NameEdit: TIWEdit;
    valueEdit: TIWEdit;
    IWLabel2: TIWLabel;
    CredGrid: TIWGrid;
    IWSiLink1: TIWSiLink;
    FrameBareTitle1: TFrameBareTitle;
    userfooter1: Tuserfooter;
    IWRectangle1: TIWRectangle;
    IWRectangle2: TIWRectangle;
    storenamelbl: TIWLabel;
    IWLabel3: TIWLabel;
    lookupedit: TIWEdit;
    IWLabel4: TIWLabel;
    domainedit: TIWEdit;
    DelCredBtn: TIWButton;
    Vendoredit: TIWEdit;
    IWLabel5: TIWLabel;
    CancelCredBtn: TIWButton;
    AddCredBtn: TIWButton;
    json: TIWMemo;
    IWButton1: TIWButton;
    clearbtn: TIWButton;
    defbtn: TIWButton;
    procedure CancelBtnClick(Sender: TObject);
    procedure IWAppFormCreate(Sender: TObject);
    procedure CredGridRenderCell(ACell: TIWGridCell; const ARow,
      AColumn: Integer);
    procedure CredGridCellClick(ASender: TObject; const ARow, AColumn: Integer);
    procedure CancelCredBtnClick(Sender: TObject);
    procedure DelCredBtnClick(Sender: TObject);
    procedure AddCredBtnClick(Sender: TObject);
    procedure IWAppFormDestroy(Sender: TObject);
    procedure ImportClick(Sender: TObject);
    procedure clearbtnClick(Sender: TObject);
    procedure defbtnClick(Sender: TObject);
  private
    keylist : TList<double>;
    edit_id : double;
    procedure drawCredGrid;
    function isdefined (vendor : string; name : string; domain : string) : boolean;
    { Private declarations }
  public
    { Public declarations }
    referedby : referer_class;
  end;

implementation

uses datamod, db, servercontroller, IWInit, cfgtypes, global, parse_utils, IWTypes, dateutils, StoresForm;

{$R *.DFM}


procedure GoReferer(referedby : referer_class);
begin
   RcDataModule.Trans.Active:=False;
   RcDataModule.Trans.StartTransaction;
   TIWAppForm(WebApplication.ActiveForm).Release;
   referedby.Create(WebApplication).Show;
end;

procedure TformCreds.AddCredBtnClick(Sender: TObject);
begin
  if (nameedit.readonly=false) then begin
    with RcDataModule.CredAdd do begin
      ParamByName('VENDOR').AsString:=VendorEdit.Text;
      ParamByName('STORE_ID').AsString:=RcDataModule.CredQuery.ParamByName('STORE_ID').AsString;
      ParamByName('MDOMAIN').AsString:=domainedit.text;
      ParamByName('FTYPE').AsString:='M';
      if lookupedit.text<>'' then
         ParamByName('FTYPE').AsString:='L';
      ParamByName('DATA').AsString:=valueedit.text;
      ParamByName('LOOKUP').AsString:=lookupedit.text;
      ParamByName('NAME').AsString:=nameedit.text;
      ExecSQL;
      transaction.Commit;
    end;
  end else begin
    with RcDataModule.CredUpdate do begin
      ParamByName('VENDOR').AsString:=VendorEdit.Text;
      ParamByName('MDOMAIN').AsString:=domainedit.text;
      ParamByName('FTYPE').AsString:='M';
      if lookupedit.text<>'' then
         ParamByName('FTYPE').AsString:='L';
      ParamByName('DATA').AsString:=valueedit.text;
      ParamByName('LOOKUP').AsString:=lookupedit.text;
      ParamByName('ID').AsFloat:=edit_id;
      ExecSQL;
      transaction.Commit;
    end;
  end;
  drawcredgrid;
  CancelCredBtnClick(Sender);
end;

procedure TformCreds.CancelBtnClick(Sender: TObject);
begin
   TIWAppForm(WebApplication.ActiveForm).Release;
   TFormStores.Create(WebApplication).Show;
end;

procedure TformCreds.DrawCredGrid;
var
  i : integer;
  dt : TDateTime;
  js,jjs : ISuperObject;
begin
  with RcDataModule.CredQuery do begin
     open;
  end;
  js:=SO;
  jjs:=SA([]);
  with CredGrid do begin
    RowCount:=1;
    Cell[0, 1].Text := SiLangLinked1.GetTextOrDefault ('Grid.Vendor');
    Cell[0, 2].Text := SiLangLinked1.GetTextOrDefault ('Grid.Domain');
    Cell[0, 3].Text := SiLangLinked1.GetTextOrDefault ('Grid.Name');
    Cell[0, 4].Text := SiLangLinked1.GetTextOrDefault ('Grid.Lookup');
    Cell[0, 5].Text := SiLangLinked1.GetTextOrDefault ('Grid.FType');
    Cell[0, 6].Text := SiLangLinked1.GetTextOrDefault ('Grid.Data');
    Cell[0, 0].Text := SiLangLinked1.GetTextOrDefault ('');
    i:=1;
    Keylist.Clear;
    while not RcDataModule.CredQuery.Eof do begin
      RowCount:=i+1;
      KeyList.Add(RcDataModule.CredQuery.FieldByName('ID').AsFloat);
      js:=SO;
      with Cell[i, 0] do begin
        Clickable:=true;
        Text := SiLangLinked1.GetTextOrDefault ('Grid.Edit');
      end;
      with Cell[i, 1] do begin
        Text := RcDataModule.CredQuery.FieldByName('VENDOR').AsString;
        js.S['Vendor']:=Text;
      end;
      with Cell[i, 2] do begin
        Text := RcDataModule.CredQuery.FieldByName('MDOMAIN').AsString;
        js.S['MDomain']:=Text;
      end;
      with Cell[i, 3] do begin
        Text := RcDataModule.CredQuery.FieldByName('NAME').AsString;
        js.S['Name']:=Text;
      end;
      with Cell[i, 4] do begin
        Text := RcDataModule.CredQuery.FieldByName('LOOKUP').AsString;
        js.S['Lookup']:=Text;
      end;
      with Cell[i, 5] do begin
        Text := RcDataModule.CredQuery.FieldByName('FTYPE').AsString;
      end;
      with Cell[i, 6] do begin
        Text := RcDataModule.CredQuery.FieldByName('DATA').AsString;
        js.S['Data']:=Text;
      end;
      jjs.AsArray.Add(js);
      inc (i);
      RcDataModule.CredQuery.Next;
    end;
  end;
  json.Lines.Clear;
  if credgrid.RowCount>1 then json.Lines.Add(jjs.AsJSon(true));
  RcDataModule.CredQuery.Close;
end;

procedure TformCreds.IWAppFormCreate(Sender: TObject);
var
  i : integer;
  co : string;
begin
  KeyList:=TList<double>.create;
  IWSilink1.InitForm;
  co:=TUserSession(WebApplication.Data).Company;
  DrawCredGrid;
  CancelCredBtnClick(sender);
end;

procedure TformCreds.IWAppFormDestroy(Sender: TObject);
begin
  Keylist.Free;
end;

function TformCreds.isdefined (vendor : string; name : string; domain : string) : boolean;
var
  i : integer;
begin
  result:=false;
  for i:=1 to credgrid.RowCount-1 do begin
     if (credgrid.Cell[i,1].text=vendor) and (credgrid.Cell[i,3].text=name) and (credgrid.Cell[i,2].text=domain) then begin
       result:=true;
       exit;
     end;
  end;
end;

procedure TformCreds.ImportClick(Sender: TObject);
var
  js : ISuperObject;
  pname,vendor,MDomain,FType,Data,Lkup : string;
  i : integer;
  imports : integer;
begin
  js:=SO(json.text);
  imports:=0;
  if js.DataType = stArray then begin
     try
       for i := 0 to js.AsArray.Length - 1 do begin
         pname:=js.AsArray[i].S['Name'];
         vendor:=js.AsArray[i].S['Vendor'];
         data:=js.AsArray[i].S['Data'];
         lkup:=js.AsArray[i].S['Lookup'];
         mdomain:=js.AsArray[i].S['MDomain'];
         if (vendor<>'') and (pname<>'') and not isdefined (vendor,pname,mdomain) then begin
            with RcDataModule.CredAdd do begin
              ParamByName('VENDOR').AsString:=Vendor;
              ParamByName('STORE_ID').AsString:=RcDataModule.CredQuery.ParamByName('STORE_ID').AsString;
              ParamByName('MDOMAIN').AsString:=mdomain;
              ParamByName('FTYPE').AsString:='M';
              if lkup<>'' then
                 ParamByName('FTYPE').AsString:='L';
              ParamByName('DATA').AsString:=data;
              ParamByName('LOOKUP').AsString:=lkup;
              ParamByName('NAME').AsString:=pname;
              ExecSQL;
              transaction.Commit;
              inc(imports);
            end;
         end;
       end;
       drawcredgrid;
       WebApplication.ShowMessage('Import complete : '+inttostr(imports)+' record(s) imported',smAlert);
     except
       on e : exception do begin
          WebApplication.ShowMessage('Import error : '+e.message,smAlert);
       end;
     end;
  end else begin
    WebApplication.ShowMessage('JSON error. The top-level structure is not an array.',smAlert);
  end;
end;

procedure TformCreds.clearbtnClick(Sender: TObject);
begin
  json.clear;
end;

procedure TformCreds.CancelCredBtnClick(Sender: TObject);
begin
  LookupEdit.text:='';
  NameEdit.text:='';
  VendorEdit.text:='';
  DomainEdit.text:='';
  ValueEdit.text:='';
  NameEdit.readonly:=false;
  NameEdit.BGColor:=clNone;
  CancelCredBtn.Visible:=false;
  DelCredBtn.Visible:=false;
  AddCredBtn.Caption:='Add';
end;

procedure TformCreds.CredGridCellClick(ASender: TObject; const ARow,
  AColumn: Integer);
begin
  LookupEdit.text:=htmlquote(CredGrid.Cell[ARow,4].Text);
  NameEdit.text:=htmlquote(CredGrid.Cell[ARow,3].Text);
  VendorEdit.text:=htmlquote(CredGrid.Cell[ARow,1].Text);
  DomainEdit.text:=htmlquote(CredGrid.Cell[ARow,2].Text);
  ValueEdit.text:=htmlquote(CredGrid.Cell[ARow,6].Text);
  NameEdit.readonly:=true;
  NameEdit.BGColor:=clGray;
  CancelCredBtn.Visible:=true;
  AddCredBtn.Caption:='Update';
  DelCredBtn.Visible:=true;
  edit_id:=Keylist[ARow-1];
end;

procedure TformCreds.CredGridRenderCell(ACell: TIWGridCell; const ARow,
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

procedure TformCreds.defbtnClick(Sender: TObject);
begin
  try
    begin
      rcdatamodule.CredDefQuery.active:=false;
      rcdatamodule.CredDefQuery.ParamByName ('Company').AsString:=UserSession.Company;
      rcdatamodule.CredDefQuery.active:=true;
      while not rcdatamodule.CredDefQuery.eof do begin
        if not isdefined(rcdatamodule.CredDefQuery.FieldByName('Vendor').AsString,
                         rcdatamodule.CredDefQuery.FieldByName('Name').AsString,
                         rcdatamodule.CredDefQuery.FieldByName('MDomain').AsString
                         ) then begin
          with RcDataModule.CredAdd do begin
              ParamByName('VENDOR').AsString:=rcdatamodule.CredDefQuery.FieldByName('Vendor').AsString;
              ParamByName('STORE_ID').AsString:=rcdatamodule.CredQuery.ParamByName('STORE_ID').AsString;
              ParamByName('MDOMAIN').AsString:=rcdatamodule.CredDefQuery.FieldByName('MDOMAIN').AsString;
              ParamByName('FTYPE').AsString:=rcdatamodule.CredDefQuery.FieldByName('FTYPE').AsString;
              ParamByName('DATA').AsString:=rcdatamodule.CredDefQuery.FieldByName('Data').AsString;
              ParamByName('LOOKUP').AsString:=rcdatamodule.CredDefQuery.FieldByName('Lookup').AsString;;
              ParamByName('NAME').AsString:=rcdatamodule.CredDefQuery.FieldByName('Name').AsString;
              ExecSQL;
          end;
        end;
        rcdatamodule.CredDefQuery.next;
      end;
      RcDataModule.CredAdd.transaction.Commit;
    end;
    drawcredgrid;
  except
    on e : exception do begin
       rcdatamodule.CredDefQuery.Active:=false;
       WebApplication.ShowMessage('Error fetching defaults : '+e.message,smAlert);
    end;
  end;
end;

procedure TformCreds.DelCredBtnClick(Sender: TObject);
begin
  with RcDataModule.CredDel do begin
    ParamByName ('ID').AsFloat:=edit_id;
    ExecSQL;
    transaction.Commit;
  end;
  drawcredgrid;
  CancelCredBtnClick(sender);
end;

end.
