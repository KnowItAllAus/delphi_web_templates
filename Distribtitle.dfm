object DistribFrameTitle: TDistribFrameTitle
  Left = 0
  Top = 0
  Width = 1024
  Height = 115
  HorzScrollBar.Visible = False
  VertScrollBar.Visible = False
  Anchors = [akLeft, akTop, akRight]
  TabOrder = 0
  object IWFrameRegion: TIWRegion
    Left = 0
    Top = 0
    Width = 1024
    Height = 115
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
      1024
      115)
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
      Top = 11
      Width = 374
      Height = 78
      Cursor = crAuto
      Visible = False
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
      FriendlyName = 'titleimage'
      ImageFile.Filename = 'E:\delphi\delphi_web\Files\distrib.GIF'
    end
    object IWRectangle1: TIWRectangle
      Left = 304
      Top = 90
      Width = 733
      Height = 3
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
      FriendlyName = 'IWRectangle1'
      Color = 11100191
      Alignment = taLeftJustify
      VAlign = vaMiddle
    end
    object IWRectangle2: TIWRectangle
      Left = 304
      Top = 91
      Width = 3
      Height = 8
      Cursor = crAuto
      Anchors = [akLeft, akBottom]
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
      FriendlyName = 'IWRectangle2'
      Color = 11100191
      Alignment = taLeftJustify
      VAlign = vaMiddle
    end
    object IWRectangle3: TIWRectangle
      Left = 913
      Top = 95
      Width = 111
      Height = 20
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
      Left = 690
      Top = 0
      Width = 300
      Height = 86
      Cursor = crAuto
      Anchors = [akTop, akRight]
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
      FriendlyName = 'IWImageFile3'
      ImageFile.Filename = 'E:\delphi\delphi_web\Files\recast logo.gif'
    end
    object TitleLabel: TIWLabel
      Left = 32
      Top = 0
      Width = 387
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
      FriendlyName = 'TitleLabel'
      Caption = 'distribution'
      RawText = False
    end
    object langlink: TIWSiLink
      Left = 585
      Top = 65
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
      TabOrder = 5
      RawText = False
      SiLangLinked = silink
      LangFile = 'distribttl.sil'
      LangControl = RcDataMod.LangEditControl1
    end
    object HideBox: TIWImageFile
      Left = 1011
      Top = 96
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
    object Smalltitle: TIWLabel
      Left = 915
      Top = 96
      Width = 103
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
    object JobRegn: TIWRegion
      Left = 0
      Top = 95
      Width = 150
      Height = 20
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
      object JobLink: TIWLink
        Left = 0
        Top = 0
        Width = 150
        Height = 20
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
        FriendlyName = 'JobLink'
        OnClick = JobLinkClick
        TabOrder = 0
        RawText = False
        Caption = 'JOBS'
      end
    end
    object GrpRegn: TIWRegion
      Left = 152
      Top = 95
      Width = 150
      Height = 20
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
      object GroupLink: TIWLink
        Left = 0
        Top = 0
        Width = 150
        Height = 20
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
        OnClick = GroupLinkClick
        TabOrder = 1
        RawText = False
        Caption = 'GROUPS'
      end
    end
    object EntityRegn: TIWRegion
      Left = 304
      Top = 95
      Width = 150
      Height = 20
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
      object OverviewLink: TIWLink
        Left = 0
        Top = 0
        Width = 150
        Height = 20
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
        OnClick = OverviewLinkClick
        TabOrder = 2
        RawText = False
        Caption = 'OVERVIEW'
      end
    end
    object SendRegion: TIWRegion
      Left = 456
      Top = 95
      Width = 150
      Height = 20
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
      object SendLink: TIWLink
        Left = 0
        Top = 0
        Width = 150
        Height = 20
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
        OnClick = SendLinkClick
        TabOrder = 3
        RawText = False
        Caption = 'PUBLISH'
      end
    end
    object statusregn: TIWRegion
      Left = 608
      Top = 95
      Width = 150
      Height = 20
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
      object statuslink: TIWLink
        Left = 0
        Top = 0
        Width = 150
        Height = 20
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
        OnClick = statuslinkClick
        TabOrder = 4
        RawText = False
        Caption = 'STATUS'
      end
    end
    object IWRegion1: TIWRegion
      Left = 760
      Top = 95
      Width = 150
      Height = 20
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
      object Exportlink: TIWLink
        Left = 0
        Top = 0
        Width = 150
        Height = 20
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
        OnClick = ExportlinkClick
        TabOrder = 6
        RawText = False
        Caption = 'EXPORTS'
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
      737443617074696F6E730D0A5469746C654C6162656C01646973747269627574
      696F6E010D0A4A6F624C696E6B014A4F4253010D0A47726F75704C696E6B0147
      524F555053010D0A4F766572766965774C696E6B014F56455256494557010D0A
      53656E644C696E6B015055424C495348010D0A7374617475736C696E6B015354
      41545553010D0A536D616C6C7469746C65015B64656661756C745D010D0A4578
      706F72746C696E6B014558504F525453010D0A737448696E74730D0A73744469
      73706C61794C6162656C730D0A7374466F6E74730D0A54446973747269624672
      616D655469746C65014D532053616E73205365726966010D0A73744D756C7469
      4C696E65730D0A7374537472696E67730D0A73744F74686572537472696E6773
      0D0A7374436F6C6C656374696F6E730D0A737443686172536574730D0A544469
      73747269624672616D655469746C650144454641554C545F4348415253455401
      0D0A}
  end
end
