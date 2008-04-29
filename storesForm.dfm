object formStores: TformStores
  Left = 0
  Top = 0
  Width = 1088
  Height = 828
  ConnectionMode = cmAny
  SupportedBrowsers = [brIE, brNetscape7, brOpera, brSafari, brNetscape6]
  OnCreate = IWAppFormCreate
  OnDestroy = IWAppFormDestroy
  BrowserSecurityCheck = True
  Background.Fixed = False
  HandleTabs = False
  LeftToRight = True
  LockUntilLoaded = True
  LockOnSubmit = True
  ShowHint = True
  XPTheme = True
  DesignLeft = 83
  DesignTop = 94
  object IWRegion1: TIWRegion
    Left = 0
    Top = 111
    Width = 1088
    Height = 689
    Cursor = crAuto
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
      1088
      689)
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
      RenderSize = False
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
      Width = 1017
      Height = 635
      Cursor = crAuto
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
        1017
        635)
      object StoreGrid: TIWGrid
        Left = 56
        Top = 56
        Width = 913
        Height = 531
        Cursor = crAuto
        Anchors = [akLeft, akTop, akRight, akBottom]
        IW50Hint = False
        ParentShowHint = False
        ShowHint = True
        ZIndex = 0
        RenderSize = False
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
        ColumnCount = 10
        OnCellClick = StoreGridCellClick
        RowCount = 1
        TabOrder = -1
        ShowEmptyCells = True
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
        Alignment = taLeftJustify
        BGColor = clNone
        Font.Color = clNone
        Font.FontName = 'Arial'
        Font.Size = 12
        Font.Style = [fsBold]
        NoWrap = False
        ConvertSpaces = False
        AutoSize = False
        FriendlyName = 'StoreLabel'
        Caption = 'All Stores'
        RawText = False
      end
      object InsertBtn: TIWButton
        Left = 808
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
        Left = 896
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
        Top = 594
        Width = 161
        Height = 21
        Cursor = crAuto
        Anchors = [akLeft, akBottom]
        IW50Hint = False
        ParentShowHint = False
        ShowHint = True
        ZIndex = 0
        RenderSize = True
        Alignment = taLeftJustify
        BGColor = clNone
        Font.Color = clNone
        Font.Size = 10
        Font.Style = []
        NoWrap = False
        ConvertSpaces = False
        AutoSize = False
        FriendlyName = 'IWLabel1'
        Caption = 'Yellow=Update Pending '
        RawText = False
      end
      object IWLabel3: TIWLabel
        Left = 760
        Top = 594
        Width = 89
        Height = 21
        Cursor = crAuto
        Anchors = [akRight, akBottom]
        IW50Hint = False
        ParentShowHint = False
        ShowHint = True
        ZIndex = 0
        RenderSize = True
        Alignment = taLeftJustify
        BGColor = clNone
        Font.Color = clNone
        Font.Size = 10
        Font.Style = []
        NoWrap = False
        ConvertSpaces = False
        AutoSize = False
        FriendlyName = 'IWLabel1'
        Caption = 'Red=Offline >'
        RawText = False
      end
      object OffCombo: TIWComboBox
        Left = 856
        Top = 592
        Width = 49
        Height = 21
        Cursor = crAuto
        Anchors = [akRight, akBottom]
        IW50Hint = False
        ParentShowHint = False
        ShowHint = True
        ZIndex = 0
        RenderSize = True
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
        Left = 920
        Top = 594
        Width = 57
        Height = 21
        Cursor = crAuto
        Anchors = [akRight, akBottom]
        IW50Hint = False
        ParentShowHint = False
        ShowHint = True
        ZIndex = 0
        RenderSize = True
        Alignment = taLeftJustify
        BGColor = clNone
        Font.Color = clNone
        Font.Size = 10
        Font.Style = []
        NoWrap = False
        ConvertSpaces = False
        AutoSize = False
        FriendlyName = 'IWLabel1'
        Caption = 'minutes'
        RawText = False
      end
      object IWRectangle1: TIWRectangle
        Left = 0
        Top = 3
        Width = 3
        Height = 632
        Cursor = crAuto
        Align = alLeft
        IW50Hint = False
        ParentShowHint = False
        ShowHint = True
        ZIndex = 0
        RenderSize = True
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
        Width = 1017
        Height = 3
        Cursor = crAuto
        Align = alTop
        IW50Hint = False
        ParentShowHint = False
        ShowHint = True
        ZIndex = 0
        RenderSize = True
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
    Top = 800
    Width = 1088
    Height = 28
    HorzScrollBar.Visible = False
    Align = alBottom
    TabOrder = 1
    inherited IWRegion1: TIWRegion
      Width = 1088
      TabOrder = 3
      inherited IWRectangle1: TIWRectangle
        Left = 672
        Width = 417
      end
      inherited IWRectangle4: TIWRectangle
        Width = 1704
      end
      inherited IWRectangle6: TIWRectangle
        Width = 630
      end
      inherited Cancel: TIWButton
        Left = 1000
        Caption = 'Menu'
        OnClick = userfooter1CancelClick
      end
      inherited Extra1: TIWButton
        Left = 826
      end
      inherited Extra2: TIWButton
        Left = 913
      end
      inherited fiwSiLink1: TIWSiLink
        Left = 736
      end
    end
  end
  inline AdminFrameTitle1: TAdminFrameTitle
    Left = 0
    Top = 0
    Width = 1088
    Height = 111
    HorzScrollBar.Visible = False
    VertScrollBar.Visible = False
    Align = alTop
    TabOrder = 2
    inherited IWFrameRegion: TIWRegion
      Width = 1088
      Height = 111
      TabOrder = 5
      inherited IWRectangle1: TIWRectangle
        Left = 152
        Width = 2536
      end
      inherited IWRectangle2: TIWRectangle
        Left = 152
      end
      inherited IWRectangle3: TIWRectangle
        Width = 480
      end
      inherited Smalltitle: TIWLabel
        Left = 948
      end
      inherited HideBox: TIWImageFile
        Left = 1073
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
      01436F6D70616E79010D0A73744F74686572537472696E67730D0A54666F726D
      53746F7265732E48656C704B6579776F726401010D0A4957526567696F6E312E
      48656C704B6579776F726401010D0A495753694C696E6B312E48656C704B6579
      776F726401010D0A4957526567696F6E322E48656C704B6579776F726401010D
      0A53746F7265477269642E48656C704B6579776F726401010D0A53746F72654C
      6162656C2E48656C704B6579776F726401010D0A496E7365727442746E2E4865
      6C704B6579776F726401010D0A5265667265736842746E2E48656C704B657977
      6F726401010D0A49574C6162656C312E48656C704B6579776F726401010D0A49
      574C6162656C332E48656C704B6579776F726401010D0A4F6666436F6D626F2E
      48656C704B6579776F726401010D0A49574C6162656C322E48656C704B657977
      6F726401010D0A495752656374616E676C65312E48656C704B6579776F726401
      010D0A495752656374616E676C65312E5465787401010D0A495752656374616E
      676C65322E48656C704B6579776F726401010D0A495752656374616E676C6532
      2E5465787401010D0A75736572666F6F746572312E48656C704B6579776F7264
      01010D0A7374436F6C6C656374696F6E730D0A737443686172536574730D0A}
  end
end
