object formSend: TformSend
  Left = 0
  Top = 0
  Width = 1016
  Height = 575
  HorzScrollBar.Visible = False
  VertScrollBar.Visible = False
  RenderInvisibleControls = False
  AllowPageAccess = True
  ConnectionMode = cmAny
  SupportedBrowsers = [brNetscape7, brIE, brOpera, brSafari, brNetscape6]
  OnCreate = IWAppFormCreate
  OnDestroy = IWAppFormDestroy
  Background.Fixed = False
  HandleTabs = False
  LeftToRight = True
  LockUntilLoaded = True
  LockOnSubmit = True
  ShowHint = True
  XPTheme = True
  DesignLeft = 60
  DesignTop = 183
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
      TabOrder = 4
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
      Width = 1016
      Height = 29
      TabOrder = 5
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
    RenderInvisibleControls = False
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
      RenderInvisibleControls = False
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
      object RequestLabel: TIWLabel
        Left = 171
        Top = 39
        Width = 198
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
        Font.Size = 14
        Font.Style = [fsBold]
        NoWrap = False
        ConvertSpaces = False
        HasTabOrder = False
        AutoSize = False
        FriendlyName = 'CompanyLabel'
        Caption = 'CompanyLabel'
        RawText = False
      end
      object LiveGroups: TIWComboBox
        Left = 32
        Top = 149
        Width = 193
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
        SubmitOnAsyncEvent = True
        TabOrder = 1
        ItemIndex = -1
        Sorted = False
        FriendlyName = 'LiveGroups'
      end
      object AllBtn: TIWButton
        Left = 64
        Top = 96
        Width = 121
        Height = 43
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
        Caption = 'Publish - Prod.'
        Confirmation = 'Update Live Sites?'
        DoSubmitValidation = True
        Color = clBtnFace
        Font.Color = clWebBLUE
        Font.Size = 10
        Font.Style = []
        FriendlyName = 'PubBtn'
        ScriptEvents = <>
        TabOrder = 0
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
        SiLangLinked = siLangLinked1
        LangFile = 'publish.sil'
        LangControl = RcDataMod.LangEditControl1
      end
      object TestBtn: TIWButton
        Left = 360
        Top = 96
        Width = 121
        Height = 43
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
        Caption = 'Publish - Test'
        DoSubmitValidation = True
        Color = clBtnFace
        Font.Color = clWebBLUE
        Font.Size = 10
        Font.Style = []
        FriendlyName = 'PubBtn'
        ScriptEvents = <>
        TabOrder = 2
        OnClick = TestBtnClick
      end
      object TestGroups: TIWComboBox
        Left = 326
        Top = 149
        Width = 177
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
        SubmitOnAsyncEvent = True
        TabOrder = 3
        ItemIndex = -1
        Sorted = False
        FriendlyName = 'GroupItems'
      end
      object WhenCombo: TIWComboBox
        Left = 85
        Top = 185
        Width = 131
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
        SubmitOnAsyncEvent = True
        TabOrder = 7
        ItemIndex = 0
        Items.Strings = (
          'Now'
          '12 AM (midnight)'
          '1 AM'
          '2 AM'
          '3 AM'
          '4 AM'
          '5 AM'
          '6 AM'
          '7 AM'
          '8 AM'
          '9 AM'
          '10 AM'
          '11 AM'
          '12 PM (midday)'
          '1 PM'
          '2 PM'
          '3 PM'
          '4 PM'
          '5 PM'
          '6 PM'
          '7 PM'
          '8 PM'
          '9 PM'
          '10 PM'
          '11 PM')
        Sorted = False
        FriendlyName = 'WhenCombo'
      end
      object WhenLabel: TIWLabel
        Left = 21
        Top = 186
        Width = 60
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
        AutoSize = False
        FriendlyName = 'RequestLabel'
        Caption = 'When :'
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
      7442746E01010D0A5465737447726F75707301010D0A7374446973706C61794C
      6162656C730D0A7374466F6E74730D0A73744D756C74694C696E65730D0A4C69
      766547726F7570732E4974656D7301010D0A5465737447726F7570732E497465
      6D7301010D0A7374537472696E67730D0A557064617465526571756573746564
      0155706461746520526571756573746564010D0A55706461746552656A656374
      6564015570646174652052656A6563746564010D0A416C6C47726F7570730141
      6C6C2047726F757073010D0A416C6C4C69766547726F75707301416C6C205072
      6F64756374696F6E2047726F757073010D0A416C6C5465737447726F75707301
      416C6C20546573742047726F757073010D0A496E76616C696454696D6501496E
      76616C69642054696D65010D0A73744F74686572537472696E67730D0A495752
      656374616E676C65312E5465787401010D0A495752656374616E676C65322E54
      65787401010D0A4C69766547726F7570732E4E6F53656C656374696F6E546578
      74012D2D204E6F2053656C656374696F6E202D2D010D0A5465737447726F7570
      732E4E6F53656C656374696F6E54657874012D2D204E6F2053656C656374696F
      6E202D2D010D0A7374436F6C6C656374696F6E730D0A73744368617253657473
      0D0A}
  end
end
