object formSend: TformSend
  Left = 0
  Top = 0
  Width = 1016
  Height = 575
  HorzScrollBar.Visible = False
  VertScrollBar.Visible = False
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
    Width = 1016
    Height = 114
    HorzScrollBar.Visible = False
    VertScrollBar.Visible = False
    Align = alTop
    TabOrder = 0
    ExplicitWidth = 1016
    ExplicitHeight = 114
    inherited IWFrameRegion: TIWRegion
      Width = 1016
      Height = 114
      TabOrder = 6
      ExplicitWidth = 1016
      ExplicitHeight = 114
      inherited IWRectangle1: TIWRectangle
        Left = 456
        Width = 2161
        ExplicitLeft = 456
        ExplicitWidth = 2161
      end
      inherited IWRectangle2: TIWRectangle
        Left = 456
        ExplicitLeft = 456
      end
      inherited IWRectangle3: TIWRectangle
        Width = 1893
        ExplicitWidth = 1893
      end
      inherited IWImageFile3: TIWImageFile
        Left = 678
        ExplicitLeft = 678
      end
      inherited langlink: TIWSiLink
        Left = 616
        ExplicitLeft = 616
      end
      inherited HideBox: TIWImageFile
        Left = 1002
        ExplicitLeft = 1002
      end
      inherited Smalltitle: TIWLabel
        Left = 877
        ExplicitLeft = 877
      end
      inherited EntityRegn: TIWRegion
        Color = 10526880
      end
      inherited SendRegion: TIWRegion
        Color = 11100191
      end
    end
  end
  inline userfooter1: Tuserfooter
    Left = 0
    Top = 546
    Width = 1016
    Height = 29
    HorzScrollBar.Visible = False
    Align = alBottom
    TabOrder = 1
    ExplicitTop = 546
    ExplicitWidth = 1016
    ExplicitHeight = 29
    inherited IWRegion1: TIWRegion
      Width = 1016
      Height = 29
      TabOrder = 4
      ExplicitWidth = 1016
      ExplicitHeight = 29
      inherited Cancel: TIWButton
        Left = 929
        Caption = 'Menu'
        OnClick = userfooter1CancelClick
        ExplicitLeft = 929
      end
      inherited Extra1: TIWButton
        Left = 841
        ExplicitLeft = 841
      end
      inherited Extra2: TIWButton
        Left = 753
        ExplicitLeft = 753
      end
      inherited fiwSiLink1: TIWSiLink
        Left = 681
        ExplicitLeft = 681
      end
    end
  end
  object IWRegion1: TIWRegion
    Left = 0
    Top = 114
    Width = 1016
    Height = 432
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
      1016
      432)
    object IWRegion2: TIWRegion
      Left = 249
      Top = 50
      Width = 540
      Height = 247
      Cursor = crAuto
      RenderInvisibleControls = False
      Anchors = [akTop]
      BorderOptions.NumericWidth = 0
      BorderOptions.BorderWidth = cbwNumeric
      BorderOptions.Style = cbsSolid
      BorderOptions.Color = clNone
      Color = 14202786
      ParentShowHint = False
      ShowHint = True
      ZIndex = 1000
      Splitter = False
      object IWRectangle1: TIWRectangle
        Left = 0
        Top = 3
        Width = 3
        Height = 244
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
        ExplicitHeight = 220
      end
      object IWRectangle2: TIWRectangle
        Left = 0
        Top = 0
        Width = 540
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
      object RequestLabel: TIWLabel
        Left = 171
        Top = 39
        Width = 238
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
        Alignment = taCenter
        BGColor = clNone
        Font.Color = clNone
        Font.Size = 10
        Font.Style = []
        NoWrap = False
        ConvertSpaces = False
        HasTabOrder = False
        AutoSize = False
        FriendlyName = 'RequestLabel'
        Caption = 'Publish Current Configuration ?'
        RawText = False
      end
      object CompanyLabel: TIWLabel
        Left = 8
        Top = 9
        Width = 457
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
        Alignment = taLeftJustify
        BGColor = clNone
        Font.Color = clNone
        Font.Size = 14
        Font.Style = [fsBold]
        NoWrap = False
        ConvertSpaces = False
        HasTabOrder = False
        AutoSize = False
        FriendlyName = 'CompanyLabel'
        Caption = 'CompanyLabel'
        RawText = False
      end
      object LiveGroups: TIWComboBox
        Left = 32
        Top = 149
        Width = 193
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
        TabOrder = 1
        ItemIndex = -1
        Sorted = False
        FriendlyName = 'LiveGroups'
      end
      object AllBtn: TIWButton
        Left = 64
        Top = 96
        Width = 121
        Height = 43
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
        Caption = 'Publish - Prod.'
        Confirmation = 'Update Live Sites?'
        DoSubmitValidation = True
        Color = clBtnFace
        Font.Color = clWebBLUE
        Font.Size = 10
        Font.Style = []
        FriendlyName = 'PubBtn'
        ScriptEvents = <>
        TabOrder = 0
        OnClick = AllBtnClick
      end
      object IWSiLink1: TIWSiLink
        Left = 8
        Top = 33
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
        TabOrder = 5
        RawText = False
        SiLangLinked = siLangLinked1
        LangFile = 'publish.sil'
        LangControl = RcDataMod.LangEditControl1
      end
      object TestBtn: TIWButton
        Left = 360
        Top = 96
        Width = 121
        Height = 43
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
        Caption = 'Publish - Test'
        DoSubmitValidation = True
        Color = clBtnFace
        Font.Color = clWebBLUE
        Font.Size = 10
        Font.Style = []
        FriendlyName = 'PubBtn'
        ScriptEvents = <>
        TabOrder = 2
        OnClick = TestBtnClick
      end
      object TestGroups: TIWComboBox
        Left = 326
        Top = 149
        Width = 177
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
        TabOrder = 3
        ItemIndex = -1
        Sorted = False
        FriendlyName = 'GroupItems'
      end
      object WhenCombo: TIWComboBox
        Left = 94
        Top = 185
        Width = 131
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
        TabOrder = 7
        ItemIndex = 0
        Items.Strings = (
          'Now'
          '12 AM (midnight)'
          '1 AM'
          '2 AM'
          '3 AM'
          '4 AM'
          '5 AM'
          '6 AM'
          '7 AM'
          '8 AM'
          '9 AM'
          '10 AM'
          '11 AM'
          '12 PM (midday)'
          '1 PM'
          '2 PM'
          '3 PM'
          '4 PM'
          '5 PM'
          '6 PM'
          '7 PM'
          '8 PM'
          '9 PM'
          '10 PM'
          '11 PM')
        Sorted = False
        FriendlyName = 'WhenCombo'
      end
      object WhenLabel: TIWLabel
        Left = 21
        Top = 186
        Width = 60
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
        AutoSize = False
        FriendlyName = 'RequestLabel'
        Caption = 'When :'
        RawText = False
      end
      object DayCombo: TIWComboBox
        Left = 55
        Top = 212
        Width = 170
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
        TabOrder = 8
        ItemIndex = -1
        Items.Strings = (
          'As time allows'
          'Tomorrow'
          'Tomorrow + 1 day'
          'Tomorrow + 2 days')
        Sorted = False
        FriendlyName = 'WhenCombo'
      end
      object IWLabel1: TIWLabel
        Left = 19
        Top = 212
        Width = 60
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
        AutoSize = False
        FriendlyName = 'RequestLabel'
        Caption = 'Day : '
        RawText = False
      end
    end
  end
  object siLangLinked1: TsiLangLinked
    Version = '6.5.4.7'
    StringsTypes.Strings = (
      'TIB_STRINGLIST'
      'TSTRINGLIST')
    SmartExcludeProps.Strings = (
      'TformSend.Hint')
    LangDispatcher = RcDataMod.siLangDispatcher1
    LangDelim = 1
    LangNames.Strings = (
      'English')
    Language = 'English'
    CommonContainer = RcDataMod.siLang1
    ExcludedProperties.Strings = (
      'Title'
      'FriendlyName'
      'StatusText'
      'Confirmation'
      'HotKey'
      'LangFile'
      'ExtraTagParams'
      'HelpKeyword')
    Left = 432
    Top = 144
    TranslationData = {
      73007400430061007000740069006F006E0073005F0055006E00690063006F00
      640065000D000A0052006500710075006500730074004C006100620065006C00
      01005000750062006C006900730068002000430075007200720065006E007400
      200043006F006E00660069006700750072006100740069006F006E0020003F00
      01000D000A0043006F006D00700061006E0079004C006100620065006C000100
      43006F006D00700061006E0079004C006100620065006C0001000D000A004100
      6C006C00420074006E0001005000750062006C0069007300680020002D002000
      500072006F0064002E0001000D000A005400650073007400420074006E000100
      5000750062006C0069007300680020002D002000540065007300740001000D00
      0A0073007400480069006E00740073005F0055006E00690063006F0064006500
      0D000A004E0061007600010001000D000A004400690073007400720069006200
      4600720061006D0065005400690074006C0065003100010001000D000A007500
      73006500720066006F006F007400650072003100010001000D000A0049005700
      52006500670069006F006E003100010001000D000A0049005700520065006700
      69006F006E003200010001000D000A0049005700520065006300740061006E00
      67006C0065003100010001000D000A0049005700520065006300740061006E00
      67006C0065003200010001000D000A0052006500710075006500730074004C00
      6100620065006C00010001000D000A0043006F006D00700061006E0079004C00
      6100620065006C00010001000D000A004C00690076006500470072006F007500
      70007300010001000D000A0041006C006C00420074006E00010001000D000A00
      49005700530069004C0069006E006B003100010001000D000A00540065007300
      7400420074006E00010001000D000A005400650073007400470072006F007500
      70007300010001000D000A007300740044006900730070006C00610079004C00
      6100620065006C0073005F0055006E00690063006F00640065000D000A007300
      740046006F006E00740073005F0055006E00690063006F00640065000D000A00
      730074004D0075006C00740069004C0069006E00650073005F0055006E006900
      63006F00640065000D000A004C00690076006500470072006F00750070007300
      2E004900740065006D007300010001000D000A00540065007300740047007200
      6F007500700073002E004900740065006D007300010001000D000A0073007400
      53007400720069006E00670073005F0055006E00690063006F00640065000D00
      0A00550070006400610074006500520065007100750065007300740065006400
      0100550070006400610074006500200052006500710075006500730074006500
      640001000D000A00550070006400610074006500520065006A00650063007400
      6500640001005500700064006100740065002000520065006A00650063007400
      6500640001000D000A0041006C006C00470072006F0075007000730001004100
      6C006C002000470072006F0075007000730001000D000A0041006C006C004C00
      690076006500470072006F00750070007300010041006C006C00200050007200
      6F00640075006300740069006F006E002000470072006F007500700073000100
      0D000A0041006C006C005400650073007400470072006F007500700073000100
      41006C006C00200054006500730074002000470072006F007500700073000100
      0D000A0049006E00760061006C0069006400540069006D006500010049006E00
      760061006C00690064002000540069006D00650001000D000A00730074004F00
      740068006500720053007400720069006E00670073005F0055006E0069006300
      6F00640065000D000A0049005700520065006300740061006E0067006C006500
      31002E005400650078007400010001000D000A00490057005200650063007400
      61006E0067006C00650032002E005400650078007400010001000D000A004C00
      690076006500470072006F007500700073002E004E006F00530065006C006500
      6300740069006F006E00540065007800740001002D002D0020004E006F002000
      530065006C0065006300740069006F006E0020002D002D0001000D000A005400
      650073007400470072006F007500700073002E004E006F00530065006C006500
      6300740069006F006E00540065007800740001002D002D0020004E006F002000
      530065006C0065006300740069006F006E0020002D002D0001000D000A007300
      740043006F006C006C0065006300740069006F006E0073005F0055006E006900
      63006F00640065000D000A007300740043006800610072005300650074007300
      5F0055006E00690063006F00640065000D000A00}
  end
end
