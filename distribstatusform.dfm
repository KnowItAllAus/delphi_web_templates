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
  DesignLeft = 622
  DesignTop = 255
  inline DistribFrameTitle1: TDistribFrameTitle
    Left = 0
    Top = 0
    Width = 1024
    Height = 114
    HorzScrollBar.Visible = False
    VertScrollBar.Visible = False
    Align = alTop
    TabOrder = 0
    inherited IWFrameRegion: TIWRegion
      Height = 114
      TabOrder = 3
      DesignSize = (
        1024
        114)
      inherited IWRectangle1: TIWRectangle
        Left = 608
        Width = 429
      end
      inherited IWRectangle2: TIWRectangle
        Left = 608
      end
      inherited IWRectangle3: TIWRectangle
        Width = 264
      end
      inherited IWImageFile3: TIWImageFile
        Left = 630
      end
      inherited langlink: TIWSiLink
        Left = 522
        Top = 1
      end
      inherited HideBox: TIWImageFile
        Left = 1010
      end
      inherited Smalltitle: TIWLabel
        Left = 885
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
    inherited IWRegion1: TIWRegion
      Width = 1024
      Height = 29
      TabOrder = 4
      DesignSize = (
        1024
        29)
      inherited IWRectangle1: TIWRectangle
        Left = 648
      end
      inherited IWRectangle4: TIWRectangle
        Width = 1640
      end
      inherited IWRectangle6: TIWRectangle
        Width = 606
      end
      inherited Cancel: TIWButton
        Left = 939
        Caption = 'Menu'
        OnClick = userfooter1CancelClick
      end
      inherited Extra1: TIWButton
        Left = 851
      end
      inherited Extra2: TIWButton
        Left = 763
      end
      inherited fiwSiLink1: TIWSiLink
        Left = 723
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
    Version = '5.3.1.1'
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
      737443617074696F6E730D0A53746F72654C6162656C0153746F726520537461
      747573010D0A5265667265736842746E0152656672657368010D0A49574C6162
      656C310159656C6C6F773D5570646174652050656E64696E6720010D0A49574C
      6162656C33015265643D4F66666C696E65203E010D0A49574C6162656C32016D
      696E75746573010D0A616476616E636564626F7801416476616E636564010D0A
      73746F72654772696401010D0A737448696E74730D0A7374446973706C61794C
      6162656C730D0A7374466F6E74730D0A73744D756C74694C696E65730D0A4957
      526567696F6E312E4578747261546167506172616D7301010D0A495752656769
      6F6E322E4578747261546167506172616D7301010D0A53746F72654C6162656C
      2E4578747261546167506172616D7301010D0A495753694C696E6B312E457874
      7261546167506172616D7301010D0A5265667265736842746E2E457874726154
      6167506172616D7301010D0A49574C6162656C312E4578747261546167506172
      616D7301010D0A49574C6162656C332E4578747261546167506172616D730101
      0D0A4F6666436F6D626F2E4578747261546167506172616D7301010D0A4F6666
      436F6D626F2E4974656D73013132302C36302C31352C35010D0A49574C616265
      6C322E4578747261546167506172616D7301010D0A495752656374616E676C65
      312E4578747261546167506172616D7301010D0A495752656374616E676C6532
      2E4578747261546167506172616D7301010D0A616476616E636564626F782E45
      78747261546167506172616D7301010D0A73746F7265477269642E4578747261
      546167506172616D7301010D0A7374537472696E67730D0A477269642E496401
      4944010D0A477269642E4E616D65014E616D65010D0A477269642E504F530150
      4F53010D0A477269642E456E61626C656401456E61626C6564010D0A47726964
      2E5072696E746572015072696E746572010D0A477269642E4366670143666701
      0D0A477269642E53656E740153656E74010D0A477269642E53697A650153697A
      65010D0A477269642E5075626C6973686564015075626C6973686564010D0A47
      7269642E4C6F636174696F6E014C6F636174696F6E010D0A477269642E436F6D
      6D7341676501436F6D6D7320416765010D0A73744F74686572537472696E6773
      0D0A54666F726D446973747269625374617475732E48656C704B6579776F7264
      01010D0A446973747269624672616D655469746C65312E48656C704B6579776F
      726401010D0A75736572666F6F746572312E48656C704B6579776F726401010D
      0A4957526567696F6E312E48656C704B6579776F726401010D0A495752656769
      6F6E322E48656C704B6579776F726401010D0A53746F72654C6162656C2E4865
      6C704B6579776F726401010D0A495753694C696E6B312E48656C704B6579776F
      726401010D0A5265667265736842746E2E48656C704B6579776F726401010D0A
      49574C6162656C312E48656C704B6579776F726401010D0A49574C6162656C33
      2E48656C704B6579776F726401010D0A4F6666436F6D626F2E48656C704B6579
      776F726401010D0A49574C6162656C322E48656C704B6579776F726401010D0A
      495752656374616E676C65312E48656C704B6579776F726401010D0A49575265
      6374616E676C65312E5465787401010D0A495752656374616E676C65322E4865
      6C704B6579776F726401010D0A495752656374616E676C65322E546578740101
      0D0A54666F726D446973747269625374617475732E5468656D6501010D0A5374
      6F72654C6162656C2E43737301010D0A53746F72654C6162656C2E536B696E49
      6401010D0A495753694C696E6B312E43737301010D0A495753694C696E6B312E
      536B696E496401010D0A5265667265736842746E2E43737301010D0A52656672
      65736842746E2E536B696E496401010D0A49574C6162656C312E43737301010D
      0A49574C6162656C312E536B696E496401010D0A49574C6162656C332E437373
      01010D0A49574C6162656C332E536B696E496401010D0A4F6666436F6D626F2E
      43737301010D0A4F6666436F6D626F2E536B696E496401010D0A49574C616265
      6C322E43737301010D0A49574C6162656C322E536B696E496401010D0A495752
      656374616E676C65312E43737301010D0A495752656374616E676C65312E536B
      696E496401010D0A495752656374616E676C65322E43737301010D0A49575265
      6374616E676C65322E536B696E496401010D0A616476616E636564626F782E43
      737301010D0A616476616E636564626F782E48656C704B6579776F726401010D
      0A616476616E636564626F782E536B696E496401010D0A73746F726547726964
      2E43737301010D0A73746F7265477269642E48656C704B6579776F726401010D
      0A73746F7265477269642E536B696E496401010D0A7374436F6C6C656374696F
      6E730D0A737443686172536574730D0A}
  end
end
