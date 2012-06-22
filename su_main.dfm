object su_FormMain: Tsu_FormMain
  Left = 0
  Top = 0
  Width = 1025
  Height = 698
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
    Width = 1025
    Height = 558
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
      1025
      558)
    object IWRegion2: TIWRegion
      Left = 215
      Top = 50
      Width = 579
      Height = 260
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
        579
        260)
      object NewCoLabel: TIWLabel
        Left = 43
        Top = 170
        Width = 113
        Height = 21
        Cursor = crAuto
        Anchors = []
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
        FriendlyName = 'NewCoLabel'
        Caption = 'New Company ID'
        RawText = False
      end
      object langnamelabel: TIWLabel
        Left = 54
        Top = 197
        Width = 107
        Height = 21
        Cursor = crAuto
        Anchors = []
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
        FriendlyName = 'IWLabel2'
        Caption = 'New Language'
        RawText = False
      end
      object coEdit: TIWEdit
        Left = 162
        Top = 170
        Width = 57
        Height = 21
        Cursor = crAuto
        Anchors = []
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
        FriendlyName = 'coEdit'
        MaxLength = 0
        ReadOnly = False
        Required = False
        ScriptEvents = <>
        SubmitOnAsyncEvent = True
        TabOrder = 0
        PasswordPrompt = False
      end
      object CreateCoBtn: TIWButton
        Left = 232
        Top = 170
        Width = 75
        Height = 25
        Cursor = crAuto
        Anchors = []
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
        Confirmation = 'Create Company?'
        DoSubmitValidation = True
        Color = clBtnFace
        Font.Color = clNone
        Font.Size = 10
        Font.Style = []
        FriendlyName = 'CreateCoBtn'
        ScriptEvents = <>
        TabOrder = 1
        OnClick = CreateCoBtnClick
      end
      object LangNameBtn: TIWButton
        Left = 320
        Top = 196
        Width = 75
        Height = 25
        Cursor = crAuto
        Anchors = []
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
        Confirmation = 'Create New Language?'
        DoSubmitValidation = True
        Color = clBtnFace
        Font.Color = clNone
        Font.Size = 10
        Font.Style = []
        FriendlyName = 'IWButton1'
        ScriptEvents = <>
        TabOrder = 2
        OnClick = LangNameBtnClick
      end
      object LangNameEdit: TIWEdit
        Left = 162
        Top = 197
        Width = 145
        Height = 21
        Cursor = crAuto
        Anchors = []
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
        FriendlyName = 'coEdit'
        MaxLength = 0
        ReadOnly = False
        Required = False
        ScriptEvents = <>
        SubmitOnAsyncEvent = True
        TabOrder = 3
        PasswordPrompt = False
      end
      object IWLabel1: TIWLabel
        Left = 0
        Top = 24
        Width = 561
        Height = 41
        Cursor = crAuto
        Anchors = [akTop]
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
        Font.FontName = 'arial'
        Font.Size = 20
        Font.Style = [fsBold]
        NoWrap = False
        ConvertSpaces = False
        HasTabOrder = False
        AutoSize = False
        FriendlyName = 'IWLabel1'
        Caption = 'Company Administration'
        RawText = False
      end
      object IWSiLink1: TIWSiLink
        Left = 9
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
        TabOrder = 4
        RawText = False
        SiLangLinked = siLangLinked1
        LangFile = 'coadmin.sil'
        LangControl = RcDataMod.LangEditControl1
      end
      object IWRectangle2: TIWRectangle
        Left = 0
        Top = 0
        Width = 579
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
        Height = 257
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
      object CompanyCombo: TIWComboBox
        Left = 160
        Top = 72
        Width = 222
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
        FriendlyName = 'CompanyCombo'
      end
      object IWLabel3: TIWLabel
        Left = 83
        Top = 74
        Width = 70
        Height = 21
        Cursor = crAuto
        Anchors = []
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
        FriendlyName = 'IWLabel2'
        Caption = 'Company'
        RawText = False
      end
      object ViewBtn: TIWButton
        Left = 307
        Top = 98
        Width = 75
        Height = 25
        Cursor = crAuto
        Anchors = []
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
        Caption = 'View'
        DoSubmitValidation = True
        Color = clBtnFace
        Font.Color = clNone
        Font.Size = 10
        Font.Style = []
        FriendlyName = 'CreateCoBtn'
        ScriptEvents = <>
        TabOrder = 7
        OnClick = ViewClick
      end
      object Cpybtn: TIWButton
        Left = 160
        Top = 98
        Width = 75
        Height = 25
        Cursor = crAuto
        Visible = False
        Anchors = []
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
        Caption = 'Copy'
        DoSubmitValidation = True
        Color = clBtnFace
        Font.Color = clNone
        Font.Size = 10
        Font.Style = []
        FriendlyName = 'CreateCoBtn'
        ScriptEvents = <>
        TabOrder = 8
        OnClick = CopyLinkClick
      end
    end
  end
  inline userfooter1: Tuserfooter
    Left = 0
    Top = 669
    Width = 1025
    Height = 29
    HorzScrollBar.Visible = False
    Align = alBottom
    TabOrder = 1
    ExplicitTop = 669
    ExplicitWidth = 1025
    ExplicitHeight = 29
    inherited IWRegion1: TIWRegion
      Width = 1025
      Height = 29
      TabOrder = 6
      ExplicitWidth = 1025
      ExplicitHeight = 29
      inherited IWRectangle1: TIWRectangle
        Left = 647
        ExplicitLeft = 647
      end
      inherited IWRectangle4: TIWRectangle
        Width = 1639
        ExplicitWidth = 1639
      end
      inherited IWRectangle6: TIWRectangle
        Width = 605
        ExplicitWidth = 605
      end
      inherited Cancel: TIWButton
        Left = 937
        Caption = 'Menu'
        OnClick = userfooter1CancelBtnClick
        ExplicitLeft = 937
      end
      inherited Extra1: TIWButton
        Left = 849
        ExplicitLeft = 849
      end
      inherited Extra2: TIWButton
        Left = 761
        ExplicitLeft = 761
      end
      inherited fiwSiLink1: TIWSiLink
        Left = 681
        ExplicitLeft = 681
      end
    end
  end
  inline AdminFrameTitle1: TAdminFrameTitle
    Left = 0
    Top = 0
    Width = 1025
    Height = 111
    HorzScrollBar.Visible = False
    VertScrollBar.Visible = False
    Align = alTop
    TabOrder = 2
    ExplicitLeft = 3
    ExplicitTop = -6
    ExplicitWidth = 1025
    ExplicitHeight = 111
    inherited IWFrameRegion: TIWRegion
      Width = 1025
      Height = 111
      TabOrder = 9
      ExplicitWidth = 1025
      ExplicitHeight = 111
      DesignSize = (
        1025
        111)
      inherited titleimage: TIWImageFile
        RenderSize = False
        StyleRenderOptions.RenderSize = False
      end
      inherited IWRectangle1: TIWRectangle
        Left = 456
        Width = 2170
        ExplicitLeft = 456
        ExplicitWidth = 2170
      end
      inherited IWRectangle2: TIWRectangle
        Left = 456
        ExplicitLeft = 456
      end
      inherited IWRectangle3: TIWRectangle
        Width = 417
        ExplicitWidth = 417
      end
      inherited IWImageFile3: TIWImageFile
        Left = 690
        RenderSize = False
        StyleRenderOptions.RenderSize = False
        ExplicitLeft = 690
      end
      inherited TitleLabel: TIWLabel
        Width = 486
        RenderSize = False
        StyleRenderOptions.RenderSize = False
        AutoSize = True
        ExplicitWidth = 486
      end
      inherited langlink: TIWSiLink
        Left = 580
        ExplicitLeft = 580
      end
      inherited Smalltitle: TIWLabel
        Left = 887
        ExplicitLeft = 887
      end
      inherited HideBox: TIWImageFile
        Left = 1012
        ExplicitLeft = 1012
      end
      inherited SysReg: TIWRegion
        Color = 10526880
      end
      inherited CoReg: TIWRegion
        Color = 11100191
      end
    end
  end
  object siLangLinked1: TsiLangLinked
    Version = '6.5.3.2'
    StringsTypes.Strings = (
      'TIB_STRINGLIST'
      'TSTRINGLIST')
    LangDispatcher = RcDataMod.siLangDispatcher1
    LangDelim = 1
    LangNames.Strings = (
      'English')
    Language = 'English'
    ExcludedProperties.Strings = (
      'Category'
      'SecondaryShortCuts'
      'HelpKeyword'
      'InitialDir'
      'HelpKeyword'
      'ActivePage'
      'ImeName'
      'DefaultExt'
      'FileName'
      'FieldName'
      'PickList'
      'DisplayFormat'
      'EditMask'
      'KeyList'
      'LookupDisplayFields'
      'DropDownSpecRow'
      'TableName'
      'DatabaseName'
      'IndexName'
      'MasterFields'
      'SQL'
      'DeleteSQL'
      'UpdateSQL'
      'ModifySQL'
      'KeyFields'
      'LookupKeyFields'
      'LookupResultField'
      'DataField'
      'KeyField'
      'ListField')
    Left = 16
    Top = 152
    TranslationData = {
      73007400430061007000740069006F006E0073005F0055006E00690063006F00
      640065000D000A004E006500770043006F004C006100620065006C0001004E00
      65007700200043006F006D00700061006E00790020004900440001000D000A00
      6C0061006E0067006E0061006D0065006C006100620065006C0001004E006500
      770020004C0061006E006700750061006700650001000D000A00430072006500
      61007400650043006F00420074006E0001004300720065006100740065000100
      0D000A004C0061006E0067004E0061006D006500420074006E00010043007200
      650061007400650001000D000A00490057004C006100620065006C0031000100
      43006F006D00700061006E0079002000410064006D0069006E00690073007400
      72006100740069006F006E0001000D000A00490057004C006100620065006C00
      3300010043006F006D00700061006E00790001000D000A005600690065007700
      420074006E000100560069006500770001000D000A0043007000790062007400
      6E00010043006F007000790001000D000A0073007400480069006E0074007300
      5F0055006E00690063006F00640065000D000A005400730075005F0046006F00
      72006D004D00610069006E00010001000D000A00490057005200650067006900
      6F006E003100010001000D000A004900570052006500670069006F006E003200
      010001000D000A004E006500770043006F004C006100620065006C0001000100
      0D000A006C0061006E0067006E0061006D0065006C006100620065006C000100
      01000D000A0063006F004500640069007400010001000D000A00430072006500
      61007400650043006F00420074006E00010001000D000A004C0061006E006700
      4E0061006D006500420074006E00010001000D000A004C0061006E0067004E00
      61006D0065004500640069007400010001000D000A00490057004C0061006200
      65006C003100010001000D000A0049005700530069004C0069006E006B003100
      010001000D000A0049005700520065006300740061006E0067006C0065003200
      010001000D000A0049005700520065006300740061006E0067006C0065003100
      010001000D000A0043006F006D00700061006E00790043006F006D0062006F00
      010001000D000A00490057004C006100620065006C003300010001000D000A00
      5600690065007700420074006E00010001000D000A0043007000790062007400
      6E00010001000D000A00750073006500720066006F006F007400650072003100
      010001000D000A00410064006D0069006E004600720061006D00650054006900
      74006C0065003100010001000D000A007300740044006900730070006C006100
      79004C006100620065006C0073005F0055006E00690063006F00640065000D00
      0A007300740046006F006E00740073005F0055006E00690063006F0064006500
      0D000A00730074004D0075006C00740069004C0069006E00650073005F005500
      6E00690063006F00640065000D000A004900570052006500670069006F006E00
      31002E004500780074007200610054006100670050006100720061006D007300
      010001000D000A004900570052006500670069006F006E0032002E0045007800
      74007200610054006100670050006100720061006D007300010001000D000A00
      4E006500770043006F004C006100620065006C002E0045007800740072006100
      54006100670050006100720061006D007300010001000D000A006C0061006E00
      67006E0061006D0065006C006100620065006C002E0045007800740072006100
      54006100670050006100720061006D007300010001000D000A0063006F004500
      6400690074002E00450078007400720061005400610067005000610072006100
      6D007300010001000D000A0043007200650061007400650043006F0042007400
      6E002E004500780074007200610054006100670050006100720061006D007300
      010001000D000A004C0061006E0067004E0061006D006500420074006E002E00
      4500780074007200610054006100670050006100720061006D00730001000100
      0D000A004C0061006E0067004E0061006D00650045006400690074002E004500
      780074007200610054006100670050006100720061006D007300010001000D00
      0A00490057004C006100620065006C0031002E00450078007400720061005400
      6100670050006100720061006D007300010001000D000A004900570053006900
      4C0069006E006B0031002E004500780074007200610054006100670050006100
      720061006D007300010001000D000A0049005700520065006300740061006E00
      67006C00650032002E0045007800740072006100540061006700500061007200
      61006D007300010001000D000A0049005700520065006300740061006E006700
      6C00650031002E00450078007400720061005400610067005000610072006100
      6D007300010001000D000A0043006F006D00700061006E00790043006F006D00
      62006F002E004500780074007200610054006100670050006100720061006D00
      7300010001000D000A0043006F006D00700061006E00790043006F006D006200
      6F002E004900740065006D007300010001000D000A00490057004C0061006200
      65006C0033002E00450078007400720061005400610067005000610072006100
      6D007300010001000D000A005600690065007700420074006E002E0045007800
      74007200610054006100670050006100720061006D007300010001000D000A00
      430070007900620074006E002E00450078007400720061005400610067005000
      6100720061006D007300010001000D000A007300740053007400720069006E00
      670073005F0055006E00690063006F00640065000D000A00730074004F007400
      68006500720053007400720069006E00670073005F0055006E00690063006F00
      640065000D000A005400730075005F0046006F0072006D004D00610069006E00
      2E005400690074006C006500010001000D000A004E006500770043006F004C00
      6100620065006C002E0046007200690065006E0064006C0079004E0061006D00
      650001004E006500770043006F004C006100620065006C0001000D000A004E00
      6500770043006F004C006100620065006C002E00530074006100740075007300
      5400650078007400010001000D000A006C0061006E0067006E0061006D006500
      6C006100620065006C002E0046007200690065006E0064006C0079004E006100
      6D0065000100490057004C006100620065006C00320001000D000A006C006100
      6E0067006E0061006D0065006C006100620065006C002E005300740061007400
      750073005400650078007400010001000D000A0063006F004500640069007400
      2E0046007200690065006E0064006C0079004E0061006D006500010063006F00
      450064006900740001000D000A0063006F0045006400690074002E0053007400
      61007400750073005400650078007400010001000D000A0063006F0045006400
      690074002E005400650078007400010001000D000A0043007200650061007400
      650043006F00420074006E002E0043006F006E006600690072006D0061007400
      69006F006E000100430072006500610074006500200043006F006D0070006100
      6E0079003F0001000D000A0043007200650061007400650043006F0042007400
      6E002E0046007200690065006E0064006C0079004E0061006D00650001004300
      7200650061007400650043006F00420074006E0001000D000A00430072006500
      61007400650043006F00420074006E002E0048006F0074004B00650079000100
      01000D000A0043007200650061007400650043006F00420074006E002E005300
      740061007400750073005400650078007400010001000D000A004C0061006E00
      67004E0061006D006500420074006E002E0043006F006E006600690072006D00
      6100740069006F006E00010043007200650061007400650020004E0065007700
      20004C0061006E00670075006100670065003F0001000D000A004C0061006E00
      67004E0061006D006500420074006E002E0046007200690065006E0064006C00
      79004E0061006D00650001004900570042007500740074006F006E0031000100
      0D000A004C0061006E0067004E0061006D006500420074006E002E0048006F00
      74004B0065007900010001000D000A004C0061006E0067004E0061006D006500
      420074006E002E00530074006100740075007300540065007800740001000100
      0D000A004C0061006E0067004E0061006D00650045006400690074002E004600
      7200690065006E0064006C0079004E0061006D006500010063006F0045006400
      6900740001000D000A004C0061006E0067004E0061006D006500450064006900
      74002E005300740061007400750073005400650078007400010001000D000A00
      4C0061006E0067004E0061006D00650045006400690074002E00540065007800
      7400010001000D000A00490057004C006100620065006C0031002E0046007200
      690065006E0064006C0079004E0061006D0065000100490057004C0061006200
      65006C00310001000D000A00490057004C006100620065006C0031002E005300
      740061007400750073005400650078007400010001000D000A00490057005300
      69004C0069006E006B0031002E0043006F006E006600690072006D0061007400
      69006F006E00010001000D000A0049005700530069004C0069006E006B003100
      2E0046007200690065006E0064006C0079004E0061006D006500010049005700
      530069004C0069006E006B00310001000D000A0049005700530069004C006900
      6E006B0031002E004C0061006E006700460069006C006500010063006F006100
      64006D0069006E002E00730069006C0001000D000A0049005700530069004C00
      69006E006B0031002E0053007400610074007500730054006500780074000100
      01000D000A0049005700520065006300740061006E0067006C00650032002E00
      46007200690065006E0064006C0079004E0061006D0065000100490057005200
      65006300740061006E0067006C006500310001000D000A004900570052006500
      6300740061006E0067006C00650032002E005300740061007400750073005400
      650078007400010001000D000A0049005700520065006300740061006E006700
      6C00650032002E005400650078007400010001000D000A004900570052006500
      6300740061006E0067006C00650031002E0046007200690065006E0064006C00
      79004E0061006D006500010049005700520065006300740061006E0067006C00
      6500310001000D000A0049005700520065006300740061006E0067006C006500
      31002E005300740061007400750073005400650078007400010001000D000A00
      49005700520065006300740061006E0067006C00650031002E00540065007800
      7400010001000D000A0043006F006D00700061006E00790043006F006D006200
      6F002E0046007200690065006E0064006C0079004E0061006D00650001004300
      6F006D00700061006E00790043006F006D0062006F0001000D000A0043006F00
      6D00700061006E00790043006F006D0062006F002E004E006F00530065006C00
      65006300740069006F006E00540065007800740001002D002D0020004E006F00
      2000530065006C0065006300740069006F006E0020002D002D0001000D000A00
      43006F006D00700061006E00790043006F006D0062006F002E00530074006100
      7400750073005400650078007400010001000D000A00490057004C0061006200
      65006C0033002E0046007200690065006E0064006C0079004E0061006D006500
      0100490057004C006100620065006C00320001000D000A00490057004C006100
      620065006C0033002E0053007400610074007500730054006500780074000100
      01000D000A005600690065007700420074006E002E0043006F006E0066006900
      72006D006100740069006F006E00010001000D000A0056006900650077004200
      74006E002E0046007200690065006E0064006C0079004E0061006D0065000100
      43007200650061007400650043006F00420074006E0001000D000A0056006900
      65007700420074006E002E0048006F0074004B0065007900010001000D000A00
      5600690065007700420074006E002E0053007400610074007500730054006500
      78007400010001000D000A00430070007900620074006E002E0043006F006E00
      6600690072006D006100740069006F006E00010001000D000A00430070007900
      620074006E002E0046007200690065006E0064006C0079004E0061006D006500
      010043007200650061007400650043006F00420074006E0001000D000A004300
      70007900620074006E002E0048006F0074004B0065007900010001000D000A00
      430070007900620074006E002E00530074006100740075007300540065007800
      7400010001000D000A007300740043006F006C006C0065006300740069006F00
      6E0073005F0055006E00690063006F00640065000D000A007300740043006800
      6100720053006500740073005F0055006E00690063006F00640065000D000A00}
  end
end
