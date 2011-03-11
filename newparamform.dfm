object FormParamCreate: TFormParamCreate
  Left = 0
  Top = 0
  Width = 1016
  Height = 659
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
  DesignLeft = 104
  DesignTop = 310
  object IWRegion1: TIWRegion
    Left = 0
    Top = 118
    Width = 1016
    Height = 513
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
      1016
      513)
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
      TabOrder = 2
      RawText = False
      SiLangLinked = silanglinked1
      LangFile = 'groupnameedit.sil'
      LangControl = RcDataMod.LangEditControl1
    end
    object BodyRegion: TIWRegion
      Left = 185
      Top = 122
      Width = 657
      Height = 167
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
        Height = 164
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
      object ParamLabel: TIWLabel
        Left = 48
        Top = 12
        Width = 193
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
        Caption = 'Parameter Name'
        RawText = False
      end
      object NameEdit: TIWEdit
        Left = 128
        Top = 57
        Width = 401
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
        TabOrder = 3
        PasswordPrompt = False
        Text = 'NameEdit'
      end
      object IWLabel3: TIWLabel
        Left = 48
        Top = 58
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
      object ObjBtn: TIWRadioButton
        Left = 130
        Top = 90
        Width = 186
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
        Caption = 'Create Object (Image etc)'
        Editable = True
        Font.Color = clNone
        Font.Size = 10
        Font.Style = []
        ScriptEvents = <>
        DoSubmitValidation = True
        Checked = True
        Group = 'no group'
        Value = 'ObjBtn'
        FriendlyName = 'ObjBtn'
        SubmitOnAsyncEvent = True
      end
      object FieldBtn: TIWRadioButton
        Left = 130
        Top = 115
        Width = 186
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
        Caption = 'Create Field (Date etc)'
        Editable = True
        Font.Color = clNone
        Font.Size = 10
        Font.Style = []
        ScriptEvents = <>
        DoSubmitValidation = True
        Checked = False
        Group = 'no group'
        Value = 'FieldBtn'
        FriendlyName = 'FieldBtn'
        SubmitOnAsyncEvent = True
      end
    end
  end
  inline FrameBareTitle1: TFrameBareTitle
    Left = 0
    Top = 0
    Width = 1016
    Height = 118
    HorzScrollBar.Visible = False
    VertScrollBar.Visible = False
    Align = alTop
    TabOrder = 1
    inherited IWFrameRegion: TIWRegion
      Width = 1016
      Height = 118
      TabOrder = 4
      inherited titleimage: TIWImageFile
        ImageFile.Filename = 'E:\delphi\delphi_web\files\promotions.GIF'
      end
      inherited IWRectangle1: TIWRectangle
        Top = 93
        Width = 1529
      end
      inherited IWRectangle3: TIWRectangle
        Top = 98
      end
      inherited IWImageFile3: TIWImageFile
        Left = 681
      end
      inherited langlink: TIWSiLink
        Left = 610
      end
      inherited Smalltitle: TIWLabel
        Top = 100
      end
      inherited HideBox: TIWImageFile
        Left = 999
        Top = 100
      end
      inherited TitleLabel: TIWLabel
        Left = 37
        Top = 10
        Width = 387
        Caption = 'distribution'
      end
    end
  end
  inline userfooter1: Tuserfooter
    Left = 0
    Top = 631
    Width = 1016
    Height = 28
    HorzScrollBar.Visible = False
    Align = alBottom
    TabOrder = 2
    inherited IWRegion1: TIWRegion
      Width = 1016
      TabOrder = 5
      inherited Cancel: TIWButton
        OnClick = userfooter1CancelClick
      end
      inherited Extra2: TIWButton
        Visible = True
        Caption = 'Create'
        OnClick = userfooter1Extra2Click
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
      737443617074696F6E730D0A506172616D4C6162656C01506172616D65746572
      204E616D65010D0A49574C6162656C33014E616D65010D0A4F626A42746E0143
      7265617465204F626A6563742028496D6167652065746329010D0A4669656C64
      42746E01437265617465204669656C642028446174652065746329010D0A7374
      48696E74730D0A7374446973706C61794C6162656C730D0A7374466F6E74730D
      0A5475736572666F6F746572014D532053616E73205365726966010D0A73744D
      756C74694C696E65730D0A4957526567696F6E312E4578747261546167506172
      616D7301010D0A495753694C696E6B312E4578747261546167506172616D7301
      010D0A426F6479526567696F6E2E4578747261546167506172616D7301010D0A
      495752656374616E676C65322E4578747261546167506172616D7301010D0A49
      5752656374616E676C65312E4578747261546167506172616D7301010D0A5061
      72616D4C6162656C2E4578747261546167506172616D7301010D0A4E616D6545
      6469742E4578747261546167506172616D7301010D0A49574C6162656C332E45
      78747261546167506172616D7301010D0A4F626A42746E2E4578747261546167
      506172616D7301010D0A4669656C6442746E2E4578747261546167506172616D
      7301010D0A7374537472696E67730D0A4E6577506172616D65746572014E6577
      20506172616D65746572010D0A73744F74686572537472696E67730D0A495753
      694C696E6B312E436F6E6669726D6174696F6E01010D0A495753694C696E6B31
      2E4C616E6746696C650167726F75706E616D65656469742E73696C010D0A4957
      52656374616E676C65322E5465787401010D0A495752656374616E676C65312E
      5465787401010D0A4E616D65456469742E54657874014E616D6545646974010D
      0A4F626A42746E2E47726F7570016E6F2067726F7570010D0A4F626A42746E2E
      56616C75650143726561746542746E010D0A4669656C6442746E2E47726F7570
      016E6F2067726F7570010D0A4669656C6442746E2E56616C7565014372656174
      6542746E010D0A7374436F6C6C656374696F6E730D0A73744368617253657473
      0D0A5475736572666F6F7465720144454641554C545F43484152534554010D0A}
  end
end
