object formImageVersions: TformImageVersions
  Left = 0
  Top = 0
  Width = 1086
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
  DesignLeft = 96
  DesignTop = 79
  inline FrameBareTitle1: TFrameBareTitle
    Left = 0
    Top = 0
    Width = 1086
    Height = 116
    HorzScrollBar.Visible = False
    VertScrollBar.Visible = False
    Align = alTop
    TabOrder = 0
    inherited IWFrameRegion: TIWRegion
      Width = 1086
      Height = 116
      inherited titleimage: TIWImageFile
        ImageFile.Filename = 'E:\delphi\delphi_web\files\promotions.GIF'
      end
      inherited IWRectangle1: TIWRectangle
        Top = 91
        Width = 1086
      end
      inherited IWRectangle3: TIWRectangle
        Top = 96
      end
      inherited IWImageFile3: TIWImageFile
        Left = 751
      end
      inherited TitleLabel: TIWLabel
        Width = 387
        Caption = 'promotions'
      end
      inherited langlink: TIWSiLink
        Left = 686
      end
      inherited Smalltitle: TIWLabel
        Left = 966
      end
      inherited HideBox: TIWImageFile
        Left = 1071
        Top = 99
      end
    end
  end
  inline userfooter1: Tuserfooter
    Left = 0
    Top = 771
    Width = 1086
    Height = 29
    HorzScrollBar.Visible = False
    Align = alBottom
    TabOrder = 1
    inherited IWRegion1: TIWRegion
      Width = 1086
      Height = 29
      TabOrder = 16
      inherited IWRectangle1: TIWRectangle
        Left = 710
      end
      inherited IWRectangle4: TIWRectangle
        Width = 1702
      end
      inherited IWRectangle6: TIWRectangle
        Width = 668
      end
      inherited Cancel: TIWButton
        Left = 997
        Caption = 'Back'
        OnClick = userfooter1CancelClick
      end
      inherited Extra1: TIWButton
        Left = 909
      end
      inherited Extra2: TIWButton
        Left = 821
      end
      inherited fiwSiLink1: TIWSiLink
        Left = 749
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
    Width = 1086
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
      1086
      655)
    object BodyRegion: TIWRegion
      Left = 6
      Top = 13
      Width = 1054
      Height = 627
      Cursor = crAuto
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
        1054
        627)
      object IWRectangle2: TIWRectangle
        Left = 1
        Top = 1
        Width = 1052
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
        Top = 8
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
        Left = 23
        Top = 72
        Width = 344
        Height = 548
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
        Left = 826
        Top = 77
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
        FriendlyName = 'IWSiLink1'
        TabOrder = 4
        RawText = False
        SiLangLinked = siLangLinked1
        LangFile = 'imagesver.sil'
        LangControl = RcDataMod.LangEditControl1
      end
      object NewVendEdit: TIWEdit
        Left = 616
        Top = 44
        Width = 57
        Height = 22
        Cursor = crAuto
        IW50Hint = False
        ParentShowHint = False
        ShowHint = True
        ZIndex = 0
        RenderSize = True
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
        TabOrder = 2
        PasswordPrompt = False
        Text = 'NewVendEdit'
      end
      object VLabel: TIWLabel
        Left = 560
        Top = 46
        Width = 49
        Height = 16
        Cursor = crAuto
        IW50Hint = False
        ParentShowHint = False
        ShowHint = True
        ZIndex = 0
        RenderSize = True
        Alignment = taLeftJustify
        BGColor = clNone
        Font.Color = clNone
        Font.Size = 10
        Font.Style = []
        NoWrap = False
        ConvertSpaces = False
        AutoSize = False
        FriendlyName = 'IWLabel3'
        Caption = 'Vend.'
        RawText = False
      end
      object PLabel: TIWLabel
        Left = 687
        Top = 46
        Width = 42
        Height = 16
        Cursor = crAuto
        IW50Hint = False
        ParentShowHint = False
        ShowHint = True
        ZIndex = 0
        RenderSize = True
        Alignment = taLeftJustify
        BGColor = clNone
        Font.Color = clNone
        Font.Size = 10
        Font.Style = []
        NoWrap = False
        ConvertSpaces = False
        AutoSize = False
        FriendlyName = 'IWLabel3'
        Caption = 'Prod.'
        RawText = False
      end
      object NewProdEdit: TIWEdit
        Left = 735
        Top = 44
        Width = 50
        Height = 22
        Cursor = crAuto
        IW50Hint = False
        ParentShowHint = False
        ShowHint = True
        ZIndex = 0
        RenderSize = True
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
        TabOrder = 3
        PasswordPrompt = False
        Text = 'NewProdEdit'
      end
      object IWLabel3: TIWLabel
        Left = 24
        Top = 38
        Width = 41
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
        Font.Size = 10
        Font.Style = []
        NoWrap = False
        ConvertSpaces = False
        AutoSize = False
        FriendlyName = 'ImageLabel'
        Caption = 'Desc.'
        RawText = False
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
        TabOrder = 1
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
        Alignment = taLeftJustify
        BGColor = clNone
        Font.Color = clNone
        Font.Size = 10
        Font.Style = []
        NoWrap = False
        ConvertSpaces = False
        AutoSize = False
        FriendlyName = 'IWLabel3'
        Caption = 'ID'
        RawText = False
      end
      object DescEdit: TIWEdit
        Left = 64
        Top = 37
        Width = 305
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
        Font.Size = 10
        Font.Style = []
        FriendlyName = 'DescEdit'
        MaxLength = 0
        ReadOnly = True
        Required = False
        ScriptEvents = <>
        TabOrder = 7
        PasswordPrompt = False
        Text = 'DescEdit'
      end
      object NameEdit: TIWEdit
        Left = 128
        Top = 6
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
        TabOrder = 8
        PasswordPrompt = False
        Text = 'NameEdit'
      end
      object TestBtn: TIWButton
        Left = 376
        Top = 74
        Width = 129
        Height = 21
        Cursor = crAuto
        IW50Hint = False
        ParentShowHint = False
        ShowHint = True
        ZIndex = 0
        RenderSize = True
        Caption = 'Use for Test'
        DoSubmitValidation = True
        Color = clBtnFace
        Font.Color = clNone
        Font.Size = 10
        Font.Style = []
        FriendlyName = 'TestBtn'
        ScriptEvents = <>
        TabOrder = 9
        OnClick = TestBtnClick
      end
      object ProdBtn: TIWButton
        Left = 909
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
        Caption = 'Authorise'
        DoSubmitValidation = True
        Color = clBtnFace
        Font.Color = clNone
        Font.Size = 10
        Font.Style = []
        FriendlyName = 'ProdBtn'
        ScriptEvents = <>
        TabOrder = 10
        OnClick = ProdBtnClick
      end
      object NewBtn: TIWButton
        Left = 965
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
        Caption = 'New'
        DoSubmitValidation = True
        Color = clBtnFace
        Font.Color = clNone
        Font.Size = 10
        Font.Style = []
        FriendlyName = 'ProdBtn'
        ScriptEvents = <>
        TabOrder = 12
        OnClick = NewBtnClick
      end
      object DelBtn: TIWButton
        Left = 965
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
        Caption = 'Delete'
        Confirmation = 'Delete this record?'
        DoSubmitValidation = True
        Color = clBtnFace
        Font.Color = clNone
        Font.Size = 10
        Font.Style = []
        FriendlyName = 'ProdBtn'
        ScriptEvents = <>
        TabOrder = 13
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
        Alignment = taLeftJustify
        BGColor = clNone
        Font.Color = clNone
        Font.Size = 10
        Font.Style = []
        NoWrap = False
        ConvertSpaces = False
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
        TabOrder = 14
        PasswordPrompt = False
        Text = 'Modename'
      end
      object CpyBtn: TIWButton
        Left = 877
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
        Caption = 'Copy'
        DoSubmitValidation = True
        Color = clBtnFace
        Font.Color = clNone
        Font.Size = 10
        Font.Style = []
        FriendlyName = 'ProdBtn'
        ScriptEvents = <>
        TabOrder = 11
        OnClick = CpyBtnClick
      end
      object NameLbl: TIWLabel
        Left = 559
        Top = 18
        Width = 50
        Height = 16
        Cursor = crAuto
        IW50Hint = False
        ParentShowHint = False
        ShowHint = True
        ZIndex = 0
        RenderSize = True
        Alignment = taLeftJustify
        BGColor = clNone
        Font.Color = clNone
        Font.Size = 10
        Font.Style = []
        NoWrap = False
        ConvertSpaces = False
        AutoSize = False
        FriendlyName = 'ModeLabel'
        Caption = 'File'
        RawText = False
      end
      object RevFileNameEdit: TIWEdit
        Left = 616
        Top = 16
        Width = 169
        Height = 22
        Cursor = crAuto
        IW50Hint = False
        ParentShowHint = False
        ShowHint = True
        ZIndex = 0
        RenderSize = True
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
        TabOrder = 15
        PasswordPrompt = False
        Text = 'Filename'
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
        TabOrder = 17
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
        RenderSize = False
        Alignment = taLeftJustify
        BGColor = clNone
        Font.Color = clNone
        Font.Size = 10
        Font.Style = []
        NoWrap = False
        ConvertSpaces = False
        FriendlyName = 'Limitlabel'
        Caption = 'X'
        RawText = False
      end
      object ImageRegion: TIWRegion
        Left = 376
        Top = 100
        Width = 664
        Height = 519
        Cursor = crAuto
        HorzScrollBar.Visible = False
        VertScrollBar.Visible = False
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
          Width = 660
          Height = 515
          Cursor = crAuto
          Visible = False
          Align = alClient
          IW50Hint = False
          ParentShowHint = False
          ShowHint = True
          ZIndex = 0
          RenderSize = True
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
          TabOrder = 5
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
          AutoSize = False
          BorderOptions.Color = clWebAQUA
          BorderOptions.Width = 2
          DoSubmitValidation = True
          ScriptEvents = <>
          TabOrder = 6
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
      206F66010D0A496D6167654772696401010D0A564C6162656C0156656E642E01
      0D0A504C6162656C0150726F642E010D0A50726F6442746E01417574686F7269
      7365010D0A5465737442746E0155736520666F722054657374010D0A49574C61
      62656C3301446573632E010D0A49444C6162656C014944010D0A4E657742746E
      014E6577010D0A44656C42746E0144656C657465010D0A4D6F64654C626C014D
      6F6465010D0A43707942746E01436F7079010D0A4E616D654C626C0146696C65
      010D0A4C696D69746C6162656C0158010D0A737448696E74730D0A7374446973
      706C61794C6162656C730D0A7374466F6E74730D0A73744D756C74694C696E65
      730D0A4957526567696F6E312E4578747261546167506172616D7301010D0A49
      5753694C696E6B312E4578747261546167506172616D7301010D0A426F647952
      6567696F6E2E4578747261546167506172616D7301010D0A495752656374616E
      676C65322E4578747261546167506172616D7301010D0A495752656374616E67
      6C65312E4578747261546167506172616D7301010D0A496D6167654C6162656C
      2E4578747261546167506172616D7301010D0A496D616765477269642E457874
      7261546167506172616D7301010D0A496D616765526567696F6E2E4578747261
      546167506172616D7301010D0A4D656D6F2E4578747261546167506172616D73
      01010D0A4D656D6F2E4C696E657301010D0A496D6167652E4578747261546167
      506172616D7301010D0A4E657756656E64456469742E45787472615461675061
      72616D7301010D0A564C6162656C2E4578747261546167506172616D7301010D
      0A504C6162656C2E4578747261546167506172616D7301010D0A4E657750726F
      64456469742E4578747261546167506172616D7301010D0A50726F6442746E2E
      4578747261546167506172616D7301010D0A5465737442746E2E457874726154
      6167506172616D7301010D0A49574C6162656C332E4578747261546167506172
      616D7301010D0A4944456469742E4578747261546167506172616D7301010D0A
      49444C6162656C2E4578747261546167506172616D7301010D0A446573634564
      69742E4578747261546167506172616D7301010D0A4E616D65456469742E4578
      747261546167506172616D7301010D0A4E657742746E2E457874726154616750
      6172616D7301010D0A44656C42746E2E4578747261546167506172616D730101
      0D0A4D6F64654C626C2E4578747261546167506172616D7301010D0A4D6F6465
      4E616D652E4578747261546167506172616D7301010D0A43707942746E2E4578
      747261546167506172616D7301010D0A4E616D654C626C2E4578747261546167
      506172616D7301010D0A52657646696C654E616D65456469742E457874726154
      6167506172616D7301010D0A436F6C6F7572456469742E457874726154616750
      6172616D7301010D0A4C696D69746C6162656C2E457874726154616750617261
      6D7301010D0A7374537472696E67730D0A477269642E4E616D65014E616D6501
      0D0A477269642E54616701546167010D0A4D6F64652E4E45540153746F636B01
      0D0A4D6F64652E494D41474501496D616765010D0A4D6F64652E534352495054
      01536372697074010D0A4D6F64652E435553540143757374010D0A4D6F64652E
      52414E444F4D0152616E646F6D010D0A4D6F64652E5343414E4E455201536361
      6E6E6572010D0A4D6F64652E4B4559424F415244014B6579626F617264010D0A
      4D6F64652E544558540154657874010D0A477269642E47554944014755494401
      0D0A477269642E50726F64756374696F6E0150726F642E010D0A477269642E54
      6573740154657374010D0A4E6577436F6E74656E74014E657720436F6E74656E
      74010D0A477269642E4944014944010D0A477269642E56657273696F6E015665
      7273696F6E010D0A477269642E43757272656E740143757272656E74010D0A47
      7269642E53656C6563740153656C656374010D0A4D6F64652E52454445454D01
      52656465656D010D0A4D6F64652E494E50555401496E707574010D0A436F6C6F
      75722E30014D6F6E6F6368726F6D65010D0A436F6C6F75722E3101426C61636B
      2026205768697465010D0A436F6C6F75722E320142692D436F6C6F7572205265
      64010D0A436F6C6F75722E330142692D436F6C6F757220477265656E010D0A43
      6F6C6F75722E340142692D436F6C6F757220426C7565010D0A4D6F64652E4556
      454E54014576656E74010D0A477269642E496E5573650153656C656374656401
      0D0A4D6F64652E494E544552434550544F5201496E746572636570746F72010D
      0A73744F74686572537472696E67730D0A4957526567696F6E312E48656C704B
      6579776F726401010D0A495753694C696E6B312E48656C704B6579776F726401
      010D0A426F6479526567696F6E2E48656C704B6579776F726401010D0A495752
      656374616E676C65322E48656C704B6579776F726401010D0A49575265637461
      6E676C65322E5465787401010D0A495752656374616E676C65312E48656C704B
      6579776F726401010D0A495752656374616E676C65312E5465787401010D0A49
      6D6167654C6162656C2E48656C704B6579776F726401010D0A496D6167654772
      69642E48656C704B6579776F726401010D0A75736572666F6F746572312E4865
      6C704B6579776F726401010D0A54666F726D496D61676556657273696F6E732E
      48656C704B6579776F726401010D0A4672616D65426172655469746C65312E48
      656C704B6579776F726401010D0A496D616765526567696F6E2E48656C704B65
      79776F726401010D0A4D656D6F2E48656C704B6579776F726401010D0A496D61
      67652E416C745465787401010D0A496D6167652E48656C704B6579776F726401
      010D0A4E657756656E64456469742E48656C704B6579776F726401010D0A4E65
      7756656E64456469742E54657874014E657756656E6445646974010D0A564C61
      62656C2E48656C704B6579776F726401010D0A504C6162656C2E48656C704B65
      79776F726401010D0A4E657750726F64456469742E48656C704B6579776F7264
      01010D0A4E657750726F64456469742E54657874014E657750726F6445646974
      010D0A50726F6442746E2E48656C704B6579776F726401010D0A546573744274
      6E2E48656C704B6579776F726401010D0A49574C6162656C332E48656C704B65
      79776F726401010D0A4944456469742E48656C704B6579776F726401010D0A49
      44456469742E5465787401494445646974010D0A49444C6162656C2E48656C70
      4B6579776F726401010D0A44657363456469742E48656C704B6579776F726401
      010D0A44657363456469742E54657874014465736345646974010D0A4E616D65
      456469742E48656C704B6579776F726401010D0A4E616D65456469742E546578
      74014E616D6545646974010D0A4E657742746E2E48656C704B6579776F726401
      010D0A44656C42746E2E48656C704B6579776F726401010D0A4D6F64654C626C
      2E48656C704B6579776F726401010D0A4D6F64654E616D652E48656C704B6579
      776F726401010D0A4D6F64654E616D652E54657874014D6F64656E616D65010D
      0A43707942746E2E48656C704B6579776F726401010D0A4E616D654C626C2E48
      656C704B6579776F726401010D0A52657646696C654E616D65456469742E4865
      6C704B6579776F726401010D0A52657646696C654E616D65456469742E546578
      740146696C656E616D65010D0A436F6C6F7572456469742E48656C704B657977
      6F726401010D0A436F6C6F7572456469742E546578740142692D436F6C6F7572
      010D0A4C696D69746C6162656C2E48656C704B6579776F726401010D0A737443
      6F6C6C656374696F6E730D0A737443686172536574730D0A}
  end
end
