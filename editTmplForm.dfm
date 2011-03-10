object formEditTmpl: TformEditTmpl
  Left = 0
  Top = 0
  Width = 1021
  Height = 725
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
  DesignLeft = 232
  DesignTop = 215
  object IWRegion1: TIWRegion
    Left = 0
    Top = 118
    Width = 1021
    Height = 578
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
      1021
      578)
    object IWRegion2: TIWRegion
      Left = 65
      Top = 14
      Width = 911
      Height = 543
      Cursor = crAuto
      RenderInvisibleControls = False
      Anchors = [akTop, akBottom]
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
        911
        543)
      object TmplLabel: TIWLabel
        Left = 8
        Top = 8
        Width = 118
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
        FriendlyName = 'TmplLabel'
        Caption = 'Template Job :'
        RawText = False
      end
      object TmplGrid: TIWGrid
        Left = 20
        Top = 40
        Width = 871
        Height = 486
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
        OnRenderCell = TmplGridRenderCell
        UseFrame = True
        UseSize = True
        FriendlyName = 'PrinterGrid'
        ColumnCount = 4
        OnCellClick = TmplGridCellClick
        RowCount = 1
        ShowEmptyCells = True
        ShowInvisibleRows = True
        ScrollToCurrentRow = False
      end
      object IWSiLink1: TIWSiLink
        Left = 10
        Top = 24
        Width = 63
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
        LangFile = 'tmpledit.sil'
        LangControl = RcDataMod.LangEditControl1
      end
      object IWRectangle1: TIWRectangle
        Left = 0
        Top = 3
        Width = 3
        Height = 540
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
        Width = 911
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
      object NameLbl: TIWLabel
        Left = 128
        Top = 8
        Width = 658
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
        FriendlyName = 'TmplLabel'
        Caption = 'Template Name'
        RawText = False
      end
      object EditBtn: TIWButton
        Left = 830
        Top = 8
        Width = 60
        Height = 23
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
        Caption = 'Edit'
        DoSubmitValidation = True
        Color = clBtnFace
        Font.Color = clNone
        Font.Size = 10
        Font.Style = []
        FriendlyName = 'EditBtn'
        ScriptEvents = <>
        TabOrder = 3
        OnClick = EditBtnClick
      end
    end
  end
  inline userfooter1: Tuserfooter
    Left = 0
    Top = 696
    Width = 1021
    Height = 29
    HorzScrollBar.Visible = False
    Align = alBottom
    TabOrder = 1
    inherited IWRegion1: TIWRegion
      Width = 1021
      Height = 29
      TabOrder = 1
      DesignSize = (
        1021
        29)
      inherited IWRectangle1: TIWRectangle
        Left = 645
      end
      inherited IWRectangle4: TIWRectangle
        Width = 1637
      end
      inherited IWRectangle6: TIWRectangle
        Width = 603
      end
      inherited Cancel: TIWButton
        Left = 935
        Caption = 'Back'
        OnClick = CancelBtnClick
      end
      inherited Extra1: TIWButton
        Left = 847
        Caption = 'Delete'
        Confirmation = 'Delete this record?'
        OnClick = userfooter1Extra1Click
      end
      inherited Extra2: TIWButton
        Left = 759
      end
      inherited fiwSiLink1: TIWSiLink
        Left = 687
      end
      inherited navcombo: TIWComboBox
        Visible = False
      end
    end
  end
  inline FrameBareTitle1: TFrameBareTitle
    Left = 0
    Top = 0
    Width = 1021
    Height = 118
    HorzScrollBar.Visible = False
    VertScrollBar.Visible = False
    Align = alTop
    TabOrder = 2
    inherited IWFrameRegion: TIWRegion
      Width = 1021
      Height = 118
      TabOrder = 2
      inherited IWRectangle1: TIWRectangle
        Top = 93
        Width = 1534
      end
      inherited IWRectangle3: TIWRectangle
        Top = 98
      end
      inherited IWImageFile3: TIWImageFile
        Left = 686
      end
      inherited langlink: TIWSiLink
        Left = 615
      end
      inherited Smalltitle: TIWLabel
        Left = 901
        Top = 102
      end
      inherited HideBox: TIWImageFile
        Left = 1004
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
  object siLangLinked1: TsiLangLinked
    Version = '5.3.1.1'
    StringsTypes.Strings = (
      'TIB_STRINGLIST'
      'TSTRINGLIST')
    SmartExcludeProps.Strings = (
      'NameLbl.Caption')
    LangDispatcher = RcDataMod.siLangDispatcher1
    LangDelim = 1
    LangNames.Strings = (
      'English')
    Language = 'English'
    CommonContainer = RcDataMod.siLang1
    ExcludedProperties.Strings = (
      'Hint'
      'Title'
      'FriendlyName'
      'HotKey'
      'StatusText'
      'Text'
      'NoSelectionText'
      'Confirmation'
      'Summary'
      'LangFile')
    Left = 548
    Top = 147
    TranslationData = {
      737443617074696F6E730D0A546D706C4C6162656C0154656D706C617465204A
      6F62203A010D0A546D706C4772696401010D0A737448696E74730D0A73744469
      73706C61794C6162656C730D0A7374466F6E74730D0A73744D756C74694C696E
      65730D0A4957526567696F6E312E4578747261546167506172616D7301010D0A
      4957526567696F6E322E4578747261546167506172616D7301010D0A546D706C
      4C6162656C2E4578747261546167506172616D7301010D0A546D706C47726964
      2E4578747261546167506172616D7301010D0A495753694C696E6B312E457874
      7261546167506172616D7301010D0A495752656374616E676C65312E45787472
      61546167506172616D7301010D0A495752656374616E676C65322E4578747261
      546167506172616D7301010D0A4E616D654C626C2E4578747261546167506172
      616D7301010D0A7374537472696E67730D0A44656C657465436F6E660144656C
      65746520746869732074656D706C617465207265666572656E63653F20010D0A
      477269642E4964014944010D0A477269642E4E616D65014E616D65010D0A4772
      69642E44656C6574650144656C657465010D0A477269642E506172616D657465
      727301506172616D6574657273010D0A477269642E416464506172616D014164
      6420506172616D65746572010D0A477269642E4E6577506172616D6574657201
      4E657720506172616D65746572010D0A477269642E456469740145646974010D
      0A477269642E50726F706572746965730150726F70657274696573010D0A4772
      69642E475549440147554944010D0A477269642E4669656C64014669656C6401
      0D0A477269642E5479706501506172616D657465722054797065010D0A477269
      642E4F626A656374014F626A656374010D0A477269642E4E6F7465014E6F7465
      010D0A73744F74686572537472696E67730D0A54666F726D45646974546D706C
      2E48656C704B6579776F726401010D0A4957526567696F6E312E48656C704B65
      79776F726401010D0A4957526567696F6E322E48656C704B6579776F72640101
      0D0A546D706C4C6162656C2E48656C704B6579776F726401010D0A546D706C47
      7269642E48656C704B6579776F726401010D0A495753694C696E6B312E48656C
      704B6579776F726401010D0A495752656374616E676C65312E48656C704B6579
      776F726401010D0A495752656374616E676C65322E48656C704B6579776F7264
      01010D0A75736572666F6F746572312E48656C704B6579776F726401010D0A46
      72616D65426172655469746C65312E48656C704B6579776F726401010D0A4E61
      6D654C626C2E48656C704B6579776F726401010D0A7374436F6C6C656374696F
      6E730D0A737443686172536574730D0A}
  end
end
