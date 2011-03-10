object FormLanguage: TFormLanguage
  Left = 0
  Top = 0
  Width = 1028
  Height = 594
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
  DesignLeft = 273
  DesignTop = 385
  inline FrameBareTitle1: TFrameBareTitle
    Left = 0
    Top = 0
    Width = 1028
    Height = 118
    HorzScrollBar.Visible = False
    VertScrollBar.Visible = False
    Align = alTop
    TabOrder = 0
    inherited IWFrameRegion: TIWRegion
      Width = 1028
      Height = 118
      TabOrder = 2
      inherited titleimage: TIWImageFile
        Width = 285
        ImageFile.Filename = 'E:\delphi\delphi_web\files\lang.GIF'
      end
      inherited IWRectangle1: TIWRectangle
        Top = 93
        Width = 1028
      end
      inherited IWRectangle3: TIWRectangle
        Top = 98
      end
      inherited IWImageFile3: TIWImageFile
        Left = 693
      end
      inherited langlink: TIWSiLink
        Left = 629
      end
      inherited Smalltitle: TIWLabel
        Left = 909
        Top = 100
      end
      inherited HideBox: TIWImageFile
        Left = 1012
        Top = 101
        Width = 12
        Height = 14
      end
      inherited TitleLabel: TIWLabel
        Width = 310
        Caption = 'language'
      end
    end
  end
  object IWRegion1: TIWRegion
    Left = 0
    Top = 118
    Width = 1028
    Height = 447
    Cursor = crAuto
    RenderInvisibleControls = False
    Align = alClient
    BorderOptions.NumericWidth = 1
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
      447)
    object IWSiLink1: TIWSiLink
      Left = 1
      Top = 1
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
      TabOrder = 0
      RawText = False
      SiLangLinked = silink
      LangFile = 'langselect.sil'
      LangControl = RcDataMod.LangEditControl1
    end
    object BodyRegion: TIWRegion
      Left = 292
      Top = 95
      Width = 440
      Height = 167
      Cursor = crAuto
      RenderInvisibleControls = False
      Anchors = []
      BorderOptions.NumericWidth = 1
      BorderOptions.BorderWidth = cbwNumeric
      BorderOptions.Style = cbsSolid
      BorderOptions.Color = clNone
      Color = 14202786
      ParentShowHint = False
      ShowHint = True
      ZIndex = 1000
      Splitter = False
      object IWRectangle2: TIWRectangle
        Left = 1
        Top = 1
        Width = 438
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
        Left = 1
        Top = 4
        Width = 3
        Height = 162
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
      object langcombo: TIWComboBox
        Left = 156
        Top = 82
        Width = 133
        Height = 22
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
        FriendlyName = 'langcombo'
      end
      object IWImage1: TIWImage
        Left = 118
        Top = 83
        Width = 19
        Height = 19
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
        BorderOptions.Color = clNone
        BorderOptions.Width = 0
        DoSubmitValidation = True
        ScriptEvents = <>
        TabOrder = -1
        UseSize = True
        Picture.Data = {
          07544269746D617036030000424D360300000000000036000000280000001000
          0000100000000100180000000000000300000000000000000000000000000000
          0000A0A0A0A0A0A0A0A0A0A0A0A0A0A0A0A0A0A0A0A0A0A0A0A0A0A0A0A0A0A0
          A0A0A0A0A0A0A0A0A0A0A0A0A0A0A0A0A0A0A0A0A0A0A0A0A0A0A0A0A0A0A0A0
          A0A0A0A0A0A0A0A0A0A0A0A0A0A0A0A0A0A0A0A0A0A0A0A0A0A0A0A0A0A0A0A0
          A0A0A0A0A0A0A0A0A0A0A0000000A0A0A0A0A0A0A0A0A0A0A0A0A0A0A0A0A0A0
          A0A0A0A0A0A0A0A0A0A0A0A0A0A0A0A0A0A0A0A0A0A0A0A0A0A0A0000000A0A0
          A0A0A0A0A0A0A0A0A0A0A0A0A0A0A0A0A0A0A0A0A0A0A0A0A0A0A0A0A0A0A0A0
          A0A0A0A0A0A0A0A0A0A0A0000000A0A0A0A0A0A0A0A0A0A0A0A0A0A0A0A0A0A0
          A0A0A0A0A0A0A0A0A0A0A0A0A0A0A0A0A0A0A0A0A0A0A0A0A0A0A0000000A0A0
          A0A0A0A0A0A0A0A0A0A0A0A0A0A0A0A0A0A0A0A0A0A0A0A0A0A0A0A0A0A0A0A0
          A0A0A0A0A0A0A0A0A0A0A0000000A0A0A0A0A0A0A0A0A0A0A0A0A0A0A0A0A0A0
          A0A0A0A0A0A0A0A0A0A0A0A0A0A0A0A0A0A0A0A0A0A0A0A0A0A0A0000000A0A0
          A0A0A0A0A0A0A0A0A0A0A0A0A0000000000000000000A0A0A0A0A0A0A0A0A0A0
          A0A0A0A0A0A0A0A0A0A0A0000000A0A0A0A0A0A0A0A0A0A0A0A000000000FF00
          00FF00000000A0A0A0A0A0A0A0A0A0A0A0A0A0A0A0A0A0A0A0A0A00000000000
          00000000000000000000FF000000FF0000FF00000000A0A0A0A0A0A0A0A0A0A0
          A0A0A0A0A0A0A0A0A0A0A000000000FFFF00FFFF00FFFFFF0000FF0000FF0000
          00FF00000000A0A0A0A0A0A0A0A0A0A0A0A0A0A0A0A0A0A0A0A0A00000000000
          FF00FFFF00FFFF00FFFFFF0000FF0000000000000000A0A0A0A0A0A0A0A0A0A0
          A0A0A0A0A0A0A0A0A0A0A00000000000FF0000FF00FFFF00FFFF000000A0A0A0
          A0A0A0A0A0A0A0A0A0A0A0A0A0A0A0A0A0A0A0A0A0A0A0A0A0A0A00000000000
          00000000000000000000A0A0A0A0A0A0A0A0A0A0A0A0A0A0A0A0A0A0A0A0A0A0
          A0A0A0A0A0A0A0A0A0A0A0A0A0A0A0A0A0A0A0A0A0A0A0A0A0A0A0A0A0A0A0A0
          A0A0A0A0A0A0A0A0A0A0A0A0A0A0A0A0A0A0A0A0A0A0A0A0A0A0A0A0A0A0A0A0
          A0A0A0A0A0A0A0A0A0A0A0A0A0A0A0A0A0A0A0A0A0A0A0A0A0A0A0A0A0A0A0A0
          A0A0}
        FriendlyName = 'IWImage1'
        TransparentColor = clNone
        JpegOptions.CompressionQuality = 90
        JpegOptions.Performance = jpBestSpeed
        JpegOptions.ProgressiveEncoding = False
        JpegOptions.Smoothing = True
        OutputType = ioJPEG
      end
      object CompanyLabel: TIWLabel
        Left = 24
        Top = 32
        Width = 370
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
        Alignment = taCenter
        BGColor = clNone
        Font.Color = clNone
        Font.Size = 14
        Font.Style = [fsBold]
        NoWrap = False
        ConvertSpaces = False
        HasTabOrder = False
        AutoSize = False
        FriendlyName = 'CompanyLabel'
        Caption = 'Select Language'
        RawText = False
      end
    end
  end
  inline userfooter1: Tuserfooter
    Left = 0
    Top = 565
    Width = 1028
    Height = 29
    HorzScrollBar.Visible = False
    Align = alBottom
    TabOrder = 2
    inherited IWRegion1: TIWRegion
      Width = 1028
      Height = 29
      TabOrder = 3
      DesignSize = (
        1028
        29)
      inherited IWRectangle1: TIWRectangle
        Left = 612
        Width = 416
      end
      inherited IWRectangle4: TIWRectangle
        Width = 1644
      end
      inherited IWImage1: TIWImage
        Visible = False
      end
      inherited IWRectangle6: TIWRectangle
        Width = 570
      end
      inherited Cancel: TIWButton
        Left = 940
        OnClick = userfooter1CancelClick
      end
      inherited Extra1: TIWButton
        Left = 852
      end
      inherited Extra2: TIWButton
        Left = 764
      end
      inherited fiwSiLink1: TIWSiLink
        Left = 724
      end
    end
  end
  object silink: TsiLangLinked
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
      'Hint')
    Top = 136
    TranslationData = {
      737443617074696F6E730D0A436F6D70616E794C6162656C0153656C65637420
      4C616E6775616765010D0A737448696E74730D0A7374446973706C61794C6162
      656C730D0A7374466F6E74730D0A546C616E67666F6F746572014D532053616E
      73205365726966010D0A73744D756C74694C696E65730D0A4957526567696F6E
      312E4578747261546167506172616D7301010D0A426F6479526567696F6E2E45
      78747261546167506172616D7301010D0A495752656374616E676C65322E4578
      747261546167506172616D7301010D0A495752656374616E676C65312E457874
      7261546167506172616D7301010D0A495753694C696E6B312E45787472615461
      67506172616D7301010D0A6C616E67636F6D626F2E4578747261546167506172
      616D7301010D0A6C616E67636F6D626F2E4974656D7301010D0A4957496D6167
      65312E4578747261546167506172616D7301010D0A436F6D70616E794C616265
      6C2E4578747261546167506172616D7301010D0A7374537472696E67730D0A73
      744F74686572537472696E67730D0A4672616D65426172655469746C65312E48
      656C704B6579776F726401010D0A4957526567696F6E312E48656C704B657977
      6F726401010D0A426F6479526567696F6E2E48656C704B6579776F726401010D
      0A495752656374616E676C65322E467269656E646C794E616D65014957526563
      74616E676C6531010D0A495752656374616E676C65322E48656C704B6579776F
      726401010D0A495752656374616E676C65322E5374617475735465787401010D
      0A495752656374616E676C65322E5465787401010D0A495752656374616E676C
      65312E467269656E646C794E616D6501495752656374616E676C6531010D0A49
      5752656374616E676C65312E48656C704B6579776F726401010D0A4957526563
      74616E676C65312E5374617475735465787401010D0A495752656374616E676C
      65312E5465787401010D0A495753694C696E6B312E436F6E6669726D6174696F
      6E01010D0A495753694C696E6B312E467269656E646C794E616D650149575369
      4C696E6B31010D0A495753694C696E6B312E48656C704B6579776F726401010D
      0A495753694C696E6B312E4C616E6746696C65016C616E6773656C6563742E73
      696C010D0A495753694C696E6B312E5374617475735465787401010D0A54466F
      726D4C616E67756167652E48656C704B6579776F726401010D0A54466F726D4C
      616E67756167652E5469746C6501010D0A6C616E67636F6D626F2E467269656E
      646C794E616D65016C616E67636F6D626F010D0A6C616E67636F6D626F2E4865
      6C704B6579776F726401010D0A6C616E67636F6D626F2E4E6F53656C65637469
      6F6E54657874012D2D204E6F2053656C656374696F6E202D2D010D0A6C616E67
      636F6D626F2E5374617475735465787401010D0A4957496D616765312E416C74
      5465787401010D0A4957496D616765312E436F6E6669726D6174696F6E01010D
      0A4957496D616765312E467269656E646C794E616D65014957496D6167653101
      0D0A4957496D616765312E48656C704B6579776F726401010D0A4957496D6167
      65312E5374617475735465787401010D0A436F6D70616E794C6162656C2E4672
      69656E646C794E616D6501436F6D70616E794C6162656C010D0A436F6D70616E
      794C6162656C2E48656C704B6579776F726401010D0A436F6D70616E794C6162
      656C2E5374617475735465787401010D0A7374436F6C6C656374696F6E730D0A
      737443686172536574730D0A546C616E67666F6F7465720144454641554C545F
      43484152534554010D0A}
  end
end
