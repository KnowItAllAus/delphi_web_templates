object FormDistrib: TFormDistrib
  Left = 0
  Top = 0
  Width = 1016
  Height = 692
  ConnectionMode = cmAny
  SupportedBrowsers = [brIE, brNetscape7, brOpera, brSafari, brNetscape6]
  OnCreate = IWAppFormCreate
  BrowserSecurityCheck = True
  Background.Fixed = False
  HandleTabs = False
  LeftToRight = True
  LockUntilLoaded = True
  LockOnSubmit = True
  ShowHint = True
  XPTheme = True
  DesignLeft = 101
  DesignTop = 219
  inline userfooter1: Tuserfooter
    Left = 0
    Top = 663
    Width = 1016
    Height = 29
    HorzScrollBar.Visible = False
    Align = alBottom
    TabOrder = 0
    inherited IWRegion1: TIWRegion
      Height = 29
      DesignSize = (
        1016
        29)
      inherited Cancel: TIWButton
        Left = 929
        Caption = 'Menu'
        OnClick = userfooter1CancelClick
      end
      inherited Extra1: TIWButton
        Left = 841
      end
      inherited Extra2: TIWButton
        Left = 753
      end
      inherited fiwSiLink1: TIWSiLink
        Left = 681
      end
    end
  end
  object IWRegion1: TIWRegion
    Left = 0
    Top = 114
    Width = 1016
    Height = 549
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
      1016
      549)
    object IWRegion2: TIWRegion
      Left = 209
      Top = 32
      Width = 593
      Height = 491
      Cursor = crAuto
      Anchors = [akTop, akBottom]
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
        593
        491)
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
        Alignment = taLeftJustify
        BGColor = clNone
        Font.Color = clNone
        Font.FontName = 'Arial'
        Font.Size = 12
        Font.Style = [fsBold]
        NoWrap = False
        ConvertSpaces = False
        AutoSize = False
        FriendlyName = 'GrpLabel'
        Caption = 'Job Distribution'
        RawText = False
      end
      object JobGrid: TIWGrid
        Left = 16
        Top = 40
        Width = 561
        Height = 438
        Cursor = crAuto
        Anchors = [akLeft, akTop, akBottom]
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
        OnRenderCell = JobGridRenderCell
        UseFrame = True
        UseSize = True
        FriendlyName = 'JobGrid'
        ColumnCount = 3
        OnCellClick = JobGridCellClick
        RowCount = 1
        TabOrder = -1
        ShowEmptyCells = True
        ScrollToCurrentRow = False
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
        RenderSize = False
        Alignment = taLeftJustify
        Color = clNone
        Font.Color = clNone
        Font.Size = 10
        Font.Style = [fsUnderline]
        ScriptEvents = <>
        DoSubmitValidation = False
        FriendlyName = 'IWSiLink1'
        TabOrder = 1
        RawText = False
        SiLangLinked = silink_footer
        LangFile = 'JobDist.sil'
        LangControl = RcDataMod.LangEditControl1
      end
      object IWRectangle1: TIWRectangle
        Left = 0
        Top = 3
        Width = 3
        Height = 488
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
        Width = 593
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
  inline DistribFrameTitle1: TDistribFrameTitle
    Left = 0
    Top = 0
    Width = 1016
    Height = 114
    HorzScrollBar.Visible = False
    VertScrollBar.Visible = False
    Align = alTop
    TabOrder = 2
    inherited IWFrameRegion: TIWRegion
      Width = 1016
      Height = 114
      TabOrder = 2
      inherited IWRectangle1: TIWRectangle
        Left = 0
        Width = 1705
      end
      inherited IWRectangle2: TIWRectangle
        Left = 0
        Width = 4
      end
      inherited IWRectangle3: TIWRectangle
        Width = 2013
      end
      inherited IWImageFile3: TIWImageFile
        Left = 678
      end
      inherited langlink: TIWSiLink
        Left = 752
      end
      inherited HideBox: TIWImageFile
        Left = 1002
      end
      inherited Smalltitle: TIWLabel
        Left = 877
      end
      inherited JobRegn: TIWRegion
        Color = 11100191
      end
      inherited EntityRegn: TIWRegion
        Color = 10526880
      end
    end
  end
  object silink_footer: TsiLangLinked
    Version = '5.3.1.1'
    StringsTypes.Strings = (
      'TIB_STRINGLIST'
      'TSTRINGLIST')
    SmartExcludeProps.Strings = (
      'UserLabel.Caption'
      'Cancel.Caption'
      'Extra1.Caption'
      'Extra2.Caption'
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
      737443617074696F6E730D0A4772704C6162656C014A6F622044697374726962
      7574696F6E010D0A737448696E74730D0A7374446973706C61794C6162656C73
      0D0A7374466F6E74730D0A5475736572666F6F746572014D532053616E732053
      65726966010D0A73744D756C74694C696E65730D0A4957526567696F6E312E45
      78747261546167506172616D7301010D0A4957526567696F6E322E4578747261
      546167506172616D7301010D0A4772704C6162656C2E45787472615461675061
      72616D7301010D0A4A6F62477269642E4578747261546167506172616D730101
      0D0A495753694C696E6B312E4578747261546167506172616D7301010D0A4957
      52656374616E676C65312E4578747261546167506172616D7301010D0A495752
      656374616E676C65322E4578747261546167506172616D7301010D0A73745374
      72696E67730D0A477269642E4944014944010D0A477269642E4E616D65014E61
      6D65010D0A477269642E44657363014465736372697074696F6E010D0A73744F
      74686572537472696E67730D0A54466F726D446973747269622E48656C704B65
      79776F726401010D0A54466F726D446973747269622E5469746C6501010D0A75
      736572666F6F746572312E48656C704B6579776F726401010D0A495752656769
      6F6E312E48656C704B6579776F726401010D0A4957526567696F6E322E48656C
      704B6579776F726401010D0A4772704C6162656C2E467269656E646C794E616D
      65014772704C6162656C010D0A4772704C6162656C2E48656C704B6579776F72
      6401010D0A4772704C6162656C2E5374617475735465787401010D0A4A6F6247
      7269642E467269656E646C794E616D65014A6F6247726964010D0A4A6F624772
      69642E48656C704B6579776F726401010D0A4A6F62477269642E537461747573
      5465787401010D0A4A6F62477269642E53756D6D61727901010D0A495753694C
      696E6B312E436F6E6669726D6174696F6E01010D0A495753694C696E6B312E46
      7269656E646C794E616D6501495753694C696E6B31010D0A495753694C696E6B
      312E48656C704B6579776F726401010D0A495753694C696E6B312E4C616E6746
      696C65014A6F62446973742E73696C010D0A495753694C696E6B312E53746174
      75735465787401010D0A495752656374616E676C65312E467269656E646C794E
      616D6501495752656374616E676C6531010D0A495752656374616E676C65312E
      48656C704B6579776F726401010D0A495752656374616E676C65312E53746174
      75735465787401010D0A495752656374616E676C65312E5465787401010D0A49
      5752656374616E676C65322E467269656E646C794E616D650149575265637461
      6E676C6531010D0A495752656374616E676C65322E48656C704B6579776F7264
      01010D0A495752656374616E676C65322E5374617475735465787401010D0A49
      5752656374616E676C65322E5465787401010D0A446973747269624672616D65
      5469746C65312E48656C704B6579776F726401010D0A7374436F6C6C65637469
      6F6E730D0A737443686172536574730D0A5475736572666F6F74657201444546
      41554C545F43484152534554010D0A}
  end
end
