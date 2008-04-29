object FormJobDtl: TFormJobDtl
  Left = 0
  Top = 0
  Width = 1103
  Height = 579
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
  DesignLeft = 84
  DesignTop = 230
  inline FrameBareTitle1: TFrameBareTitle
    Left = 0
    Top = 0
    Width = 1103
    Height = 116
    HorzScrollBar.Visible = False
    VertScrollBar.Visible = False
    Align = alTop
    TabOrder = 0
    inherited IWFrameRegion: TIWRegion
      Width = 1103
      Height = 116
      TabOrder = 9
      DesignSize = (
        1103
        116)
      inherited IWImageFile1: TIWImageFile
        TabOrder = 1
      end
      inherited titleimage: TIWImageFile
        TabOrder = 0
        ImageFile.Filename = 'E:\delphi\delphi_web\files\promotions.GIF'
      end
      inherited IWRectangle1: TIWRectangle
        Top = 91
        Width = 1103
      end
      inherited IWRectangle3: TIWRectangle
        Top = 96
      end
      inherited IWImageFile3: TIWImageFile
        Left = 698
        TabOrder = 2
      end
      inherited TitleLabel: TIWLabel
        Width = 387
        Caption = 'promotions'
      end
      inherited langlink: TIWSiLink
        Left = 711
      end
      inherited Smalltitle: TIWLabel
        Left = 1024
        Width = 57
      end
      inherited HideBox: TIWImageFile
        Left = 1088
      end
    end
  end
  inline userfooter1: Tuserfooter
    Left = 0
    Top = 547
    Width = 1103
    Height = 32
    HorzScrollBar.Visible = False
    Align = alBottom
    TabOrder = 1
    inherited IWRegion1: TIWRegion
      Width = 1103
      Height = 32
      TabOrder = 8
      DesignSize = (
        1103
        32)
      inherited IWRectangle1: TIWRectangle
        Left = 727
        Width = 416
      end
      inherited IWRectangle4: TIWRectangle
        Width = 1719
      end
      inherited IWRectangle6: TIWRectangle
        Width = 685
      end
      inherited Cancel: TIWButton
        Left = 1014
        OnClick = userfooter1CancelClick
      end
      inherited Extra1: TIWButton
        Left = 926
      end
      inherited Extra2: TIWButton
        Left = 838
        Visible = True
        Caption = 'Save'
        OnClick = userfooter1Extra2Click
      end
      inherited fiwSiLink1: TIWSiLink
        Left = 790
      end
      inherited navcombo: TIWComboBox
        Visible = False
      end
    end
  end
  object IWRegion1: TIWRegion
    Left = 0
    Top = 116
    Width = 1103
    Height = 431
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
      1103
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
      RenderSize = False
      Alignment = taLeftJustify
      Color = clNone
      Font.Color = clNone
      Font.Size = 10
      Font.Style = [fsUnderline]
      ScriptEvents = <>
      DoSubmitValidation = False
      FriendlyName = 'IWSiLink1'
      TabOrder = 5
      RawText = False
      SiLangLinked = silanglinked1
      LangFile = 'job.sil'
      LangControl = RcDataMod.LangEditControl1
    end
    object BodyRegion: TIWRegion
      Left = 220
      Top = 50
      Width = 657
      Height = 271
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
        Height = 268
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
        RenderSize = False
        Alignment = taLeftJustify
        BGColor = clNone
        Font.Color = clNone
        Font.Size = 10
        Font.Style = []
        NoWrap = False
        ConvertSpaces = False
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
        RenderSize = False
        Alignment = taLeftJustify
        BGColor = clNone
        Font.Color = clNone
        Font.Size = 10
        Font.Style = []
        NoWrap = False
        ConvertSpaces = False
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
        TabOrder = 6
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
        TabOrder = 7
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
        RenderSize = False
        Alignment = taLeftJustify
        BGColor = clNone
        Font.Color = clNone
        Font.Size = 10
        Font.Style = []
        NoWrap = False
        ConvertSpaces = False
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
        RenderSize = False
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
        RenderSize = False
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
        RenderSize = False
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
        RenderSize = False
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
        RenderSize = False
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
        Caption = 'Delete Job'
        Confirmation = 'Delete Record?'
        DoSubmitValidation = True
        Color = clBtnFace
        Font.Color = clNone
        Font.Size = 10
        Font.Style = []
        FriendlyName = 'DelJobRevBtn'
        ScriptEvents = <>
        TabOrder = 10
        OnClick = DelJobRevBtnClick
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
      736372697074696F6E010D0A49574C6162656C33014E616D65010D0A73744869
      6E74730D0A7374446973706C61794C6162656C730D0A7374466F6E74730D0A54
      75736572666F6F746572014D532053616E73205365726966010D0A73744D756C
      74694C696E65730D0A4957526567696F6E312E4578747261546167506172616D
      7301010D0A495753694C696E6B312E4578747261546167506172616D7301010D
      0A426F6479526567696F6E2E4578747261546167506172616D7301010D0A4957
      52656374616E676C65322E4578747261546167506172616D7301010D0A495752
      656374616E676C65312E4578747261546167506172616D7301010D0A4A6F624C
      6162656C2E4578747261546167506172616D7301010D0A49574C6162656C312E
      4578747261546167506172616D7301010D0A49574C6162656C322E4578747261
      546167506172616D7301010D0A44657363456469742E45787472615461675061
      72616D7301010D0A4E616D65456469742E4578747261546167506172616D7301
      010D0A49574C6162656C332E4578747261546167506172616D7301010D0A7374
      537472696E67730D0A73744F74686572537472696E67730D0A495753694C696E
      6B312E436F6E6669726D6174696F6E01010D0A495753694C696E6B312E4C616E
      6746696C650172756C65732E73696C010D0A495752656374616E676C65322E54
      65787401010D0A495752656374616E676C65312E5465787401010D0A44657363
      456469742E54657874014465736345646974010D0A4E616D65456469742E5465
      7874014E616D6545646974010D0A7374436F6C6C656374696F6E730D0A737443
      686172536574730D0A5475736572666F6F7465720144454641554C545F434841
      52534554010D0A}
  end
end
