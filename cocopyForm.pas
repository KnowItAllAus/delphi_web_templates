unit cocopyForm;

interface

uses
  Classes, SysUtils, IWAppForm, IWApplication, IWColor, IWTypes,
  IWCompButton, IWCompLabel, IWVCLBaseControl, IWBaseControl,
  IWBaseHTMLControl, IWControl, IWCompEdit, Controls, Forms, 
  IWHTMLControls, IWExtCtrls, IWCompListbox, IWCompRectangle, IWSiLink,
  footer_user, IWVCLBaseContainer, IWContainer, IWHTMLContainer, IWRegion,
  baretitle;

type
  TCopyform = class(TIWAppForm)
    FrameBareTitle1: TFrameBareTitle;
    IWRegion1: TIWRegion;
    userfooter1: Tuserfooter;
    IWRegion2: TIWRegion;
    IWLabel1: TIWLabel;
    IWSiLink1: TIWSiLink;
    IWRectangle2: TIWRectangle;
    IWRectangle1: TIWRectangle;
    CompanyCombo: TIWComboBox;
    IWLabel3: TIWLabel;
    IWLabel2: TIWLabel;
    IWRegion3: TIWRegion;
    FromLabel: TIWLabel;
    Cancel: TIWButton;
    procedure CpyBtnClick(Sender: TObject);
    procedure CancelBtnClick(Sender: TObject);
    procedure IWAppFormCreate(Sender: TObject);
    procedure IWAppFormDestroy(Sender: TObject);
  public
    from_co : string;
    ilist : TStringlist;
  end;

implementation

uses DataMod, su_main, dialogs;

{$R *.dfm}


procedure TCopyform.CpyBtnClick(Sender: TObject);
var
  fromco : integer;
  toco : integer;
  fieldid : integer;
  oldid : integer;
  NewId : integer;
  Oldlist : TStringlist;
  Newlist : TStringlist;
  RD : TRcDataMod;
begin
  if companycombo.itemindex=-1 then exit;
  RcDataModule.Trans.Active:=False;
  RcDataModule.Trans.StartTransaction;
  fromco:=strtoint(from_co);
  toco:=strtoint(ilist.strings[companycombo.itemindex]);
  OldList:=TStringlist.create;
  NewList:=TStringlist.create;
  RD:=RcDataModule;
  with RD do begin

      // First copy the images
      ImageQuery.ParamByName ('Company').AsInteger:=FromCo;
      ImageQuery.Active:=true;
      while not ImageQuery.Eof do begin
        for fieldid:=0 to ImageQuery.FieldCount-1 do begin
            imgcopyquery.Parambyname(ImageQuery.Fields[fieldid].displayname).value:=imagequery.fields[fieldid].value;
        end;
        NewId:=NextId;
        imgcopyquery.ParamByName('ID').AsInteger:=NewId;
        imgcopyquery.Parambyname('Company').AsInteger:=toco;
        OldId:=imagequery.fieldByName ('ID').AsInteger;
        imgcopyquery.ExecSQL;
        OldList.Add (IntToStr(OldId));
        NewList.Add (IntToStr (NewId));
        ImageQuery.Next;
      end;

      voucherquery.ParamByName('Company').AsInteger:=fromco;
      voucherquery.Active:=true;
      while not voucherquery.Eof do begin
         with voucherquery do begin
            // Copy the main fields
            for fieldid:=0 to VoucherQuery.FieldCount-1 do begin
                try
                   vchcopyquery.Parambyname(Fields[fieldid].displayname).value:=fields[fieldid].value;
                except
                end;
            end;
            NewId:=NextId;
            vchcopyquery.ParamByName('ID').AsInteger:=NewId;
            vchcopyquery.Parambyname('Company').AsInteger:=toco;
            OldId:=fieldByName ('ID').AsInteger;
            vchcopyquery.ExecSQL;

            ItemQuery.ParamByName ('Company').AsInteger:=Fromco;
            ItemQuery.ParamByName ('ItemID').AsInteger:=OldId;
            ItemQuery.Active:=True;
            while not ItemQuery.Eof do begin
               ItemInsertQuery.ParamByName ('ID').AsInteger:=NextId;
               ItemInsertQuery.ParamByName ('ItemID').AsInteger:=NewId;
               ItemInsertQuery.ParamByName ('Company').AsInteger:=ToCo;
               ItemInsertQuery.ParamByName ('Rescode').AsInteger:=ItemQuery.FieldByName('Rescode').AsInteger;
               try
                  ItemInsertQuery.ParamByName ('CONTENTID').AsInteger:=StrToInt(NewList.Strings[OldList.indexof(ItemQuery.FieldByName('CONTENTID').AsString)]);
                  ItemInsertQuery.ExecSQL;
               except
                  // Orphan - ignore.
               end;
               ItemQuery.Next;
            end;
            ItemQuery.Active:=False;
            Next;
         end;
      end;
  end;
  RcDataModule.Trans.Commit;
  OldList.free;
  Newlist.free;

  CancelBtnClick (Sender);
end;

procedure TCopyform.CancelBtnClick(Sender: TObject);
begin
   RcDataModule.Trans.Active:=False;
   TIWAppForm(WebApplication.ActiveForm).Release;
   // Create the next form
   Tsu_FormMain.Create(WebApplication).Show;
end;

procedure TCopyform.IWAppFormCreate(Sender: TObject);
begin
   ilist:=TStringList.create;
end;

procedure TCopyform.IWAppFormDestroy(Sender: TObject);
begin
   IList.free;
end;

end.
