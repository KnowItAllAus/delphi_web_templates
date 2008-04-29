object FormJobRevDtl: TFormJobRevDtl
  Left = 0
  Top = 0
  Width = 1016
  Height = 659
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
  DesignLeft = 73
  DesignTop = 292
  object IWRegion1: TIWRegion
    Left = 0
    Top = 118
    Width = 1016
    Height = 513
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
      RenderSize = False
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
      LangFile = 'jobrevdtl.sil'
      LangControl = RcDataMod.LangEditControl1
    end
    object BodyRegion: TIWRegion
      Left = 185
      Top = 122
      Width = 657
      Height = 167
      Cursor = crAuto
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
        Alignment = taLeftJustify
        BGColor = clNone
        Font.Color = clNone
        Font.FontName = 'Arial'
        Font.Size = 12
        Font.Style = [fsBold]
        NoWrap = False
        ConvertSpaces = False
        AutoSize = False
        FriendlyName = 'StoreLabel'
        Caption = 'Revision Details'
        RawText = False
      end
      object NoteEdit: TIWEdit
        Left = 128
        Top = 72
        Width = 401
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
        FriendlyName = 'StatEdit'
        MaxLength = 0
        ReadOnly = False
        Required = False
        ScriptEvents = <>
        TabOrder = 1
        PasswordPrompt = False
        Text = 'NoteEdit'
      end
      object IWLabel3: TIWLabel
        Left = 48
        Top = 73
        Width = 31
        Height = 16
        Cursor = crAuto
        IW50Hint = False
        ParentShowHint = False
        ShowHint = True
        ZIndex = 0
        RenderSize = False
        Alignment = taLeftJustify
        BGColor = clNone
        Font.Color = clNone
        Font.Size = 10
        Font.Style = []
        NoWrap = False
        ConvertSpaces = False
        FriendlyName = 'IWLabel1'
        Caption = 'Note'
        RawText = False
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
        Caption = 'Delete Revision'
        Confirmation = 'Delete Record?'
        DoSubmitValidation = True
        Color = clBtnFace
        Font.Color = clNone
        Font.Size = 10
        Font.Style = []
        FriendlyName = 'DelJobRevBtn'
        ScriptEvents = <>
        TabOrder = 4
        OnClick = DelJobRevBtnClick
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
      TabOrder = 2
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
      inherited TitleLabel: TIWLabel
        Width = 387
        Caption = 'promotions'
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
      TabOrder = 3
      inherited Cancel: TIWButton
        OnClick = userfooter1CancelClick
      end
      inherited Extra2: TIWButton
        Visible = True
        Caption = 'Save'
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
      737443617074696F6E730D0A4A6F624C6162656C015265766973696F6E204465
      7461696C73010D0A49574C6162656C33014E6F7465010D0A737448696E74730D
      0A7374446973706C61794C6162656C730D0A7374466F6E74730D0A5475736572
      666F6F746572014D532053616E73205365726966010D0A73744D756C74694C69
      6E65730D0A4957526567696F6E312E4578747261546167506172616D7301010D
      0A495753694C696E6B312E4578747261546167506172616D7301010D0A426F64
      79526567696F6E2E4578747261546167506172616D7301010D0A495752656374
      616E676C65322E4578747261546167506172616D7301010D0A49575265637461
      6E676C65312E4578747261546167506172616D7301010D0A4A6F624C6162656C
      2E4578747261546167506172616D7301010D0A4E6F7465456469742E45787472
      61546167506172616D7301010D0A49574C6162656C332E457874726154616750
      6172616D7301010D0A7374537472696E67730D0A73744F74686572537472696E
      67730D0A495753694C696E6B312E436F6E6669726D6174696F6E01010D0A4957
      53694C696E6B312E4C616E6746696C65016A6F6272657664746C2E73696C010D
      0A495752656374616E676C65322E5465787401010D0A495752656374616E676C
      65312E5465787401010D0A4E6F7465456469742E54657874014E616D65456469
      74010D0A7374436F6C6C656374696F6E730D0A737443686172536574730D0A54
      75736572666F6F7465720144454641554C545F43484152534554010D0A}
  end
end
