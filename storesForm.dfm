object formStores: TformStores
  Left = 0
  Top = 0
  Width = 1024
  Height = 656
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
  DesignLeft = 688
  DesignTop = 249
  object IWRegion1: TIWRegion
    Left = 0
    Top = 111
    Width = 1024
    Height = 517
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
      517)
    object IWSiLink1: TIWSiLink
      Left = 0
      Top = 0
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
      LangFile = 'stores.sil'
      LangControl = RcDataMod.LangEditControl1
    end
    object IWRegion2: TIWRegion
      Left = 48
      Top = 24
      Width = 953
      Height = 463
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
        463)
      object StoreGrid: TIWGrid
        Left = 56
        Top = 56
        Width = 849
        Height = 359
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
        OnRenderCell = StoreGridRenderCell
        UseFrame = True
        UseSize = True
        FriendlyName = 'StoreGrid'
        ColumnCount = 11
        OnCellClick = StoreGridCellClick
        RowCount = 1
        ShowEmptyCells = True
        ShowInvisibleRows = True
        ScrollToCurrentRow = False
      end
      object StoreLabel: TIWLabel
        Left = 72
        Top = 24
        Width = 113
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
        Caption = 'All Stores'
        RawText = False
      end
      object InsertBtn: TIWButton
        Left = 744
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
        Caption = 'New'
        DoSubmitValidation = True
        Color = clBtnFace
        Font.Color = clWebBLUE
        Font.Size = 10
        Font.Style = []
        FriendlyName = 'InsertBtn'
        ScriptEvents = <>
        TabOrder = 0
        OnClick = InsertBtnClick
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
        Top = 422
        Width = 209
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
        Top = 422
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
        Alignment = taRightJustify
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
        Top = 420
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
        OnChange = RefreshBtnClick
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
        Top = 422
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
        Height = 460
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
    end
  end
  inline userfooter1: Tuserfooter
    Left = 0
    Top = 628
    Width = 1024
    Height = 28
    HorzScrollBar.Visible = False
    Align = alBottom
    TabOrder = 1
    inherited IWRegion1: TIWRegion
      Width = 1024
      TabOrder = 3
      DesignSize = (
        1024
        28)
      inherited IWRectangle1: TIWRectangle
        Left = 608
        Width = 417
      end
      inherited IWRectangle4: TIWRectangle
        Width = 1640
      end
      inherited IWRectangle6: TIWRectangle
        Width = 566
      end
      inherited Cancel: TIWButton
        Left = 936
        Caption = 'Menu'
        OnClick = userfooter1CancelClick
      end
      inherited Extra1: TIWButton
        Left = 762
      end
      inherited Extra2: TIWButton
        Left = 849
      end
      inherited fiwSiLink1: TIWSiLink
        Left = 672
      end
    end
  end
  inline AdminFrameTitle1: TAdminFrameTitle
    Left = 0
    Top = 0
    Width = 1024
    Height = 111
    HorzScrollBar.Visible = False
    VertScrollBar.Visible = False
    Align = alTop
    TabOrder = 2
    inherited IWFrameRegion: TIWRegion
      Width = 1024
      Height = 111
      TabOrder = 5
      DesignSize = (
        1024
        111)
      inherited IWRectangle1: TIWRectangle
        Left = 152
        Width = 2472
      end
      inherited IWRectangle2: TIWRectangle
        Left = 152
      end
      inherited IWRectangle3: TIWRectangle
        Width = 416
      end
      inherited IWImageFile3: TIWImageFile
        Left = 630
      end
      inherited langlink: TIWSiLink
        Left = 519
      end
      inherited Smalltitle: TIWLabel
        Left = 884
      end
      inherited HideBox: TIWImageFile
        Left = 1009
      end
      inherited SysReg: TIWRegion
        Color = 10526880
      end
      inherited StoreReg: TIWRegion
        Color = 11100191
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
    Top = 128
    TranslationData = {
      737443617074696F6E730D0A53746F72654772696401010D0A53746F72654C61
      62656C01416C6C2053746F726573010D0A496E7365727442746E014E6577010D
      0A5265667265736842746E0152656672657368010D0A49574C6162656C310159
      656C6C6F773D5570646174652050656E64696E6720010D0A49574C6162656C33
      015265643D4F66666C696E65203E010D0A49574C6162656C32016D696E757465
      73010D0A737448696E74730D0A7374446973706C61794C6162656C730D0A7374
      466F6E74730D0A73744D756C74694C696E65730D0A4957526567696F6E312E45
      78747261546167506172616D7301010D0A495753694C696E6B312E4578747261
      546167506172616D7301010D0A4957526567696F6E322E457874726154616750
      6172616D7301010D0A53746F7265477269642E4578747261546167506172616D
      7301010D0A53746F72654C6162656C2E4578747261546167506172616D730101
      0D0A496E7365727442746E2E4578747261546167506172616D7301010D0A5265
      667265736842746E2E4578747261546167506172616D7301010D0A49574C6162
      656C312E4578747261546167506172616D7301010D0A49574C6162656C332E45
      78747261546167506172616D7301010D0A4F6666436F6D626F2E457874726154
      6167506172616D7301010D0A4F6666436F6D626F2E4974656D73013132302C36
      302C31352C35010D0A49574C6162656C322E4578747261546167506172616D73
      01010D0A495752656374616E676C65312E4578747261546167506172616D7301
      010D0A495752656374616E676C65322E4578747261546167506172616D730101
      0D0A7374537472696E67730D0A477269642E4964014944010D0A477269642E4E
      616D65014E616D65010D0A477269642E504F5301504F53010D0A477269642E45
      6E61626C656401456E61626C6564010D0A477269642E5072696E746572015072
      696E746572010D0A477269642E43666701436667010D0A477269642E53656E74
      0153656E74010D0A477269642E53697A650153697A65010D0A477269642E5075
      626C6973686564015075626C6973686564010D0A477269642E436F6D70616E79
      01436F6D70616E79010D0A477269642E59657301596573010D0A477269642E4E
      6F014E6F010D0A477269642E4D4143014D4143010D0A477269642E5075626C69
      73686174015075626C697368202855544329010D0A73744F7468657253747269
      6E67730D0A54666F726D53746F7265732E48656C704B6579776F726401010D0A
      4957526567696F6E312E48656C704B6579776F726401010D0A495753694C696E
      6B312E48656C704B6579776F726401010D0A4957526567696F6E322E48656C70
      4B6579776F726401010D0A53746F7265477269642E48656C704B6579776F7264
      01010D0A53746F72654C6162656C2E48656C704B6579776F726401010D0A496E
      7365727442746E2E48656C704B6579776F726401010D0A526566726573684274
      6E2E48656C704B6579776F726401010D0A49574C6162656C312E48656C704B65
      79776F726401010D0A49574C6162656C332E48656C704B6579776F726401010D
      0A4F6666436F6D626F2E48656C704B6579776F726401010D0A49574C6162656C
      322E48656C704B6579776F726401010D0A495752656374616E676C65312E4865
      6C704B6579776F726401010D0A495752656374616E676C65312E546578740101
      0D0A495752656374616E676C65322E48656C704B6579776F726401010D0A4957
      52656374616E676C65322E5465787401010D0A75736572666F6F746572312E48
      656C704B6579776F726401010D0A41646D696E4672616D655469746C65312E48
      656C704B6579776F726401010D0A7374436F6C6C656374696F6E730D0A737443
      686172536574730D0A}
  end
end
