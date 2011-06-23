object FormImgHdr: TFormImgHdr
  Left = 0
  Top = 0
  Width = 1028
  Height = 656
  HorzScrollBar.Visible = False
  VertScrollBar.Visible = False
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
  DesignLeft = 64
  DesignTop = 230
  inline FrameBareTitle1: TFrameBareTitle
    Left = 0
    Top = 0
    Width = 1028
    Height = 114
    HorzScrollBar.Visible = False
    VertScrollBar.Visible = False
    Align = alTop
    TabOrder = 0
    inherited IWFrameRegion: TIWRegion
      Width = 1028
      TabOrder = 6
      inherited titleimage: TIWImageFile
        ImageFile.Filename = 'E:\delphi\delphi_web\files\promotions.GIF'
      end
      inherited IWRectangle1: TIWRectangle
        Width = 1028
      end
      inherited IWImageFile3: TIWImageFile
        Left = 693
      end
      inherited langlink: TIWSiLink
        Left = 630
      end
      inherited Smalltitle: TIWLabel
        Left = 910
      end
      inherited HideBox: TIWImageFile
        Left = 1014
        Width = 12
        Height = 14
      end
      inherited TitleLabel: TIWLabel
        Width = 387
        Caption = 'promotions'
      end
    end
  end
  inline userfooter1: Tuserfooter
    Left = 0
    Top = 627
    Width = 1028
    Height = 29
    HorzScrollBar.Visible = False
    Align = alBottom
    TabOrder = 1
    inherited IWRegion1: TIWRegion
      Width = 1028
      Height = 29
      TabOrder = 7
      inherited IWRectangle1: TIWRectangle
        Left = 652
      end
      inherited IWRectangle4: TIWRectangle
        Width = 1644
      end
      inherited IWRectangle6: TIWRectangle
        Width = 610
      end
      inherited Cancel: TIWButton
        Left = 941
        OnClick = userfooter1CancelClick
      end
      inherited Extra1: TIWButton
        Left = 854
        Visible = True
        Caption = 'Delete'
        Confirmation = 'Delete this record?'
        FriendlyName = 'DelBtn'
        OnClick = DelBtnClick
      end
      inherited Extra2: TIWButton
        Left = 766
        Visible = True
        Caption = 'Save'
        OnClick = userfooter1Extra1Click
      end
      inherited fiwSiLink1: TIWSiLink
        Left = 693
      end
      inherited navcombo: TIWComboBox
        Visible = False
      end
    end
  end
  object IWRegion1: TIWRegion
    Left = 0
    Top = 114
    Width = 1028
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
      1028
      513)
    object IWRegion2: TIWRegion
      Left = 228
      Top = 50
      Width = 585
      Height = 215
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
        FriendlyName = 'NewIDEdit'
        MaxLength = 0
        ReadOnly = False
        Required = False
        ScriptEvents = <>
        SubmitOnAsyncEvent = True
        TabOrder = 0
        PasswordPrompt = False
        Text = 'NewTagEdit'
      end
      object SuppressBox: TIWCheckBox
        Left = 96
        Top = 133
        Width = 217
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
        Caption = 'Suppress On Test'
        Editable = True
        Font.Color = clNone
        Font.Size = 10
        Font.Style = []
        SubmitOnAsyncEvent = True
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
        StyleRenderOptions.RenderSize = True
        StyleRenderOptions.RenderPosition = True
        StyleRenderOptions.RenderFont = True
        StyleRenderOptions.RenderZIndex = True
        StyleRenderOptions.RenderVisibility = True
        StyleRenderOptions.RenderStatus = True
        StyleRenderOptions.RenderAbsolute = True
        Alignment = taRightJustify
        BGColor = clNone
        Font.Color = clNone
        Font.Size = 10
        Font.Style = []
        NoWrap = False
        ConvertSpaces = False
        HasTabOrder = False
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
        StyleRenderOptions.RenderSize = True
        StyleRenderOptions.RenderPosition = True
        StyleRenderOptions.RenderFont = True
        StyleRenderOptions.RenderZIndex = True
        StyleRenderOptions.RenderVisibility = True
        StyleRenderOptions.RenderStatus = True
        StyleRenderOptions.RenderAbsolute = True
        Alignment = taRightJustify
        BGColor = clNone
        Font.Color = clNone
        Font.Size = 12
        Font.Style = [fsBold]
        NoWrap = False
        ConvertSpaces = False
        HasTabOrder = False
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
        Font.Size = 12
        Font.Style = [fsBold]
        FriendlyName = 'NewNameEdit'
        MaxLength = 0
        ReadOnly = False
        Required = False
        ScriptEvents = <>
        SubmitOnAsyncEvent = True
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
        StyleRenderOptions.RenderSize = True
        StyleRenderOptions.RenderPosition = True
        StyleRenderOptions.RenderFont = True
        StyleRenderOptions.RenderZIndex = True
        StyleRenderOptions.RenderVisibility = True
        StyleRenderOptions.RenderStatus = True
        StyleRenderOptions.RenderAbsolute = True
        Alignment = taRightJustify
        BGColor = clNone
        Font.Color = clNone
        Font.Size = 10
        Font.Style = []
        NoWrap = False
        ConvertSpaces = False
        HasTabOrder = False
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
        StyleRenderOptions.RenderSize = True
        StyleRenderOptions.RenderPosition = True
        StyleRenderOptions.RenderFont = True
        StyleRenderOptions.RenderZIndex = True
        StyleRenderOptions.RenderVisibility = True
        StyleRenderOptions.RenderStatus = True
        StyleRenderOptions.RenderAbsolute = True
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
        SubmitOnAsyncEvent = True
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
        Height = 212
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
        StyleRenderOptions.RenderSize = True
        StyleRenderOptions.RenderPosition = True
        StyleRenderOptions.RenderFont = True
        StyleRenderOptions.RenderZIndex = True
        StyleRenderOptions.RenderVisibility = True
        StyleRenderOptions.RenderStatus = True
        StyleRenderOptions.RenderAbsolute = True
        Alignment = taRightJustify
        BGColor = clNone
        Font.Color = clNone
        Font.Size = 10
        Font.Style = []
        NoWrap = False
        ConvertSpaces = False
        HasTabOrder = False
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
        FriendlyName = 'NewIDEdit'
        MaxLength = 0
        ReadOnly = False
        Required = False
        ScriptEvents = <>
        SubmitOnAsyncEvent = True
        TabOrder = 5
        PasswordPrompt = False
        Text = 'NewDescEdit'
      end
      object TemplateBox: TIWCheckBox
        Left = 96
        Top = 188
        Width = 225
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
        Caption = 'Template Object'
        Editable = True
        Font.Color = clNone
        Font.Size = 10
        Font.Style = []
        SubmitOnAsyncEvent = True
        ScriptEvents = <>
        DoSubmitValidation = True
        Style = stNormal
        TabOrder = 8
        OnClick = TemplateBoxClick
        Checked = False
        FriendlyName = 'TemplateBox'
      end
      object ObjectCombo: TIWComboBox
        Left = 385
        Top = 35
        Width = 156
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
        NoSelectionText = 'XXXXX'
        Required = False
        RequireSelection = True
        ScriptEvents = <>
        UseSize = True
        Style = stNormal
        ButtonColor = clBtnFace
        DoSubmitValidation = True
        Editable = True
        NonEditableAsLabel = False
        SubmitOnAsyncEvent = True
        TabOrder = 9
        ItemIndex = 0
        Items.Strings = (
          '- - - - - - - - -')
        Sorted = False
        FriendlyName = 'ObjectCombo'
      end
      object ParamLbl: TIWLabel
        Left = 310
        Top = 36
        Width = 69
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
        FriendlyName = 'ParamLbl'
        Caption = 'Parameter'
        RawText = False
      end
      object SetNameBtn: TIWButton
        Left = 385
        Top = 60
        Width = 86
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
        Caption = 'Set Name'
        DoSubmitValidation = True
        Color = clBtnFace
        Font.Color = clNone
        Font.Size = 10
        Font.Style = []
        FriendlyName = 'SetNameBtn'
        ScriptEvents = <>
        TabOrder = 10
        OnClick = SetNameBtnClick
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
      014465736372697074696F6E010D0A54656D706C617465426F780154656D706C
      617465204F626A656374010D0A506172616D4C626C01506172616D6574657201
      0D0A5365744E616D6542746E01536574204E616D65010D0A737448696E74730D
      0A7374446973706C61794C6162656C730D0A7374466F6E74730D0A73744D756C
      74694C696E65730D0A4957526567696F6E312E4578747261546167506172616D
      7301010D0A4957526567696F6E322E4578747261546167506172616D7301010D
      0A4E6577546167456469742E4578747261546167506172616D7301010D0A5375
      707072657373426F782E4578747261546167506172616D7301010D0A49574C61
      62656C332E4578747261546167506172616D7301010D0A49574C6162656C312E
      4578747261546167506172616D7301010D0A4E65774E616D65456469742E4578
      747261546167506172616D7301010D0A49574C6162656C322E45787472615461
      67506172616D7301010D0A4E65774944456469742E4578747261546167506172
      616D7301010D0A495753694C696E6B312E4578747261546167506172616D7301
      010D0A495752656374616E676C65322E4578747261546167506172616D730101
      0D0A495752656374616E676C65312E4578747261546167506172616D7301010D
      0A49574C6162656C342E4578747261546167506172616D7301010D0A4E657744
      657363456469742E4578747261546167506172616D7301010D0A54656D706C61
      7465426F782E4578747261546167506172616D7301010D0A4F626A656374436F
      6D626F2E4578747261546167506172616D7301010D0A4F626A656374436F6D62
      6F2E4974656D7301222D202D202D202D202D202D202D202D202D22010D0A5061
      72616D4C626C2E4578747261546167506172616D7301010D0A5365744E616D65
      42746E2E4578747261546167506172616D7301010D0A7374537472696E67730D
      0A4E65774F626A656374014E6577204F626A656374010D0A73744F7468657253
      7472696E67730D0A4672616D65426172655469746C65312E48656C704B657977
      6F726401010D0A75736572666F6F746572312E48656C704B6579776F72640101
      0D0A4957526567696F6E312E48656C704B6579776F726401010D0A4957526567
      696F6E322E48656C704B6579776F726401010D0A4E6577546167456469742E48
      656C704B6579776F726401010D0A5375707072657373426F782E48656C704B65
      79776F726401010D0A49574C6162656C332E48656C704B6579776F726401010D
      0A49574C6162656C312E48656C704B6579776F726401010D0A4E65774E616D65
      456469742E48656C704B6579776F726401010D0A49574C6162656C322E48656C
      704B6579776F726401010D0A4E65774944456469742E48656C704B6579776F72
      6401010D0A495753694C696E6B312E48656C704B6579776F726401010D0A4957
      52656374616E676C65322E48656C704B6579776F726401010D0A495752656374
      616E676C65312E48656C704B6579776F726401010D0A54466F726D496D674864
      722E48656C704B6579776F726401010D0A49574C6162656C342E48656C704B65
      79776F726401010D0A4E657744657363456469742E48656C704B6579776F7264
      01010D0A54656D706C617465426F782E48656C704B6579776F726401010D0A4F
      626A656374436F6D626F2E48656C704B6579776F726401010D0A4F626A656374
      436F6D626F2E4E6F53656C656374696F6E54657874015858585858010D0A5061
      72616D4C626C2E48656C704B6579776F726401010D0A5365744E616D6542746E
      2E48656C704B6579776F726401010D0A7374436F6C6C656374696F6E730D0A73
      7443686172536574730D0A}
  end
end
