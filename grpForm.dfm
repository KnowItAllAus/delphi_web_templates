object formGrp: TformGrp
  Left = 0
  Top = 0
  Width = 1014
  Height = 635
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
  DesignLeft = 200
  DesignTop = 298
  inline DistribFrameTitle1: TDistribFrameTitle
    Left = 0
    Top = 0
    Width = 1014
    Height = 114
    HorzScrollBar.Visible = False
    VertScrollBar.Visible = False
    Align = alTop
    TabOrder = 0
    inherited IWFrameRegion: TIWRegion
      Width = 1014
      Height = 114
      TabOrder = 2
      inherited IWRectangle1: TIWRectangle
        Left = 152
        Width = 2463
      end
      inherited IWRectangle2: TIWRectangle
        Left = 152
      end
      inherited IWRectangle3: TIWRectangle
        Width = 2068
      end
      inherited IWImageFile3: TIWImageFile
        Left = 676
      end
      inherited langlink: TIWSiLink
        Left = 613
      end
      inherited HideBox: TIWImageFile
        Left = 1000
      end
      inherited Smalltitle: TIWLabel
        Left = 875
      end
      inherited GrpRegn: TIWRegion
        Color = 11100191
      end
      inherited EntityRegn: TIWRegion
        Color = 10526880
      end
      inherited statusregn: TIWRegion
        inherited statuslink: TIWLink
          OnClick = DistribFrameTitle1statuslinkClick
        end
      end
    end
  end
  inline userfooter1: Tuserfooter
    Left = 0
    Top = 606
    Width = 1014
    Height = 29
    HorzScrollBar.Visible = False
    Align = alBottom
    TabOrder = 1
    inherited IWRegion1: TIWRegion
      Width = 1014
      Height = 29
      TabOrder = 1
      DesignSize = (
        1014
        29)
      inherited IWRectangle1: TIWRectangle
        Left = 638
      end
      inherited IWRectangle4: TIWRectangle
        Width = 1630
      end
      inherited IWRectangle6: TIWRectangle
        Width = 596
      end
      inherited Cancel: TIWButton
        Left = 926
        Caption = 'Menu'
        OnClick = userfooter1CancelClick
      end
      inherited Extra1: TIWButton
        Left = 838
      end
      inherited Extra2: TIWButton
        Left = 750
      end
      inherited fiwSiLink1: TIWSiLink
        Left = 726
      end
    end
  end
  object IWRegion1: TIWRegion
    Left = 0
    Top = 114
    Width = 1014
    Height = 492
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
      1014
      492)
    object IWSiLink1: TIWSiLink
      Left = 0
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
      TabOrder = 3
      RawText = False
      SiLangLinked = siLangLinked1
      LangFile = 'groups.sil'
      LangControl = RcDataMod.LangEditControl1
    end
    object IWRegion2: TIWRegion
      Left = 159
      Top = 24
      Width = 729
      Height = 447
      Cursor = crAuto
      Anchors = [akTop, akBottom]
      BorderOptions.NumericWidth = 0
      BorderOptions.BorderWidth = cbwNumeric
      BorderOptions.Style = cbsSolid
      BorderOptions.Color = clNone
      Color = 14202786
      ParentShowHint = False
      ShowHint = True
      ZIndex = 1000
      Splitter = False
      DesignSize = (
        729
        447)
      object IWRectangle1: TIWRectangle
        Left = 0
        Top = 3
        Width = 3
        Height = 444
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
        Width = 729
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
      object PrinterLabel: TIWLabel
        Left = 16
        Top = 8
        Width = 457
        Height = 19
        Cursor = crAuto
        IW50Hint = False
        ParentShowHint = False
        ShowHint = True
        ZIndex = 0
        RenderSize = True
        Alignment = taLeftJustify
        BGColor = clNone
        Font.Color = clNone
        Font.FontName = 'Arial'
        Font.Size = 12
        Font.Style = [fsBold]
        NoWrap = False
        ConvertSpaces = False
        AutoSize = False
        FriendlyName = 'PrinterLabel'
        Caption = 'Groups'
        RawText = False
      end
      object NewBtn: TIWButton
        Left = 544
        Top = 8
        Width = 75
        Height = 25
        Cursor = crAuto
        IW50Hint = False
        ParentShowHint = False
        ShowHint = True
        ZIndex = 0
        RenderSize = True
        Caption = 'New'
        DoSubmitValidation = True
        Color = clBtnFace
        Font.Color = clNone
        Font.Size = 10
        Font.Style = []
        FriendlyName = 'NewBtn'
        ScriptEvents = <>
        TabOrder = 0
        OnClick = NewBtnClick
      end
      object IWRegion3: TIWRegion
        Left = 120
        Top = 40
        Width = 497
        Height = 393
        Cursor = crAuto
        Anchors = [akLeft, akTop, akBottom]
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
          497
          393)
        object GroupGrid: TIWGrid
          Left = 8
          Top = 9
          Width = 481
          Height = 376
          Cursor = crAuto
          Anchors = [akLeft, akTop, akRight, akBottom]
          IW50Hint = False
          ParentShowHint = False
          ShowHint = True
          ZIndex = 0
          RenderSize = False
          BorderColors.Color = clNone
          BorderColors.Light = clNone
          BorderColors.Dark = clNone
          BGColor = clNone
          BorderSize = 1
          BorderStyle = tfDefault
          CellPadding = 0
          CellSpacing = 0
          Font.Color = clNone
          Font.Size = 10
          Font.Style = []
          FrameBuffer = 40
          Lines = tlAll
          OnRenderCell = GroupGridRenderCell
          UseFrame = True
          UseSize = True
          FriendlyName = 'GroupGrid'
          ColumnCount = 2
          OnCellClick = GroupGridCellClick
          RowCount = 1
          TabOrder = -1
          ShowEmptyCells = True
          ScrollToCurrentRow = False
        end
      end
    end
  end
  object siLangLinked1: TsiLangLinked
    Version = '5.3.1.1'
    StringsTypes.Strings = (
      'TIB_STRINGLIST'
      'TSTRINGLIST')
    SmartExcludeProps.Strings = (
      'GroupGrid.Caption')
    LangDispatcher = RcDataMod.siLangDispatcher1
    LangDelim = 1
    LangNames.Strings = (
      'English')
    Language = 'English'
    CommonContainer = RcDataMod.siLang1
    ExcludedProperties.Strings = (
      'Hint'
      'Title'
      'StatusText'
      'Confirmation'
      'FriendlyName'
      'HotKey'
      'Summary'
      'LangFile'
      'HelpKeyword')
    Top = 144
    TranslationData = {
      737443617074696F6E730D0A5072696E7465724C6162656C0147726F75707301
      0D0A4E657742746E014E6577010D0A737448696E74730D0A7374446973706C61
      794C6162656C730D0A7374466F6E74730D0A73744D756C74694C696E65730D0A
      4957526567696F6E312E4578747261546167506172616D7301010D0A49575265
      67696F6E322E4578747261546167506172616D7301010D0A4957526567696F6E
      332E4578747261546167506172616D7301010D0A47726F7570477269642E4578
      747261546167506172616D7301010D0A495752656374616E676C65312E457874
      7261546167506172616D7301010D0A495752656374616E676C65322E45787472
      61546167506172616D7301010D0A5072696E7465724C6162656C2E4578747261
      546167506172616D7301010D0A4E657742746E2E457874726154616750617261
      6D7301010D0A495753694C696E6B312E4578747261546167506172616D730101
      0D0A7374537472696E67730D0A477269642E4E616D650147726F7570204E616D
      65010D0A4E657747726F7570014E65772047726F7570010D0A477269642E5465
      73740154657374010D0A477269642E496E7374616E74696174696F6E73015465
      6D706C61746573010D0A73744F74686572537472696E67730D0A495752656374
      616E676C65312E5465787401010D0A495752656374616E676C65322E54657874
      01010D0A7374436F6C6C656374696F6E730D0A737443686172536574730D0A}
  end
end
