unit grpForm;

interface

uses
  Classes, SysUtils, IWAppForm, IWApplication, IWColor, IWTypes,
  Controls, Forms, IWCompEdit, IWCompButton, IWGrids,
  IWVCLBaseContainer, IWContainer, IWHTMLContainer, IWRegion,
  IWVCLBaseControl, IWBaseControl, IWBaseHTMLControl, IWControl,
  IWCompLabel, Graphics, IWHTMLControls, IWSiLink, siComp, siLngLnk,
  footer_user, distribtitle, IWCompRectangle, ReferredClass,
  IWHTML40Container, IWCompMemo;

type
  TformGrp = class(TIWAppForm)
    siLangLinked1: TsiLangLinked;
    DistribFrameTitle1: TDistribFrameTitle;
    userfooter1: Tuserfooter;
    IWRegion1: TIWRegion;
    IWRegion2: TIWRegion;
    IWRegion3: TIWRegion;
    GroupGrid: TIWGrid;
    IWRectangle1: TIWRectangle;
    IWRectangle2: TIWRectangle;
    PrinterLabel: TIWLabel;
    NewBtn: TIWButton;
    IWSiLink1: TIWSiLink;
    credbtn: TIWButton;
    vendorfield: TIWEdit;
    credfield: TIWEdit;
    IWLabel1: TIWLabel;
    IWLabel2: TIWLabel;
    idmemo: TIWMemo;
    IWLabel3: TIWLabel;
    IWLabel4: TIWLabel;
    procedure GroupGridRenderCell(ACell: TIWGridCell; const ARow,
      AColumn: Integer);
    procedure IWAppFormCreate(Sender: TObject);
    procedure IWAppFormDestroy(Sender: TObject);
    procedure updategrid;
    procedure NewBtnClick(Sender: TObject);
    procedure GroupGridCellClick(ASender: TObject; const ARow,
      AColumn: Integer);
    procedure userfooter1CancelClick(Sender: TObject);
    procedure DistribFrameTitle1statuslinkClick(Sender: TObject);
    procedure credbtnClick(Sender: TObject);
  public
    IList : TStringlist;
  end;

procedure EditGroup (ID : String; refered_by : referer_class);

implementation

{$R *.dfm}

uses datamod, db, servercontroller, IWInit, roleform, grpdtlform, cfgtypes, dialogs;

procedure EditGroup (ID : String; refered_by : referer_class);
var
  tfg : TFormGrpDtl;
begin
  RcDataModule.savevalue ('editgroup',ID);
  TIWAppForm(WebApplication.ActiveForm).Release;
  tfg:=TFormGrpDtl.Create (WebApplication);
  usersession.group_refered_by:=refered_by;
  tfg.show;
end;

procedure TformGrp.GroupGridRenderCell(ACell: TIWGridCell; const ARow,
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

procedure Tformgrp.updategrid;
var
  i : integer;
  s : string;
begin
  RcDataModule.GroupQuery.Close;
  RcDataModule.GroupQuery.ParamByName('COMPANY').AsString:=
     UserSession.Company;
  RcDataModule.GroupQuery.Open;
  with GroupGrid do begin
    Cell[0, 0].Text := SiLangLinked1.GetTextOrDefault('Grid.Name');
    Cell[0, 1].Text := '';
    i:=1;
    RowCount:=1;
    while not RcDataModule.GroupQuery.Eof do begin
      RowCount:=RowCount+1;
      IList.Add(RcDataModule.GroupQuery.FieldByName('ID').AsString);
      with Cell[i, 0] do begin
        s := RcDataModule.GroupQuery.FieldByName('NAME').AsString;
        if RcDataModule.GroupQuery.FieldByName('TESTGROUP').AsString='Y' then
          Font.Style:=[fsItalic];
        Clickable := True;
        while (copy(s,1,1)=' ') do delete (s,1,1);
        if (s='') then
           text:='-- -- -- --'
           else
           text:=htmlquote(s);
      end;
      with Cell[i, 1] do begin
        s := htmlquote(RcDataModule.GroupQuery.FieldByName('NAME').AsString);
        if RcDataModule.GroupQuery.FieldByName('TESTGROUP').AsString='Y' then begin
          Font.Color:=clRed;
          text:=SiLangLinked1.GetTextOrDefault('Grid.Test');
        end else begin
          text:='';
        end;
      end;
      s := RcDataModule.GroupQuery.FieldByName('NAMEU').AsString;
      if s<>'' then
         showmessage (utf8decode(s));


      inc (i);
      RcDataModule.GroupQuery.Next;
    end;
  end;
  RcDataModule.GroupQuery.Close;
end;

procedure TformGrp.IWAppFormCreate(Sender: TObject);
begin
  IWSiLink1.InitForm;
  IList:=TStringList.Create;
  UpdateGrid;
  NewBtn.Visible:=(UserSession.privilege and PRIV_EDIT)<>0;
end;

procedure TformGrp.IWAppFormDestroy(Sender: TObject);
begin
   Ilist.free;
end;

procedure TformGrp.NewBtnClick(Sender: TObject);
var
  GroupId : integer;
begin
  GroupId:=RcDataModule.nextID;
  with RcDataModule.GroupInsertQuery do begin
     Transaction.Active:=True;
     ParamByName('NAME').AsString:=SiLangLinked1.GetTextOrDefault('NewGroup');
     ParamByName('ID').AsInteger:=GroupId;
     ParamByName('COMPANY').AsString:=UserSession.Company;
     ExecSQL;
     transaction.commit;
  end;
  EditGroup (IntToStr(GroupID),nil);
end;

procedure TformGrp.GroupGridCellClick(ASender: TObject; const ARow,
  AColumn: Integer);
begin
  EditGroup (IList.Strings[ARow-1],nil);
end;

procedure TformGrp.userfooter1CancelClick(Sender: TObject);
begin
   TIWAppForm(WebApplication.ActiveForm).Release;
   Tsu_FormRole.Create(WebApplication).Show;
end;

procedure TformGrp.credbtnClick(Sender: TObject);
var
  GroupId, i : integer;
  item : string;
  vendor : integer;
  field : string;
  storeid : string;
  errs : string;
  errcount : integer;
  credcount : integer;
begin
  if Vendorfield.text='' then begin
     WebApplication.ShowMessage('No vendor field', smAlert);
     exit;
  end;

  if Credfield.text='' then begin
     WebApplication.ShowMessage('No credential name field', smAlert);
     exit;
  end;

  credcount:=0;
  for I := 0 to idmemo.Lines.Count-1 do begin
    if idmemo.lines[i]<>'' then inc (credcount);
  end;
  if credcount=0 then begin
     WebApplication.ShowMessage('No credentials specified', smAlert);
     exit;
  end;

  with RcDataModule.SQLQry do begin
     close;
     SQL.Clear;
     SQL.Add('select * from mapping_data_v2 join stores on stores.id=mapping_data_v2.store_Id'
             +' where mapping_data_v2.vendor=:vendor and stores.company=:company and mapping_data_v2.name=:credfield'
             +' and mapping_data_v2.DATA=:dataval');
     ParamByName ('vendor').asString:=vendorfield.text;
     ParamByName ('company').asString:=UserSession.Company;
     ParamByName ('credfield').asString:=credfield.text;
  end;

  errs:='Errors : ';
  errcount:=0;
  for I := 0 to idmemo.Lines.Count-1 do begin
     item:=idmemo.Lines[i];
     if item<>'' then begin
       with RcDataModule.SQLQry do begin
          ParamByName ('dataval').asString:=item;
          open;
          storeid:='';
          if not RcDataModule.SQLQry.eof then begin
             storeid:=fieldbyname ('store_id').AsString;
          end else begin
             inc(errcount);
             errs:=errs+item+' ';
          end;
          close;
       end;
     end;
  end;

  if errcount=0 then begin
    // If the creds all work, then do it for real
    GroupId:=RcDataModule.nextID;
    with RcDataModule.GroupInsertQuery do begin
       Transaction.Active:=True;
       ParamByName('NAME').AsString:='NewCredGroup '+datetimetostr(now);
       ParamByName('ID').AsInteger:=GroupId;
       ParamByName('COMPANY').AsString:=UserSession.Company;
       ParamByName('TESTGROUP').AsString:='N';
       ExecSQL;
    end;

    for I := 0 to idmemo.Lines.Count-1 do begin
       item:=idmemo.Lines[i];
       if item<>'' then begin
         with RcDataModule.SQLQry do begin
            ParamByName ('dataval').asString:=item;
            open;
            storeid:='';
            if not RcDataModule.SQLQry.eof then begin
               storeid:=fieldbyname ('store_id').AsString;
            end;
            close;
         end;

         if storeid<>'' then
         with RcDataModule.GrpAllocInsertQuery do begin
           ParamByName ('ID').AsInteger:=RcDataModule.NextId;
           ParamByName ('GROUPID').AsInteger:=Groupid;
           ParamByName ('ITEMID').AsString:=storeid;
           ParamByName ('COMPANY').AsString:=UserSession.Company;
           ParamByName ('ITEMKIND').AsInteger:=1;
           ExecSQL;
         end;
       end;
    end;
    RcDataModule.Trans.commit;
    EditGroup (IntToStr(GroupID),nil);
  end;
  if errcount>0 then WebApplication.ShowMessage(errs, smAlert);
end;

procedure TformGrp.DistribFrameTitle1statuslinkClick(Sender: TObject);
begin
  DistribFrameTitle1.statuslinkClick(Sender);
end;

end.
