object formDistribStatus: TformDistribStatus
  Left = 0
  Top = 0
  Width = 1024
  Height = 739
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
  inline DistribFrameTitle1: TDistribFrameTitle
    Left = 0
    Top = 0
    Width = 1024
    Height = 114
    HorzScrollBar.Visible = False
    VertScrollBar.Visible = False
    Align = alTop
    TabOrder = 0
    ExplicitHeight = 114
    inherited IWFrameRegion: TIWRegion
      Height = 114
      TabOrder = 4
      ExplicitHeight = 114
      DesignSize = (
        1024
        114)
      inherited IWRectangle1: TIWRectangle
        Left = 608
        Width = 429
        ExplicitLeft = 608
        ExplicitWidth = 429
      end
      inherited IWRectangle2: TIWRectangle
        Left = 608
        ExplicitLeft = 608
      end
      inherited IWRectangle3: TIWRectangle
        Width = 264
        ExplicitWidth = 264
      end
      inherited IWImageFile3: TIWImageFile
        Left = 630
        ExplicitLeft = 630
      end
      inherited langlink: TIWSiLink
        Left = 522
        Top = 1
        ExplicitLeft = 522
        ExplicitTop = 1
      end
      inherited HideBox: TIWImageFile
        Left = 1010
        ExplicitLeft = 1010
      end
      inherited Smalltitle: TIWLabel
        Left = 885
        ExplicitLeft = 885
      end
      inherited EntityRegn: TIWRegion
        Color = 10526880
      end
      inherited statusregn: TIWRegion
        Color = 11100191
      end
    end
  end
  inline userfooter1: Tuserfooter
    Left = 0
    Top = 710
    Width = 1024
    Height = 29
    HorzScrollBar.Visible = False
    Align = alBottom
    TabOrder = 1
    ExplicitTop = 710
    ExplicitWidth = 1024
    ExplicitHeight = 29
    inherited IWRegion1: TIWRegion
      Width = 1024
      Height = 29
      TabOrder = 3
      ExplicitWidth = 1024
      ExplicitHeight = 29
      DesignSize = (
        1024
        29)
      inherited IWRectangle1: TIWRectangle
        Left = 648
        ExplicitLeft = 648
      end
      inherited IWRectangle4: TIWRectangle
        Width = 1640
        ExplicitWidth = 1640
      end
      inherited IWRectangle6: TIWRectangle
        Width = 606
        ExplicitWidth = 606
      end
      inherited Cancel: TIWButton
        Left = 939
        Caption = 'Menu'
        OnClick = userfooter1CancelClick
        ExplicitLeft = 939
      end
      inherited Extra1: TIWButton
        Left = 851
        ExplicitLeft = 851
      end
      inherited Extra2: TIWButton
        Left = 763
        ExplicitLeft = 763
      end
      inherited fiwSiLink1: TIWSiLink
        Left = 723
        ExplicitLeft = 723
      end
    end
  end
  object IWRegion1: TIWRegion
    Left = 0
    Top = 114
    Width = 1024
    Height = 596
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
      596)
    object IWRegion2: TIWRegion
      Left = 48
      Top = 24
      Width = 953
      Height = 542
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
        542)
      object StoreLabel: TIWLabel
        Left = 56
        Top = 24
        Width = 217
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
        Caption = 'Store Status'
        RawText = False
      end
      object IWSiLink1: TIWSiLink
        Left = 56
        Top = 2
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
        SiLangLinked = siLangLinked1
        LangFile = 'diststat.sil'
        LangControl = RcDataMod.LangEditControl1
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
        Top = 501
        Width = 241
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
        Top = 501
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
        Caption = 'Red=Offline >'
        RawText = False
      end
      object OffCombo: TIWComboBox
        Left = 792
        Top = 499
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
        Top = 501
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
        Height = 539
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
      object advancedbox: TIWCheckBox
        Left = 720
        Top = 24
        Width = 97
        Height = 21
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
        Caption = 'Advanced'
        Editable = True
        Font.Color = clNone
        Font.Size = 10
        Font.Style = []
        SubmitOnAsyncEvent = True
        ScriptEvents = <>
        DoSubmitValidation = True
        Style = stNormal
        TabOrder = 5
        OnAsyncClick = advancedboxAsyncClick
        Checked = False
        FriendlyName = 'advancedbox'
      end
      object storeGrid: TIWGrid
        Left = 9
        Top = 52
        Width = 936
        Height = 442
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
        Font.Color = clWebBLACK
        Font.Size = 10
        Font.Style = []
        FrameBuffer = 40
        Lines = tlAll
        OnRenderCell = StoreGridRenderCell
        UseFrame = True
        UseSize = True
        FriendlyName = 'storeGrid'
        ColumnCount = 11
        RowCount = 1
        ShowEmptyCells = True
        ShowInvisibleRows = True
        ScrollToCurrentRow = False
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
    Top = 120
    TranslationData = {
      73007400430061007000740069006F006E0073005F0055006E00690063006F00
      640065000D000A00530074006F00720065004C006100620065006C0001005300
      74006F0072006500200053007400610074007500730001000D000A0052006500
      66007200650073006800420074006E0001005200650066007200650073006800
      01000D000A00490057004C006100620065006C0031000100590065006C006C00
      6F0077003D005500700064006100740065002000500065006E00640069006E00
      6700200001000D000A00490057004C006100620065006C003300010052006500
      64003D004F00660066006C0069006E00650020003E0001000D000A0049005700
      4C006100620065006C00320001006D0069006E00750074006500730001000D00
      0A0061006400760061006E0063006500640062006F0078000100410064007600
      61006E0063006500640001000D000A0073007400480069006E00740073005F00
      55006E00690063006F00640065000D000A007300740044006900730070006C00
      610079004C006100620065006C0073005F0055006E00690063006F0064006500
      0D000A007300740046006F006E00740073005F0055006E00690063006F006400
      65000D000A00730074004D0075006C00740069004C0069006E00650073005F00
      55006E00690063006F00640065000D000A004F006600660043006F006D006200
      6F002E004900740065006D00730001003100320030002C00360030002C003100
      35002C00350001000D000A007300740053007400720069006E00670073005F00
      55006E00690063006F00640065000D000A0047007200690064002E0049006400
      01004900440001000D000A0047007200690064002E004E0061006D0065000100
      4E0061006D00650001000D000A0047007200690064002E0050004F0053000100
      50004F00530001000D000A0047007200690064002E0045006E00610062006C00
      65006400010045006E00610062006C006500640001000D000A00470072006900
      64002E005000720069006E0074006500720001005000720069006E0074006500
      720001000D000A0047007200690064002E004300660067000100430066006700
      01000D000A0047007200690064002E00530065006E0074000100530065006E00
      740001000D000A0047007200690064002E00530069007A006500010053006900
      7A00650001000D000A0047007200690064002E005000750062006C0069007300
      68006500640001005000750062006C006900730068006500640001000D000A00
      47007200690064002E004C006F0063006100740069006F006E0001004C006F00
      63006100740069006F006E0001000D000A0047007200690064002E0043006F00
      6D006D007300410067006500010043006F006D006D0073002000410067006500
      01000D000A0047007200690064002E00530065007200690061006C0001005300
      65007200690061006C002000230001000D000A00730074004F00740068006500
      720053007400720069006E00670073005F0055006E00690063006F0064006500
      0D000A007300740043006F006C006C0065006300740069006F006E0073005F00
      55006E00690063006F00640065000D000A007300740043006800610072005300
      6500740073005F0055006E00690063006F00640065000D000A00}
  end
end
