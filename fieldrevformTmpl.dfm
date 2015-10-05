object formFieldVersionsTmpl: TformFieldVersionsTmpl
  Left = 0
  Top = 0
  Width = 1024
  Height = 479
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
  inline FrameBareTitle1: TFrameBareTitle
    Left = 0
    Top = 0
    Width = 1024
    Height = 116
    HorzScrollBar.Visible = False
    VertScrollBar.Visible = False
    Align = alTop
    TabOrder = 0
    ExplicitWidth = 1024
    ExplicitHeight = 116
    inherited IWFrameRegion: TIWRegion
      Width = 1024
      Height = 116
      TabOrder = 4
      ExplicitWidth = 1024
      ExplicitHeight = 116
      inherited titleimage: TIWImageFile
        ImageFile.Filename = 'E:\delphi\delphi_web\files\promotions.GIF'
      end
      inherited IWRectangle1: TIWRectangle
        Top = 91
        Width = 1024
        ExplicitTop = 91
        ExplicitWidth = 1024
      end
      inherited IWRectangle3: TIWRectangle
        Top = 96
        ExplicitTop = 96
      end
      inherited IWImageFile3: TIWImageFile
        Left = 689
        ExplicitLeft = 689
      end
      inherited langlink: TIWSiLink
        Left = 624
        ExplicitLeft = 624
      end
      inherited Smalltitle: TIWLabel
        Left = 904
        ExplicitLeft = 904
      end
      inherited HideBox: TIWImageFile
        Left = 1009
        Top = 99
        ExplicitLeft = 1009
        ExplicitTop = 99
      end
      inherited TitleLabel: TIWLabel
        Width = 387
        Caption = 'promotions'
        ExplicitWidth = 387
      end
    end
  end
  inline userfooter1: Tuserfooter
    Left = 0
    Top = 450
    Width = 1024
    Height = 29
    HorzScrollBar.Visible = False
    Align = alBottom
    TabOrder = 1
    ExplicitTop = 450
    ExplicitWidth = 1024
    ExplicitHeight = 29
    inherited IWRegion1: TIWRegion
      Width = 1024
      Height = 29
      TabOrder = 3
      ExplicitWidth = 1024
      ExplicitHeight = 29
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
        Caption = 'Back'
        OnClick = userfooter1CancelClick
      end
      inherited fiwSiLink1: TIWSiLink
        Left = 687
        ExplicitLeft = 687
      end
    end
    inherited silink_footer: TsiLangLinked
      SmartExcludeProps.Strings = (
        'UserLabel.Caption'
        'Cancel.Caption'
        'Extra2.Caption')
    end
  end
  object IWRegion1: TIWRegion
    Left = 0
    Top = 116
    Width = 1024
    Height = 334
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
      334)
    object BodyRegion: TIWRegion
      Left = 227
      Top = 18
      Width = 539
      Height = 306
      Cursor = crAuto
      RenderInvisibleControls = False
      Anchors = [akTop, akBottom]
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
        539
        306)
      object IWRectangle2: TIWRectangle
        Left = 1
        Top = 1
        Width = 537
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
        Height = 301
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
        Left = 24
        Top = 23
        Width = 97
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
        Caption = 'Revisions of'
        RawText = False
      end
      object ImageGrid: TIWGrid
        Left = 18
        Top = 112
        Width = 503
        Height = 183
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
      object IWSiLink1: TIWSiLink
        Left = 388
        Top = 22
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
        LangFile = 'imagesver.sil'
        LangControl = RcDataMod.LangEditControl1
      end
      object NameEdit: TIWEdit
        Left = 128
        Top = 21
        Width = 241
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
        Alignment = taLeftJustify
        BGColor = 14202786
        FocusColor = clNone
        DoSubmitValidation = True
        Editable = True
        NonEditableAsLabel = True
        Font.Color = clNone
        Font.FontName = 'Arial'
        Font.Size = 12
        Font.Style = [fsBold]
        FriendlyName = 'NameEdit'
        MaxLength = 0
        ReadOnly = True
        Required = False
        ScriptEvents = <>
        SubmitOnAsyncEvent = True
        TabOrder = 1
        PasswordPrompt = False
        Text = 'NameEdit'
      end
      object NewBtn: TIWButton
        Left = 448
        Top = 57
        Width = 75
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
        Caption = 'Save'
        DoSubmitValidation = True
        Color = clBtnFace
        Font.Color = clNone
        Font.Size = 10
        Font.Style = []
        FriendlyName = 'ProdBtn'
        ScriptEvents = <>
        TabOrder = 2
        OnClick = NewBtnClick
      end
      object ValueEdit: TIWEdit
        Left = 127
        Top = 56
        Width = 309
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
        FriendlyName = 'ValueEdit'
        MaxLength = 0
        ReadOnly = False
        Required = False
        ScriptEvents = <>
        SubmitOnAsyncEvent = True
        TabOrder = 5
        PasswordPrompt = False
        Text = 'ValueEdit'
      end
      object IWLabel1: TIWLabel
        Left = 12
        Top = 57
        Width = 107
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
        Caption = 'New Field Value'
        RawText = False
      end
      object FieldTypeLbl: TIWLabel
        Left = 12
        Top = 81
        Width = 15
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
        Caption = '??'
        RawText = False
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
    Top = 112
    TranslationData = {
      73007400430061007000740069006F006E0073005F0055006E00690063006F00
      640065000D000A0049006D006100670065004C006100620065006C0001005200
      650076006900730069006F006E00730020006F00660001000D000A0049006D00
      6100670065004700720069006400010001000D000A004E006500770042007400
      6E000100530061007600650001000D000A00490057004C006100620065006C00
      310001004E006500770020004600690065006C0064002000560061006C007500
      650001000D000A0073007400480069006E00740073005F0055006E0069006300
      6F00640065000D000A007300740044006900730070006C00610079004C006100
      620065006C0073005F0055006E00690063006F00640065000D000A0073007400
      46006F006E00740073005F0055006E00690063006F00640065000D000A007300
      74004D0075006C00740069004C0069006E00650073005F0055006E0069006300
      6F00640065000D000A004900570052006500670069006F006E0031002E004500
      780074007200610054006100670050006100720061006D007300010001000D00
      0A0049005700530069004C0069006E006B0031002E0045007800740072006100
      54006100670050006100720061006D007300010001000D000A0042006F006400
      790052006500670069006F006E002E0045007800740072006100540061006700
      50006100720061006D007300010001000D000A00490057005200650063007400
      61006E0067006C00650032002E00450078007400720061005400610067005000
      6100720061006D007300010001000D000A004900570052006500630074006100
      6E0067006C00650031002E004500780074007200610054006100670050006100
      720061006D007300010001000D000A0049006D006100670065004C0061006200
      65006C002E004500780074007200610054006100670050006100720061006D00
      7300010001000D000A0049006D0061006700650047007200690064002E004500
      780074007200610054006100670050006100720061006D007300010001000D00
      0A004E0061006D00650045006400690074002E00450078007400720061005400
      6100670050006100720061006D007300010001000D000A004E00650077004200
      74006E002E004500780074007200610054006100670050006100720061006D00
      7300010001000D000A00560061006C007500650045006400690074002E004500
      780074007200610054006100670050006100720061006D007300010001000D00
      0A00490057004C006100620065006C0031002E00450078007400720061005400
      6100670050006100720061006D007300010001000D000A007300740053007400
      720069006E00670073005F0055006E00690063006F00640065000D000A004700
      7200690064002E004E0061006D00650001004E0061006D00650001000D000A00
      47007200690064002E00540061006700010054006100670001000D000A004D00
      6F00640065002E004E00450054000100530074006F0063006B0001000D000A00
      4D006F00640065002E0049004D00410047004500010049006D00610067006500
      01000D000A004D006F00640065002E0053004300520049005000540001005300
      6300720069007000740001000D000A004D006F00640065002E00430055005300
      54000100430075007300740001000D000A004D006F00640065002E0052004100
      4E0044004F004D000100520061006E0064006F006D0001000D000A004D006F00
      640065002E005300430041004E004E004500520001005300630061006E006E00
      6500720001000D000A004D006F00640065002E004B004500590042004F004100
      5200440001004B006500790062006F0061007200640001000D000A004D006F00
      640065002E0054004500580054000100540065007800740001000D000A004700
      7200690064002E0047005500490044000100470055004900440001000D000A00
      47007200690064002E00500072006F00640075006300740069006F006E000100
      500072006F0064002E0001000D000A0047007200690064002E00540065007300
      74000100540065007300740001000D000A004E006500770043006F006E007400
      65006E00740001004E0065007700200043006F006E00740065006E0074000100
      0D000A0047007200690064002E004900440001004900440001000D000A004700
      7200690064002E00560065007200730069006F006E0001005600650072007300
      69006F006E0001000D000A0047007200690064002E0043007500720072006500
      6E0074000100430075007200720065006E00740001000D000A00470072006900
      64002E00530065006C006500630074000100530065006C006500630074000100
      0D000A004D006F00640065002E00520045004400450045004D00010052006500
      6400650065006D0001000D000A004D006F00640065002E0049004E0050005500
      5400010049006E0070007500740001000D000A0043006F006C006F0075007200
      2E00300001004D006F006E006F006300680072006F006D00650001000D000A00
      43006F006C006F00750072002E003100010042006C00610063006B0020002600
      20005700680069007400650001000D000A0043006F006C006F00750072002E00
      32000100420069002D0043006F006C006F007500720020005200650064000100
      0D000A0043006F006C006F00750072002E0033000100420069002D0043006F00
      6C006F0075007200200047007200650065006E0001000D000A0043006F006C00
      6F00750072002E0034000100420069002D0043006F006C006F00750072002000
      42006C007500650001000D000A004D006F00640065002E004500560045004E00
      540001004500760065006E00740001000D000A0047007200690064002E004900
      6E005500730065000100530065006C006500630074006500640001000D000A00
      47007200690064002E00560061006C00750065000100560061006C0075006500
      01000D000A00730074004F00740068006500720053007400720069006E006700
      73005F0055006E00690063006F00640065000D000A0049005700520065006700
      69006F006E0031002E00480065006C0070004B006500790077006F0072006400
      010001000D000A0049005700530069004C0069006E006B0031002E0048006500
      6C0070004B006500790077006F0072006400010001000D000A0042006F006400
      790052006500670069006F006E002E00480065006C0070004B00650079007700
      6F0072006400010001000D000A0049005700520065006300740061006E006700
      6C00650032002E00480065006C0070004B006500790077006F00720064000100
      01000D000A0049005700520065006300740061006E0067006C00650032002E00
      5400650078007400010001000D000A0049005700520065006300740061006E00
      67006C00650031002E00480065006C0070004B006500790077006F0072006400
      010001000D000A0049005700520065006300740061006E0067006C0065003100
      2E005400650078007400010001000D000A0049006D006100670065004C006100
      620065006C002E00480065006C0070004B006500790077006F00720064000100
      01000D000A0049006D0061006700650047007200690064002E00480065006C00
      70004B006500790077006F0072006400010001000D000A007500730065007200
      66006F006F0074006500720031002E00480065006C0070004B00650079007700
      6F0072006400010001000D000A00540066006F0072006D004600690065006C00
      6400560065007200730069006F006E00730054006D0070006C002E0048006500
      6C0070004B006500790077006F0072006400010001000D000A00460072006100
      6D00650042006100720065005400690074006C00650031002E00480065006C00
      70004B006500790077006F0072006400010001000D000A004E0061006D006500
      45006400690074002E00480065006C0070004B006500790077006F0072006400
      010001000D000A004E0061006D00650045006400690074002E00540065007800
      740001004E0061006D006500450064006900740001000D000A004E0065007700
      420074006E002E00480065006C0070004B006500790077006F00720064000100
      01000D000A00560061006C007500650045006400690074002E00480065006C00
      70004B006500790077006F0072006400010001000D000A00560061006C007500
      650045006400690074002E0054006500780074000100560061006C0075006500
      450064006900740001000D000A00490057004C006100620065006C0031002E00
      480065006C0070004B006500790077006F0072006400010001000D000A007300
      740043006F006C006C0065006300740069006F006E0073005F0055006E006900
      63006F00640065000D000A007300740043006800610072005300650074007300
      5F0055006E00690063006F00640065000D000A00}
  end
end
