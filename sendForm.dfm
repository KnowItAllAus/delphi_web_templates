object formSend: TformSend
  Left = 0
  Top = 0
  Width = 1016
  Height = 575
  HorzScrollBar.Visible = False
  VertScrollBar.Visible = False
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
  DesignLeft = 367
  DesignTop = 405
  inline DistribFrameTitle1: TDistribFrameTitle
    Left = 0
    Top = 0
    Width = 1016
    Height = 114
    HorzScrollBar.Visible = False
    VertScrollBar.Visible = False
    Align = alTop
    TabOrder = 0
    inherited IWFrameRegion: TIWRegion
      Width = 1016
      Height = 114
      inherited IWRectangle1: TIWRectangle
        Left = 456
        Width = 2161
      end
      inherited IWRectangle2: TIWRectangle
        Left = 456
      end
      inherited IWRectangle3: TIWRectangle
        Width = 1893
      end
      inherited IWImageFile3: TIWImageFile
        Left = 678
      end
      inherited langlink: TIWSiLink
        Left = 616
      end
      inherited HideBox: TIWImageFile
        Left = 1002
      end
      inherited Smalltitle: TIWLabel
        Left = 877
      end
      inherited EntityRegn: TIWRegion
        Color = 10526880
      end
      inherited SendRegion: TIWRegion
        Color = 11100191
      end
    end
  end
  inline userfooter1: Tuserfooter
    Left = 0
    Top = 546
    Width = 1016
    Height = 29
    HorzScrollBar.Visible = False
    Align = alBottom
    TabOrder = 1
    inherited IWRegion1: TIWRegion
      Height = 29
      TabOrder = 4
      inherited Cancel: TIWButton
        Left = 929
        Caption = 'Menu'
        OnClick = userfooter1CancelClick
      end
      inherited Extra1: TIWButton
        Left = 841
      end
      inherited Extra2: TIWButton
        Left = 753
      end
      inherited fiwSiLink1: TIWSiLink
        Left = 681
      end
    end
  end
  object IWRegion1: TIWRegion
    Left = 0
    Top = 114
    Width = 1016
    Height = 432
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
      1016
      432)
    object IWRegion2: TIWRegion
      Left = 249
      Top = 50
      Width = 540
      Height = 223
      Cursor = crAuto
      Anchors = [akTop]
      BorderOptions.NumericWidth = 0
      BorderOptions.BorderWidth = cbwNumeric
      BorderOptions.Style = cbsSolid
      BorderOptions.Color = clNone
      Color = 14202786
      ParentShowHint = False
      ShowHint = True
      ZIndex = 1000
      Splitter = False
      object IWRectangle1: TIWRectangle
        Left = 0
        Top = 3
        Width = 3
        Height = 220
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
        Width = 540
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
      object RequestLabel: TIWLabel
        Left = 171
        Top = 49
        Width = 198
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
        FriendlyName = 'RequestLabel'
        Caption = 'Publish Current Configuration ?'
        RawText = False
      end
      object CompanyLabel: TIWLabel
        Left = 8
        Top = 9
        Width = 457
        Height = 24
        Cursor = crAuto
        IW50Hint = False
        ParentShowHint = False
        ShowHint = True
        ZIndex = 0
        RenderSize = True
        Alignment = taLeftJustify
        BGColor = clNone
        Font.Color = clNone
        Font.Size = 14
        Font.Style = [fsBold]
        NoWrap = False
        ConvertSpaces = False
        AutoSize = False
        FriendlyName = 'CompanyLabel'
        Caption = 'CompanyLabel'
        RawText = False
      end
      object LiveGroups: TIWComboBox
        Left = 32
        Top = 179
        Width = 193
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
        TabOrder = 3
        ItemIndex = -1
        Sorted = False
        FriendlyName = 'LiveGroups'
      end
      object AllBtn: TIWButton
        Left = 64
        Top = 126
        Width = 121
        Height = 43
        Cursor = crAuto
        IW50Hint = False
        ParentShowHint = False
        ShowHint = True
        ZIndex = 0
        RenderSize = True
        Caption = 'Publish - Prod.'
        Confirmation = 'Update Live Sites?'
        DoSubmitValidation = True
        Color = clBtnFace
        Font.Color = clWebBLUE
        Font.Size = 10
        Font.Style = []
        FriendlyName = 'PubBtn'
        ScriptEvents = <>
        TabOrder = 2
        OnClick = AllBtnClick
      end
      object IWSiLink1: TIWSiLink
        Left = 8
        Top = 33
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
        TabOrder = 7
        RawText = False
        SiLangLinked = siLangLinked1
        LangFile = 'publish.sil'
        LangControl = RcDataMod.LangEditControl1
      end
      object TestBtn: TIWButton
        Left = 360
        Top = 126
        Width = 121
        Height = 43
        Cursor = crAuto
        IW50Hint = False
        ParentShowHint = False
        ShowHint = True
        ZIndex = 0
        RenderSize = True
        Caption = 'Publish - Test'
        DoSubmitValidation = True
        Color = clBtnFace
        Font.Color = clWebBLUE
        Font.Size = 10
        Font.Style = []
        FriendlyName = 'PubBtn'
        ScriptEvents = <>
        TabOrder = 5
        OnClick = TestBtnClick
      end
      object TestGroups: TIWComboBox
        Left = 336
        Top = 179
        Width = 177
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
        TabOrder = 6
        ItemIndex = -1
        Sorted = False
        FriendlyName = 'GroupItems'
      end
      object TimeEdit: TIWEdit
        Left = 192
        Top = 80
        Width = 153
        Height = 21
        Cursor = crAuto
        Visible = False
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
        FriendlyName = 'TimeEdit'
        MaxLength = 0
        ReadOnly = False
        Required = False
        ScriptEvents = <>
        TabOrder = 1
        PasswordPrompt = False
        Text = 'TimeEdit'
      end
      object IWLabel1: TIWLabel
        Left = 128
        Top = 82
        Width = 57
        Height = 16
        Cursor = crAuto
        Visible = False
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
        FriendlyName = 'RequestLabel'
        Caption = 'At Time'
        RawText = False
      end
    end
  end
  object siLangLinked1: TsiLangLinked
    Version = '5.3.1.1'
    StringsTypes.Strings = (
      'TIB_STRINGLIST'
      'TSTRINGLIST')
    SmartExcludeProps.Strings = (
      'TformSend.Hint')
    LangDispatcher = RcDataMod.siLangDispatcher1
    LangDelim = 1
    LangNames.Strings = (
      'English')
    Language = 'English'
    CommonContainer = RcDataMod.siLang1
    ExcludedProperties.Strings = (
      'Title'
      'FriendlyName'
      'StatusText'
      'Confirmation'
      'HotKey'
      'LangFile'
      'ExtraTagParams'
      'HelpKeyword')
    Left = 432
    Top = 144
    TranslationData = {
      737443617074696F6E730D0A526571756573744C6162656C015075626C697368
      2043757272656E7420436F6E66696775726174696F6E203F010D0A436F6D7061
      6E794C6162656C01436F6D70616E794C6162656C010D0A416C6C42746E015075
      626C697368202D2050726F642E010D0A5465737442746E015075626C69736820
      2D2054657374010D0A737448696E74730D0A4E617601010D0A44697374726962
      4672616D655469746C653101010D0A75736572666F6F7465723101010D0A4957
      526567696F6E3101010D0A4957526567696F6E3201010D0A495752656374616E
      676C653101010D0A495752656374616E676C653201010D0A526571756573744C
      6162656C01010D0A436F6D70616E794C6162656C01010D0A4C69766547726F75
      707301010D0A416C6C42746E01010D0A495753694C696E6B3101010D0A546573
      7442746E01010D0A5465737447726F75707301010D0A54696D65456469740101
      0D0A7374446973706C61794C6162656C730D0A7374466F6E74730D0A73744D75
      6C74694C696E65730D0A4C69766547726F7570732E4974656D7301010D0A5465
      737447726F7570732E4974656D7301010D0A7374537472696E67730D0A557064
      6174655265717565737465640155706461746520526571756573746564010D0A
      55706461746552656A6563746564015570646174652052656A6563746564010D
      0A416C6C47726F75707301416C6C2047726F757073010D0A416C6C4C69766547
      726F75707301416C6C2050726F64756374696F6E2047726F757073010D0A416C
      6C5465737447726F75707301416C6C20546573742047726F757073010D0A496E
      76616C696454696D6501496E76616C69642054696D65010D0A73744F74686572
      537472696E67730D0A495752656374616E676C65312E5465787401010D0A4957
      52656374616E676C65322E5465787401010D0A4C69766547726F7570732E4E6F
      53656C656374696F6E54657874012D2D204E6F2053656C656374696F6E202D2D
      010D0A5465737447726F7570732E4E6F53656C656374696F6E54657874012D2D
      204E6F2053656C656374696F6E202D2D010D0A54696D65456469742E54657874
      0154696D6545646974010D0A7374436F6C6C656374696F6E730D0A7374436861
      72536574730D0A}
  end
end
