object FormParamnameEdit: TFormParamnameEdit
  Left = 0
  Top = 0
  Width = 1024
  Height = 820
  RenderInvisibleControls = False
  AllowPageAccess = True
  ConnectionMode = cmAny
  SupportedBrowsers = [brNetscape7, brIE, brOpera, brSafari, brNetscape6]
  OnCreate = IWAppFormCreate
  Background.Fixed = False
  HandleTabs = False
  LeftToRight = True
  LockUntilLoaded = True
  LockOnSubmit = True
  ShowHint = True
  XPTheme = True
  DesignLeft = 8
  DesignTop = 8
  object IWRegion1: TIWRegion
    Left = 0
    Top = 118
    Width = 1024
    Height = 674
    Cursor = crAuto
    RenderInvisibleControls = False
    Align = alClient
    BorderOptions.NumericWidth = 0
    BorderOptions.BorderWidth = cbwNumeric
    BorderOptions.Style = cbsNone
    BorderOptions.Color = clNone
    Color = 15456976
    ParentShowHint = False
    ShowHint = True
    ZIndex = 1000
    Splitter = False
    DesignSize = (
      1024
      674)
    object IWSiLink1: TIWSiLink
      Left = 1
      Top = 1
      Width = 65
      Height = 17
      Cursor = crAuto
      IW50Hint = False
      ParentShowHint = False
      ShowHint = True
      ZIndex = 0
      RenderSize = True
      StyleRenderOptions.RenderSize = True
      StyleRenderOptions.RenderPosition = True
      StyleRenderOptions.RenderFont = True
      StyleRenderOptions.RenderZIndex = True
      StyleRenderOptions.RenderVisibility = True
      StyleRenderOptions.RenderStatus = True
      StyleRenderOptions.RenderAbsolute = True
      Alignment = taLeftJustify
      Color = clNone
      Font.Color = clNone
      Font.Size = 10
      Font.Style = [fsUnderline]
      ScriptEvents = <>
      DoSubmitValidation = False
      FriendlyName = 'IWSiLink1'
      TabOrder = 0
      RawText = False
      SiLangLinked = silanglinked1
      LangFile = 'paramnameedit.sil'
      LangControl = RcDataMod.LangEditControl1
    end
    object BodyRegion: TIWRegion
      Left = 190
      Top = 122
      Width = 657
      Height = 167
      Cursor = crAuto
      RenderInvisibleControls = False
      Anchors = [akTop]
      BorderOptions.NumericWidth = 0
      BorderOptions.BorderWidth = cbwNumeric
      BorderOptions.Style = cbsNone
      BorderOptions.Color = clNone
      Color = 14202786
      ParentShowHint = False
      ShowHint = True
      ZIndex = 1000
      Splitter = False
      DesignSize = (
        657
        167)
      object IWRectangle2: TIWRectangle
        Left = 0
        Top = 0
        Width = 657
        Height = 3
        Cursor = crAuto
        Align = alTop
        IW50Hint = False
        ParentShowHint = False
        ShowHint = True
        ZIndex = 0
        RenderSize = True
        StyleRenderOptions.RenderSize = True
        StyleRenderOptions.RenderPosition = True
        StyleRenderOptions.RenderFont = True
        StyleRenderOptions.RenderZIndex = True
        StyleRenderOptions.RenderVisibility = True
        StyleRenderOptions.RenderStatus = True
        StyleRenderOptions.RenderAbsolute = True
        Font.Color = clNone
        Font.Size = 10
        Font.Style = []
        BorderOptions.Color = clNone
        BorderOptions.Width = 0
        FriendlyName = 'IWRectangle1'
        Color = 11100191
        Alignment = taLeftJustify
        VAlign = vaMiddle
      end
      object IWRectangle1: TIWRectangle
        Left = 0
        Top = 3
        Width = 3
        Height = 164
        Cursor = crAuto
        Align = alLeft
        IW50Hint = False
        ParentShowHint = False
        ShowHint = True
        ZIndex = 0
        RenderSize = True
        StyleRenderOptions.RenderSize = True
        StyleRenderOptions.RenderPosition = True
        StyleRenderOptions.RenderFont = True
        StyleRenderOptions.RenderZIndex = True
        StyleRenderOptions.RenderVisibility = True
        StyleRenderOptions.RenderStatus = True
        StyleRenderOptions.RenderAbsolute = True
        Font.Color = clNone
        Font.Size = 10
        Font.Style = []
        BorderOptions.Color = clNone
        BorderOptions.Width = 0
        FriendlyName = 'IWRectangle1'
        Color = 11100191
        Alignment = taLeftJustify
        VAlign = vaMiddle
      end
      object JobLabel: TIWLabel
        Left = 48
        Top = 12
        Width = 133
        Height = 19
        Cursor = crAuto
        IW50Hint = False
        ParentShowHint = False
        ShowHint = True
        ZIndex = 0
        RenderSize = True
        StyleRenderOptions.RenderSize = True
        StyleRenderOptions.RenderPosition = True
        StyleRenderOptions.RenderFont = True
        StyleRenderOptions.RenderZIndex = True
        StyleRenderOptions.RenderVisibility = True
        StyleRenderOptions.RenderStatus = True
        StyleRenderOptions.RenderAbsolute = True
        Alignment = taLeftJustify
        BGColor = clNone
        Font.Color = clNone
        Font.FontName = 'Arial'
        Font.Size = 12
        Font.Style = [fsBold]
        NoWrap = False
        ConvertSpaces = False
        HasTabOrder = False
        AutoSize = False
        FriendlyName = 'StoreLabel'
        Caption = 'Parameter Name'
        RawText = False
      end
      object NameEdit: TIWEdit
        Left = 128
        Top = 72
        Width = 401
        Height = 21
        Cursor = crAuto
        IW50Hint = False
        ParentShowHint = False
        ShowHint = True
        ZIndex = 0
        RenderSize = True
        StyleRenderOptions.RenderSize = True
        StyleRenderOptions.RenderPosition = True
        StyleRenderOptions.RenderFont = True
        StyleRenderOptions.RenderZIndex = True
        StyleRenderOptions.RenderVisibility = True
        StyleRenderOptions.RenderStatus = True
        StyleRenderOptions.RenderAbsolute = True
        Alignment = taLeftJustify
        BGColor = clNone
        FocusColor = clNone
        DoSubmitValidation = True
        Editable = True
        NonEditableAsLabel = True
        Font.Color = clNone
        Font.Size = 10
        Font.Style = []
        FriendlyName = 'StatEdit'
        MaxLength = 0
        ReadOnly = False
        Required = False
        ScriptEvents = <>
        SubmitOnAsyncEvent = True
        TabOrder = 1
        PasswordPrompt = False
        Text = 'NameEdit'
      end
      object IWLabel3: TIWLabel
        Left = 48
        Top = 73
        Width = 36
        Height = 16
        Cursor = crAuto
        IW50Hint = False
        ParentShowHint = False
        ShowHint = True
        ZIndex = 0
        RenderSize = True
        StyleRenderOptions.RenderSize = True
        StyleRenderOptions.RenderPosition = True
        StyleRenderOptions.RenderFont = True
        StyleRenderOptions.RenderZIndex = True
        StyleRenderOptions.RenderVisibility = True
        StyleRenderOptions.RenderStatus = True
        StyleRenderOptions.RenderAbsolute = True
        Alignment = taLeftJustify
        BGColor = clNone
        Font.Color = clNone
        Font.Size = 10
        Font.Style = []
        NoWrap = False
        ConvertSpaces = False
        HasTabOrder = False
        FriendlyName = 'IWLabel1'
        Caption = 'Name'
        RawText = False
      end
      object DelBtn: TIWButton
        Left = 539
        Top = 17
        Width = 83
        Height = 21
        Cursor = crAuto
        Anchors = [akTop, akRight]
        IW50Hint = False
        ParentShowHint = False
        ShowHint = True
        ZIndex = 2
        RenderSize = True
        StyleRenderOptions.RenderSize = True
        StyleRenderOptions.RenderPosition = True
        StyleRenderOptions.RenderFont = True
        StyleRenderOptions.RenderZIndex = True
        StyleRenderOptions.RenderVisibility = True
        StyleRenderOptions.RenderStatus = True
        StyleRenderOptions.RenderAbsolute = True
        Caption = 'Delete'
        DoSubmitValidation = True
        Color = clBtnFace
        Font.Color = clNone
        Font.Size = 10
        Font.Style = []
        FriendlyName = 'DelBtn'
        ScriptEvents = <>
        TabOrder = 4
        OnClick = DelBtnClick
      end
      object ObjBtn: TIWRadioButton
        Left = 138
        Top = 99
        Width = 186
        Height = 21
        Cursor = crAuto
        IW50Hint = False
        ParentShowHint = False
        ShowHint = True
        ZIndex = 0
        RenderSize = True
        StyleRenderOptions.RenderSize = True
        StyleRenderOptions.RenderPosition = True
        StyleRenderOptions.RenderFont = True
        StyleRenderOptions.RenderZIndex = True
        StyleRenderOptions.RenderVisibility = True
        StyleRenderOptions.RenderStatus = True
        StyleRenderOptions.RenderAbsolute = True
        Caption = 'Create Object (Image etc)'
        Editable = True
        Font.Color = clNone
        Font.Size = 10
        Font.Style = []
        ScriptEvents = <>
        DoSubmitValidation = True
        Checked = True
        Group = 'no group'
        Value = 'ObjBtn'
        FriendlyName = 'ObjBtn'
        SubmitOnAsyncEvent = True
      end
      object FieldBtn: TIWRadioButton
        Left = 138
        Top = 124
        Width = 186
        Height = 21
        Cursor = crAuto
        IW50Hint = False
        ParentShowHint = False
        ShowHint = True
        ZIndex = 0
        RenderSize = True
        StyleRenderOptions.RenderSize = True
        StyleRenderOptions.RenderPosition = True
        StyleRenderOptions.RenderFont = True
        StyleRenderOptions.RenderZIndex = True
        StyleRenderOptions.RenderVisibility = True
        StyleRenderOptions.RenderStatus = True
        StyleRenderOptions.RenderAbsolute = True
        Caption = 'Create Field (Date etc)'
        Editable = True
        Font.Color = clNone
        Font.Size = 10
        Font.Style = []
        ScriptEvents = <>
        DoSubmitValidation = True
        Checked = False
        Group = 'no group'
        Value = 'FieldBtn'
        FriendlyName = 'FieldBtn'
        SubmitOnAsyncEvent = True
      end
    end
  end
  inline FrameBareTitle1: TFrameBareTitle
    Left = 0
    Top = 0
    Width = 1024
    Height = 118
    HorzScrollBar.Visible = False
    VertScrollBar.Visible = False
    Align = alTop
    TabOrder = 1
    ExplicitWidth = 1024
    ExplicitHeight = 118
    inherited IWFrameRegion: TIWRegion
      Width = 1024
      Height = 118
      TabOrder = 2
      ExplicitWidth = 1024
      ExplicitHeight = 118
      inherited titleimage: TIWImageFile
        ImageFile.Filename = 'E:\delphi\delphi_web\files\promotions.GIF'
      end
      inherited IWRectangle1: TIWRectangle
        Top = 93
        Width = 1537
        ExplicitTop = 93
        ExplicitWidth = 1537
      end
      inherited IWRectangle3: TIWRectangle
        Top = 98
        Width = 1024
        ExplicitTop = 98
      end
      inherited IWImageFile3: TIWImageFile
        Left = 689
        ExplicitLeft = 689
      end
      inherited langlink: TIWSiLink
        Left = 618
        ExplicitLeft = 618
      end
      inherited Smalltitle: TIWLabel
        Left = 912
        Top = 100
        ExplicitLeft = 912
        ExplicitTop = 100
      end
      inherited HideBox: TIWImageFile
        Left = 1007
        Top = 100
        ExplicitLeft = 1007
        ExplicitTop = 100
      end
      inherited TitleLabel: TIWLabel
        Width = 387
        Caption = 'distribution'
        ExplicitWidth = 387
      end
    end
  end
  inline userfooter1: Tuserfooter
    Left = 0
    Top = 792
    Width = 1024
    Height = 28
    HorzScrollBar.Visible = False
    Align = alBottom
    TabOrder = 2
    ExplicitTop = 792
    ExplicitWidth = 1024
    inherited IWRegion1: TIWRegion
      Width = 1024
      TabOrder = 3
      ExplicitWidth = 1024
      inherited IWRectangle1: TIWRectangle
        Left = 728
        Width = 297
        ExplicitLeft = 728
        ExplicitWidth = 297
      end
      inherited IWRectangle4: TIWRectangle
        Width = 1340
        ExplicitWidth = 1340
      end
      inherited IWRectangle6: TIWRectangle
        Width = 686
        ExplicitWidth = 686
      end
      inherited Cancel: TIWButton
        Left = 926
        OnClick = userfooter1CancelClick
        ExplicitLeft = 926
      end
      inherited Extra1: TIWButton
        Left = 838
        ExplicitLeft = 838
      end
      inherited Extra2: TIWButton
        Left = 750
        Visible = True
        Caption = 'Save'
        OnClick = userfooter1Extra2Click
        ExplicitLeft = 750
      end
      inherited fiwSiLink1: TIWSiLink
        Left = 94
        ExplicitLeft = 94
      end
      inherited navcombo: TIWComboBox
        Visible = False
      end
    end
  end
  object silanglinked1: TsiLangLinked
    Version = '6.5.4.7'
    StringsTypes.Strings = (
      'TIB_STRINGLIST'
      'TSTRINGLIST')
    SmartExcludeProps.Strings = (
      'UserLabel.Caption'
      'DelBtn.Caption'
      'Extra2.Caption'
      'Extra3.Caption'
      'Cancel.Caption')
    LangDispatcher = RcDataMod.siLangDispatcher1
    LangDelim = 1
    LangNames.Strings = (
      'English')
    Language = 'English'
    CommonContainer = RcDataMod.siLang1
    ExcludedProperties.Strings = (
      'Hint'
      'HelpKeyword'
      'Title'
      'FriendlyName'
      'StatusText'
      'HotKey')
    Top = 136
    TranslationData = {
      73007400430061007000740069006F006E0073005F0055006E00690063006F00
      640065000D000A004A006F0062004C006100620065006C000100500061007200
      61006D00650074006500720020004E0061006D00650001000D000A0049005700
      4C006100620065006C00330001004E0061006D00650001000D000A0073007400
      480069006E00740073005F0055006E00690063006F00640065000D000A007300
      740044006900730070006C00610079004C006100620065006C0073005F005500
      6E00690063006F00640065000D000A007300740046006F006E00740073005F00
      55006E00690063006F00640065000D000A005400750073006500720066006F00
      6F0074006500720001004D0053002000530061006E0073002000530065007200
      6900660001000D000A00730074004D0075006C00740069004C0069006E006500
      73005F0055006E00690063006F00640065000D000A0049005700520065006700
      69006F006E0031002E0045007800740072006100540061006700500061007200
      61006D007300010001000D000A0049005700530069004C0069006E006B003100
      2E004500780074007200610054006100670050006100720061006D0073000100
      01000D000A0042006F006400790052006500670069006F006E002E0045007800
      74007200610054006100670050006100720061006D007300010001000D000A00
      49005700520065006300740061006E0067006C00650032002E00450078007400
      7200610054006100670050006100720061006D007300010001000D000A004900
      5700520065006300740061006E0067006C00650031002E004500780074007200
      610054006100670050006100720061006D007300010001000D000A004A006F00
      62004C006100620065006C002E00450078007400720061005400610067005000
      6100720061006D007300010001000D000A004E0061006D006500450064006900
      74002E004500780074007200610054006100670050006100720061006D007300
      010001000D000A00490057004C006100620065006C0033002E00450078007400
      7200610054006100670050006100720061006D007300010001000D000A004400
      65006C00420074006E002E004500780074007200610054006100670050006100
      720061006D007300010001000D000A007300740053007400720069006E006700
      73005F0055006E00690063006F00640065000D000A00440065006C0065007400
      65000100440065006C0065007400650020007400680069007300200072006500
      63006F00720064003F0001000D000A00730074004F0074006800650072005300
      7400720069006E00670073005F0055006E00690063006F00640065000D000A00
      49005700530069004C0069006E006B0031002E0043006F006E00660069007200
      6D006100740069006F006E00010001000D000A0049005700530069004C006900
      6E006B0031002E004C0061006E006700460069006C0065000100700061007200
      61006D006E0061006D00650065006400690074002E00730069006C0001000D00
      0A0049005700520065006300740061006E0067006C00650032002E0054006500
      78007400010001000D000A0049005700520065006300740061006E0067006C00
      650031002E005400650078007400010001000D000A004E0061006D0065004500
      6400690074002E00540065007800740001004E0061006D006500450064006900
      740001000D000A00440065006C00420074006E002E0043006F006E0066006900
      72006D006100740069006F006E00010001000D000A007300740043006F006C00
      6C0065006300740069006F006E0073005F0055006E00690063006F0064006500
      0D000A0073007400430068006100720053006500740073005F0055006E006900
      63006F00640065000D000A005400750073006500720066006F006F0074006500
      72000100440045004600410055004C0054005F00430048004100520053004500
      540001000D000A00}
  end
end
