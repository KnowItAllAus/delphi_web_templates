object formImages: TformImages
  Left = 0
  Top = 0
  Width = 1028
  Height = 746
  RenderInvisibleControls = False
  AllowPageAccess = True
  ConnectionMode = cmAny
  SupportedBrowsers = [brNetscape7, brIE, brOpera, brNetscape6]
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
  DesignTop = -56
  inline PromoFrameTitle1: TPromoFrameTitle
    Left = 0
    Top = 0
    Width = 1028
    Height = 119
    HorzScrollBar.Visible = False
    VertScrollBar.Visible = False
    Align = alTop
    TabOrder = 0
    ExplicitWidth = 1028
    inherited IWFrameRegion: TIWRegion
      Width = 1028
      TabOrder = 2
      DesignSize = (
        1028
        119)
      inherited IWRectangle1: TIWRectangle
        Left = 152
        Width = 2789
        ExplicitLeft = 152
        ExplicitWidth = 2477
      end
      inherited IWRectangle2: TIWRectangle
        Left = 152
        ExplicitLeft = 152
      end
      inherited IWRectangle3: TIWRectangle
        Width = 1856
        ExplicitWidth = 1544
      end
      inherited IWImageFile3: TIWImageFile
        Top = 0
        ExplicitTop = 0
      end
      inherited langlink: TIWSiLink
        Left = 938
        Top = 65
        ExplicitLeft = 626
        ExplicitTop = 65
      end
      inherited JobReg: TIWRegion
        Color = 10526880
      end
      inherited PromoReg: TIWRegion
        Color = 11100191
      end
    end
  end
  object IWRegion1: TIWRegion
    Left = 0
    Top = 119
    Width = 1028
    Height = 598
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
      598)
    object IWSiLink1: TIWSiLink
      Left = 8
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
      LangFile = 'images.sil'
      LangControl = RcDataMod.LangEditControl1
    end
    object BodyRegion: TIWRegion
      Left = 104
      Top = 21
      Width = 814
      Height = 558
      Cursor = crAuto
      RenderInvisibleControls = False
      Anchors = [akLeft, akTop, akRight, akBottom]
      BorderOptions.NumericWidth = 1
      BorderOptions.BorderWidth = cbwNumeric
      BorderOptions.Style = cbsSolid
      BorderOptions.Color = clNone
      Color = 14202786
      ParentShowHint = False
      ShowHint = True
      ZIndex = 1000
      Splitter = False
      DesignSize = (
        814
        558)
      object IWRectangle2: TIWRectangle
        Left = 1
        Top = 1
        Width = 812
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
        Left = 1
        Top = 4
        Width = 3
        Height = 553
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
      object ImageLabel: TIWLabel
        Left = 26
        Top = 8
        Width = 269
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
        FriendlyName = 'ImageLabel'
        Caption = 'Printer Images and Text Content'
        RawText = False
      end
      object ImageGrid: TIWGrid
        Left = 25
        Top = 41
        Width = 750
        Height = 485
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
        OnRenderCell = ImageGridRenderCell
        UseFrame = True
        UseSize = True
        FriendlyName = 'ImageGrid'
        ColumnCount = 5
        OnCellClick = ImageGridCellClick
        RowCount = 1
        ShowEmptyCells = True
        ShowInvisibleRows = True
        ScrollToCurrentRow = False
      end
      object InsertBtn: TIWButton
        Left = 691
        Top = 532
        Width = 83
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
        Caption = 'Insert'
        DoSubmitValidation = True
        Color = clBtnFace
        Font.Color = clNone
        Font.Size = 10
        Font.Style = []
        FriendlyName = 'InsertBtn'
        ScriptEvents = <>
        TabOrder = 3
        OnClick = InsertBtnClick
      end
    end
  end
  inline userfooter1: Tuserfooter
    Left = 0
    Top = 717
    Width = 1028
    Height = 29
    HorzScrollBar.Visible = False
    Align = alBottom
    TabOrder = 2
    ExplicitTop = 717
    ExplicitWidth = 1028
    ExplicitHeight = 29
    inherited IWRegion1: TIWRegion
      Width = 1028
      Height = 29
      TabOrder = 1
      ExplicitWidth = 1028
      ExplicitHeight = 29
      inherited IWRectangle1: TIWRectangle
        Left = 612
        Width = 417
        ExplicitLeft = 612
        ExplicitWidth = 417
      end
      inherited IWRectangle4: TIWRectangle
        Width = 1644
        ExplicitWidth = 1644
      end
      inherited IWRectangle6: TIWRectangle
        Width = 570
        ExplicitWidth = 570
      end
      inherited Cancel: TIWButton
        Left = 943
        Caption = 'Menu'
        OnClick = userfooter1CancelClick
        ExplicitLeft = 943
      end
      inherited Extra1: TIWButton
        Left = 855
        ExplicitLeft = 855
      end
      inherited Extra2: TIWButton
        Left = 767
        ExplicitLeft = 767
      end
      inherited fiwSiLink1: TIWSiLink
        Left = 671
        ExplicitLeft = 671
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
      'Confirmation'
      'FriendlyName'
      'HotKey'
      'StatusText'
      'Summary'
      'LangFile')
    Left = 8
    Top = 144
    TranslationData = {
      73007400430061007000740069006F006E0073005F0055006E00690063006F00
      640065000D000A0049006D006100670065004C006100620065006C0001005000
      720069006E00740065007200200049006D006100670065007300200061006E00
      640020005400650078007400200043006F006E00740065006E00740001000D00
      0A0049006D006100670065004700720069006400010001000D000A0043007200
      6500610074006500420074006E00010043007200650061007400650001000D00
      0A0073007400480069006E00740073005F0055006E00690063006F0064006500
      0D000A007300740044006900730070006C00610079004C006100620065006C00
      73005F0055006E00690063006F00640065000D000A007300740046006F006E00
      740073005F0055006E00690063006F00640065000D000A00730074004D007500
      6C00740069004C0069006E00650073005F0055006E00690063006F0064006500
      0D000A004900570052006500670069006F006E0031002E004500780074007200
      610054006100670050006100720061006D007300010001000D000A0049005700
      530069004C0069006E006B0031002E0045007800740072006100540061006700
      50006100720061006D007300010001000D000A0042006F006400790052006500
      670069006F006E002E0045007800740072006100540061006700500061007200
      61006D007300010001000D000A0049005700520065006300740061006E006700
      6C00650032002E00450078007400720061005400610067005000610072006100
      6D007300010001000D000A0049005700520065006300740061006E0067006C00
      650031002E004500780074007200610054006100670050006100720061006D00
      7300010001000D000A0049006D006100670065004C006100620065006C002E00
      4500780074007200610054006100670050006100720061006D00730001000100
      0D000A0049006D0061006700650047007200690064002E004500780074007200
      610054006100670050006100720061006D007300010001000D000A0043007200
      6500610074006500420074006E002E0045007800740072006100540061006700
      50006100720061006D007300010001000D000A00730074005300740072006900
      6E00670073005F0055006E00690063006F00640065000D000A00470072006900
      64002E004E0061006D00650001004E0061006D00650001000D000A0047007200
      690064002E00540061006700010054006100670001000D000A004D006F006400
      65002E004E004500540001004E006500740001000D000A004D006F0064006500
      2E0049004D00410047004500010049006D0061006700650001000D000A004D00
      6F00640065002E00530043005200490050005400010053006300720069007000
      740001000D000A004D006F00640065002E004300550053005400010043007500
      7300740001000D000A004D006F00640065002E00520041004E0044004F004D00
      0100520061006E0064006F006D0001000D000A004D006F00640065002E005300
      430041004E004E004500520001005300630061006E006E006500720001000D00
      0A004D006F00640065002E004B004500590042004F0041005200440001004B00
      6500790062006F0061007200640001000D000A004D006F00640065002E005400
      4500580054000100540065007800740001000D000A0047007200690064002E00
      47005500490044000100470055004900440001000D000A004700720069006400
      2E00500072006F00640075006300740069006F006E000100500072006F006400
      75006300740069006F006E0001000D000A0047007200690064002E0054006500
      730074000100540065007300740001000D000A004E006500770043006F006E00
      740065006E00740001004E0065007700200043006F006E00740065006E007400
      01000D000A0047007200690064002E0043007200650061007400650064000100
      430072006500610074006500640001000D000A0047007200690064002E004400
      650073006300720069007000740069006F006E00010044006500730063007200
      69007000740069006F006E0001000D000A0047007200690064002E0050007200
      6F0070006500720074006900650073000100500072006F007000650072007400
      69006500730001000D000A00730074004F007400680065007200530074007200
      69006E00670073005F0055006E00690063006F00640065000D000A0054006600
      6F0072006D0049006D0061006700650073002E00480065006C0070004B006500
      790077006F0072006400010001000D000A00500072006F006D006F0046007200
      61006D0065005400690074006C00650031002E00480065006C0070004B006500
      790077006F0072006400010001000D000A004900570052006500670069006F00
      6E0031002E00480065006C0070004B006500790077006F007200640001000100
      0D000A0049005700530069004C0069006E006B0031002E00480065006C007000
      4B006500790077006F0072006400010001000D000A0042006F00640079005200
      6500670069006F006E002E00480065006C0070004B006500790077006F007200
      6400010001000D000A0049005700520065006300740061006E0067006C006500
      32002E00480065006C0070004B006500790077006F0072006400010001000D00
      0A0049005700520065006300740061006E0067006C00650032002E0054006500
      78007400010001000D000A0049005700520065006300740061006E0067006C00
      650031002E00480065006C0070004B006500790077006F007200640001000100
      0D000A0049005700520065006300740061006E0067006C00650031002E005400
      650078007400010001000D000A0049006D006100670065004C00610062006500
      6C002E00480065006C0070004B006500790077006F0072006400010001000D00
      0A0049006D0061006700650047007200690064002E00480065006C0070004B00
      6500790077006F0072006400010001000D000A00430072006500610074006500
      420074006E002E0041006C0074005400650078007400010001000D000A004300
      72006500610074006500420074006E002E00480065006C0070004B0065007900
      77006F0072006400010001000D000A00750073006500720066006F006F007400
      6500720031002E00480065006C0070004B006500790077006F00720064000100
      01000D000A007300740043006F006C006C0065006300740069006F006E007300
      5F0055006E00690063006F00640065000D000A00730074004300680061007200
      53006500740073005F0055006E00690063006F00640065000D000A00}
  end
end
