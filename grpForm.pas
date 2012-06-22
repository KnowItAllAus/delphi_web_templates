unit grpForm;

interface

uses
  Classes, SysUtils, IWAppForm, IWApplication, IWColor, IWTypes,
  Controls, Forms, IWCompEdit, IWCompButton, IWGrids,
  IWVCLBaseContainer, IWContainer, IWHTMLContainer, IWRegion,
  IWVCLBaseControl, IWBaseControl, IWBaseHTMLControl, IWControl,
  IWCompLabel, Graphics, IWHTMLControls, IWSiLink, siComp, siLngLnk,
  footer_user, distribtitle, IWCompRectangle, ReferredClass,
  IWHTML40Container;

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

procedure TformGrp.DistribFrameTitle1statuslinkClick(Sender: TObject);
begin
  DistribFrameTitle1.statuslinkClick(Sender);
end;

end.
