object formStores: TformStores
  Left = 0
  Top = 0
  Width = 1024
  Height = 656
  RenderInvisibleControls = False
  AllowPageAccess = True
  ConnectionMode = cmAny
  SupportedBrowsers = [brNetscape7, brIE, brOpera, brSafari, brNetscape6]
  OnCreate = IWAppFormCreate
  OnDestroy = IWAppFormDestroy
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
    Top = 111
    Width = 1024
    Height = 517
    Cursor = crAuto
    RenderInvisibleControls = False
    Align = alClient
    BorderOptions.NumericWidth = 0
    BorderOptions.BorderWidth = cbwNumeric
    BorderOptions.Style = cbsSolid
    BorderOptions.Color = clNone
    Color = 15456976
    ParentShowHint = False
    ShowHint = True
    ZIndex = 1000
    Splitter = False
    DesignSize = (
      1024
      517)
    object IWSiLink1: TIWSiLink
      Left = 0
      Top = 0
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
      TabOrder = 4
      RawText = False
      SiLangLinked = siLangLinked1
      LangFile = 'stores.sil'
      LangControl = RcDataMod.LangEditControl1
    end
    object IWRegion2: TIWRegion
      Left = 48
      Top = 24
      Width = 953
      Height = 463
      Cursor = crAuto
      RenderInvisibleControls = False
      Anchors = [akLeft, akTop, akRight, akBottom]
      BorderOptions.NumericWidth = 0
      BorderOptions.BorderWidth = cbwNumeric
      BorderOptions.Style = cbsSolid
      BorderOptions.Color = clNone
      Color = 14202786
      ParentShowHint = False
      ShowHint = True
      ZIndex = 1000
      Splitter = False
      DesignSize = (
        953
        463)
      object StoreGrid: TIWGrid
        Left = 56
        Top = 56
        Width = 849
        Height = 359
        Cursor = crAuto
        Anchors = [akLeft, akTop, akRight, akBottom]
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
        BorderColors.Color = clNone
        BorderColors.Light = clNone
        BorderColors.Dark = clNone
        BGColor = clNone
        BorderSize = 1
        BorderStyle = tfDefault
        CellPadding = 0
        CellSpacing = 0
        Font.Color = clNone
        Font.Size = 10
        Font.Style = []
        FrameBuffer = 40
        Lines = tlAll
        OnRenderCell = StoreGridRenderCell
        UseFrame = True
        UseSize = True
        FriendlyName = 'StoreGrid'
        ColumnCount = 11
        OnCellClick = StoreGridCellClick
        RowCount = 1
        ShowEmptyCells = True
        ShowInvisibleRows = True
        ScrollToCurrentRow = False
      end
      object StoreLabel: TIWLabel
        Left = 72
        Top = 24
        Width = 113
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
        Caption = 'All Stores'
        RawText = False
      end
      object InsertBtn: TIWButton
        Left = 744
        Top = 24
        Width = 75
        Height = 25
        Cursor = crAuto
        Anchors = [akTop, akRight]
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
        Caption = 'New'
        DoSubmitValidation = True
        Color = clBtnFace
        Font.Color = clWebBLUE
        Font.Size = 10
        Font.Style = []
        FriendlyName = 'InsertBtn'
        ScriptEvents = <>
        TabOrder = 0
        OnClick = InsertBtnClick
      end
      object RefreshBtn: TIWButton
        Left = 832
        Top = 24
        Width = 75
        Height = 25
        Cursor = crAuto
        Anchors = [akTop, akRight]
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
        Caption = 'Refresh'
        DoSubmitValidation = True
        Color = clBtnFace
        Font.Color = clWebBLUE
        Font.Size = 10
        Font.Style = []
        FriendlyName = 'RefreshBtn'
        ScriptEvents = <>
        TabOrder = 1
        OnClick = RefreshBtnClick
      end
      object IWLabel1: TIWLabel
        Left = 56
        Top = 422
        Width = 209
        Height = 21
        Cursor = crAuto
        Anchors = [akLeft, akBottom]
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
        AutoSize = False
        FriendlyName = 'IWLabel1'
        Caption = 'Yellow=Update Pending '
        RawText = False
      end
      object IWLabel3: TIWLabel
        Left = 674
        Top = 422
        Width = 111
        Height = 21
        Cursor = crAuto
        Anchors = [akRight, akBottom]
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
        Alignment = taRightJustify
        BGColor = clNone
        Font.Color = clNone
        Font.Size = 10
        Font.Style = []
        NoWrap = False
        ConvertSpaces = False
        HasTabOrder = False
        AutoSize = False
        FriendlyName = 'IWLabel1'
        Caption = 'Red=Offline >'
        RawText = False
      end
      object OffCombo: TIWComboBox
        Left = 792
        Top = 420
        Width = 49
        Height = 21
        Cursor = crAuto
        Anchors = [akRight, akBottom]
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
        BGColor = clNone
        Font.Color = clNone
        Font.Size = 10
        Font.Style = []
        FocusColor = clNone
        AutoHideOnMenuActivation = False
        ItemsHaveValues = False
        NoSelectionText = '-- No Selection --'
        Required = False
        RequireSelection = True
        ScriptEvents = <>
        OnChange = RefreshBtnClick
        UseSize = True
        Style = stNormal
        ButtonColor = clBtnFace
        DoSubmitValidation = True
        Editable = True
        NonEditableAsLabel = True
        SubmitOnAsyncEvent = True
        TabOrder = 2
        ItemIndex = 0
        Items.Strings = (
          '120'
          '60'
          '15'
          '5')
        Sorted = False
        FriendlyName = 'OffCombo'
      end
      object IWLabel2: TIWLabel
        Left = 856
        Top = 422
        Width = 57
        Height = 21
        Cursor = crAuto
        Anchors = [akRight, akBottom]
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
        AutoSize = False
        FriendlyName = 'IWLabel1'
        Caption = 'minutes'
        RawText = False
      end
      object IWRectangle1: TIWRectangle
        Left = 0
        Top = 3
        Width = 3
        Height = 460
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
      object IWRectangle2: TIWRectangle
        Left = 0
        Top = 0
        Width = 953
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
    end
  end
  inline userfooter1: Tuserfooter
    Left = 0
    Top = 628
    Width = 1024
    Height = 28
    HorzScrollBar.Visible = False
    Align = alBottom
    TabOrder = 1
    ExplicitTop = 628
    ExplicitWidth = 1024
    inherited IWRegion1: TIWRegion
      Width = 1024
      TabOrder = 3
      ExplicitWidth = 1024
      DesignSize = (
        1024
        28)
      inherited IWRectangle1: TIWRectangle
        Left = 608
        Width = 417
        ExplicitLeft = 608
        ExplicitWidth = 417
      end
      inherited IWRectangle4: TIWRectangle
        Width = 1640
        ExplicitWidth = 1640
      end
      inherited IWRectangle6: TIWRectangle
        Width = 566
        ExplicitWidth = 566
      end
      inherited Cancel: TIWButton
        Left = 936
        Caption = 'Menu'
        OnClick = userfooter1CancelClick
        ExplicitLeft = 936
      end
      inherited Extra1: TIWButton
        Left = 762
        ExplicitLeft = 762
      end
      inherited Extra2: TIWButton
        Left = 849
        ExplicitLeft = 849
      end
      inherited fiwSiLink1: TIWSiLink
        Left = 672
        ExplicitLeft = 672
      end
    end
  end
  inline AdminFrameTitle1: TAdminFrameTitle
    Left = 0
    Top = 0
    Width = 1024
    Height = 111
    HorzScrollBar.Visible = False
    VertScrollBar.Visible = False
    Align = alTop
    TabOrder = 2
    ExplicitWidth = 1024
    ExplicitHeight = 111
    inherited IWFrameRegion: TIWRegion
      Width = 1024
      Height = 111
      TabOrder = 5
      ExplicitWidth = 1024
      ExplicitHeight = 111
      DesignSize = (
        1024
        111)
      inherited IWRectangle1: TIWRectangle
        Left = 152
        Width = 2472
        ExplicitLeft = 152
        ExplicitWidth = 2472
      end
      inherited IWRectangle2: TIWRectangle
        Left = 152
        ExplicitLeft = 152
      end
      inherited IWRectangle3: TIWRectangle
        Width = 416
        ExplicitWidth = 416
      end
      inherited IWImageFile3: TIWImageFile
        Left = 630
        ExplicitLeft = 630
      end
      inherited langlink: TIWSiLink
        Left = 519
        ExplicitLeft = 519
      end
      inherited Smalltitle: TIWLabel
        Left = 884
        ExplicitLeft = 884
      end
      inherited HideBox: TIWImageFile
        Left = 1009
        ExplicitLeft = 1009
      end
      inherited SysReg: TIWRegion
        Color = 10526880
      end
      inherited StoreReg: TIWRegion
        Color = 11100191
      end
    end
  end
  object siLangLinked1: TsiLangLinked
    Version = '6.5.4.7'
    StringsTypes.Strings = (
      'TIB_STRINGLIST'
      'TSTRINGLIST')
    LangDispatcher = RcDataMod.siLangDispatcher1
    LangDelim = 1
    LangNames.Strings = (
      'English')
    Language = 'English'
    CommonContainer = RcDataMod.siLang1
    ExcludedProperties.Strings = (
      'Hint'
      'Summary'
      'StatusText'
      'HotKey'
      'FriendlyName'
      'Confirmation'
      'Title'
      'NoSelectionText'
      'LangFile')
    Top = 128
    TranslationData = {
      73007400430061007000740069006F006E0073005F0055006E00690063006F00
      640065000D000A00530074006F00720065004700720069006400010001000D00
      0A00530074006F00720065004C006100620065006C00010041006C006C002000
      530074006F0072006500730001000D000A0049006E0073006500720074004200
      74006E0001004E006500770001000D000A005200650066007200650073006800
      420074006E000100520065006600720065007300680001000D000A0049005700
      4C006100620065006C0031000100590065006C006C006F0077003D0055007000
      64006100740065002000500065006E00640069006E006700200001000D000A00
      490057004C006100620065006C00330001005200650064003D004F0066006600
      6C0069006E00650020003E0001000D000A00490057004C006100620065006C00
      320001006D0069006E00750074006500730001000D000A007300740048006900
      6E00740073005F0055006E00690063006F00640065000D000A00730074004400
      6900730070006C00610079004C006100620065006C0073005F0055006E006900
      63006F00640065000D000A007300740046006F006E00740073005F0055006E00
      690063006F00640065000D000A00730074004D0075006C00740069004C006900
      6E00650073005F0055006E00690063006F00640065000D000A00490057005200
      6500670069006F006E0031002E00450078007400720061005400610067005000
      6100720061006D007300010001000D000A0049005700530069004C0069006E00
      6B0031002E004500780074007200610054006100670050006100720061006D00
      7300010001000D000A004900570052006500670069006F006E0032002E004500
      780074007200610054006100670050006100720061006D007300010001000D00
      0A00530074006F007200650047007200690064002E0045007800740072006100
      54006100670050006100720061006D007300010001000D000A00530074006F00
      720065004C006100620065006C002E0045007800740072006100540061006700
      50006100720061006D007300010001000D000A0049006E007300650072007400
      420074006E002E00450078007400720061005400610067005000610072006100
      6D007300010001000D000A005200650066007200650073006800420074006E00
      2E004500780074007200610054006100670050006100720061006D0073000100
      01000D000A00490057004C006100620065006C0031002E004500780074007200
      610054006100670050006100720061006D007300010001000D000A0049005700
      4C006100620065006C0033002E00450078007400720061005400610067005000
      6100720061006D007300010001000D000A004F006600660043006F006D006200
      6F002E004500780074007200610054006100670050006100720061006D007300
      010001000D000A004F006600660043006F006D0062006F002E00490074006500
      6D00730001003100320030002C00360030002C00310035002C00350001000D00
      0A00490057004C006100620065006C0032002E00450078007400720061005400
      6100670050006100720061006D007300010001000D000A004900570052006500
      6300740061006E0067006C00650031002E004500780074007200610054006100
      670050006100720061006D007300010001000D000A0049005700520065006300
      740061006E0067006C00650032002E0045007800740072006100540061006700
      50006100720061006D007300010001000D000A00730074005300740072006900
      6E00670073005F0055006E00690063006F00640065000D000A00470072006900
      64002E004900640001004900440001000D000A0047007200690064002E004E00
      61006D00650001004E0061006D00650001000D000A0047007200690064002E00
      50004F005300010050004F00530001000D000A0047007200690064002E004500
      6E00610062006C0065006400010045006E00610062006C006500640001000D00
      0A0047007200690064002E005000720069006E00740065007200010050007200
      69006E0074006500720001000D000A0047007200690064002E00430066006700
      010043006600670001000D000A0047007200690064002E00530065006E007400
      0100530065006E00740001000D000A0047007200690064002E00530069007A00
      65000100530069007A00650001000D000A0047007200690064002E0050007500
      62006C006900730068006500640001005000750062006C006900730068006500
      640001000D000A0047007200690064002E0043006F006D00700061006E007900
      010043006F006D00700061006E00790001000D000A0047007200690064002E00
      590065007300010059006500730001000D000A0047007200690064002E004E00
      6F0001004E006F0001000D000A0047007200690064002E004D00410043000100
      4D004100430001000D000A0047007200690064002E005000750062006C006900
      730068006100740001005000750062006C006900730068002000280055005400
      4300290001000D000A00730074004F0074006800650072005300740072006900
      6E00670073005F0055006E00690063006F00640065000D000A00540066006F00
      72006D00530074006F007200650073002E00480065006C0070004B0065007900
      77006F0072006400010001000D000A004900570052006500670069006F006E00
      31002E00480065006C0070004B006500790077006F0072006400010001000D00
      0A0049005700530069004C0069006E006B0031002E00480065006C0070004B00
      6500790077006F0072006400010001000D000A00490057005200650067006900
      6F006E0032002E00480065006C0070004B006500790077006F00720064000100
      01000D000A00530074006F007200650047007200690064002E00480065006C00
      70004B006500790077006F0072006400010001000D000A00530074006F007200
      65004C006100620065006C002E00480065006C0070004B006500790077006F00
      72006400010001000D000A0049006E007300650072007400420074006E002E00
      480065006C0070004B006500790077006F0072006400010001000D000A005200
      650066007200650073006800420074006E002E00480065006C0070004B006500
      790077006F0072006400010001000D000A00490057004C006100620065006C00
      31002E00480065006C0070004B006500790077006F0072006400010001000D00
      0A00490057004C006100620065006C0033002E00480065006C0070004B006500
      790077006F0072006400010001000D000A004F006600660043006F006D006200
      6F002E00480065006C0070004B006500790077006F0072006400010001000D00
      0A00490057004C006100620065006C0032002E00480065006C0070004B006500
      790077006F0072006400010001000D000A004900570052006500630074006100
      6E0067006C00650031002E00480065006C0070004B006500790077006F007200
      6400010001000D000A0049005700520065006300740061006E0067006C006500
      31002E005400650078007400010001000D000A00490057005200650063007400
      61006E0067006C00650032002E00480065006C0070004B006500790077006F00
      72006400010001000D000A0049005700520065006300740061006E0067006C00
      650032002E005400650078007400010001000D000A0075007300650072006600
      6F006F0074006500720031002E00480065006C0070004B006500790077006F00
      72006400010001000D000A00410064006D0069006E004600720061006D006500
      5400690074006C00650031002E00480065006C0070004B006500790077006F00
      72006400010001000D000A007300740043006F006C006C006500630074006900
      6F006E0073005F0055006E00690063006F00640065000D000A00730074004300
      68006100720053006500740073005F0055006E00690063006F00640065000D00
      0A00}
  end
end
