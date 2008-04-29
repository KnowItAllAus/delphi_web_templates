object FormImgHdr: TFormImgHdr
  Left = 0
  Top = 0
  Width = 1086
  Height = 656
  HorzScrollBar.Visible = False
  VertScrollBar.Visible = False
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
  DesignLeft = 244
  DesignTop = 352
  inline FrameBareTitle1: TFrameBareTitle
    Left = 0
    Top = 0
    Width = 1086
    Height = 114
    HorzScrollBar.Visible = False
    VertScrollBar.Visible = False
    Align = alTop
    TabOrder = 0
    inherited IWFrameRegion: TIWRegion
      Width = 1086
      TabOrder = 6
      inherited titleimage: TIWImageFile
        ImageFile.Filename = 'E:\delphi\delphi_web\files\promotions.GIF'
      end
      inherited IWRectangle1: TIWRectangle
        Width = 1086
      end
      inherited IWImageFile3: TIWImageFile
        Left = 751
      end
      inherited TitleLabel: TIWLabel
        Width = 387
        Caption = 'promotions'
      end
      inherited langlink: TIWSiLink
        Left = 688
      end
      inherited Smalltitle: TIWLabel
        Left = 968
      end
      inherited HideBox: TIWImageFile
        Left = 1072
        Width = 12
        Height = 14
      end
    end
  end
  inline userfooter1: Tuserfooter
    Left = 0
    Top = 627
    Width = 1086
    Height = 29
    HorzScrollBar.Visible = False
    Align = alBottom
    TabOrder = 1
    inherited IWRegion1: TIWRegion
      Width = 1086
      Height = 29
      TabOrder = 7
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
        OnClick = userfooter1CancelClick
      end
      inherited Extra1: TIWButton
        Left = 912
        Visible = True
        Caption = 'Delete'
        Confirmation = 'Delete this record?'
        FriendlyName = 'DelBtn'
        OnClick = DelBtnClick
      end
      inherited Extra2: TIWButton
        Left = 824
        Visible = True
        Caption = 'Save'
        OnClick = userfooter1Extra1Click
      end
      inherited fiwSiLink1: TIWSiLink
        Left = 751
      end
      inherited navcombo: TIWComboBox
        Visible = False
      end
    end
  end
  object IWRegion1: TIWRegion
    Left = 0
    Top = 114
    Width = 1086
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
      1086
      513)
    object IWRegion2: TIWRegion
      Left = 257
      Top = 50
      Width = 585
      Height = 215
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
      object NewTagEdit: TIWEdit
        Left = 96
        Top = 96
        Width = 89
        Height = 20
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
        FriendlyName = 'NewIDEdit'
        MaxLength = 0
        ReadOnly = False
        Required = False
        ScriptEvents = <>
        TabOrder = 0
        PasswordPrompt = False
        Text = 'NewTagEdit'
      end
      object SuppressBox: TIWCheckBox
        Left = 96
        Top = 133
        Width = 137
        Height = 21
        Cursor = crAuto
        IW50Hint = False
        ParentShowHint = False
        ShowHint = True
        ZIndex = 0
        RenderSize = False
        Caption = 'Suppress On Test'
        Editable = True
        Font.Color = clNone
        Font.Size = 10
        Font.Style = []
        ScriptEvents = <>
        DoSubmitValidation = True
        Style = stNormal
        TabOrder = 1
        Checked = False
        FriendlyName = 'IWCheckBox1'
      end
      object IWLabel3: TIWLabel
        Left = 43
        Top = 97
        Width = 35
        Height = 16
        Cursor = crAuto
        IW50Hint = False
        ParentShowHint = False
        ShowHint = True
        ZIndex = 0
        RenderSize = True
        Alignment = taRightJustify
        BGColor = clNone
        Font.Color = clNone
        Font.Size = 10
        Font.Style = []
        NoWrap = False
        ConvertSpaces = False
        AutoSize = False
        FriendlyName = 'IWLabel3'
        Caption = 'Tag'
        RawText = False
      end
      object IWLabel1: TIWLabel
        Left = 16
        Top = 33
        Width = 64
        Height = 16
        Cursor = crAuto
        IW50Hint = False
        ParentShowHint = False
        ShowHint = True
        ZIndex = 0
        RenderSize = True
        Alignment = taRightJustify
        BGColor = clNone
        Font.Color = clNone
        Font.Size = 12
        Font.Style = [fsBold]
        NoWrap = False
        ConvertSpaces = False
        AutoSize = False
        FriendlyName = 'IWLabel1'
        Caption = 'Name'
        RawText = False
      end
      object NewNameEdit: TIWEdit
        Left = 96
        Top = 32
        Width = 201
        Height = 25
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
        Font.Size = 12
        Font.Style = [fsBold]
        FriendlyName = 'NewNameEdit'
        MaxLength = 0
        ReadOnly = False
        Required = False
        ScriptEvents = <>
        TabOrder = 2
        PasswordPrompt = False
        Text = 'NewNameEdit'
      end
      object IWLabel2: TIWLabel
        Left = 64
        Top = 65
        Width = 14
        Height = 16
        Cursor = crAuto
        IW50Hint = False
        ParentShowHint = False
        ShowHint = True
        ZIndex = 0
        RenderSize = True
        Alignment = taRightJustify
        BGColor = clNone
        Font.Color = clNone
        Font.Size = 10
        Font.Style = []
        NoWrap = False
        ConvertSpaces = False
        AutoSize = False
        FriendlyName = 'IWLabel2'
        Caption = 'ID'
        RawText = False
      end
      object NewIDEdit: TIWEdit
        Left = 96
        Top = 64
        Width = 73
        Height = 20
        Cursor = crAuto
        IW50Hint = False
        ParentShowHint = False
        ShowHint = True
        ZIndex = 0
        RenderSize = True
        Alignment = taLeftJustify
        BGColor = clBtnFace
        FocusColor = clNone
        DoSubmitValidation = True
        Editable = True
        NonEditableAsLabel = True
        Font.Color = clNone
        Font.Size = 10
        Font.Style = []
        FriendlyName = 'NewIDEdit'
        MaxLength = 0
        ReadOnly = True
        Required = False
        ScriptEvents = <>
        TabOrder = 3
        PasswordPrompt = False
        Text = 'NewIDEdit'
      end
      object IWSiLink1: TIWSiLink
        Left = 512
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
        TabOrder = 4
        RawText = False
        SiLangLinked = siLangLinked1
        LangFile = 'imagehdr.sil'
        LangControl = RcDataMod.LangEditControl1
      end
      object IWRectangle2: TIWRectangle
        Left = 0
        Top = 0
        Width = 585
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
        Height = 212
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
      object IWLabel4: TIWLabel
        Left = 6
        Top = 161
        Width = 73
        Height = 16
        Cursor = crAuto
        IW50Hint = False
        ParentShowHint = False
        ShowHint = True
        ZIndex = 0
        RenderSize = True
        Alignment = taRightJustify
        BGColor = clNone
        Font.Color = clNone
        Font.Size = 10
        Font.Style = []
        NoWrap = False
        ConvertSpaces = False
        AutoSize = False
        FriendlyName = 'IWLabel3'
        Caption = 'Description'
        RawText = False
      end
      object NewDescEdit: TIWEdit
        Left = 96
        Top = 160
        Width = 441
        Height = 20
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
        FriendlyName = 'NewIDEdit'
        MaxLength = 0
        ReadOnly = False
        Required = False
        ScriptEvents = <>
        TabOrder = 5
        PasswordPrompt = False
        Text = 'NewDescEdit'
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
      'Confirmation'
      'HotKey'
      'StatusText'
      'FriendlyName'
      'LangFile'
      'AltText'
      'Text'
      'Title')
    Top = 120
    TranslationData = {
      737443617074696F6E730D0A5375707072657373426F78015375707072657373
      204F6E2054657374010D0A49574C6162656C3301546167010D0A49574C616265
      6C31014E616D65010D0A49574C6162656C32014944010D0A49574C6162656C34
      014465736372697074696F6E010D0A737448696E74730D0A7374446973706C61
      794C6162656C730D0A7374466F6E74730D0A73744D756C74694C696E65730D0A
      4957526567696F6E312E4578747261546167506172616D7301010D0A49575265
      67696F6E322E4578747261546167506172616D7301010D0A4E65775461674564
      69742E4578747261546167506172616D7301010D0A5375707072657373426F78
      2E4578747261546167506172616D7301010D0A49574C6162656C332E45787472
      61546167506172616D7301010D0A49574C6162656C312E457874726154616750
      6172616D7301010D0A4E65774E616D65456469742E4578747261546167506172
      616D7301010D0A49574C6162656C322E4578747261546167506172616D730101
      0D0A4E65774944456469742E4578747261546167506172616D7301010D0A4957
      53694C696E6B312E4578747261546167506172616D7301010D0A495752656374
      616E676C65322E4578747261546167506172616D7301010D0A49575265637461
      6E676C65312E4578747261546167506172616D7301010D0A49574C6162656C34
      2E4578747261546167506172616D7301010D0A4E657744657363456469742E45
      78747261546167506172616D7301010D0A7374537472696E67730D0A73744F74
      686572537472696E67730D0A4672616D65426172655469746C65312E48656C70
      4B6579776F726401010D0A75736572666F6F746572312E48656C704B6579776F
      726401010D0A4957526567696F6E312E48656C704B6579776F726401010D0A49
      57526567696F6E322E48656C704B6579776F726401010D0A4E65775461674564
      69742E48656C704B6579776F726401010D0A5375707072657373426F782E4865
      6C704B6579776F726401010D0A49574C6162656C332E48656C704B6579776F72
      6401010D0A49574C6162656C312E48656C704B6579776F726401010D0A4E6577
      4E616D65456469742E48656C704B6579776F726401010D0A49574C6162656C32
      2E48656C704B6579776F726401010D0A4E65774944456469742E48656C704B65
      79776F726401010D0A495753694C696E6B312E48656C704B6579776F72640101
      0D0A495752656374616E676C65322E48656C704B6579776F726401010D0A4957
      52656374616E676C65312E48656C704B6579776F726401010D0A54466F726D49
      6D674864722E48656C704B6579776F726401010D0A49574C6162656C342E4865
      6C704B6579776F726401010D0A4E657744657363456469742E48656C704B6579
      776F726401010D0A7374436F6C6C656374696F6E730D0A737443686172536574
      730D0A}
  end
end
