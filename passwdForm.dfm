object FormPasswd: TFormPasswd
  Left = 0
  Top = 0
  Width = 1086
  Height = 675
  HorzScrollBar.Visible = False
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
  OnDefaultAction = UpdateBtnClick
  XPTheme = True
  DesignLeft = 278
  DesignTop = 371
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
      TabOrder = 5
      inherited titleimage: TIWImageFile
        Width = 453
        ImageFile.Filename = 'E:\delphi\delphi_web\files\admin.GIF'
      end
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
        Width = 486
        Caption = 'administration'
      end
      inherited langlink: TIWSiLink
        Left = 744
      end
      inherited Smalltitle: TIWLabel
        Left = 966
      end
      inherited HideBox: TIWImageFile
        Left = 1070
        Top = 100
      end
    end
    inherited silink: TsiLangLinked
      Left = 504
    end
  end
  inline userfooter1: Tuserfooter
    Left = 0
    Top = 643
    Width = 1086
    Height = 32
    HorzScrollBar.Visible = False
    Align = alBottom
    TabOrder = 1
    inherited IWRegion1: TIWRegion
      Width = 1086
      Height = 32
      TabOrder = 4
      inherited IWRectangle1: TIWRectangle
        Left = 670
        Width = 416
      end
      inherited IWRectangle4: TIWRectangle
        Width = 1702
      end
      inherited IWRectangle6: TIWRectangle
        Width = 628
      end
      inherited Cancel: TIWButton
        Left = 999
        OnClick = userfooter1CancelClick
      end
      inherited Extra1: TIWButton
        Left = 911
      end
      inherited Extra2: TIWButton
        Left = 823
      end
      inherited fiwSiLink1: TIWSiLink
        Left = 743
      end
    end
  end
  object IWRegion1: TIWRegion
    Left = 0
    Top = 118
    Width = 1086
    Height = 525
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
      525)
    object IWRegion2: TIWRegion
      Left = 334
      Top = 68
      Width = 401
      Height = 273
      Cursor = crAuto
      Anchors = []
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
        401
        273)
      object IWLabel4: TIWLabel
        Left = 56
        Top = 82
        Width = 129
        Height = 16
        Cursor = crAuto
        IW50Hint = False
        ParentShowHint = False
        ShowHint = True
        ZIndex = 1
        RenderSize = True
        Alignment = taLeftJustify
        BGColor = clNone
        Font.Color = clWebBLACK
        Font.Size = 10
        Font.Style = [fsBold]
        NoWrap = False
        ConvertSpaces = False
        AutoSize = False
        FriendlyName = 'IWLabel1'
        Caption = 'Current Password'
        RawText = False
      end
      object IWSiLink1: TIWSiLink
        Left = 327
        Top = 48
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
        SiLangLinked = siLangLinked1
        LangFile = 'password.sil'
        LangControl = RcDataMod.LangEditControl1
      end
      object IWLabel2: TIWLabel
        Left = 15
        Top = 8
        Width = 378
        Height = 22
        Cursor = crAuto
        IW50Hint = False
        ParentShowHint = False
        ShowHint = True
        ZIndex = 0
        RenderSize = True
        Alignment = taCenter
        BGColor = clNone
        Font.Color = clNone
        Font.FontName = 'Arial'
        Font.Size = 14
        Font.Style = [fsBold]
        NoWrap = False
        ConvertSpaces = False
        AutoSize = False
        FriendlyName = 'IWLabel2'
        Caption = 'Change Password'
        RawText = False
      end
      object CurrentEdit: TIWEdit
        Left = 200
        Top = 80
        Width = 121
        Height = 21
        Cursor = crAuto
        IW50Hint = False
        ParentShowHint = False
        ShowHint = True
        ZIndex = 1
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
        FriendlyName = 'ConfEdit'
        MaxLength = 0
        ReadOnly = False
        Required = False
        ScriptEvents = <>
        TabOrder = 1
        PasswordPrompt = True
      end
      object IWLabel3: TIWLabel
        Left = 57
        Top = 114
        Width = 136
        Height = 16
        Cursor = crAuto
        IW50Hint = False
        ParentShowHint = False
        ShowHint = True
        ZIndex = 1
        RenderSize = True
        Alignment = taLeftJustify
        BGColor = clNone
        Font.Color = clWebBLACK
        Font.Size = 10
        Font.Style = [fsBold]
        NoWrap = False
        ConvertSpaces = False
        AutoSize = False
        FriendlyName = 'IWLabel3'
        Caption = 'New Password'
        RawText = False
      end
      object PassEdit: TIWEdit
        Left = 200
        Top = 112
        Width = 121
        Height = 21
        Cursor = crAuto
        IW50Hint = False
        ParentShowHint = False
        ShowHint = True
        ZIndex = 1
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
        TabOrder = 2
        PasswordPrompt = True
      end
      object IWLabel1: TIWLabel
        Left = 57
        Top = 146
        Width = 136
        Height = 16
        Cursor = crAuto
        IW50Hint = False
        ParentShowHint = False
        ShowHint = True
        ZIndex = 1
        RenderSize = True
        Alignment = taLeftJustify
        BGColor = clNone
        Font.Color = clWebBLACK
        Font.Size = 10
        Font.Style = [fsBold]
        NoWrap = False
        ConvertSpaces = False
        AutoSize = False
        FriendlyName = 'IWLabel1'
        Caption = 'Confirm'
        RawText = False
      end
      object ConfEdit: TIWEdit
        Left = 200
        Top = 144
        Width = 121
        Height = 21
        Cursor = crAuto
        IW50Hint = False
        ParentShowHint = False
        ShowHint = True
        ZIndex = 1
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
        FriendlyName = 'ConfEdit'
        MaxLength = 0
        ReadOnly = False
        Required = False
        ScriptEvents = <>
        TabOrder = 3
        PasswordPrompt = True
      end
      object IWRectangle1: TIWRectangle
        Left = 0
        Top = 3
        Width = 3
        Height = 270
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
        Width = 401
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
      object UpdateBtn: TIWButton
        Left = 176
        Top = 186
        Width = 169
        Height = 31
        Cursor = crAuto
        Anchors = [akTop, akRight]
        IW50Hint = False
        ParentShowHint = False
        ShowHint = True
        ZIndex = 0
        RenderSize = True
        Caption = 'Update'
        DoSubmitValidation = True
        Color = clBtnFace
        Font.Color = clNone
        Font.Size = 10
        Font.Style = []
        FriendlyName = 'UpdateBtn'
        ScriptEvents = <>
        TabOrder = 6
        OnClick = UpdateBtnClick
      end
    end
  end
  object siLangLinked1: TsiLangLinked
    Version = '5.3.1.1'
    StringsTypes.Strings = (
      'TIB_STRINGLIST'
      'TSTRINGLIST')
    SmartExcludeProps.Strings = (
      'IWLabel3.Hint'
      'IWLabel3.Caption')
    LangDispatcher = RcDataMod.siLangDispatcher1
    LangDelim = 1
    LangNames.Strings = (
      'English')
    Language = 'English'
    CommonContainer = RcDataMod.siLang1
    ExcludedProperties.Strings = (
      'FriendlyName'
      'StatusText'
      'Text'
      'Confirmation'
      'HotKey'
      'Title'
      'LangFile')
    Left = 432
    Top = 80
    TranslationData = {
      737443617074696F6E730D0A49574C6162656C3101436F6E6669726D010D0A49
      574C6162656C32014368616E67652050617373776F7264010D0A49574C616265
      6C340143757272656E742050617373776F7264010D0A737448696E74730D0A54
      466F726D50617373776401010D0A506173734564697401010D0A49574C616265
      6C3101010D0A436F6E664564697401010D0A49574C6162656C3201010D0A4957
      53694C696E6B3101010D0A49574C6162656C3401010D0A43757272656E744564
      697401010D0A4672616D65426172655469746C653101010D0A75736572666F6F
      7465723101010D0A4957526567696F6E3101010D0A4957526567696F6E320101
      0D0A495752656374616E676C653101010D0A495752656374616E676C65320101
      0D0A7374446973706C61794C6162656C730D0A7374466F6E74730D0A73744D75
      6C74694C696E65730D0A49574C6162656C332E4578747261546167506172616D
      7301010D0A50617373456469742E4578747261546167506172616D7301010D0A
      49574C6162656C312E4578747261546167506172616D7301010D0A436F6E6645
      6469742E4578747261546167506172616D7301010D0A49574C6162656C322E45
      78747261546167506172616D7301010D0A495753694C696E6B312E4578747261
      546167506172616D7301010D0A49574C6162656C342E45787472615461675061
      72616D7301010D0A43757272656E74456469742E457874726154616750617261
      6D7301010D0A4957526567696F6E312E4578747261546167506172616D730101
      0D0A4957526567696F6E322E4578747261546167506172616D7301010D0A4957
      52656374616E676C65312E4578747261546167506172616D7301010D0A495752
      656374616E676C65322E4578747261546167506172616D7301010D0A73745374
      72696E67730D0A436F6E6669726D546578740150617373776F726420636F6E66
      69726D6174696F6E206572726F722E20506C656173652052652D656E7465722E
      010D0A4C656E677468546578740150617373776F7264206D7573742062652061
      74206C65617374203420636861726163746572732E20506C656173652052652D
      656E7465722E010D0A4572726F72546578740150617373776F7264206572726F
      72010D0A55706461746564546578740150617373776F72642055706461746564
      010D0A73744F74686572537472696E67730D0A54466F726D5061737377642E48
      656C704B6579776F726401010D0A49574C6162656C332E48656C704B6579776F
      726401010D0A50617373456469742E48656C704B6579776F726401010D0A4957
      4C6162656C312E48656C704B6579776F726401010D0A436F6E66456469742E48
      656C704B6579776F726401010D0A49574C6162656C322E48656C704B6579776F
      726401010D0A495753694C696E6B312E48656C704B6579776F726401010D0A49
      574C6162656C342E48656C704B6579776F726401010D0A43757272656E744564
      69742E48656C704B6579776F726401010D0A4672616D65426172655469746C65
      312E48656C704B6579776F726401010D0A75736572666F6F746572312E48656C
      704B6579776F726401010D0A4957526567696F6E312E48656C704B6579776F72
      6401010D0A4957526567696F6E322E48656C704B6579776F726401010D0A4957
      52656374616E676C65312E48656C704B6579776F726401010D0A495752656374
      616E676C65322E48656C704B6579776F726401010D0A7374436F6C6C65637469
      6F6E730D0A737443686172536574730D0A}
  end
end
