object formJobs: TformJobs
  Left = 0
  Top = 0
  Width = 1024
  Height = 479
  HorzScrollBar.Visible = False
  VertScrollBar.Visible = False
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
  inline userfooter1: Tuserfooter
    Left = 0
    Top = 450
    Width = 1024
    Height = 29
    HorzScrollBar.Visible = False
    Align = alBottom
    TabOrder = 0
    ExplicitTop = 450
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
        Left = 608
        Width = 416
        ExplicitLeft = 608
        ExplicitWidth = 416
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
        Left = 938
        Caption = 'Menu'
        TabOrder = 2
        OnClick = userfooter1CancelClick
        ExplicitLeft = 938
      end
      inherited Extra1: TIWButton
        Left = 762
        TabOrder = 0
        ExplicitLeft = 762
      end
      inherited Extra2: TIWButton
        Left = 850
        TabOrder = 1
        ExplicitLeft = 850
      end
      inherited fiwSiLink1: TIWSiLink
        Top = 1
        ExplicitTop = 1
      end
    end
    inherited silink_footer: TsiLangLinked
      Left = 80
    end
  end
  object IWRegion1: TIWRegion
    Left = 0
    Top = 119
    Width = 1024
    Height = 331
    Cursor = crAuto
    HorzScrollBar.Visible = False
    VertScrollBar.Visible = False
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
      331)
    object langlink: TIWSiLink
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
      FriendlyName = 'langlink'
      TabOrder = 0
      RawText = False
      SiLangLinked = silink
      LangFile = 'jobs.sil'
      LangControl = RcDataMod.LangEditControl1
    end
    object BodyRegion: TIWRegion
      Left = 16
      Top = 21
      Width = 985
      Height = 292
      Cursor = crAuto
      HorzScrollBar.Visible = False
      VertScrollBar.Visible = False
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
        985
        292)
      object IWRectangle2: TIWRectangle
        Left = 1
        Top = 1
        Width = 983
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
        ExplicitWidth = 819
      end
      object IWRectangle1: TIWRectangle
        Left = 1
        Top = 4
        Width = 3
        Height = 287
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
      object JobsLabel: TIWLabel
        Left = 24
        Top = 8
        Width = 569
        Height = 24
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
        Alignment = taCenter
        BGColor = clNone
        Font.Color = clNone
        Font.Size = 14
        Font.Style = [fsBold]
        NoWrap = False
        ConvertSpaces = False
        HasTabOrder = False
        AutoSize = False
        FriendlyName = 'JobsLabel'
        Caption = 'Jobs'
        RawText = False
      end
      object NewJobEdit: TIWEdit
        Left = 10
        Top = 224
        Width = 442
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
        FocusColor = clNone
        DoSubmitValidation = True
        Editable = True
        NonEditableAsLabel = True
        Font.Color = clNone
        Font.Size = 10
        Font.Style = []
        FriendlyName = 'NewJobEdit'
        MaxLength = 0
        ReadOnly = False
        Required = False
        ScriptEvents = <>
        SubmitOnAsyncEvent = True
        TabOrder = 1
        PasswordPrompt = False
      end
      object JobGrid: TIWGrid
        Left = 10
        Top = 38
        Width = 959
        Height = 169
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
        ColumnCount = 7
        OnCellClick = JobGridCellClick
        RowCount = 1
        ShowEmptyCells = True
        ShowInvisibleRows = True
        ScrollToCurrentRow = False
      end
      object CreateBtn: TIWButton
        Left = 470
        Top = 224
        Width = 75
        Height = 25
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
        Caption = 'Create'
        DoSubmitValidation = True
        Color = clBtnFace
        Font.Color = clNone
        Font.Size = 10
        Font.Style = []
        FriendlyName = 'CreateBtn'
        ScriptEvents = <>
        TabOrder = 2
        OnClick = CreateBtnClick
      end
      object FindBtn: TIWButton
        Left = 409
        Top = 254
        Width = 105
        Height = 25
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
        Caption = 'Find Guid'
        DoSubmitValidation = True
        Color = clBtnFace
        Font.Color = clNone
        Font.Size = 10
        Font.Style = []
        FriendlyName = 'CreateBtn'
        ScriptEvents = <>
        TabOrder = 5
        OnClick = FindBtnClick
      end
      object GuidEdit: TIWEdit
        Left = 113
        Top = 255
        Width = 290
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
        FocusColor = clNone
        DoSubmitValidation = True
        Editable = True
        NonEditableAsLabel = True
        Font.Color = clNone
        Font.Size = 10
        Font.Style = []
        FriendlyName = 'NewJobEdit'
        MaxLength = 0
        ReadOnly = False
        Required = False
        ScriptEvents = <>
        SubmitOnAsyncEvent = True
        TabOrder = 6
        PasswordPrompt = False
      end
      object prodbox: TIWComboBox
        Left = 10
        Top = 255
        Width = 97
        Height = 20
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
        TabOrder = 7
        ItemIndex = 0
        Items.Strings = (
          'Test'
          'Prod')
        Sorted = False
        FriendlyName = 'test_prod_box'
      end
    end
  end
  inline PromoFrameTitle1: TPromoFrameTitle
    Left = 0
    Top = 0
    Width = 1024
    Height = 119
    HorzScrollBar.Visible = False
    VertScrollBar.Visible = False
    Align = alTop
    TabOrder = 2
    ExplicitWidth = 1024
    inherited IWFrameRegion: TIWRegion
      Width = 1024
      TabOrder = 4
      ExplicitWidth = 1024
      DesignSize = (
        1024
        119)
      inherited IWRectangle1: TIWRectangle
        Top = 93
        Width = 2625
        ExplicitTop = 93
        ExplicitWidth = 2625
      end
      inherited IWRectangle2: TIWRectangle
        Top = 95
        ExplicitTop = 95
      end
      inherited IWRectangle3: TIWRectangle
        Width = 2044
        ExplicitWidth = 2044
      end
      inherited IWImageFile3: TIWImageFile
        Left = 689
        Top = 0
        ZIndex = 3
        ExplicitLeft = 689
        ExplicitTop = 0
      end
      inherited langlink: TIWSiLink
        Left = 680
        ExplicitLeft = 680
      end
      inherited Smalltitle: TIWLabel
        Left = 879
        ExplicitLeft = 879
      end
      inherited HideBox: TIWImageFile
        Left = 1008
        ExplicitLeft = 1008
      end
    end
  end
  object silink: TsiLangLinked
    Version = '6.5.4.7'
    StringsTypes.Strings = (
      'TIB_STRINGLIST'
      'TSTRINGLIST')
    SmartExcludeProps.Strings = (
      'UserLabel.Caption'
      'Extra1.Caption'
      'Extra2.Caption'
      'Extra3.Caption'
      'CreateBtn.Caption'
      'JobGrid.Caption')
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
      640065000D000A004A006F00620073004C006100620065006C0001004A006F00
      6200730001000D000A00460069006E006400420074006E000100460069006E00
      64002000470075006900640001000D000A0073007400480069006E0074007300
      5F0055006E00690063006F00640065000D000A00730074004400690073007000
      6C00610079004C006100620065006C0073005F0055006E00690063006F006400
      65000D000A007300740046006F006E00740073005F0055006E00690063006F00
      640065000D000A00730074004D0075006C00740069004C0069006E0065007300
      5F0055006E00690063006F00640065000D000A00700072006F00640062006F00
      78002E004900740065006D007300010054006500730074002C00500072006F00
      640001000D000A007300740053007400720069006E00670073005F0055006E00
      690063006F00640065000D000A00430072006500610074006500420074006E00
      010043007200650061007400650001000D000A0047007200690064002E004900
      440001004900440001000D000A0047007200690064002E004E0061006D006500
      01004E0061006D00650001000D000A0047007200690064002E00530074006100
      740075007300010053007400610074007500730001000D000A00470072006900
      64002E0044006500730063000100440065007300630072006900700074006900
      6F006E0001000D000A0047007200690064002E00540065006D0070006C006100
      740065000100540065006D0070006C0061007400650001000D000A0047007200
      690064002E004E006500770049006E007300740061006E006300650001004E00
      65007700200049006E007300740061006E006300650001000D000A0047007200
      690064002E004E006F007400650001004E006F0074006500730001000D000A00
      47007200690064002E0049006D0070006F0072007400010049006D0070006F00
      720074006500640001000D000A0047007200690064002E0053006F0075007200
      63006500010053006F00750072006300650001000D000A004700720069006400
      2E004F0072006900670069006E0061006C0001004F0072006900670069006E00
      61006C0001000D000A0047007200690064002E004C0069006E006B0001004C00
      69006E006B0001000D000A0047007200690064002E0049006E00730074006100
      6E0063006500010049006E007300740061006E006300650020006F0066000100
      0D000A00500072006F00640042006F0078002E00300001005400650073007400
      01000D000A00500072006F00640042006F0078002E0031000100500072006F00
      640001000D000A004E006F00740046006F0075006E0064000100470075006900
      640020006E006F007400200066006F0075006E00640001000D000A0073007400
      4F00740068006500720053007400720069006E00670073005F0055006E006900
      63006F00640065000D000A006C0061006E0067006C0069006E006B002E004600
      7200690065006E0064006C0079004E0061006D00650001006C0061006E006700
      6C0069006E006B0001000D000A006C0061006E0067006C0069006E006B002E00
      4C0061006E006700460069006C00650001006A006F00620073002E0073006900
      6C0001000D000A0049005700520065006300740061006E0067006C0065003200
      2E0046007200690065006E0064006C0079004E0061006D006500010049005700
      520065006300740061006E0067006C006500310001000D000A00490057005200
      65006300740061006E0067006C00650031002E0046007200690065006E006400
      6C0079004E0061006D006500010049005700520065006300740061006E006700
      6C006500310001000D000A004A006F00620073004C006100620065006C002E00
      46007200690065006E0064006C0079004E0061006D00650001004A006F006200
      73004C006100620065006C0001000D000A004E00650077004A006F0062004500
      6400690074002E0046007200690065006E0064006C0079004E0061006D006500
      01004E00650077004A006F006200450064006900740001000D000A004A006F00
      620047007200690064002E0046007200690065006E0064006C0079004E006100
      6D00650001004A006F006200470072006900640001000D000A00430072006500
      610074006500420074006E002E0046007200690065006E0064006C0079004E00
      61006D0065000100430072006500610074006500420074006E0001000D000A00
      460069006E006400420074006E002E0046007200690065006E0064006C007900
      4E0061006D0065000100430072006500610074006500420074006E0001000D00
      0A00470075006900640045006400690074002E0046007200690065006E006400
      6C0079004E0061006D00650001004E00650077004A006F006200450064006900
      740001000D000A00700072006F00640062006F0078002E004600720069006500
      6E0064006C0079004E0061006D006500010074006500730074005F0070007200
      6F0064005F0062006F00780001000D000A00700072006F00640062006F007800
      2E004E006F00530065006C0065006300740069006F006E005400650078007400
      01002D002D0020004E006F002000530065006C0065006300740069006F006E00
      20002D002D0001000D000A007300740043006F006C006C006500630074006900
      6F006E0073005F0055006E00690063006F00640065000D000A00730074004300
      68006100720053006500740073005F0055006E00690063006F00640065000D00
      0A00}
  end
end
