object formdistribdtl: Tformdistribdtl
  Left = 0
  Top = 0
  Width = 1028
  Height = 648
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
  DesignLeft = 208
  DesignTop = 210
  inline FrameBareTitle1: TFrameBareTitle
    Left = 0
    Top = 0
    Width = 1028
    Height = 116
    HorzScrollBar.Visible = False
    VertScrollBar.Visible = False
    Align = alTop
    TabOrder = 0
    inherited IWFrameRegion: TIWRegion
      Width = 1028
      Height = 116
      TabOrder = 5
      DesignSize = (
        1028
        116)
      inherited IWRectangle1: TIWRectangle
        Top = 91
        Width = 1028
      end
      inherited IWRectangle3: TIWRectangle
        Top = 96
      end
      inherited IWImageFile3: TIWImageFile
        Left = 324
      end
      inherited langlink: TIWSiLink
        Left = 794
      end
      inherited Smalltitle: TIWLabel
        Left = 909
      end
      inherited HideBox: TIWImageFile
        Left = 1009
        Top = 99
        Width = 12
        Height = 14
      end
      inherited TitleLabel: TIWLabel
        Width = 387
        Caption = 'distribution'
      end
    end
  end
  object IWRegion1: TIWRegion
    Left = 0
    Top = 116
    Width = 1028
    Height = 501
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
      1028
      501)
    object IWSiLink1: TIWSiLink
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
      FriendlyName = 'IWSiLink1'
      TabOrder = 0
      RawText = False
      SiLangLinked = silanglinked1
      LangFile = 'jobdist.sil'
      LangControl = RcDataMod.LangEditControl1
    end
    object BodyRegion: TIWRegion
      Left = 304
      Top = 50
      Width = 441
      Height = 398
      Cursor = crAuto
      RenderInvisibleControls = False
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
        441
        398)
      object IWRectangle1: TIWRectangle
        Left = 0
        Top = 3
        Width = 3
        Height = 395
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
      object JobLabel: TIWLabel
        Left = 16
        Top = 12
        Width = 134
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
        FriendlyName = 'StoreLabel'
        Caption = 'Job Distribution'
        RawText = False
      end
      object NameEdit: TIWEdit
        Left = 104
        Top = 40
        Width = 217
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
        Alignment = taLeftJustify
        BGColor = clGrayText
        FocusColor = clNone
        DoSubmitValidation = True
        Editable = True
        NonEditableAsLabel = True
        Font.Color = clNone
        Font.Size = 10
        Font.Style = []
        FriendlyName = 'StatEdit'
        MaxLength = 0
        ReadOnly = True
        Required = False
        ScriptEvents = <>
        SubmitOnAsyncEvent = True
        TabOrder = 1
        PasswordPrompt = False
        Text = 'NameEdit'
      end
      object IWLabel3: TIWLabel
        Left = 24
        Top = 41
        Width = 25
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
        FriendlyName = 'IWLabel1'
        Caption = 'Job'
        RawText = False
      end
      object IWRectangle2: TIWRectangle
        Left = 0
        Top = 0
        Width = 441
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
      object IWLabel1: TIWLabel
        Left = 24
        Top = 73
        Width = 74
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
        FriendlyName = 'IWLabel1'
        Caption = 'Description'
        RawText = False
      end
      object DescEdit: TIWEdit
        Left = 104
        Top = 72
        Width = 313
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
        Alignment = taLeftJustify
        BGColor = clGrayText
        FocusColor = clNone
        DoSubmitValidation = True
        Editable = True
        NonEditableAsLabel = True
        Font.Color = clNone
        Font.Size = 10
        Font.Style = []
        FriendlyName = 'StatEdit'
        MaxLength = 0
        ReadOnly = True
        Required = False
        ScriptEvents = <>
        SubmitOnAsyncEvent = True
        TabOrder = 4
        PasswordPrompt = False
        Text = 'DescEdit'
      end
      object IWRegion5: TIWRegion
        Left = 25
        Top = 112
        Width = 396
        Height = 278
        Cursor = crAuto
        HorzScrollBar.Visible = False
        VertScrollBar.Visible = False
        RenderInvisibleControls = False
        TabOrder = 18
        Anchors = [akLeft, akTop, akBottom]
        BorderOptions.NumericWidth = 0
        BorderOptions.BorderWidth = cbwNumeric
        BorderOptions.Style = cbsSolid
        BorderOptions.Color = clNone
        Color = clWebSILVER
        ParentShowHint = False
        ShowHint = True
        ZIndex = -1
        Splitter = False
        DesignSize = (
          396
          278)
        object GrpLabel: TIWLabel
          Left = 8
          Top = 7
          Width = 57
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
          FriendlyName = 'GrpLabel'
          Caption = 'Group'
          RawText = False
        end
        object GrpGrid: TIWGrid
          Left = 2
          Top = 55
          Width = 389
          Height = 221
          Cursor = crAuto
          Anchors = [akLeft, akTop, akBottom]
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
          OnRenderCell = GrpGridRenderCell
          UseFrame = True
          UseSize = True
          FriendlyName = 'GrpGrid'
          ColumnCount = 3
          OnCellClick = GrpGridCellClick
          RowCount = 1
          ShowEmptyCells = True
          ShowInvisibleRows = True
          ScrollToCurrentRow = False
        end
        object GrpCombo: TIWComboBox
          Left = 72
          Top = 6
          Width = 319
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
          UseSize = False
          Style = stNormal
          ButtonColor = clBtnFace
          DoSubmitValidation = True
          Editable = True
          NonEditableAsLabel = True
          SubmitOnAsyncEvent = True
          TabOrder = 3
          ItemIndex = -1
          Sorted = False
          FriendlyName = 'GrpCombo'
        end
        object GrpAddBtn: TIWButton
          Left = 72
          Top = 30
          Width = 57
          Height = 25
          Cursor = crAuto
          IW50Hint = False
          ParentShowHint = False
          ShowHint = True
          ZIndex = 1
          RenderSize = True
          StyleRenderOptions.RenderSize = True
          StyleRenderOptions.RenderPosition = True
          StyleRenderOptions.RenderFont = True
          StyleRenderOptions.RenderZIndex = True
          StyleRenderOptions.RenderVisibility = True
          StyleRenderOptions.RenderStatus = True
          StyleRenderOptions.RenderAbsolute = True
          Caption = 'Add'
          DoSubmitValidation = True
          Color = clBtnFace
          Font.Color = clWebBLUE
          Font.Size = 10
          Font.Style = []
          FriendlyName = 'GrpAddBtn'
          ScriptEvents = <>
          TabOrder = 2
          OnClick = GrpAddBtnClick
        end
      end
    end
  end
  inline userfooter1: Tuserfooter
    Left = 0
    Top = 617
    Width = 1028
    Height = 31
    HorzScrollBar.Visible = False
    Align = alBottom
    TabOrder = 2
    inherited IWRegion1: TIWRegion
      Width = 1028
      Height = 31
      TabOrder = 6
      inherited IWRectangle1: TIWRectangle
        Left = 652
      end
      inherited IWRectangle4: TIWRectangle
        Width = 1644
      end
      inherited IWRectangle6: TIWRectangle
        Width = 610
      end
      inherited Cancel: TIWButton
        Left = 942
        OnClick = userfooter1CancelClick
      end
      inherited Extra1: TIWButton
        Left = 854
        Visible = True
        Caption = 'Save'
        OnClick = userfooter1Extra1Click
      end
      inherited Extra2: TIWButton
        Left = 766
      end
      inherited fiwSiLink1: TIWSiLink
        Left = 689
      end
      inherited navcombo: TIWComboBox
        Visible = False
      end
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
      'Cancel.Caption')
    LangDispatcher = RcDataMod.siLangDispatcher1
    LangDelim = 1
    LangNames.Strings = (
      'English')
    Language = 'English'
    CommonContainer = RcDataMod.siLang1
    ExcludedProperties.Strings = (
      'Hint'
      'HelpKeyword'
      'Title'
      'FriendlyName'
      'StatusText'
      'HotKey')
    Top = 136
    TranslationData = {
      737443617074696F6E730D0A4A6F624C6162656C014A6F622044697374726962
      7574696F6E010D0A49574C6162656C33014A6F62010D0A4772704C6162656C01
      47726F7570010D0A4772704772696401010D0A47727041646442746E01416464
      010D0A49574C6162656C31014465736372697074696F6E010D0A737448696E74
      730D0A7374446973706C61794C6162656C730D0A7374466F6E74730D0A547573
      6572666F6F746572014D532053616E73205365726966010D0A73744D756C7469
      4C696E65730D0A4957526567696F6E312E4578747261546167506172616D7301
      010D0A495753694C696E6B312E4578747261546167506172616D7301010D0A42
      6F6479526567696F6E2E4578747261546167506172616D7301010D0A49575265
      6374616E676C65312E4578747261546167506172616D7301010D0A4A6F624C61
      62656C2E4578747261546167506172616D7301010D0A4E616D65456469742E45
      78747261546167506172616D7301010D0A49574C6162656C332E457874726154
      6167506172616D7301010D0A495752656374616E676C65322E45787472615461
      67506172616D7301010D0A4957526567696F6E352E4578747261546167506172
      616D7301010D0A4772704C6162656C2E4578747261546167506172616D730101
      0D0A477270477269642E4578747261546167506172616D7301010D0A47727041
      646442746E2E4578747261546167506172616D7301010D0A477270436F6D626F
      2E4578747261546167506172616D7301010D0A477270436F6D626F2E4974656D
      7301010D0A49574C6162656C312E4578747261546167506172616D7301010D0A
      44657363456469742E4578747261546167506172616D7301010D0A7374537472
      696E67730D0A477269642E4E616D65014E616D65010D0A477269642E49440149
      44010D0A477269642E44656C6574650144656C657465010D0A73744F74686572
      537472696E67730D0A495753694C696E6B312E436F6E6669726D6174696F6E01
      010D0A495753694C696E6B312E4C616E6746696C65016A6F62646973742E7369
      6C010D0A495752656374616E676C65312E5465787401010D0A4E616D65456469
      742E54657874014E616D6545646974010D0A495752656374616E676C65322E54
      65787401010D0A477270477269642E53756D6D61727901010D0A477270416464
      42746E2E436F6E6669726D6174696F6E01010D0A477270436F6D626F2E4E6F53
      656C656374696F6E54657874012D2D204E6F2053656C656374696F6E202D2D01
      0D0A44657363456469742E54657874014465736345646974010D0A7374436F6C
      6C656374696F6E730D0A737443686172536574730D0A5475736572666F6F7465
      720144454641554C545F43484152534554010D0A}
  end
end
