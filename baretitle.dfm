object FrameBareTitle: TFrameBareTitle
  Left = 0
  Top = 0
  Width = 1017
  Height = 114
  HorzScrollBar.Visible = False
  VertScrollBar.Visible = False
  Anchors = [akLeft, akTop, akRight]
  TabOrder = 0
  object IWFrameRegion: TIWRegion
    Left = 0
    Top = 0
    Width = 1017
    Height = 114
    Cursor = crAuto
    HorzScrollBar.Visible = False
    VertScrollBar.Visible = False
    TabOrder = 0
    Align = alClient
    BorderOptions.NumericWidth = 0
    BorderOptions.BorderWidth = cbwNumeric
    BorderOptions.Style = cbsNone
    BorderOptions.Color = clNone
    Color = clNone
    ParentShowHint = False
    ShowHint = True
    ZIndex = 1000
    OnCreate = IWFrameRegionCreate
    Splitter = False
    DesignSize = (
      1017
      114)
    object IWImageFile1: TIWImageFile
      Left = 0
      Top = 24
      Width = 1600
      Height = 37
      Cursor = crAuto
      IW50Hint = False
      ParentShowHint = False
      ShowHint = True
      ZIndex = 0
      RenderSize = False
      BorderOptions.Color = clNone
      BorderOptions.Width = 0
      DoSubmitValidation = True
      ScriptEvents = <>
      TabOrder = 2
      UseSize = False
      Cacheable = True
      FriendlyName = 'IWImageFile1'
      ImageFile.Filename = 'E:\delphi\delphi_web\Files\Dots Graphic.GIF'
    end
    object titleimage: TIWImageFile
      Left = 36
      Top = 11
      Width = 374
      Height = 78
      Cursor = crAuto
      Visible = False
      IW50Hint = False
      ParentShowHint = False
      ShowHint = True
      ZIndex = 0
      RenderSize = False
      AutoSize = False
      BorderOptions.Color = clNone
      BorderOptions.Width = 0
      DoSubmitValidation = True
      Enabled = False
      ScriptEvents = <>
      TabOrder = 1
      UseSize = False
      Cacheable = True
      FriendlyName = 'titleimage'
      ImageFile.Filename = 'E:\delphi\delphi_web\Files\distrib.GIF'
    end
    object IWRectangle1: TIWRectangle
      Left = 0
      Top = 89
      Width = 1530
      Height = 3
      Cursor = crAuto
      Anchors = [akLeft, akRight, akBottom]
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
    object IWRectangle3: TIWRectangle
      Left = 0
      Top = 94
      Width = 1600
      Height = 20
      Cursor = crAuto
      Align = alBottom
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
      FriendlyName = 'IWRectangle3'
      Color = 10526880
      Alignment = taLeftJustify
      VAlign = vaMiddle
    end
    object IWImageFile3: TIWImageFile
      Left = 682
      Top = 0
      Width = 300
      Height = 86
      Cursor = crAuto
      Anchors = [akTop, akRight]
      IW50Hint = False
      ParentShowHint = False
      ShowHint = True
      ZIndex = 0
      RenderSize = False
      AutoSize = False
      BorderOptions.Color = clNone
      BorderOptions.Width = 0
      DoSubmitValidation = True
      Enabled = False
      ScriptEvents = <>
      TabOrder = 0
      UseSize = False
      Cacheable = True
      FriendlyName = 'IWImageFile3'
      ImageFile.Filename = 'E:\delphi\delphi_web\Files\recast logo.gif'
    end
    object TitleLabel: TIWLabel
      Left = 32
      Top = 0
      Width = 277
      Height = 75
      Cursor = crAuto
      Visible = False
      IW50Hint = False
      ParentShowHint = False
      ShowHint = True
      ZIndex = 1
      RenderSize = False
      Alignment = taLeftJustify
      BGColor = clWebWHITE
      Font.Color = clWebBLACK
      Font.FontName = 'Arial'
      Font.Size = 48
      Font.Style = [fsBold]
      NoWrap = False
      ConvertSpaces = False
      FriendlyName = 'TitleLabel'
      Caption = '[default]'
      RawText = False
    end
    object langlink: TIWSiLink
      Left = 611
      Top = 65
      Width = 65
      Height = 17
      Cursor = crAuto
      Anchors = [akTop, akRight]
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
      FriendlyName = 'langlink'
      TabOrder = 3
      RawText = False
      SiLangLinked = silink
      LangFile = 'barettl.sil'
      LangControl = RcDataMod.LangEditControl1
    end
    object Smalltitle: TIWLabel
      Left = 897
      Top = 98
      Width = 97
      Height = 16
      Cursor = crAuto
      Visible = False
      Anchors = [akRight, akBottom]
      IW50Hint = False
      ParentShowHint = False
      ShowHint = True
      ZIndex = 1
      RenderSize = True
      Alignment = taRightJustify
      BGColor = 10526880
      Font.Color = clWebBLACK
      Font.FontName = 'Arial'
      Font.Size = 10
      Font.Style = [fsBold]
      NoWrap = False
      ConvertSpaces = False
      AutoSize = False
      FriendlyName = 'TitleLabel'
      Caption = '[default]'
      RawText = False
    end
    object HideBox: TIWImageFile
      Left = 1000
      Top = 95
      Width = 13
      Height = 17
      Cursor = crAuto
      Anchors = [akRight, akBottom]
      IW50Hint = False
      ParentShowHint = False
      ShowHint = True
      ZIndex = 1
      RenderSize = False
      BorderOptions.Color = clNone
      BorderOptions.Width = 0
      DoSubmitValidation = True
      ScriptEvents = <>
      TabOrder = 4
      UseSize = False
      OnClick = HideBoxClick
      Cacheable = True
      FriendlyName = 'HideBox'
      ImageFile.Filename = 'F:\delphi\delphi_web_ext\Files\X.bmp'
    end
  end
  object silink: TsiLangLinked
    Version = '5.3.1.1'
    StringsTypes.Strings = (
      'TIB_STRINGLIST'
      'TSTRINGLIST')
    SmartExcludeProps.Strings = (
      'TitleLabel.Caption')
    LangDispatcher = RcDataMod.siLangDispatcher1
    LangDelim = 1
    LangNames.Strings = (
      'English')
    Language = 'English'
    CommonContainer = RcDataMod.siLang1
    ExcludedProperties.Strings = (
      'Hint')
    Left = 472
    Top = 32
    TranslationData = {
      737443617074696F6E730D0A737448696E74730D0A7374446973706C61794C61
      62656C730D0A7374466F6E74730D0A544672616D65426172655469746C65014D
      532053616E73205365726966010D0A73744D756C74694C696E65730D0A737453
      7472696E67730D0A646973747269627574696F6E01646973747269627574696F
      6E010D0A6C6F67696E016C6F67696E010D0A61646D696E697374726174696F6E
      0161646D696E697374726174696F6E010D0A7265706F727473017265706F7274
      73010D0A70726F6D6F74696F6E730170726F6D6F74696F6E73010D0A726F6C65
      01726F6C65010D0A6C616E6775616765016C616E6775616765010D0A73744F74
      686572537472696E67730D0A7374436F6C6C656374696F6E730D0A7374436861
      72536574730D0A544672616D65426172655469746C650144454641554C545F43
      484152534554010D0A}
  end
end
