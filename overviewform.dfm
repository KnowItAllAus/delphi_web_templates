object FormOverview: TFormOverview
  Left = 0
  Top = 0
  Width = 1014
  Height = 625
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
  DesignLeft = -58
  DesignTop = 8
  inline userfooter1: Tuserfooter
    Left = 0
    Top = 596
    Width = 1014
    Height = 29
    HorzScrollBar.Visible = False
    Align = alBottom
    TabOrder = 0
    ExplicitTop = 596
    ExplicitWidth = 1014
    ExplicitHeight = 29
    inherited IWRegion1: TIWRegion
      Width = 1014
      Height = 29
      TabOrder = 3
      ExplicitWidth = 1014
      ExplicitHeight = 29
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
        Left = 931
        Caption = 'Menu'
        OnClick = userfooter1CancelClick
        ExplicitLeft = 931
      end
      inherited Extra1: TIWButton
        Left = 845
        ExplicitLeft = 845
      end
      inherited Extra2: TIWButton
        Left = 760
        FriendlyName = 'Create'
        ExplicitLeft = 760
      end
      inherited fiwSiLink1: TIWSiLink
        Left = 680
        ExplicitLeft = 680
      end
    end
  end
  object IWRegion1: TIWRegion
    Left = 0
    Top = 117
    Width = 1014
    Height = 479
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
      1014
      479)
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
      TabOrder = 2
      RawText = False
      SiLangLinked = silanglinked1
      LangFile = 'entities.sil'
      LangControl = RcDataMod.LangEditControl1
    end
    object BodyRegion: TIWRegion
      Left = 104
      Top = 21
      Width = 800
      Height = 439
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
        800
        439)
      object IWRectangle2: TIWRectangle
        Left = 1
        Top = 1
        Width = 798
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
        Height = 434
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
        Width = 185
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
        Caption = 'System Overview'
        RawText = False
      end
      object OverGrid: TIWGrid
        Left = 30
        Top = 64
        Width = 752
        Height = 357
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
        OnRenderCell = OverGridRenderCell
        UseFrame = True
        UseSize = True
        FriendlyName = 'OverGrid'
        ColumnCount = 3
        OnCellClick = OverGridCellClick
        RowCount = 1
        ShowEmptyCells = True
        ShowInvisibleRows = True
        ScrollToCurrentRow = False
      end
      object storebtn: TIWRadioButton
        Left = 205
        Top = 10
        Width = 106
        Height = 21
        Cursor = crAuto
        Visible = False
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
        Caption = 'By Stores'
        Editable = True
        Font.Color = clNone
        Font.Size = 10
        Font.Style = []
        ScriptEvents = <>
        DoSubmitValidation = True
        OnClick = StoreComboChange
        Checked = True
        Group = 'no group'
        Value = 'storebtn'
        FriendlyName = 'storebtn'
        SubmitOnAsyncEvent = True
      end
      object jobbtn: TIWRadioButton
        Left = 330
        Top = 10
        Width = 121
        Height = 21
        Cursor = crAuto
        Visible = False
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
        Caption = 'By Jobs'
        Editable = True
        Font.Color = clNone
        Font.Size = 10
        Font.Style = []
        ScriptEvents = <>
        DoSubmitValidation = True
        OnClick = StoreComboChange
        Checked = False
        Group = 'no group'
        Value = 'IWRadioButton1'
        FriendlyName = 'jobbtn'
        SubmitOnAsyncEvent = True
      end
      object storecombo: TIWComboBox
        Left = 30
        Top = 33
        Width = 755
        Height = 21
        Cursor = crAuto
        Anchors = [akLeft, akTop, akRight]
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
        TabOrder = 5
        ItemIndex = -1
        Sorted = False
        FriendlyName = 'storecombo'
      end
    end
  end
  inline DistribFrameTitle1: TDistribFrameTitle
    Left = 0
    Top = 0
    Width = 1014
    Height = 117
    HorzScrollBar.Visible = False
    VertScrollBar.Visible = False
    Align = alTop
    TabOrder = 2
    ExplicitWidth = 1014
    ExplicitHeight = 117
    inherited IWFrameRegion: TIWRegion
      Width = 1014
      Height = 117
      TabOrder = 4
      ExplicitWidth = 1014
      ExplicitHeight = 117
      inherited titleimage: TIWImageFile
        Left = 41
        ExplicitLeft = 41
      end
      inherited IWRectangle1: TIWRectangle
        Top = 92
        Width = 2615
        ExplicitTop = 92
        ExplicitWidth = 2615
      end
      inherited IWRectangle2: TIWRectangle
        Top = 93
        Width = 4
        ExplicitTop = 93
        ExplicitWidth = 4
      end
      inherited IWRectangle3: TIWRectangle
        Left = 889
        Top = 97
        Width = 1970
        ExplicitLeft = 889
        ExplicitTop = 97
        ExplicitWidth = 1970
      end
      inherited IWImageFile3: TIWImageFile
        Left = 676
        ExplicitLeft = 676
      end
      inherited langlink: TIWSiLink
        Left = 617
        ExplicitLeft = 617
      end
      inherited HideBox: TIWImageFile
        Left = 1000
        Top = 97
        ExplicitLeft = 1000
        ExplicitTop = 97
      end
      inherited Smalltitle: TIWLabel
        Left = 875
        Top = 97
        ExplicitLeft = 875
        ExplicitTop = 97
      end
      inherited JobRegn: TIWRegion
        Top = 97
        ExplicitTop = 97
      end
      inherited GrpRegn: TIWRegion
        Top = 97
        ExplicitTop = 97
      end
      inherited EntityRegn: TIWRegion
        Top = 97
        ExplicitTop = 97
      end
      inherited SendRegion: TIWRegion
        Top = 97
        ExplicitTop = 97
      end
      inherited statusregn: TIWRegion
        Top = 97
        ExplicitTop = 97
      end
      inherited IWRegion1: TIWRegion
        Top = 97
        Width = 127
        ExplicitTop = 97
        ExplicitWidth = 127
        inherited Exportlink: TIWLink
          Width = 127
          ExplicitWidth = 127
        end
      end
    end
    inherited silink: TsiLangLinked
      SmartExcludeProps.Strings = (
        'UserLabel.Caption'
        'Extra1.Caption'
        'Extra2.Caption'
        'Extra3.Caption')
    end
  end
  object silanglinked1: TsiLangLinked
    Version = '6.5.4.7'
    StringsTypes.Strings = (
      'TIB_STRINGLIST'
      'TSTRINGLIST')
    SmartExcludeProps.Strings = (
      'UserLabel.Caption'
      'Extra1.Caption'
      'Extra2.Caption'
      'Extra3.Caption'
      'Cancel.Caption'
      'OverGrid.Caption')
    LangDispatcher = RcDataMod.siLangDispatcher1
    LangDelim = 1
    LangNames.Strings = (
      'English')
    Language = 'English'
    CommonContainer = RcDataMod.siLang1
    ExcludedProperties.Strings = (
      'Hint')
    Top = 136
    TranslationData = {
      73007400430061007000740069006F006E0073005F0055006E00690063006F00
      640065000D000A0049006D006100670065004C006100620065006C0001005300
      79007300740065006D0020004F00760065007200760069006500770001000D00
      0A00730074006F0072006500620074006E000100420079002000530074006F00
      72006500730001000D000A006A006F006200620074006E000100420079002000
      4A006F006200730001000D000A0073007400480069006E00740073005F005500
      6E00690063006F00640065000D000A007300740044006900730070006C006100
      79004C006100620065006C0073005F0055006E00690063006F00640065000D00
      0A007300740046006F006E00740073005F0055006E00690063006F0064006500
      0D000A005400750073006500720066006F006F0074006500720001004D005300
      2000530061006E00730020005300650072006900660001000D000A0073007400
      4D0075006C00740069004C0069006E00650073005F0055006E00690063006F00
      640065000D000A004900570052006500670069006F006E0031002E0045007800
      74007200610054006100670050006100720061006D007300010001000D000A00
      49005700530069004C0069006E006B0031002E00450078007400720061005400
      6100670050006100720061006D007300010001000D000A0042006F0064007900
      52006500670069006F006E002E00450078007400720061005400610067005000
      6100720061006D007300010001000D000A004900570052006500630074006100
      6E0067006C00650032002E004500780074007200610054006100670050006100
      720061006D007300010001000D000A0049005700520065006300740061006E00
      67006C00650031002E0045007800740072006100540061006700500061007200
      61006D007300010001000D000A0049006D006100670065004C00610062006500
      6C002E004500780074007200610054006100670050006100720061006D007300
      010001000D000A004F0076006500720047007200690064002E00450078007400
      7200610054006100670050006100720061006D007300010001000D000A007300
      74006F0072006500620074006E002E0045007800740072006100540061006700
      50006100720061006D007300010001000D000A006A006F006200620074006E00
      2E004500780074007200610054006100670050006100720061006D0073000100
      01000D000A007300740053007400720069006E00670073005F0055006E006900
      63006F00640065000D000A0047007200690064002E004E0061006D0065000100
      4E0061006D00650001000D000A0047007200690064002E004900440001004900
      440001000D000A0047007200690064002E00440065006600610075006C007400
      0100440065006600610075006C00740001000D000A0047007200690064002E00
      4400650073006300720069007000740069006F006E0001004400650073006300
      720069007000740069006F006E0001000D000A0047007200690064002E005300
      74006F00720065000100530074006F007200650001000D000A00470072006900
      64002E004A006F00620001004A006F00620001000D000A004700720069006400
      2E00470072006F00750070000100470072006F0075007000730001000D000A00
      47007200690064002E00540065006D0070006C00610074006500010054006500
      6D0070006C0061007400650001000D000A0047007200690064002E0045007200
      72006F00720001004500720072006F00720001000D000A00730074004F007400
      68006500720053007400720069006E00670073005F0055006E00690063006F00
      640065000D000A00540046006F0072006D004F00760065007200760069006500
      77002E00480065006C0070004B006500790077006F0072006400010001000D00
      0A00540046006F0072006D004F0076006500720076006900650077002E005400
      690074006C006500010001000D000A00750073006500720066006F006F007400
      6500720031002E00480065006C0070004B006500790077006F00720064000100
      01000D000A004900570052006500670069006F006E0031002E00480065006C00
      70004B006500790077006F0072006400010001000D000A004900570053006900
      4C0069006E006B0031002E0043006F006E006600690072006D00610074006900
      6F006E00010001000D000A0049005700530069004C0069006E006B0031002E00
      46007200690065006E0064006C0079004E0061006D0065000100490057005300
      69004C0069006E006B00310001000D000A0049005700530069004C0069006E00
      6B0031002E00480065006C0070004B006500790077006F007200640001000100
      0D000A0049005700530069004C0069006E006B0031002E004C0061006E006700
      460069006C006500010065006E007400690074006900650073002E0073006900
      6C0001000D000A0049005700530069004C0069006E006B0031002E0053007400
      61007400750073005400650078007400010001000D000A0042006F0064007900
      52006500670069006F006E002E00480065006C0070004B006500790077006F00
      72006400010001000D000A0049005700520065006300740061006E0067006C00
      650032002E0046007200690065006E0064006C0079004E0061006D0065000100
      49005700520065006300740061006E0067006C006500310001000D000A004900
      5700520065006300740061006E0067006C00650032002E00480065006C007000
      4B006500790077006F0072006400010001000D000A0049005700520065006300
      740061006E0067006C00650032002E0053007400610074007500730054006500
      78007400010001000D000A0049005700520065006300740061006E0067006C00
      650032002E005400650078007400010001000D000A0049005700520065006300
      740061006E0067006C00650031002E0046007200690065006E0064006C007900
      4E0061006D006500010049005700520065006300740061006E0067006C006500
      310001000D000A0049005700520065006300740061006E0067006C0065003100
      2E00480065006C0070004B006500790077006F0072006400010001000D000A00
      49005700520065006300740061006E0067006C00650031002E00530074006100
      7400750073005400650078007400010001000D000A0049005700520065006300
      740061006E0067006C00650031002E005400650078007400010001000D000A00
      49006D006100670065004C006100620065006C002E0046007200690065006E00
      64006C0079004E0061006D006500010049006D006100670065004C0061006200
      65006C0001000D000A0049006D006100670065004C006100620065006C002E00
      480065006C0070004B006500790077006F0072006400010001000D000A004900
      6D006100670065004C006100620065006C002E00530074006100740075007300
      5400650078007400010001000D000A004F007600650072004700720069006400
      2E0046007200690065006E0064006C0079004E0061006D00650001004F007600
      65007200470072006900640001000D000A004F00760065007200470072006900
      64002E00480065006C0070004B006500790077006F0072006400010001000D00
      0A004F0076006500720047007200690064002E00530074006100740075007300
      5400650078007400010001000D000A004F007600650072004700720069006400
      2E00530075006D006D00610072007900010001000D000A004400690073007400
      7200690062004600720061006D0065005400690074006C00650031002E004800
      65006C0070004B006500790077006F0072006400010001000D000A0073007400
      6F0072006500620074006E002E0046007200690065006E0064006C0079004E00
      61006D0065000100730074006F0072006500620074006E0001000D000A007300
      74006F0072006500620074006E002E00470072006F007500700001006E006F00
      2000670072006F007500700001000D000A00730074006F007200650062007400
      6E002E00480065006C0070004B006500790077006F0072006400010001000D00
      0A00730074006F0072006500620074006E002E00530074006100740075007300
      5400650078007400010001000D000A00730074006F0072006500620074006E00
      2E00560061006C00750065000100730074006F0072006500620074006E000100
      0D000A006A006F006200620074006E002E0046007200690065006E0064006C00
      79004E0061006D00650001006A006F006200620074006E0001000D000A006A00
      6F006200620074006E002E00470072006F007500700001006E006F0020006700
      72006F007500700001000D000A006A006F006200620074006E002E0048006500
      6C0070004B006500790077006F0072006400010001000D000A006A006F006200
      620074006E002E00530074006100740075007300540065007800740001000100
      0D000A006A006F006200620074006E002E00560061006C007500650001004900
      570052006100640069006F0042007500740074006F006E00310001000D000A00
      7300740043006F006C006C0065006300740069006F006E0073005F0055006E00
      690063006F00640065000D000A00730074004300680061007200530065007400
      73005F0055006E00690063006F00640065000D000A0054007500730065007200
      66006F006F007400650072000100440045004600410055004C0054005F004300
      48004100520053004500540001000D000A00}
  end
end
