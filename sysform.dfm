object FormSys: TFormSys
  Left = 0
  Top = 0
  Width = 1028
  Height = 746
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
    Top = 111
    Width = 1028
    Height = 607
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
      1028
      607)
    object IWRegion2: TIWRegion
      Left = 5
      Top = 16
      Width = 1020
      Height = 576
      Cursor = crAuto
      RenderInvisibleControls = False
      Anchors = [akTop, akBottom]
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
        1020
        576)
      object StoreGrid: TIWGrid
        Left = 8
        Top = 32
        Width = 457
        Height = 534
        Cursor = crAuto
        Anchors = [akLeft, akTop, akBottom]
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
        OnRenderCell = rendercell
        UseFrame = True
        UseSize = True
        FriendlyName = 'StoreGrid'
        ColumnCount = 4
        OnCellClick = StoreGridCellClick
        RowCount = 1
        ShowEmptyCells = True
        ShowInvisibleRows = True
        ScrollToCurrentRow = False
      end
      object StoreLabel: TIWLabel
        Left = 8
        Top = 8
        Width = 65
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
        Caption = 'Stores'
        RawText = False
      end
      object StoreCombo: TIWComboBox
        Left = 80
        Top = 8
        Width = 161
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
        OnChange = StoreComboChange
        UseSize = True
        Style = stNormal
        ButtonColor = clBtnFace
        DoSubmitValidation = True
        Editable = True
        NonEditableAsLabel = True
        SubmitOnAsyncEvent = True
        TabOrder = 0
        ItemIndex = 0
        Items.Strings = (
          'Offline'
          'Online'
          'All Enabled'
          'All'
          'Pending Update'
          'Debug Mode')
        Sorted = False
        FriendlyName = 'StoreCombo'
      end
      object SlaveGrid: TIWGrid
        Left = 472
        Top = 32
        Width = 529
        Height = 534
        Cursor = crAuto
        Anchors = [akTop, akRight, akBottom]
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
        OnRenderCell = rendercell
        UseFrame = True
        UseSize = True
        FriendlyName = 'StoreGrid'
        ColumnCount = 6
        RowCount = 1
        ShowEmptyCells = True
        ShowInvisibleRows = True
        ScrollToCurrentRow = False
      end
      object IWLabel1: TIWLabel
        Left = 472
        Top = 8
        Width = 57
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
        Caption = 'Slaves'
        RawText = False
      end
      object slavecombo: TIWComboBox
        Left = 536
        Top = 8
        Width = 161
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
        OnChange = slavecomboChange
        UseSize = True
        Style = stNormal
        ButtonColor = clBtnFace
        DoSubmitValidation = True
        Editable = True
        NonEditableAsLabel = True
        SubmitOnAsyncEvent = True
        TabOrder = 1
        ItemIndex = 0
        Items.Strings = (
          'Offline'
          'Pending Update'
          'All Enabled'
          'All'
          'Debug Mode'
          'Bypass Mode'
          'Online')
        Sorted = False
        FriendlyName = 'IWComboBox1'
      end
      object IWSiLink1: TIWSiLink
        Left = 360
        Top = 8
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
        TabOrder = 2
        RawText = False
        SiLangLinked = siLangLinked1
        LangFile = 'sys.sil'
        LangControl = RcDataMod.LangEditControl1
      end
      object RefreshBtn: TIWButton
        Left = 716
        Top = 4
        Width = 75
        Height = 25
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
        Caption = 'Refresh'
        DoSubmitValidation = True
        Color = clBtnFace
        Font.Color = clWebBLUE
        Font.Size = 10
        Font.Style = []
        FriendlyName = 'RefreshBtn'
        ScriptEvents = <>
        TabOrder = 3
        OnClick = RefreshBtnClick
      end
      object IWRectangle1: TIWRectangle
        Left = 0
        Top = 3
        Width = 3
        Height = 573
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
        Width = 1020
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
  inline AdminFrameTitle1: TAdminFrameTitle
    Left = 0
    Top = 0
    Width = 1028
    Height = 111
    HorzScrollBar.Visible = False
    VertScrollBar.Visible = False
    Align = alTop
    TabOrder = 1
    ExplicitWidth = 1028
    ExplicitHeight = 111
    inherited IWFrameRegion: TIWRegion
      Width = 1028
      Height = 111
      TabOrder = 4
      ExplicitWidth = 1028
      ExplicitHeight = 111
      DesignSize = (
        1028
        111)
      inherited IWRectangle1: TIWRectangle
        Width = 2966
        ExplicitWidth = 2570
      end
      inherited IWRectangle3: TIWRectangle
        Width = 816
        ExplicitWidth = 420
      end
      inherited IWImageFile3: TIWImageFile
        Left = 1031
        ExplicitLeft = 635
      end
      inherited langlink: TIWSiLink
        Left = 920
        ExplicitLeft = 524
      end
      inherited Smalltitle: TIWLabel
        Left = 888
      end
      inherited HideBox: TIWImageFile
        Left = 1409
        ExplicitLeft = 1013
      end
    end
  end
  inline userfooter1: Tuserfooter
    Left = 0
    Top = 718
    Width = 1028
    Height = 28
    HorzScrollBar.Visible = False
    Align = alBottom
    TabOrder = 2
    ExplicitTop = 718
    ExplicitWidth = 1028
    inherited IWRegion1: TIWRegion
      Width = 1028
      TabOrder = 5
      ExplicitWidth = 1028
      inherited IWRectangle1: TIWRectangle
        Left = 652
        ExplicitLeft = 652
      end
      inherited IWRectangle4: TIWRectangle
        Width = 1644
        ExplicitWidth = 1644
      end
      inherited IWRectangle6: TIWRectangle
        Width = 610
        ExplicitWidth = 610
      end
      inherited Cancel: TIWButton
        Left = 942
        Caption = 'Menu'
        OnClick = userfooter1CancelClick
        ExplicitLeft = 942
      end
      inherited Extra1: TIWButton
        Left = 854
        ExplicitLeft = 854
      end
      inherited Extra2: TIWButton
        Left = 766
        ExplicitLeft = 766
      end
      inherited fiwSiLink1: TIWSiLink
        Left = 648
        ExplicitLeft = 648
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
      'Title'
      'FriendlyName'
      'StatusText'
      'Summary'
      'Confirmation'
      'HotKey'
      'NoSelectionText'
      'LangFile')
    Left = 752
    Top = 120
    TranslationData = {
      73007400430061007000740069006F006E0073005F0055006E00690063006F00
      640065000D000A00530074006F00720065004C006100620065006C0001005300
      74006F0072006500730001000D000A00490057004C006100620065006C003100
      010053006C00610076006500730001000D000A00520065006600720065007300
      6800420074006E000100520065006600720065007300680001000D000A007300
      7400480069006E00740073005F0055006E00690063006F00640065000D000A00
      7300740044006900730070006C00610079004C006100620065006C0073005F00
      55006E00690063006F00640065000D000A007300740046006F006E0074007300
      5F0055006E00690063006F00640065000D000A00730074004D0075006C007400
      69004C0069006E00650073005F0055006E00690063006F00640065000D000A00
      530074006F007200650043006F006D0062006F002E004900740065006D007300
      01004F00660066006C0069006E0065002C004F006E006C0069006E0065002C00
      220041006C006C00200045006E00610062006C006500640022002C0041006C00
      6C002C002200500065006E00640069006E006700200055007000640061007400
      650022002C0022004400650062007500670020004D006F006400650022000100
      0D000A0073006C0061007600650063006F006D0062006F002E00490074006500
      6D00730001004F00660066006C0069006E0065002C002200500065006E006400
      69006E006700200055007000640061007400650022002C00220041006C006C00
      200045006E00610062006C006500640022002C0041006C006C002C0022004400
      650062007500670020004D006F006400650022002C0022004200790070006100
      7300730020004D006F006400650022002C004F006E006C0069006E0065000100
      0D000A007300740053007400720069006E00670073005F0055006E0069006300
      6F00640065000D000A0047007200690064002E00490064000100490044000100
      0D000A0047007200690064002E004E0061006D00650001004E0061006D006500
      01000D000A0047007200690064002E0041006400640072006500730073000100
      410064006400720065007300730001000D000A0047007200690064002E005300
      74006F00720065000100530074006F007200650001000D000A00470072006900
      64002E004C0061007300740043006F006D006D00730001004C00610073007400
      200043006F006D006D00730001000D000A00530074006F007200650043006F00
      6D0062006F002E00300001004F00660066006C0069006E00650001000D000A00
      530074006F007200650043006F006D0062006F002E00310001004F006E006C00
      69006E00650001000D000A00530074006F007200650043006F006D0062006F00
      2E003200010041006C006C00200045006E00610062006C006500640001000D00
      0A00530074006F007200650043006F006D0062006F002E003300010041006C00
      6C0001000D000A00530074006F007200650043006F006D0062006F002E003400
      0100500065006E00640069006E00670020005500700064006100740065000100
      0D000A0053006C0061007600650043006F006D0062006F002E00300001004F00
      660066006C0069006E00650001000D000A0053006C0061007600650043006F00
      6D0062006F002E0031000100500065006E00640069006E006700200055007000
      640061007400650001000D000A0053006C0061007600650043006F006D006200
      6F002E003200010041006C006C00200045006E00610062006C00650064000100
      0D000A0053006C0061007600650043006F006D0062006F002E00330001004100
      6C006C0001000D000A0053006C0061007600650043006F006D0062006F002E00
      340001004400650062007500670020004D006F006400650001000D000A005300
      74006F007200650043006F006D0062006F002E00350001004400650062007500
      670020004D006F006400650001000D000A0053006C0061007600650043006F00
      6D0062006F002E003500010042007900700061007300730020004D006F006400
      650001000D000A0047007200690064002E0043006F006D00700061006E007900
      010043006F006D00700061006E00790001000D000A0047007200690064002E00
      4100690073006C00650001004100690073006C00650001000D000A0047007200
      690064002E00560065007200730069006F006E0001005600650072002E000100
      0D000A0047007200690064002E00420079007000610073007300010042007900
      700061007300730001000D000A0053006C0061007600650043006F006D006200
      6F002E00360001004F006E006C0069006E00650001000D000A00730074004F00
      740068006500720053007400720069006E00670073005F0055006E0069006300
      6F00640065000D000A007300740043006F006C006C0065006300740069006F00
      6E0073005F0055006E00690063006F00640065000D000A007300740043006800
      6100720053006500740073005F0055006E00690063006F00640065000D000A00}
  end
end
