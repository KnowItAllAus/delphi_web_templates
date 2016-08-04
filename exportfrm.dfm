object FormExport: TFormExport
  Left = 0
  Top = 0
  Width = 1025
  Height = 445
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
  inline userfooter1: Tuserfooter
    Left = 0
    Top = 416
    Width = 1025
    Height = 29
    HorzScrollBar.Visible = False
    Align = alBottom
    TabOrder = 0
    ExplicitTop = 416
    ExplicitWidth = 1025
    ExplicitHeight = 29
    inherited IWRegion1: TIWRegion
      Width = 1025
      Height = 29
      TabOrder = 4
      ExplicitWidth = 1025
      ExplicitHeight = 29
      DesignSize = (
        1025
        29)
      inherited IWRectangle1: TIWRectangle
        Left = 649
        ExplicitLeft = 649
      end
      inherited IWRectangle4: TIWRectangle
        Width = 1641
        ExplicitWidth = 1641
      end
      inherited IWRectangle6: TIWRectangle
        Width = 607
        ExplicitWidth = 607
      end
      inherited Cancel: TIWButton
        Left = 938
        Caption = 'Menu'
        OnClick = userfooter1CancelClick
        ExplicitLeft = 938
      end
      inherited Extra1: TIWButton
        Left = 850
        ExplicitLeft = 850
      end
      inherited Extra2: TIWButton
        Left = 762
        ExplicitLeft = 762
      end
      inherited fiwSiLink1: TIWSiLink
        Left = 690
        ExplicitLeft = 690
      end
    end
  end
  object IWRegion1: TIWRegion
    Left = 0
    Top = 114
    Width = 1025
    Height = 302
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
      1025
      302)
    object IWRegion2: TIWRegion
      Left = 10
      Top = 32
      Width = 999
      Height = 244
      Cursor = crAuto
      RenderInvisibleControls = False
      Anchors = [akLeft, akTop, akRight, akBottom]
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
        999
        244)
      object GrpLabel: TIWLabel
        Left = 8
        Top = 8
        Width = 209
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
        FriendlyName = 'GrpLabel'
        Caption = 'Job Exports'
        RawText = False
      end
      object JobGrid: TIWGrid
        Left = 16
        Top = 40
        Width = 967
        Height = 99
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
        OnRenderCell = JobGridRenderCell
        UseFrame = True
        UseSize = True
        FriendlyName = 'JobGrid'
        ColumnCount = 5
        OnCellClick = JobGridCellClick
        RowCount = 1
        ShowEmptyCells = True
        ShowInvisibleRows = True
        ScrollToCurrentRow = False
        ExplicitWidth = 561
      end
      object IWSiLink1: TIWSiLink
        Left = 508
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
        TabOrder = 0
        RawText = False
        SiLangLinked = silink_footer
        LangFile = 'JobExport.sil'
        LangControl = RcDataMod.LangEditControl1
      end
      object IWRectangle1: TIWRectangle
        Left = 0
        Top = 3
        Width = 3
        Height = 241
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
        ExplicitLeft = 3
        ExplicitTop = 9
      end
      object IWRectangle2: TIWRectangle
        Left = 0
        Top = 0
        Width = 999
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
        ExplicitWidth = 593
      end
      object JobCombo: TIWComboBox
        Left = 116
        Top = 150
        Width = 381
        Height = 21
        Cursor = crAuto
        Anchors = [akLeft, akBottom]
        IW50Hint = False
        ParentShowHint = False
        ShowHint = True
        ZIndex = 1
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
        NoSelectionText = '-- Go to ... --'
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
        ItemIndex = -1
        Items.Strings = (
          'Jobs'
          'Job Distribution'
          'Journal'
          'System'
          'Overview'
          'Publish'
          'Status'
          '- - - - - - -'
          'Logout')
        Sorted = False
        FriendlyName = 'JobCombo'
      end
      object IWLabel1: TIWLabel
        Left = 28
        Top = 151
        Width = 83
        Height = 19
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
        Font.FontName = 'Arial'
        Font.Size = 12
        Font.Style = []
        NoWrap = False
        ConvertSpaces = False
        HasTabOrder = False
        AutoSize = False
        FriendlyName = 'GrpLabel'
        Caption = 'Job'
        RawText = False
      end
      object IWLabel2: TIWLabel
        Left = 28
        Top = 181
        Width = 83
        Height = 19
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
        Font.FontName = 'Arial'
        Font.Size = 12
        Font.Style = []
        NoWrap = False
        ConvertSpaces = False
        HasTabOrder = False
        AutoSize = False
        FriendlyName = 'GrpLabel'
        Caption = 'Export To'
        RawText = False
      end
      object CoCombo: TIWComboBox
        Left = 116
        Top = 180
        Width = 381
        Height = 21
        Cursor = crAuto
        Anchors = [akLeft, akBottom]
        IW50Hint = False
        ParentShowHint = False
        ShowHint = True
        ZIndex = 1
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
        NoSelectionText = '-- Go to ... --'
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
        TabOrder = 3
        ItemIndex = -1
        Items.Strings = (
          'Jobs'
          'Job Distribution'
          'Journal'
          'System'
          'Overview'
          'Publish'
          'Status'
          '- - - - - - -'
          'Logout')
        Sorted = False
        FriendlyName = 'navcombo'
      end
      object ExportBtn: TIWButton
        Left = 116
        Top = 207
        Width = 83
        Height = 23
        Cursor = crAuto
        Anchors = [akLeft, akBottom]
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
        Caption = 'Export'
        DoSubmitValidation = True
        Color = clBtnFace
        Font.Color = clNone
        Font.Size = 10
        Font.Style = []
        FriendlyName = 'ExportBtn'
        ScriptEvents = <>
        TabOrder = 5
        OnClick = ExportBtnClick
      end
    end
  end
  inline DistribFrameTitle1: TDistribFrameTitle
    Left = 0
    Top = 0
    Width = 1025
    Height = 114
    HorzScrollBar.Visible = False
    VertScrollBar.Visible = False
    Align = alTop
    TabOrder = 2
    ExplicitWidth = 1025
    ExplicitHeight = 114
    inherited IWFrameRegion: TIWRegion
      Width = 1025
      Height = 114
      TabOrder = 1
      ExplicitWidth = 1025
      ExplicitHeight = 114
      DesignSize = (
        1025
        114)
      inherited IWRectangle1: TIWRectangle
        Left = 760
        Width = 954
        ExplicitLeft = 760
        ExplicitWidth = 954
      end
      inherited IWRectangle2: TIWRectangle
        Left = 760
        Width = 4
        ExplicitLeft = 760
        ExplicitWidth = 4
      end
      inherited IWRectangle3: TIWRectangle
        Width = 2022
        ExplicitWidth = 2022
      end
      inherited IWImageFile3: TIWImageFile
        Left = 695
        ExplicitLeft = 695
      end
      inherited langlink: TIWSiLink
        Left = 761
        ExplicitLeft = 761
      end
      inherited Smalltitle: TIWLabel
        Left = 916
        Width = 93
        ExplicitLeft = 916
        ExplicitWidth = 93
      end
      inherited JobRegn: TIWRegion
        inherited JobLink: TIWLink
          Left = 10
          Align = alNone
          ExplicitLeft = 10
        end
      end
      inherited EntityRegn: TIWRegion
        Color = 10526880
      end
      inherited IWRegion1: TIWRegion
        Color = 11100191
        inherited Exportlink: TIWLink
          Left = 5
          Align = alNone
          ExplicitLeft = 5
        end
      end
    end
    inherited silink: TsiLangLinked
      TranslationData = {
        73007400430061007000740069006F006E0073005F0055006E00690063006F00
        640065000D000A005400690074006C0065004C006100620065006C0001006400
        6900730074007200690062007500740069006F006E0001000D000A004A006F00
        62004C0069006E006B0001004A004F004200530001000D000A00470072006F00
        750070004C0069006E006B000100470052004F0055005000530001000D000A00
        4F0076006500720076006900650077004C0069006E006B0001004F0056004500
        5200560049004500570001000D000A00530065006E0064004C0069006E006B00
        01005000550042004C0049005300480001000D000A0073007400610074007500
        73006C0069006E006B00010053005400410054005500530001000D000A005300
        6D0061006C006C007400690074006C00650001005B0064006500660061007500
        6C0074005D0001000D000A0073007400480069006E00740073005F0055006E00
        690063006F00640065000D000A007300740044006900730070006C0061007900
        4C006100620065006C0073005F0055006E00690063006F00640065000D000A00
        7300740046006F006E00740073005F0055006E00690063006F00640065000D00
        0A00540044006900730074007200690062004600720061006D00650054006900
        74006C00650001004D0053002000530061006E00730020005300650072006900
        660001000D000A00730074004D0075006C00740069004C0069006E0065007300
        5F0055006E00690063006F00640065000D000A00730074005300740072006900
        6E00670073005F0055006E00690063006F00640065000D000A00730074004F00
        740068006500720053007400720069006E00670073005F0055006E0069006300
        6F00640065000D000A007300740043006F006C006C0065006300740069006F00
        6E0073005F0055006E00690063006F00640065000D000A007300740043006800
        6100720053006500740073005F0055006E00690063006F00640065000D000A00
        540044006900730074007200690062004600720061006D006500540069007400
        6C0065000100440045004600410055004C0054005F0043004800410052005300
        4500540001000D000A00}
    end
  end
  object silink_footer: TsiLangLinked
    Version = '6.5.4.7'
    StringsTypes.Strings = (
      'TIB_STRINGLIST'
      'TSTRINGLIST')
    SmartExcludeProps.Strings = (
      'UserLabel.Caption'
      'Cancel.Caption'
      'Extra1.Caption'
      'ExportBtn.Caption'
      'JobGrid.Caption')
    LangDispatcher = RcDataMod.siLangDispatcher1
    LangDelim = 1
    LangNames.Strings = (
      'English')
    Language = 'English'
    CommonContainer = RcDataMod.siLang1
    ExcludedProperties.Strings = (
      'Hint')
    Left = 1
    Top = 118
    TranslationData = {
      73007400430061007000740069006F006E0073005F0055006E00690063006F00
      640065000D000A004700720070004C006100620065006C0001004A006F006200
      20004500780070006F0072007400730001000D000A0073007400480069006E00
      740073005F0055006E00690063006F00640065000D000A007300740044006900
      730070006C00610079004C006100620065006C0073005F0055006E0069006300
      6F00640065000D000A007300740046006F006E00740073005F0055006E006900
      63006F00640065000D000A005400750073006500720066006F006F0074006500
      720001004D0053002000530061006E0073002000530065007200690066000100
      0D000A00730074004D0075006C00740069004C0069006E00650073005F005500
      6E00690063006F00640065000D000A004900570052006500670069006F006E00
      31002E004500780074007200610054006100670050006100720061006D007300
      010001000D000A004900570052006500670069006F006E0032002E0045007800
      74007200610054006100670050006100720061006D007300010001000D000A00
      4700720070004C006100620065006C002E004500780074007200610054006100
      670050006100720061006D007300010001000D000A004A006F00620047007200
      690064002E004500780074007200610054006100670050006100720061006D00
      7300010001000D000A0049005700530069004C0069006E006B0031002E004500
      780074007200610054006100670050006100720061006D007300010001000D00
      0A0049005700520065006300740061006E0067006C00650031002E0045007800
      74007200610054006100670050006100720061006D007300010001000D000A00
      49005700520065006300740061006E0067006C00650032002E00450078007400
      7200610054006100670050006100720061006D007300010001000D000A007300
      740053007400720069006E00670073005F0055006E00690063006F0064006500
      0D000A0047007200690064002E004900440001004900440001000D000A004700
      7200690064002E004E0061006D00650001004E0061006D00650001000D000A00
      47007200690064002E0044006500730063000100440065007300630072006900
      7000740069006F006E0001000D000A00730074004F0074006800650072005300
      7400720069006E00670073005F0055006E00690063006F00640065000D000A00
      540046006F0072006D004500780070006F00720074002E00480065006C007000
      4B006500790077006F0072006400010001000D000A00540046006F0072006D00
      4500780070006F00720074002E005400690074006C006500010001000D000A00
      750073006500720066006F006F0074006500720031002E00480065006C007000
      4B006500790077006F0072006400010001000D000A0049005700520065006700
      69006F006E0031002E00480065006C0070004B006500790077006F0072006400
      010001000D000A004900570052006500670069006F006E0032002E0048006500
      6C0070004B006500790077006F0072006400010001000D000A00470072007000
      4C006100620065006C002E0046007200690065006E0064006C0079004E006100
      6D00650001004700720070004C006100620065006C0001000D000A0047007200
      70004C006100620065006C002E00480065006C0070004B006500790077006F00
      72006400010001000D000A004700720070004C006100620065006C002E005300
      740061007400750073005400650078007400010001000D000A004A006F006200
      47007200690064002E0046007200690065006E0064006C0079004E0061006D00
      650001004A006F006200470072006900640001000D000A004A006F0062004700
      7200690064002E00480065006C0070004B006500790077006F00720064000100
      01000D000A004A006F00620047007200690064002E0053007400610074007500
      73005400650078007400010001000D000A004A006F0062004700720069006400
      2E00530075006D006D00610072007900010001000D000A004900570053006900
      4C0069006E006B0031002E0043006F006E006600690072006D00610074006900
      6F006E00010001000D000A0049005700530069004C0069006E006B0031002E00
      46007200690065006E0064006C0079004E0061006D0065000100490057005300
      69004C0069006E006B00310001000D000A0049005700530069004C0069006E00
      6B0031002E00480065006C0070004B006500790077006F007200640001000100
      0D000A0049005700530069004C0069006E006B0031002E004C0061006E006700
      460069006C00650001004A006F0062004500780070006F00720074002E007300
      69006C0001000D000A0049005700530069004C0069006E006B0031002E005300
      740061007400750073005400650078007400010001000D000A00490057005200
      65006300740061006E0067006C00650031002E0046007200690065006E006400
      6C0079004E0061006D006500010049005700520065006300740061006E006700
      6C006500310001000D000A0049005700520065006300740061006E0067006C00
      650031002E00480065006C0070004B006500790077006F007200640001000100
      0D000A0049005700520065006300740061006E0067006C00650031002E005300
      740061007400750073005400650078007400010001000D000A00490057005200
      65006300740061006E0067006C00650031002E00540065007800740001000100
      0D000A0049005700520065006300740061006E0067006C00650032002E004600
      7200690065006E0064006C0079004E0061006D00650001004900570052006500
      6300740061006E0067006C006500310001000D000A0049005700520065006300
      740061006E0067006C00650032002E00480065006C0070004B00650079007700
      6F0072006400010001000D000A0049005700520065006300740061006E006700
      6C00650032002E00530074006100740075007300540065007800740001000100
      0D000A0049005700520065006300740061006E0067006C00650032002E005400
      650078007400010001000D000A00440069007300740072006900620046007200
      61006D0065005400690074006C00650031002E00480065006C0070004B006500
      790077006F0072006400010001000D000A007300740043006F006C006C006500
      6300740069006F006E0073005F0055006E00690063006F00640065000D000A00
      73007400430068006100720053006500740073005F0055006E00690063006F00
      640065000D000A005400750073006500720066006F006F007400650072000100
      440045004600410055004C0054005F0043004800410052005300450054000100
      0D000A00}
  end
end
