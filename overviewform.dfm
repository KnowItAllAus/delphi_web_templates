object FormOverview: TFormOverview
  Left = 0
  Top = 0
  Width = 1080
  Height = 625
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
  DesignLeft = 108
  DesignTop = 234
  inline userfooter1: Tuserfooter
    Left = 0
    Top = 596
    Width = 1080
    Height = 29
    HorzScrollBar.Visible = False
    Align = alBottom
    TabOrder = 0
    inherited IWRegion1: TIWRegion
      Width = 1080
      Height = 29
      inherited IWRectangle1: TIWRectangle
        Left = 704
      end
      inherited IWRectangle4: TIWRectangle
        Width = 1696
      end
      inherited IWRectangle6: TIWRectangle
        Width = 662
      end
      inherited Cancel: TIWButton
        Left = 997
        Caption = 'Menu'
        OnClick = userfooter1CancelClick
      end
      inherited Extra1: TIWButton
        Left = 911
      end
      inherited Extra2: TIWButton
        Left = 826
        FriendlyName = 'Create'
      end
      inherited fiwSiLink1: TIWSiLink
        Left = 746
      end
    end
  end
  object IWRegion1: TIWRegion
    Left = 0
    Top = 117
    Width = 1080
    Height = 479
    Cursor = crAuto
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
      1080
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
      RenderSize = False
      Alignment = taLeftJustify
      Color = clNone
      Font.Color = clNone
      Font.Size = 10
      Font.Style = [fsUnderline]
      ScriptEvents = <>
      DoSubmitValidation = False
      FriendlyName = 'IWSiLink1'
      TabOrder = 3
      RawText = False
      SiLangLinked = silanglinked1
      LangFile = 'entities.sil'
      LangControl = RcDataMod.LangEditControl1
    end
    object BodyRegion: TIWRegion
      Left = 104
      Top = 21
      Width = 866
      Height = 439
      Cursor = crAuto
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
        866
        439)
      object IWRectangle2: TIWRectangle
        Left = 1
        Top = 1
        Width = 864
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
        Alignment = taLeftJustify
        BGColor = clNone
        Font.Color = clNone
        Font.FontName = 'Arial'
        Font.Size = 12
        Font.Style = [fsBold]
        NoWrap = False
        ConvertSpaces = False
        AutoSize = False
        FriendlyName = 'ImageLabel'
        Caption = 'System Overview'
        RawText = False
      end
      object OverGrid: TIWGrid
        Left = 30
        Top = 33
        Width = 818
        Height = 388
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
        OnRenderCell = OverGridRenderCell
        UseFrame = True
        UseSize = True
        FriendlyName = 'OverGrid'
        ColumnCount = 3
        OnCellClick = OverGridCellClick
        RowCount = 1
        TabOrder = -1
        ShowEmptyCells = True
        ScrollToCurrentRow = False
      end
      object storebtn: TIWRadioButton
        Left = 205
        Top = 10
        Width = 106
        Height = 21
        Cursor = crAuto
        IW50Hint = False
        ParentShowHint = False
        ShowHint = True
        ZIndex = 0
        RenderSize = False
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
      end
      object jobbtn: TIWRadioButton
        Left = 330
        Top = 10
        Width = 121
        Height = 21
        Cursor = crAuto
        IW50Hint = False
        ParentShowHint = False
        ShowHint = True
        ZIndex = 0
        RenderSize = False
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
      end
    end
  end
  inline DistribFrameTitle1: TDistribFrameTitle
    Left = 0
    Top = 0
    Width = 1080
    Height = 117
    HorzScrollBar.Visible = False
    VertScrollBar.Visible = False
    Align = alTop
    TabOrder = 2
    inherited IWFrameRegion: TIWRegion
      Width = 1080
      Height = 117
      TabOrder = 4
      inherited titleimage: TIWImageFile
        Left = 41
      end
      inherited IWRectangle1: TIWRectangle
        Top = 92
        Width = 2681
      end
      inherited IWRectangle2: TIWRectangle
        Top = 93
        Width = 4
      end
      inherited IWRectangle3: TIWRectangle
        Top = 97
        Width = 2036
      end
      inherited IWImageFile3: TIWImageFile
        Left = 694
      end
      inherited langlink: TIWSiLink
        Left = 683
      end
      inherited HideBox: TIWImageFile
        Left = 1066
        Top = 97
      end
      inherited Smalltitle: TIWLabel
        Left = 941
        Top = 97
      end
      inherited JobRegn: TIWRegion
        Top = 97
      end
      inherited GrpRegn: TIWRegion
        Top = 97
      end
      inherited EntityRegn: TIWRegion
        Top = 97
      end
      inherited SendRegion: TIWRegion
        Top = 97
      end
      inherited statusregn: TIWRegion
        Top = 97
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
    Version = '5.3.1.1'
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
      737443617074696F6E730D0A496D6167654C6162656C0153797374656D204F76
      657276696577010D0A73746F726562746E0142792053746F726573010D0A6A6F
      6262746E014279204A6F6273010D0A737448696E74730D0A7374446973706C61
      794C6162656C730D0A7374466F6E74730D0A5475736572666F6F746572014D53
      2053616E73205365726966010D0A73744D756C74694C696E65730D0A49575265
      67696F6E312E4578747261546167506172616D7301010D0A495753694C696E6B
      312E4578747261546167506172616D7301010D0A426F6479526567696F6E2E45
      78747261546167506172616D7301010D0A495752656374616E676C65322E4578
      747261546167506172616D7301010D0A495752656374616E676C65312E457874
      7261546167506172616D7301010D0A496D6167654C6162656C2E457874726154
      6167506172616D7301010D0A4F766572477269642E4578747261546167506172
      616D7301010D0A73746F726562746E2E4578747261546167506172616D730101
      0D0A6A6F6262746E2E4578747261546167506172616D7301010D0A7374537472
      696E67730D0A477269642E4E616D65014E616D65010D0A477269642E49440149
      44010D0A477269642E44656661756C740144656661756C74010D0A477269642E
      4465736372697074696F6E014465736372697074696F6E010D0A477269642E53
      746F72650153746F7265010D0A477269642E4A6F62014A6F62010D0A47726964
      2E47726F75700147726F757073010D0A73744F74686572537472696E67730D0A
      54466F726D4F766572766965772E48656C704B6579776F726401010D0A54466F
      726D4F766572766965772E5469746C6501010D0A75736572666F6F746572312E
      48656C704B6579776F726401010D0A4957526567696F6E312E48656C704B6579
      776F726401010D0A495753694C696E6B312E436F6E6669726D6174696F6E0101
      0D0A495753694C696E6B312E467269656E646C794E616D6501495753694C696E
      6B31010D0A495753694C696E6B312E48656C704B6579776F726401010D0A4957
      53694C696E6B312E4C616E6746696C6501656E7469746965732E73696C010D0A
      495753694C696E6B312E5374617475735465787401010D0A426F647952656769
      6F6E2E48656C704B6579776F726401010D0A495752656374616E676C65322E46
      7269656E646C794E616D6501495752656374616E676C6531010D0A4957526563
      74616E676C65322E48656C704B6579776F726401010D0A495752656374616E67
      6C65322E5374617475735465787401010D0A495752656374616E676C65322E54
      65787401010D0A495752656374616E676C65312E467269656E646C794E616D65
      01495752656374616E676C6531010D0A495752656374616E676C65312E48656C
      704B6579776F726401010D0A495752656374616E676C65312E53746174757354
      65787401010D0A495752656374616E676C65312E5465787401010D0A496D6167
      654C6162656C2E467269656E646C794E616D6501496D6167654C6162656C010D
      0A496D6167654C6162656C2E48656C704B6579776F726401010D0A496D616765
      4C6162656C2E5374617475735465787401010D0A4F766572477269642E467269
      656E646C794E616D65014F76657247726964010D0A4F766572477269642E4865
      6C704B6579776F726401010D0A4F766572477269642E53746174757354657874
      01010D0A4F766572477269642E53756D6D61727901010D0A4469737472696246
      72616D655469746C65312E48656C704B6579776F726401010D0A73746F726562
      746E2E467269656E646C794E616D65014957526164696F427574746F6E31010D
      0A73746F726562746E2E47726F7570016E6F2067726F7570010D0A73746F7265
      62746E2E48656C704B6579776F726401010D0A73746F726562746E2E53746174
      75735465787401010D0A73746F726562746E2E56616C7565014957526164696F
      427574746F6E31010D0A6A6F6262746E2E467269656E646C794E616D65014957
      526164696F427574746F6E32010D0A6A6F6262746E2E47726F7570016E6F2067
      726F7570010D0A6A6F6262746E2E48656C704B6579776F726401010D0A6A6F62
      62746E2E5374617475735465787401010D0A6A6F6262746E2E56616C75650149
      57526164696F427574746F6E31010D0A7374436F6C6C656374696F6E730D0A73
      7443686172536574730D0A5475736572666F6F7465720144454641554C545F43
      484152534554010D0A}
  end
end
