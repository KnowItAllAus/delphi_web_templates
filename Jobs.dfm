object formJobs: TformJobs
  Left = 0
  Top = 0
  Width = 1064
  Height = 734
  HorzScrollBar.Visible = False
  VertScrollBar.Visible = False
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
  DesignLeft = 242
  DesignTop = 117
  inline userfooter1: Tuserfooter
    Left = 0
    Top = 705
    Width = 1064
    Height = 29
    HorzScrollBar.Visible = False
    Align = alBottom
    TabOrder = 0
    inherited IWRegion1: TIWRegion
      Width = 1064
      Height = 29
      TabOrder = 3
      DesignSize = (
        1064
        29)
      inherited IWRectangle1: TIWRectangle
        Left = 648
        Width = 416
      end
      inherited IWRectangle4: TIWRectangle
        Width = 1680
      end
      inherited IWRectangle6: TIWRectangle
        Width = 606
      end
      inherited Cancel: TIWButton
        Left = 978
        Caption = 'Menu'
        TabOrder = 3
        OnClick = userfooter1CancelClick
      end
      inherited Extra1: TIWButton
        Left = 802
        TabOrder = 1
      end
      inherited Extra2: TIWButton
        Left = 890
        TabOrder = 2
      end
      inherited fiwSiLink1: TIWSiLink
        Left = 431
        Top = 1
      end
    end
    inherited silink_footer: TsiLangLinked
      Left = 80
    end
  end
  object IWRegion1: TIWRegion
    Left = 0
    Top = 119
    Width = 1064
    Height = 586
    Cursor = crAuto
    HorzScrollBar.Visible = False
    VertScrollBar.Visible = False
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
      1064
      586)
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
      RenderSize = False
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
      Left = 125
      Top = 21
      Width = 821
      Height = 547
      Cursor = crAuto
      HorzScrollBar.Visible = False
      VertScrollBar.Visible = False
      Anchors = [akTop, akBottom]
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
        821
        547)
      object IWRectangle2: TIWRectangle
        Left = 1
        Top = 1
        Width = 819
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
        Height = 542
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
        Alignment = taCenter
        BGColor = clNone
        Font.Color = clNone
        Font.Size = 14
        Font.Style = [fsBold]
        NoWrap = False
        ConvertSpaces = False
        AutoSize = False
        FriendlyName = 'JobsLabel'
        Caption = 'Jobs'
        RawText = False
      end
      object NewJobEdit: TIWEdit
        Left = 152
        Top = 515
        Width = 429
        Height = 21
        Cursor = crAuto
        Anchors = [akLeft, akRight, akBottom]
        IW50Hint = False
        ParentShowHint = False
        ShowHint = True
        ZIndex = 0
        RenderSize = True
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
        TabOrder = 1
        PasswordPrompt = False
      end
      object JobGrid: TIWGrid
        Left = 16
        Top = 40
        Width = 790
        Height = 459
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
        ColumnCount = 6
        OnCellClick = JobGridCellClick
        RowCount = 1
        TabOrder = -1
        ShowEmptyCells = True
        ScrollToCurrentRow = False
      end
      object CreateBtn: TIWButton
        Left = 600
        Top = 512
        Width = 75
        Height = 25
        Cursor = crAuto
        Anchors = [akLeft, akBottom]
        IW50Hint = False
        ParentShowHint = False
        ShowHint = True
        ZIndex = 0
        RenderSize = True
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
    end
  end
  inline PromoFrameTitle1: TPromoFrameTitle
    Left = 0
    Top = 0
    Width = 1064
    Height = 119
    HorzScrollBar.Visible = False
    VertScrollBar.Visible = False
    Align = alTop
    TabOrder = 2
    inherited IWFrameRegion: TIWRegion
      Width = 1064
      TabOrder = 4
      inherited IWRectangle1: TIWRectangle
        Top = 93
        Width = 2665
      end
      inherited IWRectangle2: TIWRectangle
        Top = 95
      end
      inherited IWRectangle3: TIWRectangle
        Width = 2084
      end
      inherited IWImageFile3: TIWImageFile
        Left = 729
        Top = 0
      end
      inherited langlink: TIWSiLink
        Left = 720
      end
      inherited Smalltitle: TIWLabel
        Left = 919
      end
      inherited HideBox: TIWImageFile
        Left = 1048
      end
    end
  end
  object silink: TsiLangLinked
    Version = '5.3.1.1'
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
      737443617074696F6E730D0A4A6F62734C6162656C014A6F6273010D0A737448
      696E74730D0A7374446973706C61794C6162656C730D0A7374466F6E74730D0A
      5475736572666F6F746572014D532053616E73205365726966010D0A73744D75
      6C74694C696E65730D0A4957526567696F6E312E457874726154616750617261
      6D7301010D0A6C616E676C696E6B2E4578747261546167506172616D7301010D
      0A426F6479526567696F6E2E4578747261546167506172616D7301010D0A4957
      52656374616E676C65322E4578747261546167506172616D7301010D0A495752
      656374616E676C65312E4578747261546167506172616D7301010D0A4A6F6273
      4C6162656C2E4578747261546167506172616D7301010D0A4E65774A6F624564
      69742E4578747261546167506172616D7301010D0A4A6F62477269642E457874
      7261546167506172616D7301010D0A43726561746542746E2E45787472615461
      67506172616D7301010D0A7374537472696E67730D0A43726561746542746E01
      437265617465010D0A477269642E4944014944010D0A477269642E4E616D6501
      4E616D65010D0A477269642E53746174757301537461747573010D0A47726964
      2E44657363014465736372697074696F6E010D0A477269642E54656D706C6174
      650154656D706C617465010D0A477269642E4E6577496E7374616E6365014E65
      7720496E7374616E6365010D0A477269642E4E6F7465014E6F746573010D0A73
      744F74686572537472696E67730D0A54666F726D4A6F62732E48656C704B6579
      776F726401010D0A54666F726D4A6F62732E5469746C6501010D0A7573657266
      6F6F746572312E48656C704B6579776F726401010D0A4957526567696F6E312E
      48656C704B6579776F726401010D0A6C616E676C696E6B2E436F6E6669726D61
      74696F6E01010D0A6C616E676C696E6B2E467269656E646C794E616D65016C61
      6E676C696E6B010D0A6C616E676C696E6B2E48656C704B6579776F726401010D
      0A6C616E676C696E6B2E4C616E6746696C65016A6F62732E73696C010D0A6C61
      6E676C696E6B2E5374617475735465787401010D0A426F6479526567696F6E2E
      48656C704B6579776F726401010D0A495752656374616E676C65322E46726965
      6E646C794E616D6501495752656374616E676C6531010D0A495752656374616E
      676C65322E48656C704B6579776F726401010D0A495752656374616E676C6532
      2E5374617475735465787401010D0A495752656374616E676C65322E54657874
      01010D0A495752656374616E676C65312E467269656E646C794E616D65014957
      52656374616E676C6531010D0A495752656374616E676C65312E48656C704B65
      79776F726401010D0A495752656374616E676C65312E53746174757354657874
      01010D0A495752656374616E676C65312E5465787401010D0A4A6F62734C6162
      656C2E467269656E646C794E616D65014A6F62734C6162656C010D0A4A6F6273
      4C6162656C2E48656C704B6579776F726401010D0A4A6F62734C6162656C2E53
      74617475735465787401010D0A4E65774A6F62456469742E467269656E646C79
      4E616D65014E65774A6F6245646974010D0A4E65774A6F62456469742E48656C
      704B6579776F726401010D0A4E65774A6F62456469742E537461747573546578
      7401010D0A4E65774A6F62456469742E5465787401010D0A4A6F62477269642E
      467269656E646C794E616D65014A6F6247726964010D0A4A6F62477269642E48
      656C704B6579776F726401010D0A4A6F62477269642E53746174757354657874
      01010D0A4A6F62477269642E53756D6D61727901010D0A43726561746542746E
      2E436F6E6669726D6174696F6E01010D0A43726561746542746E2E467269656E
      646C794E616D650143726561746542746E010D0A43726561746542746E2E4865
      6C704B6579776F726401010D0A43726561746542746E2E486F744B657901010D
      0A43726561746542746E2E5374617475735465787401010D0A50726F6D6F4672
      616D655469746C65312E48656C704B6579776F726401010D0A7374436F6C6C65
      6374696F6E730D0A737443686172536574730D0A5475736572666F6F74657201
      44454641554C545F43484152534554010D0A}
  end
end
