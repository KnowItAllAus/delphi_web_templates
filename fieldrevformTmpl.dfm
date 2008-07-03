object formFieldVersionsTmpl: TformFieldVersionsTmpl
  Left = 0
  Top = 0
  Width = 1107
  Height = 800
  ConnectionMode = cmAny
  SupportedBrowsers = [brIE, brNetscape7, brOpera, brSafari, brNetscape6]
  OnCreate = IWAppFormCreate
  BrowserSecurityCheck = True
  Background.Fixed = False
  HandleTabs = False
  LeftToRight = True
  LockUntilLoaded = True
  LockOnSubmit = True
  ShowHint = True
  XPTheme = True
  DesignLeft = 102
  DesignTop = 115
  inline FrameBareTitle1: TFrameBareTitle
    Left = 0
    Top = 0
    Width = 1107
    Height = 116
    HorzScrollBar.Visible = False
    VertScrollBar.Visible = False
    Align = alTop
    TabOrder = 0
    inherited IWFrameRegion: TIWRegion
      Width = 1107
      Height = 116
      TabOrder = 4
      inherited titleimage: TIWImageFile
        ImageFile.Filename = 'E:\delphi\delphi_web\files\promotions.GIF'
      end
      inherited IWRectangle1: TIWRectangle
        Top = 91
        Width = 1107
      end
      inherited IWRectangle3: TIWRectangle
        Top = 96
      end
      inherited IWImageFile3: TIWImageFile
        Left = 772
      end
      inherited TitleLabel: TIWLabel
        Width = 387
        Caption = 'promotions'
      end
      inherited langlink: TIWSiLink
        Left = 707
      end
      inherited Smalltitle: TIWLabel
        Left = 987
      end
      inherited HideBox: TIWImageFile
        Left = 1092
        Top = 99
      end
    end
  end
  inline userfooter1: Tuserfooter
    Left = 0
    Top = 771
    Width = 1107
    Height = 29
    HorzScrollBar.Visible = False
    Align = alBottom
    TabOrder = 1
    inherited IWRegion1: TIWRegion
      Width = 1107
      Height = 29
      TabOrder = 3
      inherited IWRectangle1: TIWRectangle
        Left = 731
      end
      inherited IWRectangle4: TIWRectangle
        Width = 1723
      end
      inherited IWRectangle6: TIWRectangle
        Width = 689
      end
      inherited Cancel: TIWButton
        Left = 1018
        Caption = 'Back'
        OnClick = userfooter1CancelClick
      end
      inherited Extra1: TIWButton
        Left = 930
      end
      inherited Extra2: TIWButton
        Left = 842
      end
      inherited fiwSiLink1: TIWSiLink
        Left = 770
      end
    end
    inherited silink_footer: TsiLangLinked
      SmartExcludeProps.Strings = (
        'UserLabel.Caption'
        'Cancel.Caption'
        'Extra2.Caption')
    end
  end
  object IWRegion1: TIWRegion
    Left = 0
    Top = 116
    Width = 1107
    Height = 655
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
      1107
      655)
    object BodyRegion: TIWRegion
      Left = 267
      Top = 18
      Width = 539
      Height = 627
      Cursor = crAuto
      Anchors = [akTop, akBottom]
      BorderOptions.NumericWidth = 1
      BorderOptions.BorderWidth = cbwNumeric
      BorderOptions.Style = cbsSolid
      BorderOptions.Color = clNone
      Color = 14202786
      ParentShowHint = False
      ShowHint = True
      ZIndex = 1000
      Splitter = False
      DesignSize = (
        539
        627)
      object IWRectangle2: TIWRectangle
        Left = 1
        Top = 1
        Width = 537
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
        Left = 1
        Top = 4
        Width = 3
        Height = 622
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
      object ImageLabel: TIWLabel
        Left = 24
        Top = 23
        Width = 97
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
        FriendlyName = 'ImageLabel'
        Caption = 'Revisions of'
        RawText = False
      end
      object ImageGrid: TIWGrid
        Left = 18
        Top = 90
        Width = 503
        Height = 526
        Cursor = crAuto
        Anchors = [akLeft, akTop, akBottom]
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
        OnRenderCell = ImageGridRenderCell
        UseFrame = True
        UseSize = True
        FriendlyName = 'ImageGrid'
        ColumnCount = 5
        OnCellClick = ImageGridCellClick
        RowCount = 1
        TabOrder = -1
        ShowEmptyCells = True
        ScrollToCurrentRow = False
      end
      object IWSiLink1: TIWSiLink
        Left = 388
        Top = 22
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
        TabOrder = 0
        RawText = False
        SiLangLinked = siLangLinked1
        LangFile = 'imagesver.sil'
        LangControl = RcDataMod.LangEditControl1
      end
      object NameEdit: TIWEdit
        Left = 128
        Top = 21
        Width = 241
        Height = 25
        Cursor = crAuto
        IW50Hint = False
        ParentShowHint = False
        ShowHint = True
        ZIndex = 0
        RenderSize = True
        Alignment = taLeftJustify
        BGColor = 14202786
        FocusColor = clNone
        DoSubmitValidation = True
        Editable = True
        NonEditableAsLabel = True
        Font.Color = clNone
        Font.FontName = 'Arial'
        Font.Size = 12
        Font.Style = [fsBold]
        FriendlyName = 'NameEdit'
        MaxLength = 0
        ReadOnly = True
        Required = False
        ScriptEvents = <>
        TabOrder = 1
        PasswordPrompt = False
        Text = 'NameEdit'
      end
      object NewBtn: TIWButton
        Left = 448
        Top = 57
        Width = 75
        Height = 21
        Cursor = crAuto
        IW50Hint = False
        ParentShowHint = False
        ShowHint = True
        ZIndex = 0
        RenderSize = True
        Caption = 'Save'
        DoSubmitValidation = True
        Color = clBtnFace
        Font.Color = clNone
        Font.Size = 10
        Font.Style = []
        FriendlyName = 'ProdBtn'
        ScriptEvents = <>
        TabOrder = 2
        OnClick = NewBtnClick
      end
      object ValueEdit: TIWEdit
        Left = 127
        Top = 56
        Width = 309
        Height = 21
        Cursor = crAuto
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
        FriendlyName = 'ValueEdit'
        MaxLength = 0
        ReadOnly = False
        Required = False
        ScriptEvents = <>
        TabOrder = 5
        PasswordPrompt = False
        Text = 'ValueEdit'
      end
      object IWLabel1: TIWLabel
        Left = 12
        Top = 57
        Width = 107
        Height = 16
        Cursor = crAuto
        IW50Hint = False
        ParentShowHint = False
        ShowHint = True
        ZIndex = 0
        RenderSize = False
        Alignment = taLeftJustify
        BGColor = clNone
        Font.Color = clNone
        Font.Size = 10
        Font.Style = []
        NoWrap = False
        ConvertSpaces = False
        FriendlyName = 'IWLabel1'
        Caption = 'New Field Value'
        RawText = False
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
      'Title'
      'Confirmation'
      'FriendlyName'
      'HotKey'
      'StatusText'
      'Summary'
      'LangFile')
    Top = 112
    TranslationData = {
      737443617074696F6E730D0A496D6167654C6162656C015265766973696F6E73
      206F66010D0A496D6167654772696401010D0A4E657742746E0153617665010D
      0A49574C6162656C31014E6577204669656C642056616C7565010D0A73744869
      6E74730D0A7374446973706C61794C6162656C730D0A7374466F6E74730D0A73
      744D756C74694C696E65730D0A4957526567696F6E312E457874726154616750
      6172616D7301010D0A495753694C696E6B312E4578747261546167506172616D
      7301010D0A426F6479526567696F6E2E4578747261546167506172616D730101
      0D0A495752656374616E676C65322E4578747261546167506172616D7301010D
      0A495752656374616E676C65312E4578747261546167506172616D7301010D0A
      496D6167654C6162656C2E4578747261546167506172616D7301010D0A496D61
      6765477269642E4578747261546167506172616D7301010D0A4E616D65456469
      742E4578747261546167506172616D7301010D0A4E657742746E2E4578747261
      546167506172616D7301010D0A56616C7565456469742E457874726154616750
      6172616D7301010D0A49574C6162656C312E4578747261546167506172616D73
      01010D0A7374537472696E67730D0A477269642E4E616D65014E616D65010D0A
      477269642E54616701546167010D0A4D6F64652E4E45540153746F636B010D0A
      4D6F64652E494D41474501496D616765010D0A4D6F64652E5343524950540153
      6372697074010D0A4D6F64652E435553540143757374010D0A4D6F64652E5241
      4E444F4D0152616E646F6D010D0A4D6F64652E5343414E4E4552015363616E6E
      6572010D0A4D6F64652E4B4559424F415244014B6579626F617264010D0A4D6F
      64652E544558540154657874010D0A477269642E475549440147554944010D0A
      477269642E50726F64756374696F6E0150726F642E010D0A477269642E546573
      740154657374010D0A4E6577436F6E74656E74014E657720436F6E74656E7401
      0D0A477269642E4944014944010D0A477269642E56657273696F6E0156657273
      696F6E010D0A477269642E43757272656E740143757272656E74010D0A477269
      642E53656C6563740153656C656374010D0A4D6F64652E52454445454D015265
      6465656D010D0A4D6F64652E494E50555401496E707574010D0A436F6C6F7572
      2E30014D6F6E6F6368726F6D65010D0A436F6C6F75722E3101426C61636B2026
      205768697465010D0A436F6C6F75722E320142692D436F6C6F75722052656401
      0D0A436F6C6F75722E330142692D436F6C6F757220477265656E010D0A436F6C
      6F75722E340142692D436F6C6F757220426C7565010D0A4D6F64652E4556454E
      54014576656E74010D0A477269642E496E5573650153656C6563746564010D0A
      477269642E56616C75650156616C7565010D0A73744F74686572537472696E67
      730D0A4957526567696F6E312E48656C704B6579776F726401010D0A49575369
      4C696E6B312E48656C704B6579776F726401010D0A426F6479526567696F6E2E
      48656C704B6579776F726401010D0A495752656374616E676C65322E48656C70
      4B6579776F726401010D0A495752656374616E676C65322E5465787401010D0A
      495752656374616E676C65312E48656C704B6579776F726401010D0A49575265
      6374616E676C65312E5465787401010D0A496D6167654C6162656C2E48656C70
      4B6579776F726401010D0A496D616765477269642E48656C704B6579776F7264
      01010D0A75736572666F6F746572312E48656C704B6579776F726401010D0A54
      666F726D4669656C6456657273696F6E73546D706C2E48656C704B6579776F72
      6401010D0A4672616D65426172655469746C65312E48656C704B6579776F7264
      01010D0A4E616D65456469742E48656C704B6579776F726401010D0A4E616D65
      456469742E54657874014E616D6545646974010D0A4E657742746E2E48656C70
      4B6579776F726401010D0A56616C7565456469742E48656C704B6579776F7264
      01010D0A56616C7565456469742E546578740156616C756545646974010D0A49
      574C6162656C312E48656C704B6579776F726401010D0A7374436F6C6C656374
      696F6E730D0A737443686172536574730D0A}
  end
end
