object formGrpStore: TformGrpStore
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
  OnDefaultAction = IWAppFormDefaultAction
  XPTheme = True
  DesignLeft = 150
  DesignTop = 144
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
      Left = 278
      Top = 14
      Width = 503
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
        503
        543)
      object StoreLabel: TIWLabel
        Left = 8
        Top = 8
        Width = 478
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
        Caption = 'Store'
        RawText = False
      end
      object GrpGrid: TIWGrid
        Left = 80
        Top = 135
        Width = 336
        Height = 391
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
        FriendlyName = 'PrinterGrid'
        ColumnCount = 2
        OnCellClick = GrpGridCellClick
        RowCount = 1
        ShowEmptyCells = True
        ShowInvisibleRows = True
        ScrollToCurrentRow = False
      end
      object GroupCombo: TIWComboBox
        Left = 81
        Top = 61
        Width = 335
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
        TabOrder = 1
        ItemIndex = -1
        Items.Strings = (
          'All')
        Sorted = False
        FriendlyName = 'RegionCombo'
      end
      object IWLabel3: TIWLabel
        Left = 81
        Top = 35
        Width = 105
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
        Font.Style = [fsBold]
        NoWrap = False
        ConvertSpaces = False
        HasTabOrder = False
        AutoSize = False
        FriendlyName = 'IWLabel5'
        Caption = 'Groups'
        RawText = False
      end
      object AddGrpBtn: TIWButton
        Left = 81
        Top = 94
        Width = 61
        Height = 25
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
        Caption = 'Add'
        DoSubmitValidation = True
        Color = clBtnFace
        Font.Color = clWebBLUE
        Font.Size = 10
        Font.Style = []
        FriendlyName = 'IWButton2'
        ScriptEvents = <>
        TabOrder = 0
        OnClick = AddGrpBtnClick
      end
      object IWSiLink1: TIWSiLink
        Left = 253
        Top = 4
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
        TabOrder = 2
        RawText = False
        SiLangLinked = siLangLinked1
        LangFile = 'storegrp.sil'
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
        Width = 503
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
    Top = 696
    Width = 1021
    Height = 29
    HorzScrollBar.Visible = False
    Align = alBottom
    TabOrder = 1
    inherited IWRegion1: TIWRegion
      Width = 1021
      Height = 29
      TabOrder = 3
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
        OnClick = CancelBtnClick
      end
      inherited Extra1: TIWButton
        Left = 847
        Caption = 'Delete'
        Confirmation = 'Delete this record?'
      end
      inherited Extra2: TIWButton
        Left = 759
        Visible = True
        Caption = 'Save'
        OnClick = PostButtonClick
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
      TabOrder = 4
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
      737443617074696F6E730D0A53746F72654C6162656C0153746F7265010D0A47
      72704772696401010D0A49574C6162656C330147726F757073010D0A41646447
      727042746E01416464010D0A737448696E74730D0A7374446973706C61794C61
      62656C730D0A7374466F6E74730D0A73744D756C74694C696E65730D0A495752
      6567696F6E312E4578747261546167506172616D7301010D0A4957526567696F
      6E322E4578747261546167506172616D7301010D0A53746F72654C6162656C2E
      4578747261546167506172616D7301010D0A477270477269642E457874726154
      6167506172616D7301010D0A47726F7570436F6D626F2E457874726154616750
      6172616D7301010D0A47726F7570436F6D626F2E4974656D7301416C6C010D0A
      49574C6162656C332E4578747261546167506172616D7301010D0A4164644772
      7042746E2E4578747261546167506172616D7301010D0A495753694C696E6B31
      2E4578747261546167506172616D7301010D0A495752656374616E676C65312E
      4578747261546167506172616D7301010D0A495752656374616E676C65322E45
      78747261546167506172616D7301010D0A7374537472696E67730D0A44656C65
      7465436F6E660144656C65746520746869732073746F72653F20010D0A477269
      642E4964014944010D0A477269642E4E616D65014E616D65010D0A477269642E
      44656C6574650144656C657465010D0A73744F74686572537472696E67730D0A
      54666F726D47727053746F72652E48656C704B6579776F726401010D0A495752
      6567696F6E312E48656C704B6579776F726401010D0A4957526567696F6E322E
      48656C704B6579776F726401010D0A53746F72654C6162656C2E48656C704B65
      79776F726401010D0A477270477269642E48656C704B6579776F726401010D0A
      47726F7570436F6D626F2E48656C704B6579776F726401010D0A49574C616265
      6C332E48656C704B6579776F726401010D0A41646447727042746E2E48656C70
      4B6579776F726401010D0A495753694C696E6B312E48656C704B6579776F7264
      01010D0A495752656374616E676C65312E48656C704B6579776F726401010D0A
      495752656374616E676C65322E48656C704B6579776F726401010D0A75736572
      666F6F746572312E48656C704B6579776F726401010D0A4672616D6542617265
      5469746C65312E48656C704B6579776F726401010D0A7374436F6C6C65637469
      6F6E730D0A737443686172536574730D0A}
  end
end
