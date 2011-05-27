object AdminFrameTitle: TAdminFrameTitle
  Left = 0
  Top = 0
  Width = 632
  Height = 112
  HorzScrollBar.Visible = False
  VertScrollBar.Visible = False
  Anchors = [akLeft, akTop, akRight]
  TabOrder = 0
  object IWFrameRegion: TIWRegion
    Left = 0
    Top = 0
    Width = 632
    Height = 112
    Cursor = crAuto
    HorzScrollBar.Visible = False
    VertScrollBar.Visible = False
    RenderInvisibleControls = False
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
      632
      112)
    object IWImageFile1: TIWImageFile
      Left = 0
      Top = 24
      Width = 1600
      Height = 37
      Cursor = crAuto
      IW50Hint = False
      ParentShowHint = False
      ShowHint = True
      ZIndex = 1
      RenderSize = False
      StyleRenderOptions.RenderSize = False
      StyleRenderOptions.RenderPosition = True
      StyleRenderOptions.RenderFont = True
      StyleRenderOptions.RenderZIndex = True
      StyleRenderOptions.RenderVisibility = True
      StyleRenderOptions.RenderStatus = True
      StyleRenderOptions.RenderAbsolute = True
      BorderOptions.Color = clNone
      BorderOptions.Width = 0
      DoSubmitValidation = True
      ScriptEvents = <>
      TabOrder = -1
      UseSize = False
      Cacheable = True
      FriendlyName = 'IWImageFile1'
      ImageFile.Filename = 'E:\delphi\delphi_web\Files\Dots Graphic.GIF'
    end
    object titleimage: TIWImageFile
      Left = 33
      Top = 10
      Width = 458
      Height = 73
      Cursor = crAuto
      Visible = False
      IW50Hint = False
      ParentShowHint = False
      ShowHint = True
      ZIndex = 2
      RenderSize = True
      StyleRenderOptions.RenderSize = True
      StyleRenderOptions.RenderPosition = True
      StyleRenderOptions.RenderFont = True
      StyleRenderOptions.RenderZIndex = True
      StyleRenderOptions.RenderVisibility = True
      StyleRenderOptions.RenderStatus = True
      StyleRenderOptions.RenderAbsolute = True
      BorderOptions.Color = clNone
      BorderOptions.Width = 0
      DoSubmitValidation = True
      ScriptEvents = <>
      TabOrder = -1
      UseSize = True
      Cacheable = True
      FriendlyName = 'titleimage'
      ImageFile.Filename = 'E:\delphi\delphi_web\Files\admin.GIF'
    end
    object IWRectangle1: TIWRectangle
      Left = 0
      Top = 86
      Width = 2233
      Height = 3
      Cursor = crAuto
      Anchors = [akLeft, akRight, akBottom]
      IW50Hint = False
      ParentShowHint = False
      ShowHint = True
      ZIndex = 1
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
      Top = 88
      Width = 3
      Height = 8
      Cursor = crAuto
      Anchors = [akLeft, akBottom]
      IW50Hint = False
      ParentShowHint = False
      ShowHint = True
      ZIndex = 1
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
      FriendlyName = 'IWRectangle2'
      Color = 11100191
      Alignment = taLeftJustify
      VAlign = vaMiddle
    end
    object IWRectangle3: TIWRectangle
      Left = 608
      Top = 91
      Width = 26
      Height = 22
      Cursor = crAuto
      Anchors = [akLeft, akRight, akBottom]
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
      FriendlyName = 'IWRectangle3'
      Color = 10526880
      Alignment = taLeftJustify
      VAlign = vaMiddle
    end
    object IWImageFile3: TIWImageFile
      Left = 298
      Top = 0
      Width = 300
      Height = 81
      Cursor = crAuto
      Anchors = [akTop, akRight]
      IW50Hint = False
      ParentShowHint = False
      ShowHint = True
      ZIndex = 2
      RenderSize = True
      StyleRenderOptions.RenderSize = True
      StyleRenderOptions.RenderPosition = True
      StyleRenderOptions.RenderFont = True
      StyleRenderOptions.RenderZIndex = True
      StyleRenderOptions.RenderVisibility = True
      StyleRenderOptions.RenderStatus = True
      StyleRenderOptions.RenderAbsolute = True
      BorderOptions.Color = clNone
      BorderOptions.Width = 0
      DoSubmitValidation = True
      ScriptEvents = <>
      TabOrder = -1
      UseSize = True
      Cacheable = True
      FriendlyName = 'IWImageFile3'
      ImageFile.Filename = 'E:\delphi\delphi_web\Files\recast logo.gif'
    end
    object TitleLabel: TIWLabel
      Left = 32
      Top = 0
      Width = 465
      Height = 75
      Cursor = crAuto
      Visible = False
      IW50Hint = False
      ParentShowHint = False
      ShowHint = True
      ZIndex = 2
      RenderSize = True
      StyleRenderOptions.RenderSize = True
      StyleRenderOptions.RenderPosition = True
      StyleRenderOptions.RenderFont = True
      StyleRenderOptions.RenderZIndex = True
      StyleRenderOptions.RenderVisibility = True
      StyleRenderOptions.RenderStatus = True
      StyleRenderOptions.RenderAbsolute = True
      Alignment = taLeftJustify
      BGColor = clWebWHITE
      Font.Color = clWebBLACK
      Font.FontName = 'Arial'
      Font.Size = 48
      Font.Style = [fsBold]
      NoWrap = False
      ConvertSpaces = False
      HasTabOrder = False
      AutoSize = False
      FriendlyName = 'TitleLabel'
      Caption = 'administration'
      RawText = False
    end
    object langlink: TIWSiLink
      Left = 187
      Top = 1
      Width = 65
      Height = 17
      Cursor = crAuto
      Anchors = [akTop, akRight]
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
      FriendlyName = 'langlink'
      TabOrder = 4
      RawText = False
      SiLangLinked = silink
      LangFile = 'adminttl.sil'
      LangControl = RcDataMod.LangEditControl1
    end
    object Smalltitle: TIWLabel
      Left = 492
      Top = 93
      Width = 122
      Height = 19
      Cursor = crAuto
      Visible = False
      Anchors = [akRight, akBottom]
      IW50Hint = False
      ParentShowHint = False
      ShowHint = True
      ZIndex = 1
      RenderSize = True
      StyleRenderOptions.RenderSize = True
      StyleRenderOptions.RenderPosition = True
      StyleRenderOptions.RenderFont = True
      StyleRenderOptions.RenderZIndex = True
      StyleRenderOptions.RenderVisibility = True
      StyleRenderOptions.RenderStatus = True
      StyleRenderOptions.RenderAbsolute = True
      Alignment = taRightJustify
      BGColor = 10526880
      Font.Color = clWebBLACK
      Font.FontName = 'Arial'
      Font.Size = 12
      Font.Style = [fsBold]
      NoWrap = False
      ConvertSpaces = False
      HasTabOrder = False
      AutoSize = False
      FriendlyName = 'TitleLabel'
      Caption = '[default]'
      RawText = False
    end
    object HideBox: TIWImageFile
      Left = 618
      Top = 93
      Width = 13
      Height = 17
      Cursor = crAuto
      Anchors = [akRight, akBottom]
      IW50Hint = False
      ParentShowHint = False
      ShowHint = True
      ZIndex = 1
      RenderSize = False
      StyleRenderOptions.RenderSize = False
      StyleRenderOptions.RenderPosition = True
      StyleRenderOptions.RenderFont = True
      StyleRenderOptions.RenderZIndex = True
      StyleRenderOptions.RenderVisibility = True
      StyleRenderOptions.RenderStatus = True
      StyleRenderOptions.RenderAbsolute = True
      BorderOptions.Color = clNone
      BorderOptions.Width = 0
      DoSubmitValidation = True
      ScriptEvents = <>
      TabOrder = -1
      UseSize = False
      OnClick = HideBoxClick
      Cacheable = True
      FriendlyName = 'HideBox'
      ImageFile.Filename = 'F:\delphi\delphi_web_ext\Files\X.bmp'
    end
    object SysReg: TIWRegion
      Left = 0
      Top = 91
      Width = 150
      Height = 22
      Cursor = crAuto
      HorzScrollBar.Visible = False
      VertScrollBar.Visible = False
      RenderInvisibleControls = False
      Anchors = [akLeft, akBottom]
      BorderOptions.NumericWidth = 0
      BorderOptions.BorderWidth = cbwNumeric
      BorderOptions.Style = cbsNone
      BorderOptions.Color = clNone
      Color = 11100191
      ParentShowHint = False
      ShowHint = True
      ZIndex = 1000
      Splitter = False
      object SysLink: TIWLink
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
        StyleRenderOptions.RenderSize = False
        StyleRenderOptions.RenderPosition = True
        StyleRenderOptions.RenderFont = True
        StyleRenderOptions.RenderZIndex = True
        StyleRenderOptions.RenderVisibility = True
        StyleRenderOptions.RenderStatus = True
        StyleRenderOptions.RenderAbsolute = True
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
        FriendlyName = 'SysLink'
        OnClick = SysLinkClick
        TabOrder = 0
        RawText = False
        Caption = 'SYSTEM'
      end
    end
    object StoreReg: TIWRegion
      Left = 152
      Top = 91
      Width = 150
      Height = 22
      Cursor = crAuto
      HorzScrollBar.Visible = False
      VertScrollBar.Visible = False
      RenderInvisibleControls = False
      Anchors = [akLeft, akBottom]
      BorderOptions.NumericWidth = 0
      BorderOptions.BorderWidth = cbwNumeric
      BorderOptions.Style = cbsNone
      BorderOptions.Color = clNone
      Color = 10526880
      ParentShowHint = False
      ShowHint = True
      ZIndex = 1000
      Splitter = False
      object StoreLink: TIWLink
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
        StyleRenderOptions.RenderSize = False
        StyleRenderOptions.RenderPosition = True
        StyleRenderOptions.RenderFont = True
        StyleRenderOptions.RenderZIndex = True
        StyleRenderOptions.RenderVisibility = True
        StyleRenderOptions.RenderStatus = True
        StyleRenderOptions.RenderAbsolute = True
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
        FriendlyName = 'HomeLink'
        OnClick = StoreLinkClick
        TabOrder = 1
        RawText = False
        Caption = 'STORES'
      end
    end
    object POSReg: TIWRegion
      Left = 304
      Top = 91
      Width = 150
      Height = 22
      Cursor = crAuto
      HorzScrollBar.Visible = False
      VertScrollBar.Visible = False
      RenderInvisibleControls = False
      Anchors = [akLeft, akBottom]
      BorderOptions.NumericWidth = 0
      BorderOptions.BorderWidth = cbwNumeric
      BorderOptions.Style = cbsNone
      BorderOptions.Color = clNone
      Color = 10526880
      ParentShowHint = False
      ShowHint = True
      ZIndex = 1000
      Splitter = False
      object POSLink: TIWLink
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
        StyleRenderOptions.RenderSize = False
        StyleRenderOptions.RenderPosition = True
        StyleRenderOptions.RenderFont = True
        StyleRenderOptions.RenderZIndex = True
        StyleRenderOptions.RenderVisibility = True
        StyleRenderOptions.RenderStatus = True
        StyleRenderOptions.RenderAbsolute = True
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
        FriendlyName = 'HomeLink'
        OnClick = POSLinkClick
        TabOrder = 2
        RawText = False
        Caption = 'POS'
      end
    end
    object CoReg: TIWRegion
      Left = 456
      Top = 91
      Width = 150
      Height = 22
      Cursor = crAuto
      HorzScrollBar.Visible = False
      VertScrollBar.Visible = False
      RenderInvisibleControls = False
      Anchors = [akLeft, akBottom]
      BorderOptions.NumericWidth = 0
      BorderOptions.BorderWidth = cbwNumeric
      BorderOptions.Style = cbsNone
      BorderOptions.Color = clNone
      Color = 10526880
      ParentShowHint = False
      ShowHint = True
      ZIndex = 1000
      Splitter = False
      object CompanyLink: TIWLink
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
        StyleRenderOptions.RenderSize = False
        StyleRenderOptions.RenderPosition = True
        StyleRenderOptions.RenderFont = True
        StyleRenderOptions.RenderZIndex = True
        StyleRenderOptions.RenderVisibility = True
        StyleRenderOptions.RenderStatus = True
        StyleRenderOptions.RenderAbsolute = True
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
        FriendlyName = 'HomeLink'
        OnClick = CompanyLinkClick
        TabOrder = 3
        RawText = False
        Caption = 'COMPANY'
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
      737443617074696F6E730D0A5469746C654C6162656C0161646D696E69737472
      6174696F6E010D0A5379734C696E6B0153595354454D010D0A53746F72654C69
      6E6B0153544F524553010D0A504F534C696E6B01504F53010D0A436F6D70616E
      794C696E6B01434F4D50414E59010D0A737448696E74730D0A7374446973706C
      61794C6162656C730D0A7374466F6E74730D0A5441646D696E4672616D655469
      746C65014D532053616E73205365726966010D0A73744D756C74694C696E6573
      0D0A7374537472696E67730D0A4C6F676F757450726F6D7074014C6F676F7574
      206E6F773F010D0A73744F74686572537472696E67730D0A7374436F6C6C6563
      74696F6E730D0A737443686172536574730D0A5441646D696E4672616D655469
      746C650144454641554C545F43484152534554010D0A}
  end
end
