object su_FormMain: Tsu_FormMain
  Left = 0
  Top = 0
  Width = 1025
  Height = 698
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
  DesignLeft = 259
  DesignTop = 251
  object IWRegion1: TIWRegion
    Left = 0
    Top = 111
    Width = 1025
    Height = 558
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
      1025
      558)
    object IWRegion2: TIWRegion
      Left = 215
      Top = 50
      Width = 579
      Height = 260
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
      DesignSize = (
        579
        260)
      object NewCoLabel: TIWLabel
        Left = 43
        Top = 170
        Width = 113
        Height = 21
        Cursor = crAuto
        Anchors = []
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
        FriendlyName = 'NewCoLabel'
        Caption = 'New Company ID'
        RawText = False
      end
      object langnamelabel: TIWLabel
        Left = 54
        Top = 197
        Width = 107
        Height = 21
        Cursor = crAuto
        Anchors = []
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
        Caption = 'New Language'
        RawText = False
      end
      object coEdit: TIWEdit
        Left = 162
        Top = 170
        Width = 57
        Height = 21
        Cursor = crAuto
        Anchors = []
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
        FriendlyName = 'coEdit'
        MaxLength = 0
        ReadOnly = False
        Required = False
        ScriptEvents = <>
        TabOrder = 0
        PasswordPrompt = False
      end
      object CreateCoBtn: TIWButton
        Left = 232
        Top = 170
        Width = 75
        Height = 25
        Cursor = crAuto
        Anchors = []
        IW50Hint = False
        ParentShowHint = False
        ShowHint = True
        ZIndex = 0
        RenderSize = True
        Caption = 'Create'
        Confirmation = 'Create Company?'
        DoSubmitValidation = True
        Color = clBtnFace
        Font.Color = clNone
        Font.Size = 10
        Font.Style = []
        FriendlyName = 'CreateCoBtn'
        ScriptEvents = <>
        TabOrder = 1
        OnClick = CreateCoBtnClick
      end
      object LangNameBtn: TIWButton
        Left = 320
        Top = 196
        Width = 75
        Height = 25
        Cursor = crAuto
        Anchors = []
        IW50Hint = False
        ParentShowHint = False
        ShowHint = True
        ZIndex = 0
        RenderSize = True
        Caption = 'Create'
        Confirmation = 'Create New Language?'
        DoSubmitValidation = True
        Color = clBtnFace
        Font.Color = clNone
        Font.Size = 10
        Font.Style = []
        FriendlyName = 'IWButton1'
        ScriptEvents = <>
        TabOrder = 2
        OnClick = LangNameBtnClick
      end
      object LangNameEdit: TIWEdit
        Left = 162
        Top = 197
        Width = 145
        Height = 21
        Cursor = crAuto
        Anchors = []
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
        FriendlyName = 'coEdit'
        MaxLength = 0
        ReadOnly = False
        Required = False
        ScriptEvents = <>
        TabOrder = 3
        PasswordPrompt = False
      end
      object IWLabel1: TIWLabel
        Left = 0
        Top = 24
        Width = 561
        Height = 41
        Cursor = crAuto
        Anchors = [akTop]
        IW50Hint = False
        ParentShowHint = False
        ShowHint = True
        ZIndex = 0
        RenderSize = True
        Alignment = taCenter
        BGColor = clNone
        Font.Color = clNone
        Font.FontName = 'arial'
        Font.Size = 20
        Font.Style = [fsBold]
        NoWrap = False
        ConvertSpaces = False
        AutoSize = False
        FriendlyName = 'IWLabel1'
        Caption = 'Company Administration'
        RawText = False
      end
      object IWSiLink1: TIWSiLink
        Left = 9
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
        LangFile = 'coadmin.sil'
        LangControl = RcDataMod.LangEditControl1
      end
      object IWRectangle2: TIWRectangle
        Left = 0
        Top = 0
        Width = 579
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
        Height = 257
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
      object CompanyCombo: TIWComboBox
        Left = 160
        Top = 72
        Width = 222
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
        TabOrder = 5
        ItemIndex = -1
        Sorted = False
        FriendlyName = 'CompanyCombo'
      end
      object IWLabel3: TIWLabel
        Left = 83
        Top = 74
        Width = 70
        Height = 21
        Cursor = crAuto
        Anchors = []
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
        Caption = 'Company'
        RawText = False
      end
      object ViewBtn: TIWButton
        Left = 307
        Top = 98
        Width = 75
        Height = 25
        Cursor = crAuto
        Anchors = []
        IW50Hint = False
        ParentShowHint = False
        ShowHint = True
        ZIndex = 0
        RenderSize = True
        Caption = 'View'
        DoSubmitValidation = True
        Color = clBtnFace
        Font.Color = clNone
        Font.Size = 10
        Font.Style = []
        FriendlyName = 'CreateCoBtn'
        ScriptEvents = <>
        TabOrder = 7
        OnClick = ViewClick
      end
      object Cpybtn: TIWButton
        Left = 160
        Top = 98
        Width = 75
        Height = 25
        Cursor = crAuto
        Visible = False
        Anchors = []
        IW50Hint = False
        ParentShowHint = False
        ShowHint = True
        ZIndex = 0
        RenderSize = True
        Caption = 'Copy'
        DoSubmitValidation = True
        Color = clBtnFace
        Font.Color = clNone
        Font.Size = 10
        Font.Style = []
        FriendlyName = 'CreateCoBtn'
        ScriptEvents = <>
        TabOrder = 8
        OnClick = CopyLinkClick
      end
    end
  end
  inline userfooter1: Tuserfooter
    Left = 0
    Top = 669
    Width = 1025
    Height = 29
    HorzScrollBar.Visible = False
    Align = alBottom
    TabOrder = 1
    inherited IWRegion1: TIWRegion
      Width = 1025
      Height = 29
      TabOrder = 6
      inherited IWRectangle1: TIWRectangle
        Left = 647
      end
      inherited IWRectangle4: TIWRectangle
        Width = 1639
      end
      inherited IWRectangle6: TIWRectangle
        Width = 605
      end
      inherited Cancel: TIWButton
        Left = 937
        Caption = 'Menu'
        OnClick = userfooter1CancelBtnClick
      end
      inherited Extra1: TIWButton
        Left = 849
      end
      inherited Extra2: TIWButton
        Left = 761
      end
      inherited fiwSiLink1: TIWSiLink
        Left = 681
      end
    end
  end
  inline AdminFrameTitle1: TAdminFrameTitle
    Left = 0
    Top = 0
    Width = 1025
    Height = 111
    HorzScrollBar.Visible = False
    VertScrollBar.Visible = False
    Align = alTop
    TabOrder = 2
    inherited IWFrameRegion: TIWRegion
      Width = 1025
      Height = 111
      TabOrder = 9
      DesignSize = (
        1025
        111)
      inherited IWRectangle1: TIWRectangle
        Left = 456
        Width = 2170
      end
      inherited IWRectangle2: TIWRectangle
        Left = 456
      end
      inherited IWRectangle3: TIWRectangle
        Width = 417
      end
      inherited IWImageFile3: TIWImageFile
        Left = 690
      end
      inherited TitleLabel: TIWLabel
        Width = 486
        RenderSize = False
        AutoSize = True
      end
      inherited langlink: TIWSiLink
        Left = 580
      end
      inherited Smalltitle: TIWLabel
        Left = 887
      end
      inherited HideBox: TIWImageFile
        Left = 1012
      end
      inherited SysReg: TIWRegion
        Color = 10526880
      end
      inherited CoReg: TIWRegion
        Color = 11100191
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
    Left = 16
    Top = 152
    TranslationData = {
      737443617074696F6E730D0A4E6577436F4C6162656C014E657720436F6D7061
      6E79204944010D0A6C616E676E616D656C6162656C014E6577204C616E677561
      6765010D0A437265617465436F42746E01437265617465010D0A4C616E674E61
      6D6542746E01437265617465010D0A49574C6162656C3101436F6D70616E7920
      41646D696E697374726174696F6E010D0A49574C6162656C3301436F6D70616E
      79010D0A5669657742746E0156696577010D0A43707962746E01436F7079010D
      0A737448696E74730D0A5473755F466F726D4D61696E01010D0A495752656769
      6F6E3101010D0A4957526567696F6E3201010D0A4E6577436F4C6162656C0101
      0D0A6C616E676E616D656C6162656C01010D0A636F4564697401010D0A437265
      617465436F42746E01010D0A4C616E674E616D6542746E01010D0A4C616E674E
      616D654564697401010D0A49574C6162656C3101010D0A495753694C696E6B31
      01010D0A495752656374616E676C653201010D0A495752656374616E676C6531
      01010D0A436F6D70616E79436F6D626F01010D0A49574C6162656C3301010D0A
      5669657742746E01010D0A43707962746E01010D0A75736572666F6F74657231
      01010D0A41646D696E4672616D655469746C653101010D0A7374446973706C61
      794C6162656C730D0A7374466F6E74730D0A73744D756C74694C696E65730D0A
      4957526567696F6E312E4578747261546167506172616D7301010D0A49575265
      67696F6E322E4578747261546167506172616D7301010D0A4E6577436F4C6162
      656C2E4578747261546167506172616D7301010D0A6C616E676E616D656C6162
      656C2E4578747261546167506172616D7301010D0A636F456469742E45787472
      61546167506172616D7301010D0A437265617465436F42746E2E457874726154
      6167506172616D7301010D0A4C616E674E616D6542746E2E4578747261546167
      506172616D7301010D0A4C616E674E616D65456469742E457874726154616750
      6172616D7301010D0A49574C6162656C312E4578747261546167506172616D73
      01010D0A495753694C696E6B312E4578747261546167506172616D7301010D0A
      495752656374616E676C65322E4578747261546167506172616D7301010D0A49
      5752656374616E676C65312E4578747261546167506172616D7301010D0A436F
      6D70616E79436F6D626F2E4578747261546167506172616D7301010D0A436F6D
      70616E79436F6D626F2E4974656D7301010D0A49574C6162656C332E45787472
      61546167506172616D7301010D0A5669657742746E2E45787472615461675061
      72616D7301010D0A43707962746E2E4578747261546167506172616D7301010D
      0A7374537472696E67730D0A73744F74686572537472696E67730D0A5473755F
      466F726D4D61696E2E48656C704B6579776F726401010D0A5473755F466F726D
      4D61696E2E5469746C6501010D0A4957526567696F6E312E48656C704B657977
      6F726401010D0A4957526567696F6E322E48656C704B6579776F726401010D0A
      4E6577436F4C6162656C2E467269656E646C794E616D65014E6577436F4C6162
      656C010D0A4E6577436F4C6162656C2E48656C704B6579776F726401010D0A4E
      6577436F4C6162656C2E5374617475735465787401010D0A6C616E676E616D65
      6C6162656C2E467269656E646C794E616D650149574C6162656C32010D0A6C61
      6E676E616D656C6162656C2E48656C704B6579776F726401010D0A6C616E676E
      616D656C6162656C2E5374617475735465787401010D0A636F456469742E4672
      69656E646C794E616D6501636F45646974010D0A636F456469742E48656C704B
      6579776F726401010D0A636F456469742E5374617475735465787401010D0A63
      6F456469742E5465787401010D0A437265617465436F42746E2E436F6E666972
      6D6174696F6E0143726561746520436F6D70616E793F010D0A43726561746543
      6F42746E2E467269656E646C794E616D6501437265617465436F42746E010D0A
      437265617465436F42746E2E48656C704B6579776F726401010D0A4372656174
      65436F42746E2E486F744B657901010D0A437265617465436F42746E2E537461
      7475735465787401010D0A4C616E674E616D6542746E2E436F6E6669726D6174
      696F6E01437265617465204E6577204C616E67756167653F010D0A4C616E674E
      616D6542746E2E467269656E646C794E616D65014957427574746F6E31010D0A
      4C616E674E616D6542746E2E48656C704B6579776F726401010D0A4C616E674E
      616D6542746E2E486F744B657901010D0A4C616E674E616D6542746E2E537461
      7475735465787401010D0A4C616E674E616D65456469742E467269656E646C79
      4E616D6501636F45646974010D0A4C616E674E616D65456469742E48656C704B
      6579776F726401010D0A4C616E674E616D65456469742E537461747573546578
      7401010D0A4C616E674E616D65456469742E5465787401010D0A49574C616265
      6C312E467269656E646C794E616D650149574C6162656C31010D0A49574C6162
      656C312E48656C704B6579776F726401010D0A49574C6162656C312E53746174
      75735465787401010D0A495753694C696E6B312E436F6E6669726D6174696F6E
      01010D0A495753694C696E6B312E467269656E646C794E616D6501495753694C
      696E6B31010D0A495753694C696E6B312E48656C704B6579776F726401010D0A
      495753694C696E6B312E4C616E6746696C6501636F61646D696E2E73696C010D
      0A495753694C696E6B312E5374617475735465787401010D0A49575265637461
      6E676C65322E467269656E646C794E616D6501495752656374616E676C653101
      0D0A495752656374616E676C65322E48656C704B6579776F726401010D0A4957
      52656374616E676C65322E5374617475735465787401010D0A49575265637461
      6E676C65322E5465787401010D0A495752656374616E676C65312E467269656E
      646C794E616D6501495752656374616E676C6531010D0A495752656374616E67
      6C65312E48656C704B6579776F726401010D0A495752656374616E676C65312E
      5374617475735465787401010D0A495752656374616E676C65312E5465787401
      010D0A436F6D70616E79436F6D626F2E467269656E646C794E616D6501436F6D
      70616E79436F6D626F010D0A436F6D70616E79436F6D626F2E48656C704B6579
      776F726401010D0A436F6D70616E79436F6D626F2E4E6F53656C656374696F6E
      54657874012D2D204E6F2053656C656374696F6E202D2D010D0A436F6D70616E
      79436F6D626F2E5374617475735465787401010D0A49574C6162656C332E4672
      69656E646C794E616D650149574C6162656C32010D0A49574C6162656C332E48
      656C704B6579776F726401010D0A49574C6162656C332E537461747573546578
      7401010D0A5669657742746E2E436F6E6669726D6174696F6E01010D0A566965
      7742746E2E467269656E646C794E616D6501437265617465436F42746E010D0A
      5669657742746E2E48656C704B6579776F726401010D0A5669657742746E2E48
      6F744B657901010D0A5669657742746E2E5374617475735465787401010D0A43
      707962746E2E436F6E6669726D6174696F6E01010D0A43707962746E2E467269
      656E646C794E616D6501437265617465436F42746E010D0A43707962746E2E48
      656C704B6579776F726401010D0A43707962746E2E486F744B657901010D0A43
      707962746E2E5374617475735465787401010D0A75736572666F6F746572312E
      48656C704B6579776F726401010D0A41646D696E4672616D655469746C65312E
      48656C704B6579776F726401010D0A7374436F6C6C656374696F6E730D0A7374
      43686172536574730D0A}
  end
end
