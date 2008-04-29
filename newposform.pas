unit newposform;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  standardForm, IWCompListbox, IWCompButton, IWContainer, IWRegion,
  IWHTMLControls, IWCompEdit, IWControl, IWCompLabel, titleframe, NavFrame;

type
  TFormNewPos = class(TStdForm)
    PosLabel: TIWLabel;
    IWLabel1: TIWLabel;
    NewNameEdit: TIWEdit;
    NewIDEdit: TIWEdit;
    IWLabel5: TIWLabel;
    IWListbox1: TIWListbox;
    IWLabel2: TIWLabel;
    IWEdit1: TIWEdit;
    IWLabel3: TIWLabel;
    Line2Edit: TIWEdit;
    IWLabel4: TIWLabel;
    Line3Edit: TIWEdit;
    DelLine1Item: TIWLink;
    IWLink1: TIWLink;
    IWLink2: TIWLink;
    IWLink3: TIWLink;
    IWLink4: TIWLink;
    IWLink5: TIWLink;
    IWRegion1: TIWRegion;
    IWLabel6: TIWLabel;
    Sample1: TIWLabel;
    Sample2: TIWLabel;
    IWLabel8: TIWLabel;
    IWLabel9: TIWLabel;
    IWLabel10: TIWLabel;
    IWLabel11: TIWLabel;
    DecEdit: TIWEdit;
    IWLabel12: TIWLabel;
    ThouEdit: TIWEdit;
    CurrEdit: TIWEdit;
    UpdateBtn: TIWButton;
    IWLabel18: TIWLabel;
    QtyPrefixEdit: TIWEdit;
    IWLabel19: TIWLabel;
    QtySuffixEdit: TIWEdit;
    Total2: TIWLabel;
    Total1: TIWLabel;
    IWRegion2: TIWRegion;
    DupEdit: TIWEdit;
    IWLabel7: TIWLabel;
    IWLabel13: TIWLabel;
    ReqEdit: TIWEdit;
    IWLabel14: TIWLabel;
    ExclEdit: TIWEdit;
    IWLabel15: TIWLabel;
    MerchEdit: TIWEdit;
    IWLabel16: TIWLabel;
    ProdEndEdit: TIWEdit;
    ProdStartEdit: TIWEdit;
    IWLabel17: TIWLabel;
    ProdSepBox: TIWComboBox;
    IWLabel21: TIWLabel;
    IWLabel22: TIWLabel;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormNewPos: TFormNewPos;

implementation

{$R *.DFM}

end.
