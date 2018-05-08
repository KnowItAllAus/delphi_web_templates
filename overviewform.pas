unit overviewform;

interface

uses
  Classes, SysUtils, IWAppForm, IWApplication, IWColor, IWTypes, IWControl,
  IWGrids, IWCompLabel, IWCompRectangle, IWVCLBaseControl,
  IWBaseControl, IWBaseHTMLControl, IWHTMLControls, IWSiLink,
  IWVCLBaseContainer, IWContainer, IWHTMLContainer, IWRegion, footer_user,
  Controls, Forms, promotitle, siComp, siLngLnk, distribtitle, IWCompButton,
  IWCompListbox, IWCompRadioButton, IWHTML40Container;

type
  TFormOverview = class(TIWAppForm)
    userfooter1: Tuserfooter;
    IWRegion1: TIWRegion;
    IWSiLink1: TIWSiLink;
    BodyRegion: TIWRegion;
    IWRectangle2: TIWRectangle;
    IWRectangle1: TIWRectangle;
    ImageLabel: TIWLabel;
    OverGrid: TIWGrid;
    silanglinked1: TsiLangLinked;
    DistribFrameTitle1: TDistribFrameTitle;
    storebtn: TIWRadioButton;
    jobbtn: TIWRadioButton;
    storecombo: TIWComboBox;
    procedure OverGridRenderCell(ACell: TIWGridCell; const ARow,
      AColumn: Integer);
    procedure IWAppFormCreate(Sender: TObject);
    procedure userfooter1CancelClick(Sender: TObject);
    procedure OverGridCellClick(ASender: TObject; const ARow,
      AColumn: Integer);
    procedure IWAppFormDestroy(Sender: TObject);
    procedure StoreComboChange(Sender: TObject);
  private
    grouplist : TStringlist;
    procedure RefreshGrid;
    procedure RefreshStoreGrid;
    procedure RefreshJobGrid;
    procedure setstorelist;
  end;

implementation

{$R *.dfm}
uses Graphics, DataMod, roleform, ServerController, storegrpform, grpForm, ReferredClass, Cfgtypes;

const storecol = $00EBDAD0;

type tag_obj = class
  test : boolean;
  s : string;
end;

procedure TFormOverview.OverGridRenderCell(ACell: TIWGridCell;
  const ARow, AColumn: Integer);
begin
  with ACell do begin
    // Title Row
    if ARow = 0 then begin
      Alignment := taCenter;
      BGColor := clBlue;
      Font.Style := [fsBold];
      Font.Color := clWhite;
    end;
  end;
end;

procedure TFormOverview.setstorelist;
var
  ind : integer;
begin
  try
    storecombo.Items.Clear;
    storecombo.Items.AddObject('None',TObject(-1));
    storecombo.Items.AddObject('All Enabled',TObject(-2));
    storecombo.Items.AddObject('All Test',TObject(-3));
    storecombo.Items.AddObject('All',TObject(-4));
    try
      ind:=strtoint(rcdatamodule.GetValue('overview_stores_opt','0'));
    except
      ind:=0;
    end;

    with rcdatamodule do begin
        sqlqry.Transaction.Active:=false;
        sqlqry.SQL.Clear;
        sqlqry.SQL.Add('select name, id from storedata where company=:company order by name');
        sqlqry.parambyname ('Company').asinteger:=strtoint(UserSession.Company);
        sqlqry.Open;
        while not sqlqry.eof do begin
          storecombo.Items.AddObject(sqlqry.fieldbyname('Name').AsString,TObject(sqlqry.fieldbyname('Id').AsInteger));
          sqlqry.Next;
        end;
    end;
    if ind<storecombo.Items.Count then
       storecombo.ItemIndex:=ind;
  finally
    rcdatamodule.sqlqry.Transaction.Active:=false;
  end;
end;

procedure TFormOverview.RefreshJobGrid;
var
  i : integer;
  jobid : integer;
  groupid : integer;
  celltag : tag_obj;
  template : string;
begin
  jobid:=0;
  groupid:=0;
  RcDataModule.OverJobQuery.Transaction.Active:=true;
  RcDataModule.OverJobQuery.ParamByName('COMPANY').AsInteger:=strtoint(UserSession.Company);
  RcDataModule.OverJobQuery.Open;
  with OverGrid do begin
    Cell[0, 2].Text := htmlquote(SiLangLinked1.GetTextOrDefault('Grid.Store'));
    Cell[0, 1].Text := htmlquote(SiLangLinked1.GetTextOrDefault('Grid.Group'));
    Cell[0, 0].Text := htmlquote(SiLangLinked1.GetTextOrDefault('Grid.Job'));
    i:=1;
    RowCount:=1;
    while not RcDataModule.OverJobQuery.Eof do begin
      if jobid<>RcDataModule.OverJobQuery.FieldByName('JID').AsInteger then begin
        RowCount:=RowCount+1;
        Cell[i, 1].BGColor:=clLtGray;
        Cell[i, 2].BGColor:=clLtGray;
        groupid:=0;
        with Cell[i, 0] do begin
           Text :=htmlquote(RcDataModule.OverJobQuery.FieldByName('JN').AsString);
           jobid:=RcDataModule.OverJobQuery.FieldByName('JID').AsInteger;
           inc (i);
           BGColor:=clLtGray;
        end;
      end;
      if RcDataModule.OverJobQuery.FieldByName('gN').AsString<>'' then begin
        if RcDataModule.OverJobQuery.FieldByName('gID').AsInteger<>groupid then begin
          RowCount:=RowCount+1;
          with Cell[i, 1] do begin
            Clickable := True;
            Text :=htmlquote(RcDataModule.OverJobQuery.FieldByName('gN').AsString);
            groupid:=RcDataModule.OverJobQuery.FieldByName('gID').AsInteger;
            BGColor:=Storecol;
            celltag:=tag_obj.create;
            celltag.test:=false;
            celltag.s:=inttostr(groupid);
            tag:=celltag;
            if RcDataModule.OverJobQuery.FieldByName('TEST').AsString='Y' then begin
               Font.Style:=[fsItalic];
               celltag.test:=true;
            end;
            inc(i);
          end;
        end;
      end;
      if RcDataModule.OverJobQuery.FieldByName('sdn').AsString<>'' then begin
        RowCount:=RowCount+1;
        with Cell[i, 2] do begin
          Clickable:=True;
          BGColor:=clWhite;
          text:=htmlquote(RcDataModule.OverJobQuery.FieldByName('sdn').AsString);
          celltag:=tag_obj.create;
          celltag.s:=RcDataModule.OverJobQuery.FieldByName('sdid').AsString;
          celltag.test:=false;
          if RcDataModule.OverJobQuery.FieldByName('stest').AsString='1' then begin
             Font.Style:=[fsItalic];
             celltag.test:=true;
          end;
          tag:=celltag;
          inc(i);
        end;
      end;
      RcDataModule.OverJobQuery.Next;
    end;
  end;
  RcDataModule.OverJobQuery.Close;

  template:='';
  groupid:=0;
  RcDataModule.OverJobTmplQuery.ParamByName('COMPANY').AsInteger:=Strtoint(UserSession.Company);
  RcDataModule.OverJobTmplQuery.Open;
  with OverGrid do begin
    while not RcDataModule.OverJobTmplQuery.Eof do begin
      if template<>RcDataModule.OverJobTmplQuery.FieldByName('TEMPLATENAME').AsString then begin
        RowCount:=RowCount+1;
        Cell[i, 1].BGColor:=clDkGray;
        Cell[i, 1].text:=htmlquote(SiLangLinked1.GetTextOrDefault('Grid.Template'));
        if RcDataModule.OverJobTmplQuery.FieldByName('JOBID').IsNull then begin
           Cell[i, 2].Text:=htmlquote(SiLangLinked1.GetTextOrDefault('Grid.Error'));
           Cell[i, 2].BGColor:=clRed;
        end else Cell[i, 2].BGColor:=clDkGray;
        groupid:=0;
        with Cell[i, 0] do begin
           template:=RcDataModule.OverJobTmplQuery.FieldByName('TEMPLATENAME').AsString;
           Text:=htmlquote(template);
           inc (i);
           BGColor:=clDkGray;
           Font.color:=clWhite;
        end;
      end;
      if RcDataModule.OverJobTmplQuery.FieldByName('GROUPNAME').AsString<>'' then begin
        if RcDataModule.OverJobTmplQuery.FieldByName('GROUPID').AsInteger<>groupid then begin
          RowCount:=RowCount+1;
          with Cell[i, 1] do begin
            Clickable := True;
            Text :=htmlquote(RcDataModule.OverJobTmplQuery.FieldByName('GROUPNAME').AsString);
            groupid:=RcDataModule.OverJobTmplQuery.FieldByName('GROUPID').AsInteger;
            BGColor:=Storecol;
            celltag:=tag_obj.create;
            celltag.test:=false;
            celltag.s:=inttostr(groupid);
            tag:=celltag;
            if RcDataModule.OverJobTmplQuery.FieldByName('GROUPTEST').AsString='Y' then begin
               Font.Style:=[fsItalic];
               celltag.test:=true;
            end;
            inc(i);
          end;
        end;
      end;
      if RcDataModule.OverJobTmplQuery.FieldByName('STORENAME').AsString<>'' then begin
        RowCount:=RowCount+1;
        with Cell[i, 2] do begin
          Clickable:=True;
          BGColor:=clWhite;
          text:=htmlquote(RcDataModule.OverJobTmplQuery.FieldByName('STORENAME').AsString);
          celltag:=tag_obj.create;
          celltag.s:=RcDataModule.OverJobTmplQuery.FieldByName('STOREID').AsString;
          celltag.test:=false;
          if RcDataModule.OverJobTmplQuery.FieldByName('STORETEST').AsString='1' then begin
             Font.Style:=[fsItalic];
             celltag.test:=true;
          end;
          tag:=celltag;
          inc(i);
        end;
      end;
      RcDataModule.OverJobTmplQuery.Next;
    end;
  end;
  RcDataModule.OverJobQuery.Close;
  RcDataModule.OverJobQuery.Transaction.Active:=false;
end;

procedure TFormOverview.RefreshStoreGrid;
var
  i : integer;
  storeid : integer;
  groupid : integer;
  celltag : tag_obj;
  tmpl : integer;
  s : string;
  finished : boolean;
  seppos : integer;
begin
  storeid:=0;
  groupid:=0;
  if storecombo.itemindex=-1 then exit;
  RcDataModule.OverQuery.Transaction.Active:=true;
  RcDataModule.OverQuery.ParamByName('COMPANY').AsInteger:=strtoint(UserSession.Company);
  RcDataModule.OverQuery.ParamByName('STOREOPT').AsInteger:=integer(storecombo.items.objects[storecombo.itemindex]);
  RcDataModule.OverQuery.Open;
  with OverGrid do begin
    Cell[0, 0].Text := htmlquote(SiLangLinked1.GetTextOrDefault('Grid.Store'));
    Cell[0, 1].Text := htmlquote(SiLangLinked1.GetTextOrDefault('Grid.Group'));
    Cell[0, 2].Text := htmlquote(SiLangLinked1.GetTextOrDefault('Grid.Job'));
    i:=1;
    RowCount:=1;
    while not RcDataModule.OverQuery.Eof do begin
      if storeid<>RcDataModule.OverQuery.FieldByName('sdID').AsInteger then begin
        RowCount:=RowCount+1;
        Cell[i, 1].BGColor:=clWhite;
        Cell[i, 2].BGColor:=clWhite;
        groupid:=0;
        with Cell[i, 0] do begin
          Clickable:=True;
          BGColor:=clWhite;
          text:=htmlquote(RcDataModule.OverQuery.FieldByName('sdn').AsString);
          storeid:=RcDataModule.OverQuery.FieldByName('sdID').AsInteger;
          celltag:=tag_obj.create;
          celltag.test:=false;
          if RcDataModule.OverQuery.FieldByName('stest').AsString='1' then begin
             Font.Style:=[fsItalic];
             celltag.test:=true;
          end;
          celltag.s:=inttostr(storeid);
          tag:=celltag;
          inc(i);
        end;
      end;
      if RcDataModule.OverQuery.FieldByName('gN').AsString<>'' then begin
        if RcDataModule.OverQuery.FieldByName('gID').AsInteger<>groupid then begin
          RowCount:=RowCount+1;
          with Cell[i, 1] do begin
            Clickable := True;
            Text :=htmlquote(RcDataModule.OverQuery.FieldByName('gN').AsString);
            groupid:=RcDataModule.OverQuery.FieldByName('gID').AsInteger;
            BGColor:=Storecol;
            celltag:=tag_obj.create;
            celltag.s:=inttostr(groupid);
            celltag.test:=false;
            if RcDataModule.OverQuery.FieldByName('TEST').AsString='1' then begin
               Font.Style:=[fsItalic];
               celltag.test:=true;
            end;
            tag:=celltag;
            inc(i);
          end;
(*          tmpl:=grouplist.IndexOf(celltag.s);
          if tmpl>=0 then begin
             inc (tmpl);
             finished:=false;
             while not finished do begin
               if tmpl<grouplist.count then begin
                  seppos:=pos('_',grouplist.Strings[tmpl]);
                  if seppos>0 then begin
                     s:=copy(grouplist.Strings[tmpl],seppos+2,255);
                     RowCount:=RowCount+1;
                     with Cell[i, 2] do begin
                        text:=htmlquote(s);
                        if grouplist.Strings[tmpl][seppos+1]='+' then begin
                           BGColor:=clDkGray;
                           Font.Color := clWhite;
                        end else begin
                           BGColor:=clRed;
                        end;
                     end;
                     inc(i);
                  end else finished:=true;
               end else finished:=true;
               inc(tmpl);
             end;
          end; *)
        end;
      end;
      if RcDataModule.OverQuery.FieldByName('JN').AsString<>'' then begin
        RowCount:=RowCount+1;
        with Cell[i, 2] do begin
           Text :=htmlquote(RcDataModule.OverQuery.FieldByName('JN').AsString);
           BGColor:=clLtGray;
           if (RcDataModule.OverQuery.FieldByName('TEMPLATE').AsString='1') then begin
              BGColor:=clDkGray;
              Font.Color := clWhite;
           end;
           inc (i);
        end;
      end;
      RcDataModule.OverQuery.Next;
    end;
  end;
  RcDataModule.OverQuery.Close;
  RcDataModule.OverQuery.Transaction.Active:=false;
end;

procedure TFormOverview.RefreshGrid;
var
  grp, r, c : integer;
  s : string;
begin
  for r:=0 to Overgrid.RowCount-1 do
     for c:=0 to Overgrid.ColumnCount-1 do
       Overgrid.Cell[r,c].Tag.Free;

  grouplist.Clear;

  (* Grouplist is a listing of groups and their templates (nnnnn=a group id)
  ...
  nnnnn
  nnnnn_templatename+
  nnnnn_templatename-   template job error (deleted?)
  mmmmm
  ...
  *)

  with RcDataModule.OverTmplQuery do begin
     Transaction.Active:=true;
     ParamByName('COMPANY').AsString:=UserSession.Company;
     Open;
     grp:=-1;
     while not eof do begin
        if FieldByName('GID').AsInteger<>grp then
           grouplist.add (FieldByName('GID').AsString);
        if not FieldByName('TEMPLATENAME').IsNull then begin
           s:=FieldByName('GID').AsString+'_';
           if FieldByName('JOBID').IsNull then s:=s+'-' else s:=s+'+';
           s:=s+FieldByName('TEMPLATENAME').AsString;
           grouplist.Add(s);
        end;
        grp:=FieldByName('GID').AsInteger;
        next;
     end;
     Transaction.Active:=false;
  end;

  //if storebtn.checked then
  refreshstoregrid;
  // else refreshjobgrid;
end;

procedure TFormOverview.IWAppFormCreate(Sender: TObject);
begin
   Storebtn.checked:=RcDataModule.GetValue('overview_stores','1')='1';
   jobbtn.checked:=not storebtn.checked;
   Grouplist:=TStringlist.Create;
   Grouplist.sorted:=true;
   setstorelist;
   RefreshGrid;
end;

procedure TFormOverview.userfooter1CancelClick(Sender: TObject);
begin
   TIWAppForm(WebApplication.ActiveForm).Release;
   Tsu_FormRole.Create (WebApplication).show;
end;

procedure TFormOverview.OverGridCellClick(ASender: TObject; const ARow,
  AColumn: Integer);
var
  tfg : TformGrpStore;
begin
  if AColumn<>1 then begin
    TIWAppForm(WebApplication.ActiveForm).Release;
    RcDatamodule.CurrentStoreQuery.ParamByName('ID').AsString:=tag_obj(overgrid.Cell[arow,acolumn].tag).s;
    tfg:=TformGrpStore.Create (WebApplication);
    tfg.StoreLabel.caption:=overgrid.Cell[arow,acolumn].text;
    tfg.populate_fields(tag_obj(overgrid.Cell[arow,acolumn].tag).test);
    tfg.show;
  end else begin
    EditGroup (tag_obj(overgrid.Cell[arow,acolumn].tag).s,TformOverview);
  end;
end;

procedure TFormOverview.IWAppFormDestroy(Sender: TObject);
var
  r,c : integer;
begin
  for r:=0 to Overgrid.RowCount-1 do
     for c:=0 to Overgrid.ColumnCount-1 do
       Overgrid.Cell[r,c].Tag.Free;
  Grouplist.free;
end;

procedure TFormOverview.StoreComboChange(Sender: TObject);
begin
   rcdatamodule.SaveValue('overview_stores',inttostr(ord(storebtn.checked)));
   rcdatamodule.SaveValue('overview_stores_opt',inttostr(storecombo.itemindex));
   RefreshGrid;
end;

end.
