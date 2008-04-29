object StatsFrameTitle: TStatsFrameTitle
  Left = 0
  Top = 0
  Width = 1086
  Height = 114
  HorzScrollBar.Visible = False
  VertScrollBar.Visible = False
  Anchors = [akLeft, akTop, akRight]
  TabOrder = 0
  object IWFrameRegion: TIWRegion
    Left = 0
    Top = 0
    Width = 1086
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
      1086
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
      TabOrder = 0
      UseSize = False
      Cacheable = True
      FriendlyName = 'IWImageFile1'
      ImageFile.Filename = 'E:\delphi\delphi_web\Files\Dots Graphic.GIF'
    end
    object IWImageFile2: TIWImageFile
      Left = 33
      Top = 11
      Width = 299
      Height = 78
      Cursor = crAuto
      Visible = False
      IW50Hint = False
      ParentShowHint = False
      ShowHint = True
      ZIndex = 0
      RenderSize = False
      BorderOptions.Color = clNone
      BorderOptions.Width = 0
      DoSubmitValidation = True
      ScriptEvents = <>
      TabOrder = 1
      UseSize = False
      Cacheable = True
      FriendlyName = 'IWImageFile2'
      ImageFile.Filename = 'E:\delphi\delphi_web\Files\stats.GIF'
    end
    object IWRectangle1: TIWRectangle
      Left = 0
      Top = 87
      Width = 2687
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
    object IWRectangle2: TIWRectangle
      Left = 0
      Top = 89
      Width = 3
      Height = 8
      Cursor = crAuto
      Anchors = [akLeft, akBottom]
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
      FriendlyName = 'IWRectangle2'
      Color = 11100191
      Alignment = taLeftJustify
      VAlign = vaMiddle
    end
    object IWRectangle3: TIWRectangle
      Left = 152
      Top = 92
      Width = 2415
      Height = 22
      Cursor = crAuto
      Anchors = [akLeft, akTop, akRight]
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
      Left = 752
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
      ScriptEvents = <>
      TabOrder = 2
      UseSize = False
      Cacheable = True
      FriendlyName = 'IWImageFile3'
      ImageFile.Filename = 'E:\delphi\delphi_web\Files\recast logo.gif'
    end
    object langlink: TIWSiLink
      Left = 681
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
      TabOrder = 5
      RawText = False
      SiLangLinked = silink
      LangFile = 'statsttl.sil'
      LangControl = RcDataMod.LangEditControl1
    end
    object TitleLabel: TIWLabel
      Left = 32
      Top = 0
      Width = 306
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
      Caption = 'statistics'
      RawText = False
    end
    object IWRegion1: TIWRegion
      Left = 0
      Top = 92
      Width = 150
      Height = 22
      Cursor = crAuto
      HorzScrollBar.Visible = False
      VertScrollBar.Visible = False
      BorderOptions.NumericWidth = 0
      BorderOptions.BorderWidth = cbwNumeric
      BorderOptions.Style = cbsNone
      BorderOptions.Color = clNone
      Color = 11100191
      ParentShowHint = False
      ShowHint = True
      ZIndex = 1000
      Splitter = False
      object JournalLink: TIWLink
        Left = 0
        Top = 0
        Width = 150
        Height = 22
        Cursor = crAuto
        Align = alClient
        IW50Hint = False
        ParentShowHint = False
        ShowHint = True
        ZIndex = 1
        RenderSize = False
        Alignment = taLeftJustify
        Color = clNone
        Font.Color = clWebWHITE
        Font.FontFamily = 'Arial, Sans-Serif, Verdana'
        Font.Size = 13
        Font.Style = [fsBold]
        ScriptEvents = <
          item
            EventCode.Strings = (
              'this.style.color='#39'white'#39';')
            Event = 'onMouseOut'
          end
          item
            EventCode.Strings = (
              'this.style.color='#39'yellow'#39';')
            Event = 'onMouseOver'
          end>
        DoSubmitValidation = False
        FriendlyName = 'JournalLink'
        TabOrder = 3
        RawText = False
        Caption = 'JOURNAL'
      end
    end
    object PromoReg: TIWRegion
      Left = 152
      Top = 92
      Width = 150
      Height = 22
      Cursor = crAuto
      HorzScrollBar.Visible = False
      VertScrollBar.Visible = False
      BorderOptions.NumericWidth = 0
      BorderOptions.BorderWidth = cbwNumeric
      BorderOptions.Style = cbsNone
      BorderOptions.Color = clNone
      Color = 10526880
      ParentShowHint = False
      ShowHint = True
      ZIndex = 1000
      Splitter = False
      object ActivityLink: TIWLink
        Left = 0
        Top = 0
        Width = 150
        Height = 22
        Cursor = crAuto
        Visible = False
        Align = alClient
        IW50Hint = False
        ParentShowHint = False
        ShowHint = True
        ZIndex = 1
        RenderSize = False
        Alignment = taLeftJustify
        Enabled = False
        Color = clNone
        Font.Color = clWebWHITE
        Font.FontFamily = 'Arial, Sans-Serif, Verdana'
        Font.Size = 13
        Font.Style = [fsBold]
        ScriptEvents = <
          item
            EventCode.Strings = (
              'this.style.color='#39'white'#39';')
            Event = 'onMouseOut'
          end
          item
            EventCode.Strings = (
              'this.style.color='#39'yellow'#39';')
            Event = 'onMouseOver'
          end>
        DoSubmitValidation = False
        FriendlyName = 'HomeLink'
        TabOrder = 4
        RawText = False
        Caption = 'ACTIVITY'
      end
    end
  end
  object silink: TsiLangLinked
    Version = '5.3.1.1'
    StringsTypes.Strings = (
      'TIB_STRINGLIST'
      'TSTRINGLIST')
    SmartExcludeProps.Strings = (
      'UserLabel.Caption'
      'Extra1.Caption'
      'Extra2.Caption'
      'Extra3.Caption'
      'CreateBtn.Caption')
    LangDispatcher = RcDataMod.siLangDispatcher1
    LangDelim = 1
    LangNames.Strings = (
      'English')
    Language = 'English'
    CommonContainer = RcDataMod.siLang1
    ExcludedProperties.Strings = (
      'Hint')
    Top = 24
    TranslationData = {
      737443617074696F6E730D0A4A6F75726E616C4C696E6B014A4F55524E414C01
      0D0A41637469766974794C696E6B014143544956495459010D0A5469746C654C
      6162656C0173746174697374696373010D0A737448696E74730D0A7374446973
      706C61794C6162656C730D0A7374466F6E74730D0A5453746174734672616D65
      5469746C65014D532053616E73205365726966010D0A73744D756C74694C696E
      65730D0A7374537472696E67730D0A4C6F676F757450726F6D7074014C6F676F
      7574206E6F773F010D0A73744F74686572537472696E67730D0A7374436F6C6C
      656374696F6E730D0A737443686172536574730D0A5453746174734672616D65
      5469746C650144454641554C545F43484152534554010D0A}
  end
end
