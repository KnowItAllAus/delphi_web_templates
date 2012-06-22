object formGrp: TformGrp
  Left = 0
  Top = 0
  Width = 1014
  Height = 635
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
  inline DistribFrameTitle1: TDistribFrameTitle
    Left = 0
    Top = 0
    Width = 1014
    Height = 114
    HorzScrollBar.Visible = False
    VertScrollBar.Visible = False
    Align = alTop
    TabOrder = 0
    ExplicitWidth = 1014
    ExplicitHeight = 114
    inherited IWFrameRegion: TIWRegion
      Width = 1014
      Height = 114
      TabOrder = 2
      ExplicitWidth = 1014
      ExplicitHeight = 114
      inherited IWRectangle1: TIWRectangle
        Left = 152
        Width = 2463
        ExplicitLeft = 152
        ExplicitWidth = 2463
      end
      inherited IWRectangle2: TIWRectangle
        Left = 152
        ExplicitLeft = 152
      end
      inherited IWRectangle3: TIWRectangle
        Width = 2068
        ExplicitWidth = 2068
      end
      inherited IWImageFile3: TIWImageFile
        Left = 676
        ExplicitLeft = 676
      end
      inherited langlink: TIWSiLink
        Left = 613
        ExplicitLeft = 613
      end
      inherited HideBox: TIWImageFile
        Left = 1000
        ExplicitLeft = 1000
      end
      inherited Smalltitle: TIWLabel
        Left = 875
        ExplicitLeft = 875
      end
      inherited GrpRegn: TIWRegion
        Color = 11100191
      end
      inherited EntityRegn: TIWRegion
        Color = 10526880
      end
      inherited statusregn: TIWRegion
        inherited statuslink: TIWLink
          OnClick = DistribFrameTitle1statuslinkClick
        end
      end
    end
  end
  inline userfooter1: Tuserfooter
    Left = 0
    Top = 606
    Width = 1014
    Height = 29
    HorzScrollBar.Visible = False
    Align = alBottom
    TabOrder = 1
    ExplicitTop = 606
    ExplicitWidth = 1014
    ExplicitHeight = 29
    inherited IWRegion1: TIWRegion
      Width = 1014
      Height = 29
      TabOrder = 1
      ExplicitWidth = 1014
      ExplicitHeight = 29
      DesignSize = (
        1014
        29)
      inherited IWRectangle1: TIWRectangle
        Left = 638
        ExplicitLeft = 638
      end
      inherited IWRectangle4: TIWRectangle
        Width = 1630
        ExplicitWidth = 1630
      end
      inherited IWRectangle6: TIWRectangle
        Width = 596
        ExplicitWidth = 596
      end
      inherited Cancel: TIWButton
        Left = 926
        Caption = 'Menu'
        OnClick = userfooter1CancelClick
        ExplicitLeft = 926
      end
      inherited Extra1: TIWButton
        Left = 838
        ExplicitLeft = 838
      end
      inherited Extra2: TIWButton
        Left = 750
        ExplicitLeft = 750
      end
      inherited fiwSiLink1: TIWSiLink
        Left = 726
        ExplicitLeft = 726
      end
    end
  end
  object IWRegion1: TIWRegion
    Left = 0
    Top = 114
    Width = 1014
    Height = 492
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
      1014
      492)
    object IWSiLink1: TIWSiLink
      Left = 0
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
      TabOrder = 3
      RawText = False
      SiLangLinked = siLangLinked1
      LangFile = 'groups.sil'
      LangControl = RcDataMod.LangEditControl1
    end
    object IWRegion2: TIWRegion
      Left = 159
      Top = 24
      Width = 729
      Height = 447
      Cursor = crAuto
      RenderInvisibleControls = False
      Anchors = [akTop, akBottom]
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
        729
        447)
      object IWRectangle1: TIWRectangle
        Left = 0
        Top = 3
        Width = 3
        Height = 444
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
        Width = 729
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
      object PrinterLabel: TIWLabel
        Left = 16
        Top = 8
        Width = 457
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
        FriendlyName = 'PrinterLabel'
        Caption = 'Groups'
        RawText = False
      end
      object NewBtn: TIWButton
        Left = 544
        Top = 8
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
        Caption = 'New'
        DoSubmitValidation = True
        Color = clBtnFace
        Font.Color = clNone
        Font.Size = 10
        Font.Style = []
        FriendlyName = 'NewBtn'
        ScriptEvents = <>
        TabOrder = 0
        OnClick = NewBtnClick
      end
      object IWRegion3: TIWRegion
        Left = 120
        Top = 40
        Width = 497
        Height = 393
        Cursor = crAuto
        RenderInvisibleControls = False
        Anchors = [akLeft, akTop, akBottom]
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
          497
          393)
        object GroupGrid: TIWGrid
          Left = 8
          Top = 9
          Width = 481
          Height = 376
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
          OnRenderCell = GroupGridRenderCell
          UseFrame = True
          UseSize = True
          FriendlyName = 'GroupGrid'
          ColumnCount = 2
          OnCellClick = GroupGridCellClick
          RowCount = 1
          ShowEmptyCells = True
          ShowInvisibleRows = True
          ScrollToCurrentRow = False
        end
      end
    end
  end
  object siLangLinked1: TsiLangLinked
    Version = '6.5.4.7'
    StringsTypes.Strings = (
      'TIB_STRINGLIST'
      'TSTRINGLIST')
    SmartExcludeProps.Strings = (
      'GroupGrid.Caption')
    LangDispatcher = RcDataMod.siLangDispatcher1
    LangDelim = 1
    LangNames.Strings = (
      'English')
    Language = 'English'
    CommonContainer = RcDataMod.siLang1
    ExcludedProperties.Strings = (
      'Hint'
      'Title'
      'StatusText'
      'Confirmation'
      'FriendlyName'
      'HotKey'
      'Summary'
      'LangFile'
      'HelpKeyword')
    Top = 144
    TranslationData = {
      73007400430061007000740069006F006E0073005F0055006E00690063006F00
      640065000D000A005000720069006E007400650072004C006100620065006C00
      0100470072006F0075007000730001000D000A004E0065007700420074006E00
      01004E006500770001000D000A0073007400480069006E00740073005F005500
      6E00690063006F00640065000D000A007300740044006900730070006C006100
      79004C006100620065006C0073005F0055006E00690063006F00640065000D00
      0A007300740046006F006E00740073005F0055006E00690063006F0064006500
      0D000A00730074004D0075006C00740069004C0069006E00650073005F005500
      6E00690063006F00640065000D000A004900570052006500670069006F006E00
      31002E004500780074007200610054006100670050006100720061006D007300
      010001000D000A004900570052006500670069006F006E0032002E0045007800
      74007200610054006100670050006100720061006D007300010001000D000A00
      4900570052006500670069006F006E0033002E00450078007400720061005400
      6100670050006100720061006D007300010001000D000A00470072006F007500
      700047007200690064002E004500780074007200610054006100670050006100
      720061006D007300010001000D000A0049005700520065006300740061006E00
      67006C00650031002E0045007800740072006100540061006700500061007200
      61006D007300010001000D000A0049005700520065006300740061006E006700
      6C00650032002E00450078007400720061005400610067005000610072006100
      6D007300010001000D000A005000720069006E007400650072004C0061006200
      65006C002E004500780074007200610054006100670050006100720061006D00
      7300010001000D000A004E0065007700420074006E002E004500780074007200
      610054006100670050006100720061006D007300010001000D000A0049005700
      530069004C0069006E006B0031002E0045007800740072006100540061006700
      50006100720061006D007300010001000D000A00730074005300740072006900
      6E00670073005F0055006E00690063006F00640065000D000A00470072006900
      64002E004E0061006D0065000100470072006F007500700020004E0061006D00
      650001000D000A004E0065007700470072006F007500700001004E0065007700
      2000470072006F007500700001000D000A0047007200690064002E0054006500
      730074000100540065007300740001000D000A0047007200690064002E004900
      6E007300740061006E00740069006100740069006F006E007300010054006500
      6D0070006C00610074006500730001000D000A00730074004F00740068006500
      720053007400720069006E00670073005F0055006E00690063006F0064006500
      0D000A0049005700520065006300740061006E0067006C00650031002E005400
      650078007400010001000D000A0049005700520065006300740061006E006700
      6C00650032002E005400650078007400010001000D000A007300740043006F00
      6C006C0065006300740069006F006E0073005F0055006E00690063006F006400
      65000D000A0073007400430068006100720053006500740073005F0055006E00
      690063006F00640065000D000A00}
  end
end
