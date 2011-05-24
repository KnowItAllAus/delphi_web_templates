object FormJobDtl: TFormJobDtl
  Left = 0
  Top = 0
  Width = 1028
  Height = 579
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
  DesignLeft = 62
  DesignTop = 114
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
      DesignSize = (
        1028
        116)
      inherited titleimage: TIWImageFile
        ImageFile.Filename = 'E:\delphi\delphi_web\files\promotions.GIF'
      end
      inherited IWRectangle1: TIWRectangle
        Top = 91
        Width = 1028
      end
      inherited IWRectangle3: TIWRectangle
        Top = 96
      end
      inherited IWImageFile3: TIWImageFile
        Left = 623
      end
      inherited langlink: TIWSiLink
        Left = 636
      end
      inherited Smalltitle: TIWLabel
        Left = 949
        Width = 57
      end
      inherited HideBox: TIWImageFile
        Left = 1013
      end
      inherited TitleLabel: TIWLabel
        Width = 387
        Caption = 'promotions'
      end
    end
  end
  inline userfooter1: Tuserfooter
    Left = 0
    Top = 547
    Width = 1028
    Height = 32
    HorzScrollBar.Visible = False
    Align = alBottom
    TabOrder = 1
    inherited IWRegion1: TIWRegion
      Width = 1028
      Height = 32
      TabOrder = 10
      DesignSize = (
        1028
        32)
      inherited IWRectangle1: TIWRectangle
        Left = 652
        Width = 416
      end
      inherited IWRectangle4: TIWRectangle
        Width = 1644
      end
      inherited IWRectangle6: TIWRectangle
        Width = 610
      end
      inherited Cancel: TIWButton
        Left = 939
        OnClick = userfooter1CancelClick
      end
      inherited Extra1: TIWButton
        Left = 851
      end
      inherited Extra2: TIWButton
        Left = 763
        Visible = True
        Caption = 'Save'
        OnClick = userfooter1Extra2Click
      end
      inherited fiwSiLink1: TIWSiLink
        Left = 715
      end
      inherited navcombo: TIWComboBox
        Visible = False
      end
    end
  end
  object IWRegion1: TIWRegion
    Left = 0
    Top = 116
    Width = 1028
    Height = 431
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
      431)
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
      TabOrder = 6
      RawText = False
      SiLangLinked = silanglinked1
      LangFile = 'job.sil'
      LangControl = RcDataMod.LangEditControl1
    end
    object BodyRegion: TIWRegion
      Left = 183
      Top = 50
      Width = 657
      Height = 271
      Cursor = crAuto
      RenderInvisibleControls = False
      Anchors = [akTop]
      BorderOptions.NumericWidth = 0
      BorderOptions.BorderWidth = cbwNumeric
      BorderOptions.Style = cbsNone
      BorderOptions.Color = clNone
      Color = 14202786
      ParentShowHint = False
      ShowHint = True
      ZIndex = 1000
      Splitter = False
      object IWRectangle2: TIWRectangle
        Left = 0
        Top = 0
        Width = 657
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
      object IWRectangle1: TIWRectangle
        Left = 0
        Top = 3
        Width = 3
        Height = 268
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
        Left = 48
        Top = 12
        Width = 121
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
        Caption = 'Job Details'
        RawText = False
      end
      object IWLabel1: TIWLabel
        Left = 48
        Top = 89
        Width = 40
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
        Caption = 'Status'
        RawText = False
      end
      object IWLabel2: TIWLabel
        Left = 48
        Top = 217
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
        Left = 128
        Top = 216
        Width = 465
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
        BGColor = clNone
        FocusColor = clNone
        DoSubmitValidation = True
        Editable = True
        NonEditableAsLabel = True
        Font.Color = clNone
        Font.Size = 10
        Font.Style = []
        FriendlyName = 'IWEdit1'
        MaxLength = 0
        ReadOnly = False
        Required = False
        ScriptEvents = <>
        SubmitOnAsyncEvent = True
        TabOrder = 7
        PasswordPrompt = False
        Text = 'DescEdit'
      end
      object NameEdit: TIWEdit
        Left = 128
        Top = 56
        Width = 257
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
        BGColor = clNone
        FocusColor = clNone
        DoSubmitValidation = True
        Editable = True
        NonEditableAsLabel = True
        Font.Color = clNone
        Font.Size = 10
        Font.Style = []
        FriendlyName = 'StatEdit'
        MaxLength = 0
        ReadOnly = False
        Required = False
        ScriptEvents = <>
        SubmitOnAsyncEvent = True
        TabOrder = 8
        PasswordPrompt = False
        Text = 'NameEdit'
      end
      object IWLabel3: TIWLabel
        Left = 48
        Top = 57
        Width = 40
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
        Caption = 'Name'
        RawText = False
      end
      object EditBtn: TIWRadioButton
        Left = 130
        Top = 88
        Width = 252
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
        Caption = 'Edit'
        Editable = True
        Font.Color = clNone
        Font.Size = 10
        Font.Style = []
        ScriptEvents = <>
        DoSubmitValidation = True
        Checked = False
        Group = 'StatusGroup'
        Value = '0'
        FriendlyName = 'EditBtn'
        SubmitOnAsyncEvent = True
      end
      object TestBtn: TIWRadioButton
        Tag = 1
        Left = 130
        Top = 112
        Width = 252
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
        Caption = 'Test'
        Editable = True
        Font.Color = clNone
        Font.Size = 10
        Font.Style = []
        ScriptEvents = <>
        DoSubmitValidation = True
        Checked = False
        Group = 'StatusGroup'
        Value = '1'
        FriendlyName = 'IWRadioButton1'
        SubmitOnAsyncEvent = True
      end
      object ReadyBtn: TIWRadioButton
        Tag = 2
        Left = 130
        Top = 136
        Width = 252
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
        Caption = 'Ready'
        Editable = True
        Font.Color = clNone
        Font.Size = 10
        Font.Style = []
        ScriptEvents = <>
        DoSubmitValidation = True
        Checked = False
        Group = 'StatusGroup'
        Value = '2'
        FriendlyName = 'IWRadioButton1'
        SubmitOnAsyncEvent = True
      end
      object ActiveBtn: TIWRadioButton
        Tag = 3
        Left = 130
        Top = 160
        Width = 252
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
        Caption = 'Active'
        Editable = True
        Font.Color = clNone
        Font.Size = 10
        Font.Style = []
        ScriptEvents = <>
        DoSubmitValidation = True
        Checked = False
        Group = 'StatusGroup'
        Value = '3'
        FriendlyName = 'IWRadioButton1'
        SubmitOnAsyncEvent = True
      end
      object ArchiveBtn: TIWRadioButton
        Tag = 4
        Left = 130
        Top = 184
        Width = 252
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
        Caption = 'Archive'
        Editable = True
        Font.Color = clNone
        Font.Size = 10
        Font.Style = []
        ScriptEvents = <>
        DoSubmitValidation = True
        Checked = False
        Group = 'StatusGroup'
        Value = '4'
        FriendlyName = 'IWRadioButton1'
        SubmitOnAsyncEvent = True
      end
      object DelJobRevBtn: TIWButton
        Left = 512
        Top = 12
        Width = 131
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
        Caption = 'Delete Job'
        Confirmation = 'Delete Record?'
        DoSubmitValidation = True
        Color = clBtnFace
        Font.Color = clNone
        Font.Size = 10
        Font.Style = []
        FriendlyName = 'DelJobRevBtn'
        ScriptEvents = <>
        TabOrder = 9
        OnClick = DelJobRevBtnClick
      end
      object TemplateBox: TIWCheckBox
        Left = 425
        Top = 60
        Width = 121
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
        Caption = 'Template'
        Editable = True
        Font.Color = clNone
        Font.Size = 10
        Font.Style = []
        SubmitOnAsyncEvent = True
        ScriptEvents = <>
        DoSubmitValidation = True
        Style = stNormal
        TabOrder = 11
        Checked = False
        FriendlyName = 'TemplateBox'
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
      737443617074696F6E730D0A4A6F624C6162656C014A6F622044657461696C73
      010D0A49574C6162656C3101537461747573010D0A49574C6162656C32014465
      736372697074696F6E010D0A49574C6162656C33014E616D65010D0A45646974
      42746E0145646974010D0A5465737442746E0154657374010D0A526561647942
      746E015265616479010D0A41637469766542746E01416374697665010D0A4172
      636869766542746E0141726368697665010D0A44656C4A6F6252657642746E01
      44656C657465204A6F62010D0A54656D706C617465426F780154656D706C6174
      65010D0A737448696E74730D0A7374446973706C61794C6162656C730D0A7374
      466F6E74730D0A5475736572666F6F746572014D532053616E73205365726966
      010D0A73744D756C74694C696E65730D0A4957526567696F6E312E4578747261
      546167506172616D7301010D0A495753694C696E6B312E457874726154616750
      6172616D7301010D0A426F6479526567696F6E2E457874726154616750617261
      6D7301010D0A495752656374616E676C65322E4578747261546167506172616D
      7301010D0A495752656374616E676C65312E4578747261546167506172616D73
      01010D0A4A6F624C6162656C2E4578747261546167506172616D7301010D0A49
      574C6162656C312E4578747261546167506172616D7301010D0A49574C616265
      6C322E4578747261546167506172616D7301010D0A44657363456469742E4578
      747261546167506172616D7301010D0A4E616D65456469742E45787472615461
      67506172616D7301010D0A49574C6162656C332E457874726154616750617261
      6D7301010D0A4564697442746E2E4578747261546167506172616D7301010D0A
      5465737442746E2E4578747261546167506172616D7301010D0A526561647942
      746E2E4578747261546167506172616D7301010D0A41637469766542746E2E45
      78747261546167506172616D7301010D0A4172636869766542746E2E45787472
      61546167506172616D7301010D0A44656C4A6F6252657642746E2E4578747261
      546167506172616D7301010D0A54656D706C617465426F782E45787472615461
      67506172616D7301010D0A7374537472696E67730D0A73744F74686572537472
      696E67730D0A495753694C696E6B312E436F6E6669726D6174696F6E01010D0A
      495753694C696E6B312E4C616E6746696C65016A6F622E73696C010D0A495752
      656374616E676C65322E5465787401010D0A495752656374616E676C65312E54
      65787401010D0A44657363456469742E54657874014465736345646974010D0A
      4E616D65456469742E54657874014E616D6545646974010D0A4564697442746E
      2E47726F75700153746174757347726F7570010D0A4564697442746E2E56616C
      75650130010D0A5465737442746E2E47726F75700153746174757347726F7570
      010D0A5465737442746E2E56616C75650131010D0A526561647942746E2E4772
      6F75700153746174757347726F7570010D0A526561647942746E2E56616C7565
      0132010D0A41637469766542746E2E47726F75700153746174757347726F7570
      010D0A41637469766542746E2E56616C75650133010D0A417263686976654274
      6E2E47726F75700153746174757347726F7570010D0A4172636869766542746E
      2E56616C75650134010D0A44656C4A6F6252657642746E2E436F6E6669726D61
      74696F6E0144656C657465205265636F72643F010D0A54656D706C617465426F
      782E436F6E6669726D6174696F6E01010D0A7374436F6C6C656374696F6E730D
      0A737443686172536574730D0A5475736572666F6F7465720144454641554C54
      5F43484152534554010D0A}
  end
end
