object formImageVersionsTmpl: TformImageVersionsTmpl
  Left = 0
  Top = 0
  Width = 1028
  Height = 746
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
  DesignLeft = 177
  DesignTop = 65
  inline FrameBareTitle1: TFrameBareTitle
    Left = 0
    Top = 0
    Width = 1028
    Height = 116
    HorzScrollBar.Visible = False
    VertScrollBar.Visible = False
    Align = alTop
    TabOrder = 0
    inherited IWFrameRegion: TIWRegion
      Width = 1028
      Height = 116
      TabOrder = 10
      inherited titleimage: TIWImageFile
        ImageFile.Filename = 'E:\delphi\delphi_web\files\promotions.GIF'
      end
      inherited IWRectangle1: TIWRectangle
        Top = 91
        Width = 1028
      end
      inherited IWRectangle3: TIWRectangle
        Top = 96
      end
      inherited IWImageFile3: TIWImageFile
        Left = 693
      end
      inherited langlink: TIWSiLink
        Left = 628
      end
      inherited Smalltitle: TIWLabel
        Left = 908
      end
      inherited HideBox: TIWImageFile
        Left = 1013
        Top = 99
      end
      inherited TitleLabel: TIWLabel
        Width = 387
        Caption = 'promotions'
      end
    end
  end
  inline userfooter1: Tuserfooter
    Left = 0
    Top = 717
    Width = 1028
    Height = 29
    HorzScrollBar.Visible = False
    Align = alBottom
    TabOrder = 1
    inherited IWRegion1: TIWRegion
      Width = 1028
      Height = 29
      TabOrder = 9
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
        Left = 939
        Caption = 'Back'
        OnClick = userfooter1CancelClick
      end
      inherited Extra1: TIWButton
        Left = 851
      end
      inherited Extra2: TIWButton
        Left = 763
      end
      inherited fiwSiLink1: TIWSiLink
        Left = 691
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
    Width = 1028
    Height = 601
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
      601)
    object BodyRegion: TIWRegion
      Left = 6
      Top = 13
      Width = 996
      Height = 573
      Cursor = crAuto
      RenderInvisibleControls = False
      Anchors = [akLeft, akTop, akRight, akBottom]
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
        996
        573)
      object IWRectangle2: TIWRectangle
        Left = 1
        Top = 1
        Width = 1042
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
        Height = 568
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
        Font.FontName = 'Arial'
        Font.Size = 12
        Font.Style = [fsBold]
        NoWrap = False
        ConvertSpaces = False
        HasTabOrder = False
        AutoSize = False
        FriendlyName = 'ImageLabel'
        Caption = 'Revisions of'
        RawText = False
      end
      object ImageGrid: TIWGrid
        Left = 23
        Top = 72
        Width = 344
        Height = 494
        Cursor = crAuto
        Anchors = [akLeft, akTop, akBottom]
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
        ShowEmptyCells = True
        ShowInvisibleRows = True
        ScrollToCurrentRow = False
      end
      object IWSiLink1: TIWSiLink
        Left = 768
        Top = 77
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
        FriendlyName = 'IWSiLink1'
        TabOrder = 1
        RawText = False
        SiLangLinked = siLangLinked1
        LangFile = 'imagesver.sil'
        LangControl = RcDataMod.LangEditControl1
      end
      object IDEdit: TIWEdit
        Left = 432
        Top = 16
        Width = 73
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
        Alignment = taLeftJustify
        BGColor = clGrayText
        FocusColor = clNone
        DoSubmitValidation = True
        Editable = True
        NonEditableAsLabel = True
        Font.Color = clNone
        Font.Size = 10
        Font.Style = []
        FriendlyName = 'IDEdit'
        MaxLength = 0
        ReadOnly = True
        Required = False
        ScriptEvents = <>
        SubmitOnAsyncEvent = True
        TabOrder = 0
        PasswordPrompt = False
        Text = 'IDEdit'
      end
      object IDLabel: TIWLabel
        Left = 375
        Top = 17
        Width = 33
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
        FriendlyName = 'IWLabel3'
        Caption = 'ID'
        RawText = False
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
        StyleRenderOptions.RenderSize = True
        StyleRenderOptions.RenderPosition = True
        StyleRenderOptions.RenderFont = True
        StyleRenderOptions.RenderZIndex = True
        StyleRenderOptions.RenderVisibility = True
        StyleRenderOptions.RenderStatus = True
        StyleRenderOptions.RenderAbsolute = True
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
        SubmitOnAsyncEvent = True
        TabOrder = 3
        PasswordPrompt = False
        Text = 'NameEdit'
      end
      object ProdBtn: TIWButton
        Left = 851
        Top = 74
        Width = 131
        Height = 21
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
        Caption = 'Authorise'
        DoSubmitValidation = True
        Color = clBtnFace
        Font.Color = clNone
        Font.Size = 10
        Font.Style = []
        FriendlyName = 'ProdBtn'
        ScriptEvents = <>
        TabOrder = 4
        OnClick = ProdBtnClick
      end
      object NewBtn: TIWButton
        Left = 907
        Top = 18
        Width = 75
        Height = 21
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
        Caption = 'New'
        DoSubmitValidation = True
        Color = clBtnFace
        Font.Color = clNone
        Font.Size = 10
        Font.Style = []
        FriendlyName = 'ProdBtn'
        ScriptEvents = <>
        TabOrder = 6
        OnClick = NewBtnClick
      end
      object DelBtn: TIWButton
        Left = 907
        Top = 45
        Width = 75
        Height = 21
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
        Caption = 'Delete'
        Confirmation = 'Delete this record?'
        DoSubmitValidation = True
        Color = clBtnFace
        Font.Color = clNone
        Font.Size = 10
        Font.Style = []
        FriendlyName = 'ProdBtn'
        ScriptEvents = <>
        TabOrder = 7
        OnClick = DelBtnClick
      end
      object ModeLbl: TIWLabel
        Left = 375
        Top = 46
        Width = 50
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
        FriendlyName = 'ModeLabel'
        Caption = 'Mode'
        RawText = False
      end
      object ModeName: TIWEdit
        Left = 432
        Top = 44
        Width = 105
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
        Alignment = taLeftJustify
        BGColor = clGrayText
        FocusColor = clNone
        DoSubmitValidation = True
        Editable = True
        NonEditableAsLabel = True
        Font.Color = clNone
        Font.Size = 10
        Font.Style = []
        FriendlyName = 'ModeName'
        MaxLength = 0
        ReadOnly = True
        Required = False
        ScriptEvents = <>
        SubmitOnAsyncEvent = True
        TabOrder = 8
        PasswordPrompt = False
        Text = 'Modename'
      end
      object CpyBtn: TIWButton
        Left = 819
        Top = 18
        Width = 75
        Height = 21
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
        Caption = 'Copy'
        DoSubmitValidation = True
        Color = clBtnFace
        Font.Color = clNone
        Font.Size = 10
        Font.Style = []
        FriendlyName = 'ProdBtn'
        ScriptEvents = <>
        TabOrder = 5
        OnClick = CpyBtnClick
      end
      object ColourEdit: TIWEdit
        Left = 616
        Top = 74
        Width = 105
        Height = 22
        Cursor = crAuto
        Visible = False
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
        BGColor = clGrayText
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
        TabOrder = 11
        PasswordPrompt = False
        Text = 'Bi-Colour'
      end
      object Limitlabel: TIWLabel
        Left = 1036
        Top = -2
        Width = 8
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
        FriendlyName = 'Limitlabel'
        Caption = 'X'
        RawText = False
      end
      object ImageRegion: TIWRegion
        Left = 376
        Top = 100
        Width = 606
        Height = 465
        Cursor = crAuto
        HorzScrollBar.Visible = False
        VertScrollBar.Visible = False
        RenderInvisibleControls = False
        TabOrder = 0
        Anchors = [akLeft, akTop, akRight, akBottom]
        BorderOptions.NumericWidth = 2
        BorderOptions.BorderWidth = cbwNumeric
        BorderOptions.Style = cbsSolid
        BorderOptions.Color = cl3DLight
        Color = clNone
        ParentShowHint = False
        ShowHint = True
        ZIndex = -1
        Splitter = False
        object Memo: TIWMemo
          Left = 2
          Top = 2
          Width = 602
          Height = 461
          Cursor = crAuto
          Visible = False
          Align = alClient
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
          BGColor = clWebWHITE
          Editable = False
          Font.Color = clNone
          Font.Size = 10
          Font.Style = []
          ScriptEvents = <>
          InvisibleBorder = False
          HorizScrollBar = False
          VertScrollBar = True
          Required = False
          TabOrder = 2
          SubmitOnAsyncEvent = True
          FriendlyName = 'Memo'
        end
        object Image: TIWImage
          Left = 2
          Top = 2
          Width = 241
          Height = 193
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
          BorderOptions.Color = clWebAQUA
          BorderOptions.Width = 2
          DoSubmitValidation = True
          ScriptEvents = <>
          TabOrder = -1
          UseSize = True
          FriendlyName = 'Image'
          TransparentColor = clNone
          JpegOptions.CompressionQuality = 90
          JpegOptions.Performance = jpBestSpeed
          JpegOptions.ProgressiveEncoding = False
          JpegOptions.Smoothing = True
          OutputType = ioJPEG
        end
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
      206F66010D0A496D6167654772696401010D0A50726F6442746E01417574686F
      72697365010D0A49444C6162656C014944010D0A4E657742746E014E6577010D
      0A44656C42746E0144656C657465010D0A4D6F64654C626C014D6F6465010D0A
      43707942746E01436F7079010D0A4C696D69746C6162656C0158010D0A737448
      696E74730D0A7374446973706C61794C6162656C730D0A7374466F6E74730D0A
      73744D756C74694C696E65730D0A4957526567696F6E312E4578747261546167
      506172616D7301010D0A495753694C696E6B312E457874726154616750617261
      6D7301010D0A426F6479526567696F6E2E4578747261546167506172616D7301
      010D0A495752656374616E676C65322E4578747261546167506172616D730101
      0D0A495752656374616E676C65312E4578747261546167506172616D7301010D
      0A496D6167654C6162656C2E4578747261546167506172616D7301010D0A496D
      616765477269642E4578747261546167506172616D7301010D0A496D61676552
      6567696F6E2E4578747261546167506172616D7301010D0A4D656D6F2E457874
      7261546167506172616D7301010D0A4D656D6F2E4C696E657301010D0A496D61
      67652E4578747261546167506172616D7301010D0A50726F6442746E2E457874
      7261546167506172616D7301010D0A4944456469742E45787472615461675061
      72616D7301010D0A49444C6162656C2E4578747261546167506172616D730101
      0D0A4E616D65456469742E4578747261546167506172616D7301010D0A4E6577
      42746E2E4578747261546167506172616D7301010D0A44656C42746E2E457874
      7261546167506172616D7301010D0A4D6F64654C626C2E457874726154616750
      6172616D7301010D0A4D6F64654E616D652E4578747261546167506172616D73
      01010D0A43707942746E2E4578747261546167506172616D7301010D0A436F6C
      6F7572456469742E4578747261546167506172616D7301010D0A4C696D69746C
      6162656C2E4578747261546167506172616D7301010D0A7374537472696E6773
      0D0A477269642E4E616D65014E616D65010D0A477269642E5461670154616701
      0D0A4D6F64652E4E45540153746F636B010D0A4D6F64652E494D41474501496D
      616765010D0A4D6F64652E53435249505401536372697074010D0A4D6F64652E
      435553540143757374010D0A4D6F64652E52414E444F4D0152616E646F6D010D
      0A4D6F64652E5343414E4E4552015363616E6E6572010D0A4D6F64652E4B4559
      424F415244014B6579626F617264010D0A4D6F64652E54455854015465787401
      0D0A477269642E475549440147554944010D0A477269642E50726F6475637469
      6F6E0150726F642E010D0A477269642E546573740154657374010D0A4E657743
      6F6E74656E74014E657720436F6E74656E74010D0A477269642E494401494401
      0D0A477269642E56657273696F6E0156657273696F6E010D0A477269642E4375
      7272656E740143757272656E74010D0A477269642E53656C6563740153656C65
      6374010D0A4D6F64652E52454445454D0152656465656D010D0A4D6F64652E49
      4E50555401496E707574010D0A436F6C6F75722E30014D6F6E6F6368726F6D65
      010D0A436F6C6F75722E3101426C61636B2026205768697465010D0A436F6C6F
      75722E320142692D436F6C6F757220526564010D0A436F6C6F75722E33014269
      2D436F6C6F757220477265656E010D0A436F6C6F75722E340142692D436F6C6F
      757220426C7565010D0A4D6F64652E4556454E54014576656E74010D0A477269
      642E496E5573650153656C6563746564010D0A73744F74686572537472696E67
      730D0A4957526567696F6E312E48656C704B6579776F726401010D0A49575369
      4C696E6B312E48656C704B6579776F726401010D0A426F6479526567696F6E2E
      48656C704B6579776F726401010D0A495752656374616E676C65322E48656C70
      4B6579776F726401010D0A495752656374616E676C65322E5465787401010D0A
      495752656374616E676C65312E48656C704B6579776F726401010D0A49575265
      6374616E676C65312E5465787401010D0A496D6167654C6162656C2E48656C70
      4B6579776F726401010D0A496D616765477269642E48656C704B6579776F7264
      01010D0A75736572666F6F746572312E48656C704B6579776F726401010D0A54
      666F726D496D61676556657273696F6E73546D706C2E48656C704B6579776F72
      6401010D0A4672616D65426172655469746C65312E48656C704B6579776F7264
      01010D0A496D616765526567696F6E2E48656C704B6579776F726401010D0A4D
      656D6F2E48656C704B6579776F726401010D0A496D6167652E416C7454657874
      01010D0A496D6167652E48656C704B6579776F726401010D0A50726F6442746E
      2E48656C704B6579776F726401010D0A4944456469742E48656C704B6579776F
      726401010D0A4944456469742E5465787401494445646974010D0A49444C6162
      656C2E48656C704B6579776F726401010D0A4E616D65456469742E48656C704B
      6579776F726401010D0A4E616D65456469742E54657874014E616D6545646974
      010D0A4E657742746E2E48656C704B6579776F726401010D0A44656C42746E2E
      48656C704B6579776F726401010D0A4D6F64654C626C2E48656C704B6579776F
      726401010D0A4D6F64654E616D652E48656C704B6579776F726401010D0A4D6F
      64654E616D652E54657874014D6F64656E616D65010D0A43707942746E2E4865
      6C704B6579776F726401010D0A436F6C6F7572456469742E48656C704B657977
      6F726401010D0A436F6C6F7572456469742E546578740142692D436F6C6F7572
      010D0A4C696D69746C6162656C2E48656C704B6579776F726401010D0A737443
      6F6C6C656374696F6E730D0A737443686172536574730D0A}
  end
end
