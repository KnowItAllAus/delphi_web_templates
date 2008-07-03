object formGrpTmpl: TformGrpTmpl
  Left = 0
  Top = 0
  Width = 1021
  Height = 725
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
  DesignLeft = 127
  DesignTop = 238
  object IWRegion1: TIWRegion
    Left = 0
    Top = 118
    Width = 1021
    Height = 578
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
      1021
      578)
    object IWRegion2: TIWRegion
      Left = 140
      Top = 14
      Width = 686
      Height = 543
      Cursor = crAuto
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
        686
        543)
      object TmplLabel: TIWLabel
        Left = 8
        Top = 8
        Width = 238
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
        FriendlyName = 'TmplLabel'
        Caption = 'Template Usage'
        RawText = False
      end
      object TmplGrid: TIWGrid
        Left = 20
        Top = 100
        Width = 646
        Height = 426
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
        OnRenderCell = TmplGridRenderCell
        UseFrame = True
        UseSize = True
        FriendlyName = 'PrinterGrid'
        ColumnCount = 3
        OnCellClick = TmplGridCellClick
        RowCount = 1
        TabOrder = -1
        ShowEmptyCells = True
        ScrollToCurrentRow = False
      end
      object GroupCombo: TIWComboBox
        Left = 175
        Top = 41
        Width = 491
        Height = 21
        Cursor = crAuto
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
        TabOrder = 1
        ItemIndex = -1
        Sorted = False
        FriendlyName = 'RegionCombo'
      end
      object IWLabel3: TIWLabel
        Left = 21
        Top = 42
        Width = 150
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
        Font.Style = [fsBold]
        NoWrap = False
        ConvertSpaces = False
        AutoSize = False
        FriendlyName = 'IWLabel5'
        Caption = 'Available Templates'
        RawText = False
      end
      object AddGrpBtn: TIWButton
        Left = 21
        Top = 64
        Width = 61
        Height = 25
        Cursor = crAuto
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
        LangFile = 'tmplgrp.sil'
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
        Width = 686
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
      object CurrentBox: TIWCheckBox
        Left = 560
        Top = 10
        Width = 106
        Height = 21
        Cursor = crAuto
        IW50Hint = False
        ParentShowHint = False
        ShowHint = True
        ZIndex = 0
        RenderSize = False
        Caption = 'Selected'
        Editable = True
        Font.Color = clNone
        Font.Size = 10
        Font.Style = []
        ScriptEvents = <>
        DoSubmitValidation = True
        Style = stNormal
        TabOrder = 5
        OnClick = CurrentBoxClick
        Checked = False
        FriendlyName = 'CurrentBox'
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
        Caption = 'Back'
        OnClick = CancelBtnClick
      end
      inherited Extra1: TIWButton
        Left = 847
        Caption = 'Delete'
        Confirmation = 'Delete this record?'
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
      inherited TitleLabel: TIWLabel
        Width = 387
        Caption = 'distribution'
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
      737443617074696F6E730D0A546D706C4C6162656C0154656D706C6174652055
      73616765010D0A546D706C4772696401010D0A49574C6162656C330141766169
      6C61626C652054656D706C61746573010D0A41646447727042746E0141646401
      0D0A43757272656E74426F780153656C6563746564010D0A737448696E74730D
      0A7374446973706C61794C6162656C730D0A7374466F6E74730D0A73744D756C
      74694C696E65730D0A4957526567696F6E312E4578747261546167506172616D
      7301010D0A4957526567696F6E322E4578747261546167506172616D7301010D
      0A546D706C4C6162656C2E4578747261546167506172616D7301010D0A546D70
      6C477269642E4578747261546167506172616D7301010D0A47726F7570436F6D
      626F2E4578747261546167506172616D7301010D0A47726F7570436F6D626F2E
      4974656D7301010D0A49574C6162656C332E4578747261546167506172616D73
      01010D0A41646447727042746E2E4578747261546167506172616D7301010D0A
      495753694C696E6B312E4578747261546167506172616D7301010D0A49575265
      6374616E676C65312E4578747261546167506172616D7301010D0A4957526563
      74616E676C65322E4578747261546167506172616D7301010D0A43757272656E
      74426F782E4578747261546167506172616D7301010D0A7374537472696E6773
      0D0A44656C657465436F6E660144656C65746520746869732074656D706C6174
      65207265666572656E63653F20010D0A477269642E4964014944010D0A477269
      642E4E616D65014E616D65010D0A477269642E44656C6574650144656C657465
      010D0A477269642E506172616D657465727301506172616D6574657273010D0A
      477269642E416464506172616D0141646420506172616D65746572010D0A4772
      69642E4E6577506172616D65746572014E657720506172616D65746572010D0A
      477269642E456469740145646974010D0A477269642E50726F70657274696573
      0150726F70657274696573010D0A477269642E475549440147554944010D0A47
      7269642E4669656C64014669656C64010D0A477269642E547970650150617261
      6D657465722054797065010D0A477269642E4F626A656374014F626A65637401
      0D0A73744F74686572537472696E67730D0A54666F726D477270546D706C2E48
      656C704B6579776F726401010D0A4957526567696F6E312E48656C704B657977
      6F726401010D0A4957526567696F6E322E48656C704B6579776F726401010D0A
      546D706C4C6162656C2E48656C704B6579776F726401010D0A546D706C477269
      642E48656C704B6579776F726401010D0A47726F7570436F6D626F2E48656C70
      4B6579776F726401010D0A49574C6162656C332E48656C704B6579776F726401
      010D0A41646447727042746E2E48656C704B6579776F726401010D0A49575369
      4C696E6B312E48656C704B6579776F726401010D0A495752656374616E676C65
      312E48656C704B6579776F726401010D0A495752656374616E676C65322E4865
      6C704B6579776F726401010D0A75736572666F6F746572312E48656C704B6579
      776F726401010D0A4672616D65426172655469746C65312E48656C704B657977
      6F726401010D0A43757272656E74426F782E48656C704B6579776F726401010D
      0A7374436F6C6C656374696F6E730D0A737443686172536574730D0A}
  end
end
