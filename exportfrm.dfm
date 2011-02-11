object FormExport: TFormExport
  Left = 0
  Top = 0
  Width = 1029
  Height = 692
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
  DesignLeft = 206
  DesignTop = 215
  inline userfooter1: Tuserfooter
    Left = 0
    Top = 663
    Width = 1029
    Height = 29
    HorzScrollBar.Visible = False
    Align = alBottom
    TabOrder = 0
    inherited IWRegion1: TIWRegion
      Width = 1029
      Height = 29
      TabOrder = 4
      DesignSize = (
        1029
        29)
      inherited IWRectangle1: TIWRectangle
        Left = 653
      end
      inherited IWRectangle4: TIWRectangle
        Width = 1645
      end
      inherited IWRectangle6: TIWRectangle
        Width = 611
      end
      inherited Cancel: TIWButton
        Left = 942
        Caption = 'Menu'
        OnClick = userfooter1CancelClick
      end
      inherited Extra1: TIWButton
        Left = 854
      end
      inherited Extra2: TIWButton
        Left = 766
      end
      inherited fiwSiLink1: TIWSiLink
        Left = 694
      end
    end
  end
  object IWRegion1: TIWRegion
    Left = 0
    Top = 114
    Width = 1029
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
      1029
      549)
    object IWRegion2: TIWRegion
      Left = 215
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
        Caption = 'Job Exports'
        RawText = False
      end
      object JobGrid: TIWGrid
        Left = 16
        Top = 40
        Width = 561
        Height = 346
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
        ColumnCount = 5
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
      object JobCombo: TIWComboBox
        Left = 116
        Top = 397
        Width = 215
        Height = 21
        Cursor = crAuto
        Anchors = [akLeft, akBottom]
        IW50Hint = False
        ParentShowHint = False
        ShowHint = True
        ZIndex = 1
        RenderSize = True
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
        Top = 398
        Width = 83
        Height = 19
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
        Font.FontName = 'Arial'
        Font.Size = 12
        Font.Style = []
        NoWrap = False
        ConvertSpaces = False
        AutoSize = False
        FriendlyName = 'GrpLabel'
        Caption = 'Job'
        RawText = False
      end
      object IWLabel2: TIWLabel
        Left = 28
        Top = 428
        Width = 83
        Height = 19
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
        Font.FontName = 'Arial'
        Font.Size = 12
        Font.Style = []
        NoWrap = False
        ConvertSpaces = False
        AutoSize = False
        FriendlyName = 'GrpLabel'
        Caption = 'Export To'
        RawText = False
      end
      object CoCombo: TIWComboBox
        Left = 116
        Top = 427
        Width = 215
        Height = 21
        Cursor = crAuto
        Anchors = [akLeft, akBottom]
        IW50Hint = False
        ParentShowHint = False
        ShowHint = True
        ZIndex = 1
        RenderSize = True
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
        Left = 115
        Top = 455
        Width = 83
        Height = 23
        Cursor = crAuto
        Anchors = [akLeft, akBottom]
        IW50Hint = False
        ParentShowHint = False
        ShowHint = True
        ZIndex = 2
        RenderSize = True
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
    Width = 1029
    Height = 114
    HorzScrollBar.Visible = False
    VertScrollBar.Visible = False
    Align = alTop
    TabOrder = 2
    inherited IWFrameRegion: TIWRegion
      Width = 1029
      Height = 114
      TabOrder = 1
      DesignSize = (
        1029
        114)
      inherited IWRectangle1: TIWRectangle
        Left = 760
        Width = 958
      end
      inherited IWRectangle2: TIWRectangle
        Left = 760
        Width = 4
      end
      inherited IWRectangle3: TIWRectangle
        Width = 2026
      end
      inherited IWImageFile3: TIWImageFile
        Left = 691
      end
      inherited langlink: TIWSiLink
        Left = 765
      end
      inherited HideBox: TIWImageFile
        Left = 1015
      end
      inherited Smalltitle: TIWLabel
        Left = 920
        Width = 93
      end
      inherited JobRegn: TIWRegion
        inherited JobLink: TIWLink
          Left = 10
          Align = alNone
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
        end
      end
    end
    inherited silink: TsiLangLinked
      TranslationData = {
        737443617074696F6E730D0A5469746C654C6162656C01646973747269627574
        696F6E010D0A4A6F624C696E6B014A4F4253010D0A47726F75704C696E6B0147
        524F555053010D0A4F766572766965774C696E6B014F56455256494557010D0A
        53656E644C696E6B015055424C495348010D0A7374617475736C696E6B015354
        41545553010D0A536D616C6C7469746C65015B64656661756C745D010D0A7374
        48696E74730D0A7374446973706C61794C6162656C730D0A7374466F6E74730D
        0A54446973747269624672616D655469746C65014D532053616E732053657269
        66010D0A73744D756C74694C696E65730D0A7374537472696E67730D0A73744F
        74686572537472696E67730D0A7374436F6C6C656374696F6E730D0A73744368
        6172536574730D0A54446973747269624672616D655469746C65014445464155
        4C545F43484152534554010D0A}
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
      737443617074696F6E730D0A4772704C6162656C014A6F62204578706F727473
      010D0A737448696E74730D0A7374446973706C61794C6162656C730D0A737446
      6F6E74730D0A5475736572666F6F746572014D532053616E7320536572696601
      0D0A73744D756C74694C696E65730D0A4957526567696F6E312E457874726154
      6167506172616D7301010D0A4957526567696F6E322E45787472615461675061
      72616D7301010D0A4772704C6162656C2E4578747261546167506172616D7301
      010D0A4A6F62477269642E4578747261546167506172616D7301010D0A495753
      694C696E6B312E4578747261546167506172616D7301010D0A49575265637461
      6E676C65312E4578747261546167506172616D7301010D0A495752656374616E
      676C65322E4578747261546167506172616D7301010D0A7374537472696E6773
      0D0A477269642E4944014944010D0A477269642E4E616D65014E616D65010D0A
      477269642E44657363014465736372697074696F6E010D0A73744F7468657253
      7472696E67730D0A54466F726D4578706F72742E48656C704B6579776F726401
      010D0A54466F726D4578706F72742E5469746C6501010D0A75736572666F6F74
      6572312E48656C704B6579776F726401010D0A4957526567696F6E312E48656C
      704B6579776F726401010D0A4957526567696F6E322E48656C704B6579776F72
      6401010D0A4772704C6162656C2E467269656E646C794E616D65014772704C61
      62656C010D0A4772704C6162656C2E48656C704B6579776F726401010D0A4772
      704C6162656C2E5374617475735465787401010D0A4A6F62477269642E467269
      656E646C794E616D65014A6F6247726964010D0A4A6F62477269642E48656C70
      4B6579776F726401010D0A4A6F62477269642E5374617475735465787401010D
      0A4A6F62477269642E53756D6D61727901010D0A495753694C696E6B312E436F
      6E6669726D6174696F6E01010D0A495753694C696E6B312E467269656E646C79
      4E616D6501495753694C696E6B31010D0A495753694C696E6B312E48656C704B
      6579776F726401010D0A495753694C696E6B312E4C616E6746696C65014A6F62
      4578706F72742E73696C010D0A495753694C696E6B312E537461747573546578
      7401010D0A495752656374616E676C65312E467269656E646C794E616D650149
      5752656374616E676C6531010D0A495752656374616E676C65312E48656C704B
      6579776F726401010D0A495752656374616E676C65312E537461747573546578
      7401010D0A495752656374616E676C65312E5465787401010D0A495752656374
      616E676C65322E467269656E646C794E616D6501495752656374616E676C6531
      010D0A495752656374616E676C65322E48656C704B6579776F726401010D0A49
      5752656374616E676C65322E5374617475735465787401010D0A495752656374
      616E676C65322E5465787401010D0A446973747269624672616D655469746C65
      312E48656C704B6579776F726401010D0A7374436F6C6C656374696F6E730D0A
      737443686172536574730D0A5475736572666F6F7465720144454641554C545F
      43484152534554010D0A}
  end
end
