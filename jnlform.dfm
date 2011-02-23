object formJnl: TformJnl
  Left = 0
  Top = 0
  Width = 1087
  Height = 750
  ConnectionMode = cmAny
  SupportedBrowsers = [brIE, brNetscape7, brOpera, brSafari, brNetscape6]
  OnCreate = IWAppFormCreate
  OnDestroy = IWAppFormDestroy
  BrowserSecurityCheck = True
  Background.Fixed = False
  HandleTabs = False
  LeftToRight = True
  LockUntilLoaded = True
  LockOnSubmit = False
  ShowHint = True
  OnDefaultAction = DisplayBtnClick
  XPTheme = True
  DesignLeft = 140
  DesignTop = 167
  inline StatsFrameTitle1: TStatsFrameTitle
    Left = 0
    Top = 0
    Width = 1087
    Height = 114
    HorzScrollBar.Visible = False
    VertScrollBar.Visible = False
    Align = alTop
    TabOrder = 0
    inherited IWFrameRegion: TIWRegion
      Width = 1087
      TabOrder = 13
      DesignSize = (
        1087
        114)
      inherited IWRectangle3: TIWRectangle
        Width = 2259
      end
      inherited langlink: TIWSiLink
        Left = 647
      end
      inherited PromoReg: TIWRegion
        inherited ActivityLink: TIWLink
          OnClick = StatsFrameTitle1ActivityLinkClick
        end
      end
    end
  end
  object IWRegion1: TIWRegion
    Left = 0
    Top = 114
    Width = 1087
    Height = 608
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
      1087
      608)
    object IWRegion2: TIWRegion
      Left = 32
      Top = 8
      Width = 1022
      Height = 590
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
        1022
        590)
      object VoucherLabel: TIWLabel
        Left = 16
        Top = 8
        Width = 108
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
        FriendlyName = 'VoucherLabel'
        Caption = 'View Journal'
        RawText = False
      end
      object IWLabel1: TIWLabel
        Left = 200
        Top = 8
        Width = 64
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
        FriendlyName = 'IWLabel1'
        Caption = 'Start Date'
        RawText = False
      end
      object StartEdit: TIWEdit
        Left = 272
        Top = 6
        Width = 81
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
        FriendlyName = 'StartEdit'
        MaxLength = 0
        ReadOnly = False
        Required = False
        ScriptEvents = <>
        TabOrder = 2
        PasswordPrompt = False
        Text = 'StartEdit'
      end
      object IWLabel2: TIWLabel
        Left = 368
        Top = 8
        Width = 61
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
        FriendlyName = 'IWLabel2'
        Caption = 'End Date'
        RawText = False
      end
      object EndEdit: TIWEdit
        Left = 432
        Top = 6
        Width = 81
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
        FriendlyName = 'EndEdit'
        MaxLength = 0
        ReadOnly = False
        Required = False
        ScriptEvents = <>
        TabOrder = 3
        PasswordPrompt = False
        Text = 'EndEdit'
      end
      object IWLink1: TIWLink
        Left = 632
        Top = 40
        Width = 49
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
        FriendlyName = 'IWLink1'
        OnClick = ExportClick
        TabOrder = 0
        RawText = False
        Caption = 'Export'
      end
      object IWSiLink1: TIWSiLink
        Left = 696
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
        TabOrder = 10
        RawText = False
        SiLangLinked = siLangLinked1
        LangFile = 'jnl.sil'
        LangControl = RcDataMod.LangEditControl1
      end
      object DisplayBtn: TIWButton
        Left = 694
        Top = 35
        Width = 75
        Height = 25
        Cursor = crAuto
        IW50Hint = False
        ParentShowHint = False
        ShowHint = True
        ZIndex = 0
        RenderSize = True
        Caption = 'Update'
        DoSubmitValidation = True
        Color = clWebSILVER
        Font.Color = clWebBLUE
        Font.Size = 10
        Font.Style = []
        FriendlyName = 'DisplayBtn'
        ScriptEvents = <>
        TabOrder = 6
        OnClick = DisplayBtnClick
      end
      object PrevBtn: TIWButton
        Left = 861
        Top = 557
        Width = 75
        Height = 25
        Cursor = crAuto
        Anchors = [akRight, akBottom]
        IW50Hint = False
        ParentShowHint = False
        ShowHint = True
        ZIndex = 0
        RenderSize = True
        Caption = '<< Prev'
        DoSubmitValidation = True
        Color = clWebCORNFLOWERBLUE
        Font.Color = clNone
        Font.Size = 10
        Font.Style = []
        FriendlyName = 'IWButton1'
        ScriptEvents = <>
        TabOrder = 8
        OnClick = PrevLinkClick
      end
      object NextBtn: TIWButton
        Left = 931
        Top = 557
        Width = 75
        Height = 25
        Cursor = crAuto
        Anchors = [akRight, akBottom]
        IW50Hint = False
        ParentShowHint = False
        ShowHint = True
        ZIndex = 0
        RenderSize = True
        Caption = 'Next >>'
        DoSubmitValidation = True
        Color = clWebCORNFLOWERBLUE
        Font.Color = clNone
        Font.Size = 10
        Font.Style = []
        FriendlyName = 'IWButton2'
        ScriptEvents = <>
        TabOrder = 9
        OnClick = NextLinkClick
      end
      object DelJnlBtn: TIWButton
        Left = 18
        Top = 559
        Width = 75
        Height = 25
        Cursor = crAuto
        Visible = False
        Anchors = [akLeft, akBottom]
        IW50Hint = False
        ParentShowHint = False
        ShowHint = True
        ZIndex = 0
        RenderSize = True
        Caption = 'Delete All'
        Confirmation = 'Delete Entire Journal?'
        DoSubmitValidation = True
        Color = clWebSILVER
        Font.Color = clWebBLUE
        Font.Size = 10
        Font.Style = []
        FriendlyName = 'DelJnlBtn'
        ScriptEvents = <>
        TabOrder = 7
        OnClick = DelJnlBtnClick
      end
      object IWRectangle1: TIWRectangle
        Left = 1
        Top = 4
        Width = 3
        Height = 585
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
        Left = 1
        Top = 1
        Width = 1020
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
      object TranGrid: TIWGrid
        Left = 17
        Top = 65
        Width = 988
        Height = 488
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
        Font.Color = clWebWHITE
        Font.Size = 10
        Font.Style = []
        FrameBuffer = 40
        Lines = tlAll
        OnRenderCell = TranGridRenderCell
        UseFrame = True
        UseSize = True
        FriendlyName = 'TranGrid'
        ColumnCount = 8
        RowCount = 1
        TabOrder = -1
        ShowEmptyCells = True
        ScrollToCurrentRow = False
      end
      object StoreCombo: TIWComboBox
        Left = 16
        Top = 40
        Width = 169
        Height = 21
        Cursor = crAuto
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
        NoSelectionText = 'All Stores'
        Required = False
        RequireSelection = True
        ScriptEvents = <>
        UseSize = True
        Style = stNormal
        ButtonColor = clBtnFace
        DoSubmitValidation = True
        Editable = True
        NonEditableAsLabel = True
        TabOrder = 1
        ItemIndex = -1
        Sorted = False
        FriendlyName = 'StoreCombo'
      end
      object IWLabel3: TIWLabel
        Left = 200
        Top = 40
        Width = 64
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
        FriendlyName = 'IWLabel1'
        Caption = 'Start Time'
        RawText = False
      end
      object StartTime: TIWEdit
        Left = 272
        Top = 38
        Width = 81
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
        FriendlyName = 'StartEdit'
        MaxLength = 0
        ReadOnly = False
        Required = False
        ScriptEvents = <>
        TabOrder = 4
        PasswordPrompt = False
        Text = 'StartEdit'
      end
      object IWLabel4: TIWLabel
        Left = 368
        Top = 40
        Width = 61
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
        FriendlyName = 'IWLabel2'
        Caption = 'End Time'
        RawText = False
      end
      object EndTime: TIWEdit
        Left = 432
        Top = 38
        Width = 81
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
        FriendlyName = 'EndEdit'
        MaxLength = 0
        ReadOnly = False
        Required = False
        ScriptEvents = <>
        TabOrder = 5
        PasswordPrompt = False
        Text = 'EndEdit'
      end
      object UTCBox: TIWCheckBox
        Left = 520
        Top = 8
        Width = 121
        Height = 21
        Cursor = crAuto
        IW50Hint = False
        ParentShowHint = False
        ShowHint = True
        ZIndex = 0
        RenderSize = False
        Caption = 'UTC+'
        Editable = True
        Font.Color = clNone
        Font.Size = 10
        Font.Style = []
        ScriptEvents = <>
        DoSubmitValidation = True
        Style = stNormal
        TabOrder = 12
        Checked = True
        FriendlyName = 'UTCBox'
      end
      object ExptCombo: TIWComboBox
        Left = 520
        Top = 38
        Width = 105
        Height = 21
        Cursor = crAuto
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
        UseSize = True
        Style = stNormal
        ButtonColor = clBtnFace
        DoSubmitValidation = True
        Editable = True
        NonEditableAsLabel = True
        TabOrder = 14
        ItemIndex = 0
        Items.Strings = (
          'Simple'
          'Header/Item'
          'Spreadsheet')
        Sorted = False
        FriendlyName = 'ExptCombo'
      end
    end
  end
  inline userfooter1: Tuserfooter
    Left = 0
    Top = 722
    Width = 1087
    Height = 28
    HorzScrollBar.Visible = False
    Align = alBottom
    TabOrder = 2
    inherited IWRegion1: TIWRegion
      Width = 1087
      TabOrder = 11
      inherited IWRectangle1: TIWRectangle
        Left = 671
        Width = 417
      end
      inherited IWRectangle4: TIWRectangle
        Width = 1703
      end
      inherited IWRectangle6: TIWRectangle
        Width = 629
      end
      inherited Cancel: TIWButton
        Left = 1001
        Caption = 'Menu'
        OnClick = userfooter1CancelClick
      end
      inherited Extra1: TIWButton
        Left = 913
      end
      inherited Extra2: TIWButton
        Left = 825
      end
      inherited fiwSiLink1: TIWSiLink
        Left = 758
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
      'StatusText'
      'Confirmation'
      'HotKey'
      'Summary')
    Left = 688
    Top = 128
    TranslationData = {
      737443617074696F6E730D0A49574C6162656C31015374617274204461746501
      0D0A49574C6162656C3201456E642044617465010D0A566F75636865724C6162
      656C0156696577204A6F75726E616C010D0A446973706C617942746E01557064
      617465010D0A44656C4A6E6C42746E0144656C65746520416C6C010D0A507265
      7642746E013C3C2050726576010D0A4E65787442746E014E657874203E3E010D
      0A49574C696E6B31014578706F7274010D0A5472616E4772696401010D0A4957
      4C6162656C330153746172742054696D65010D0A49574C6162656C3401456E64
      2054696D65010D0A555443426F78015554432B010D0A737448696E74730D0A73
      74446973706C61794C6162656C730D0A7374466F6E74730D0A73744D756C7469
      4C696E65730D0A4957526567696F6E312E4578747261546167506172616D7301
      010D0A4957526567696F6E322E4578747261546167506172616D7301010D0A56
      6F75636865724C6162656C2E4578747261546167506172616D7301010D0A4957
      4C6162656C312E4578747261546167506172616D7301010D0A53746172744564
      69742E4578747261546167506172616D7301010D0A49574C6162656C322E4578
      747261546167506172616D7301010D0A456E64456469742E4578747261546167
      506172616D7301010D0A49574C696E6B312E4578747261546167506172616D73
      01010D0A495753694C696E6B312E4578747261546167506172616D7301010D0A
      446973706C617942746E2E4578747261546167506172616D7301010D0A507265
      7642746E2E4578747261546167506172616D7301010D0A4E65787442746E2E45
      78747261546167506172616D7301010D0A44656C4A6E6C42746E2E4578747261
      546167506172616D7301010D0A495752656374616E676C65312E457874726154
      6167506172616D7301010D0A495752656374616E676C65322E45787472615461
      67506172616D7301010D0A5472616E477269642E457874726154616750617261
      6D7301010D0A53746F7265436F6D626F2E4578747261546167506172616D7301
      010D0A53746F7265436F6D626F2E4974656D7301010D0A49574C6162656C332E
      4578747261546167506172616D7301010D0A537461727454696D652E45787472
      61546167506172616D7301010D0A49574C6162656C342E457874726154616750
      6172616D7301010D0A456E6454696D652E4578747261546167506172616D7301
      010D0A555443426F782E4578747261546167506172616D7301010D0A45787074
      436F6D626F2E4578747261546167506172616D7301010D0A45787074436F6D62
      6F2E4974656D730153696D706C652C4865616465722F4974656D2C5370726561
      647368656574010D0A7374537472696E67730D0A477269642E54696D65015469
      6D65010D0A477269642E437573746F6D657201437573746F6D6572010D0A4772
      69642E446573630144657363010D0A477269642E51747901517479010D0A4772
      69642E416D6F756E7401416D6F756E74010D0A477269642E5072696365015072
      696365010D0A477269642E53746F636B0153746F636B010D0A477269642E5072
      696E746572015072696E746572010D0A477269642E53746F72650153746F7265
      010D0A416C6C2053746F72657301416C6C2053746F726573010D0A4578707443
      6F6D626F2E300153696D706C65010D0A45787074436F6D626F2E310148656164
      65722F4974656D73010D0A45787074436F6D626F2E3201537072656164736865
      6574010D0A73744F74686572537472696E67730D0A49574C6162656C312E4672
      69656E646C794E616D650149574C6162656C31010D0A49574C6162656C322E46
      7269656E646C794E616D650149574C6162656C32010D0A537461727445646974
      2E467269656E646C794E616D6501537461727445646974010D0A537461727445
      6469742E5465787401537461727445646974010D0A456E64456469742E467269
      656E646C794E616D6501456E6445646974010D0A456E64456469742E54657874
      01456E6445646974010D0A566F75636865724C6162656C2E467269656E646C79
      4E616D6501566F75636865724C6162656C010D0A446973706C617942746E2E46
      7269656E646C794E616D6501446973706C617942746E010D0A44656C4A6E6C42
      746E2E467269656E646C794E616D650144656C4A6E6C42746E010D0A50726576
      42746E2E467269656E646C794E616D65014957427574746F6E31010D0A4E6578
      7442746E2E467269656E646C794E616D65014957427574746F6E32010D0A4957
      4C696E6B312E467269656E646C794E616D650149574C696E6B31010D0A495753
      694C696E6B312E467269656E646C794E616D6501495753694C696E6B31010D0A
      495753694C696E6B312E4C616E6746696C65016A6E6C2E73696C010D0A54666F
      726D4A6E6C2E48656C704B6579776F726401010D0A53746174734672616D6554
      69746C65312E48656C704B6579776F726401010D0A4957526567696F6E312E48
      656C704B6579776F726401010D0A4957526567696F6E322E48656C704B657977
      6F726401010D0A566F75636865724C6162656C2E48656C704B6579776F726401
      010D0A49574C6162656C312E48656C704B6579776F726401010D0A5374617274
      456469742E48656C704B6579776F726401010D0A49574C6162656C322E48656C
      704B6579776F726401010D0A456E64456469742E48656C704B6579776F726401
      010D0A49574C696E6B312E48656C704B6579776F726401010D0A495753694C69
      6E6B312E48656C704B6579776F726401010D0A446973706C617942746E2E4865
      6C704B6579776F726401010D0A5072657642746E2E48656C704B6579776F7264
      01010D0A4E65787442746E2E48656C704B6579776F726401010D0A44656C4A6E
      6C42746E2E48656C704B6579776F726401010D0A495752656374616E676C6531
      2E467269656E646C794E616D6501495752656374616E676C6531010D0A495752
      656374616E676C65312E48656C704B6579776F726401010D0A49575265637461
      6E676C65312E5465787401010D0A495752656374616E676C65322E467269656E
      646C794E616D6501495752656374616E676C6531010D0A495752656374616E67
      6C65322E48656C704B6579776F726401010D0A495752656374616E676C65322E
      5465787401010D0A5472616E477269642E467269656E646C794E616D65015472
      616E47726964010D0A5472616E477269642E48656C704B6579776F726401010D
      0A75736572666F6F746572312E48656C704B6579776F726401010D0A53746F72
      65436F6D626F2E467269656E646C794E616D650153746F7265436F6D626F010D
      0A53746F7265436F6D626F2E48656C704B6579776F726401010D0A53746F7265
      436F6D626F2E4E6F53656C656374696F6E5465787401416C6C2053746F726573
      010D0A49574C6162656C332E467269656E646C794E616D650149574C6162656C
      31010D0A49574C6162656C332E48656C704B6579776F726401010D0A53746172
      7454696D652E467269656E646C794E616D6501537461727445646974010D0A53
      7461727454696D652E48656C704B6579776F726401010D0A537461727454696D
      652E5465787401537461727445646974010D0A49574C6162656C342E46726965
      6E646C794E616D650149574C6162656C32010D0A49574C6162656C342E48656C
      704B6579776F726401010D0A456E6454696D652E467269656E646C794E616D65
      01456E6445646974010D0A456E6454696D652E48656C704B6579776F72640101
      0D0A456E6454696D652E5465787401456E6445646974010D0A555443426F782E
      467269656E646C794E616D6501555443426F78010D0A555443426F782E48656C
      704B6579776F726401010D0A45787074436F6D626F2E467269656E646C794E61
      6D650145787074436F6D626F010D0A45787074436F6D626F2E48656C704B6579
      776F726401010D0A45787074436F6D626F2E4E6F53656C656374696F6E546578
      74012D2D204E6F2053656C656374696F6E202D2D010D0A7374436F6C6C656374
      696F6E730D0A737443686172536574730D0A}
  end
end
