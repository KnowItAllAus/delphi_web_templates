object FormGrpDtl: TFormGrpDtl
  Left = 0
  Top = 0
  Width = 1086
  Height = 730
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
  OnDefaultAction = PostButtonClick
  XPTheme = True
  DesignLeft = 52
  DesignTop = 133
  inline FrameBareTitle1: TFrameBareTitle
    Left = 0
    Top = 0
    Width = 1086
    Height = 118
    HorzScrollBar.Visible = False
    VertScrollBar.Visible = False
    Align = alTop
    TabOrder = 0
    inherited IWFrameRegion: TIWRegion
      Width = 1086
      Height = 118
      TabOrder = 8
      inherited IWRectangle1: TIWRectangle
        Top = 93
        Width = 1086
      end
      inherited IWRectangle3: TIWRectangle
        Top = 98
      end
      inherited IWImageFile3: TIWImageFile
        Left = 751
      end
      inherited TitleLabel: TIWLabel
        Width = 387
        Caption = 'distribution'
      end
      inherited langlink: TIWSiLink
        Left = 687
      end
      inherited Smalltitle: TIWLabel
        Left = 966
        Top = 101
      end
      inherited HideBox: TIWImageFile
        Left = 1070
        Top = 100
        Width = 12
        Height = 14
      end
    end
  end
  object IWRegion1: TIWRegion
    Left = 0
    Top = 118
    Width = 1086
    Height = 581
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
      1086
      581)
    object IWRegion2: TIWRegion
      Left = 234
      Top = 32
      Width = 593
      Height = 534
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
        534)
      object GrpLabel: TIWLabel
        Left = 14
        Top = 10
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
        FriendlyName = 'GrpLabel'
        Caption = 'Group Detail'
        RawText = False
      end
      object IWLabel2: TIWLabel
        Left = 25
        Top = 38
        Width = 49
        Height = 16
        Cursor = crAuto
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
        FriendlyName = 'IWLabel6'
        Caption = 'Name'
        RawText = False
      end
      object NameEdit: TIWEdit
        Left = 96
        Top = 36
        Width = 249
        Height = 21
        Cursor = crAuto
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
        FriendlyName = 'NameEdit'
        MaxLength = 0
        ReadOnly = False
        Required = False
        ScriptEvents = <>
        TabOrder = 0
        PasswordPrompt = False
        Text = 'NameEdit'
      end
      object IWLabel1: TIWLabel
        Left = 24
        Top = 88
        Width = 49
        Height = 16
        Cursor = crAuto
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
        FriendlyName = 'IWLabel6'
        Caption = 'Stores'
        RawText = False
      end
      object StoreGrid: TIWGrid
        Left = 24
        Top = 107
        Width = 265
        Height = 349
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
        OnRenderCell = StoreGridRenderCell
        UseFrame = True
        UseSize = True
        FriendlyName = 'PrinterGrid'
        ColumnCount = 2
        OnCellClick = StoreGridCellClick
        RowCount = 1
        TabOrder = -1
        ShowEmptyCells = True
        ScrollToCurrentRow = False
      end
      object VoucherGrid: TIWGrid
        Left = 312
        Top = 107
        Width = 265
        Height = 349
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
        OnRenderCell = StoreGridRenderCell
        UseFrame = True
        UseSize = True
        FriendlyName = 'VoucherGrid'
        ColumnCount = 2
        OnCellClick = VoucherGridCellClick
        RowCount = 1
        TabOrder = -1
        ShowEmptyCells = True
        ScrollToCurrentRow = False
      end
      object IWLabel6: TIWLabel
        Left = 312
        Top = 88
        Width = 57
        Height = 16
        Cursor = crAuto
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
        FriendlyName = 'IWLabel6'
        Caption = 'Jobs'
        RawText = False
      end
      object DelBtn: TIWButton
        Left = 504
        Top = 31
        Width = 75
        Height = 25
        Cursor = crAuto
        IW50Hint = False
        ParentShowHint = False
        ShowHint = True
        ZIndex = 0
        RenderSize = True
        Caption = 'Delete'
        Confirmation = 'Delete this record?'
        DoSubmitValidation = True
        Color = clBtnFace
        Font.Color = clWebBLUE
        Font.Size = 10
        Font.Style = []
        FriendlyName = 'DelBtn'
        ScriptEvents = <>
        TabOrder = 1
        OnClick = DelBtnClick
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
        TabOrder = 2
        RawText = False
        SiLangLinked = siLangLinked1
        LangFile = 'Grpdtl.sil'
        LangControl = RcDataMod.LangEditControl1
      end
      object IWRectangle1: TIWRectangle
        Left = 0
        Top = 3
        Width = 3
        Height = 531
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
      object TestBox: TIWCheckBox
        Left = 96
        Top = 63
        Width = 249
        Height = 21
        Cursor = crAuto
        IW50Hint = False
        ParentShowHint = False
        ShowHint = True
        ZIndex = 0
        RenderSize = False
        Caption = 'Use for Test'
        Editable = True
        Font.Color = clNone
        Font.Size = 10
        Font.Style = []
        ScriptEvents = <>
        DoSubmitValidation = True
        Style = stNormal
        TabOrder = 4
        OnClick = TestBoxChange
        Checked = False
        FriendlyName = 'TestBox'
      end
      object StoreCombo: TIWComboBox
        Left = 23
        Top = 476
        Width = 265
        Height = 21
        Cursor = crAuto
        Anchors = [akLeft, akBottom]
        IW50Hint = False
        ParentShowHint = False
        ShowHint = True
        ZIndex = 0
        RenderSize = False
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
        TabOrder = 5
        ItemIndex = -1
        Sorted = False
        FriendlyName = 'RegionCombo'
      end
      object AddStoreBtn: TIWButton
        Left = 22
        Top = 506
        Width = 61
        Height = 25
        Cursor = crAuto
        Anchors = [akLeft, akBottom]
        IW50Hint = False
        ParentShowHint = False
        ShowHint = True
        ZIndex = 0
        RenderSize = True
        Caption = 'Add'
        DoSubmitValidation = True
        Color = clBtnFace
        Font.Color = clWebBLUE
        Font.Size = 10
        Font.Style = []
        FriendlyName = 'IWButton2'
        ScriptEvents = <>
        TabOrder = 6
        OnClick = AddStoreBtnClick
      end
      object AddJobBtn: TIWButton
        Left = 312
        Top = 505
        Width = 61
        Height = 25
        Cursor = crAuto
        Anchors = [akLeft, akBottom]
        IW50Hint = False
        ParentShowHint = False
        ShowHint = True
        ZIndex = 0
        RenderSize = True
        Caption = 'Add'
        DoSubmitValidation = True
        Color = clBtnFace
        Font.Color = clWebBLUE
        Font.Size = 10
        Font.Style = []
        FriendlyName = 'IWButton2'
        ScriptEvents = <>
        TabOrder = 7
        OnClick = AddJobBtnClick
      end
      object PromoCombo: TIWComboBox
        Left = 313
        Top = 476
        Width = 265
        Height = 21
        Cursor = crAuto
        Anchors = [akLeft, akBottom]
        IW50Hint = False
        ParentShowHint = False
        ShowHint = True
        ZIndex = 0
        RenderSize = False
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
        TabOrder = 9
        ItemIndex = -1
        Sorted = False
        FriendlyName = 'RegionCombo'
      end
    end
  end
  inline userfooter1: Tuserfooter
    Left = 0
    Top = 699
    Width = 1086
    Height = 31
    HorzScrollBar.Visible = False
    Align = alBottom
    TabOrder = 2
    inherited IWRegion1: TIWRegion
      Width = 1086
      Height = 31
      TabOrder = 3
      inherited IWRectangle1: TIWRectangle
        Left = 710
      end
      inherited IWRectangle4: TIWRectangle
        Width = 1702
      end
      inherited IWRectangle6: TIWRectangle
        Width = 668
      end
      inherited Cancel: TIWButton
        Left = 999
        OnClick = CancelBtnClick
      end
      inherited Extra1: TIWButton
        Left = 913
        Visible = True
        Caption = 'Save'
        OnClick = PostButtonClick
      end
      inherited Extra2: TIWButton
        Left = 827
      end
      inherited fiwSiLink1: TIWSiLink
        Left = 758
      end
      inherited navcombo: TIWComboBox
        Visible = False
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
      'FriendlyName'
      'HotKey'
      'StatusText'
      'LangFile'
      'Confirmation'
      'Text'
      'Summary'
      'Title')
    Left = 24
    Top = 128
    TranslationData = {
      737443617074696F6E730D0A4772704C6162656C0147726F7570204465746169
      6C010D0A49574C6162656C32014E616D65010D0A49574C6162656C310153746F
      726573010D0A53746F72654772696401010D0A566F7563686572477269640101
      0D0A49574C6162656C36014A6F6273010D0A44656C42746E0144656C65746501
      0D0A54657374426F780155736520666F722054657374010D0A41646453746F72
      6542746E01416464010D0A4164644A6F6242746E01416464010D0A737448696E
      74730D0A7374446973706C61794C6162656C730D0A7374466F6E74730D0A7374
      4D756C74694C696E65730D0A4957526567696F6E312E45787472615461675061
      72616D7301010D0A4957526567696F6E322E4578747261546167506172616D73
      01010D0A4772704C6162656C2E4578747261546167506172616D7301010D0A49
      574C6162656C322E4578747261546167506172616D7301010D0A4E616D654564
      69742E4578747261546167506172616D7301010D0A49574C6162656C312E4578
      747261546167506172616D7301010D0A53746F7265477269642E457874726154
      6167506172616D7301010D0A566F7563686572477269642E4578747261546167
      506172616D7301010D0A49574C6162656C362E4578747261546167506172616D
      7301010D0A44656C42746E2E4578747261546167506172616D7301010D0A4957
      53694C696E6B312E4578747261546167506172616D7301010D0A495752656374
      616E676C65312E4578747261546167506172616D7301010D0A49575265637461
      6E676C65322E4578747261546167506172616D7301010D0A54657374426F782E
      4578747261546167506172616D7301010D0A53746F7265436F6D626F2E457874
      7261546167506172616D7301010D0A53746F7265436F6D626F2E4974656D7301
      010D0A41646453746F726542746E2E4578747261546167506172616D7301010D
      0A4164644A6F6242746E2E4578747261546167506172616D7301010D0A50726F
      6D6F436F6D626F2E4578747261546167506172616D7301010D0A50726F6D6F43
      6F6D626F2E4974656D7301010D0A7374537472696E67730D0A44656C65746552
      65630144656C6574652074686973207265636F72643F010D0A477269642E4E61
      6D65014E616D65010D0A477269642E44656C6574650144656C657465010D0A73
      744F74686572537472696E67730D0A54466F726D47727044746C2E48656C704B
      6579776F726401010D0A4672616D65426172655469746C65312E48656C704B65
      79776F726401010D0A4957526567696F6E312E48656C704B6579776F72640101
      0D0A4957526567696F6E322E48656C704B6579776F726401010D0A4772704C61
      62656C2E48656C704B6579776F726401010D0A49574C6162656C322E48656C70
      4B6579776F726401010D0A4E616D65456469742E48656C704B6579776F726401
      010D0A49574C6162656C312E48656C704B6579776F726401010D0A53746F7265
      477269642E48656C704B6579776F726401010D0A566F7563686572477269642E
      48656C704B6579776F726401010D0A49574C6162656C362E48656C704B657977
      6F726401010D0A44656C42746E2E48656C704B6579776F726401010D0A495753
      694C696E6B312E48656C704B6579776F726401010D0A495752656374616E676C
      65312E48656C704B6579776F726401010D0A495752656374616E676C65322E48
      656C704B6579776F726401010D0A75736572666F6F746572312E48656C704B65
      79776F726401010D0A54657374426F782E48656C704B6579776F726401010D0A
      53746F7265436F6D626F2E48656C704B6579776F726401010D0A53746F726543
      6F6D626F2E4E6F53656C656374696F6E54657874012D2D204E6F2053656C6563
      74696F6E202D2D010D0A41646453746F726542746E2E48656C704B6579776F72
      6401010D0A4164644A6F6242746E2E48656C704B6579776F726401010D0A5072
      6F6D6F436F6D626F2E48656C704B6579776F726401010D0A50726F6D6F436F6D
      626F2E4E6F53656C656374696F6E54657874012D2D204E6F2053656C65637469
      6F6E202D2D010D0A7374436F6C6C656374696F6E730D0A737443686172536574
      730D0A}
  end
end
