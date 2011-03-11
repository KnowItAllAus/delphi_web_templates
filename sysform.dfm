object FormSys: TFormSys
  Left = 0
  Top = 0
  Width = 1028
  Height = 746
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
  DesignLeft = 7
  DesignTop = 370
  object IWRegion1: TIWRegion
    Left = 0
    Top = 111
    Width = 1028
    Height = 607
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
      607)
    object IWRegion2: TIWRegion
      Left = 5
      Top = 16
      Width = 1020
      Height = 576
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
        1020
        576)
      object StoreGrid: TIWGrid
        Left = 8
        Top = 32
        Width = 457
        Height = 534
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
        OnRenderCell = rendercell
        UseFrame = True
        UseSize = True
        FriendlyName = 'StoreGrid'
        ColumnCount = 4
        OnCellClick = StoreGridCellClick
        RowCount = 1
        ShowEmptyCells = True
        ShowInvisibleRows = True
        ScrollToCurrentRow = False
      end
      object StoreLabel: TIWLabel
        Left = 8
        Top = 8
        Width = 65
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
        Caption = 'Stores'
        RawText = False
      end
      object StoreCombo: TIWComboBox
        Left = 80
        Top = 8
        Width = 161
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
        OnChange = StoreComboChange
        UseSize = True
        Style = stNormal
        ButtonColor = clBtnFace
        DoSubmitValidation = True
        Editable = True
        NonEditableAsLabel = True
        SubmitOnAsyncEvent = True
        TabOrder = 0
        ItemIndex = 0
        Items.Strings = (
          'Offline'
          'Online'
          'All Enabled'
          'All'
          'Pending Update'
          'Debug Mode')
        Sorted = False
        FriendlyName = 'StoreCombo'
      end
      object SlaveGrid: TIWGrid
        Left = 472
        Top = 32
        Width = 529
        Height = 534
        Cursor = crAuto
        Anchors = [akTop, akRight, akBottom]
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
        OnRenderCell = rendercell
        UseFrame = True
        UseSize = True
        FriendlyName = 'StoreGrid'
        ColumnCount = 6
        RowCount = 1
        ShowEmptyCells = True
        ShowInvisibleRows = True
        ScrollToCurrentRow = False
      end
      object IWLabel1: TIWLabel
        Left = 472
        Top = 8
        Width = 57
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
        Caption = 'Slaves'
        RawText = False
      end
      object slavecombo: TIWComboBox
        Left = 536
        Top = 8
        Width = 161
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
        OnChange = slavecomboChange
        UseSize = True
        Style = stNormal
        ButtonColor = clBtnFace
        DoSubmitValidation = True
        Editable = True
        NonEditableAsLabel = True
        SubmitOnAsyncEvent = True
        TabOrder = 1
        ItemIndex = 0
        Items.Strings = (
          'Offline'
          'Pending Update'
          'All Enabled'
          'All'
          'Debug Mode'
          'Bypass Mode')
        Sorted = False
        FriendlyName = 'IWComboBox1'
      end
      object IWSiLink1: TIWSiLink
        Left = 360
        Top = 8
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
        LangFile = 'sys.sil'
        LangControl = RcDataMod.LangEditControl1
      end
      object RefreshBtn: TIWButton
        Left = 716
        Top = 4
        Width = 75
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
        Caption = 'Refresh'
        DoSubmitValidation = True
        Color = clBtnFace
        Font.Color = clWebBLUE
        Font.Size = 10
        Font.Style = []
        FriendlyName = 'RefreshBtn'
        ScriptEvents = <>
        TabOrder = 3
        OnClick = RefreshBtnClick
      end
      object IWRectangle1: TIWRectangle
        Left = 0
        Top = 3
        Width = 3
        Height = 573
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
        Width = 1020
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
  inline AdminFrameTitle1: TAdminFrameTitle
    Left = 0
    Top = 0
    Width = 1028
    Height = 111
    HorzScrollBar.Visible = False
    VertScrollBar.Visible = False
    Align = alTop
    TabOrder = 1
    inherited IWFrameRegion: TIWRegion
      Height = 111
      TabOrder = 4
      DesignSize = (
        1028
        111)
      inherited IWRectangle1: TIWRectangle
        Width = 2570
      end
      inherited IWRectangle3: TIWRectangle
        Width = 420
      end
      inherited IWImageFile3: TIWImageFile
        Left = 635
      end
      inherited langlink: TIWSiLink
        Left = 524
      end
      inherited HideBox: TIWImageFile
        Left = 1013
      end
    end
  end
  inline userfooter1: Tuserfooter
    Left = 0
    Top = 718
    Width = 1028
    Height = 28
    HorzScrollBar.Visible = False
    Align = alBottom
    TabOrder = 2
    inherited IWRegion1: TIWRegion
      Width = 1028
      TabOrder = 5
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
        Left = 648
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
      'StatusText'
      'Summary'
      'Confirmation'
      'HotKey'
      'NoSelectionText'
      'LangFile')
    Left = 752
    Top = 120
    TranslationData = {
      737443617074696F6E730D0A53746F72654772696401010D0A53746F72654C61
      62656C0153746F726573010D0A536C6176654772696401010D0A49574C616265
      6C3101536C61766573010D0A5265667265736842746E0152656672657368010D
      0A737448696E74730D0A7374446973706C61794C6162656C730D0A7374466F6E
      74730D0A73744D756C74694C696E65730D0A4957526567696F6E312E45787472
      61546167506172616D7301010D0A4957526567696F6E322E4578747261546167
      506172616D7301010D0A53746F7265477269642E457874726154616750617261
      6D7301010D0A53746F72654C6162656C2E4578747261546167506172616D7301
      010D0A53746F7265436F6D626F2E4578747261546167506172616D7301010D0A
      53746F7265436F6D626F2E4974656D73014F66666C696E652C4F6E6C696E652C
      22416C6C20456E61626C6564222C416C6C2C2250656E64696E67205570646174
      65222C224465627567204D6F646522010D0A536C617665477269642E45787472
      61546167506172616D7301010D0A49574C6162656C312E457874726154616750
      6172616D7301010D0A736C617665636F6D626F2E457874726154616750617261
      6D7301010D0A736C617665636F6D626F2E4974656D73014F66666C696E652C22
      50656E64696E6720557064617465222C22416C6C20456E61626C6564222C416C
      6C2C224465627567204D6F6465222C22427970617373204D6F646522010D0A49
      5753694C696E6B312E4578747261546167506172616D7301010D0A5265667265
      736842746E2E4578747261546167506172616D7301010D0A495752656374616E
      676C65312E4578747261546167506172616D7301010D0A495752656374616E67
      6C65322E4578747261546167506172616D7301010D0A7374537472696E67730D
      0A477269642E4964014944010D0A477269642E4E616D65014E616D65010D0A47
      7269642E416464726573730141646472657373010D0A477269642E53746F7265
      0153746F7265010D0A477269642E4C617374436F6D6D73014C61737420436F6D
      6D73010D0A53746F7265436F6D626F2E30014F66666C696E65010D0A53746F72
      65436F6D626F2E31014F6E6C696E65010D0A53746F7265436F6D626F2E320141
      6C6C20456E61626C6564010D0A53746F7265436F6D626F2E3301416C6C010D0A
      53746F7265436F6D626F2E340150656E64696E6720557064617465010D0A536C
      617665436F6D626F2E30014F66666C696E65010D0A536C617665436F6D626F2E
      310150656E64696E6720557064617465010D0A536C617665436F6D626F2E3201
      416C6C20456E61626C6564010D0A536C617665436F6D626F2E3301416C6C010D
      0A536C617665436F6D626F2E34014465627567204D6F6465010D0A53746F7265
      436F6D626F2E35014465627567204D6F6465010D0A536C617665436F6D626F2E
      3501427970617373204D6F6465010D0A477269642E436F6D70616E7901436F6D
      70616E79010D0A477269642E4169736C65014169736C65010D0A477269642E56
      657273696F6E015665722E010D0A477269642E42797061737301427970617373
      010D0A73744F74686572537472696E67730D0A54466F726D5379732E48656C70
      4B6579776F726401010D0A4957526567696F6E312E48656C704B6579776F7264
      01010D0A4957526567696F6E322E48656C704B6579776F726401010D0A53746F
      7265477269642E48656C704B6579776F726401010D0A53746F72654C6162656C
      2E48656C704B6579776F726401010D0A53746F7265436F6D626F2E48656C704B
      6579776F726401010D0A536C617665477269642E48656C704B6579776F726401
      010D0A49574C6162656C312E48656C704B6579776F726401010D0A736C617665
      636F6D626F2E48656C704B6579776F726401010D0A495753694C696E6B312E48
      656C704B6579776F726401010D0A5265667265736842746E2E48656C704B6579
      776F726401010D0A495752656374616E676C65312E48656C704B6579776F7264
      01010D0A495752656374616E676C65312E5465787401010D0A49575265637461
      6E676C65322E48656C704B6579776F726401010D0A495752656374616E676C65
      322E5465787401010D0A41646D696E4672616D655469746C65312E48656C704B
      6579776F726401010D0A75736572666F6F746572312E48656C704B6579776F72
      6401010D0A7374436F6C6C656374696F6E730D0A737443686172536574730D0A}
  end
end
