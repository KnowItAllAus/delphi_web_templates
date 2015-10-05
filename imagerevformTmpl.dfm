object formImageVersionsTmpl: TformImageVersionsTmpl
  Left = 0
  Top = 0
  Width = 1024
  Height = 797
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
  DesignLeft = 8
  DesignTop = 8
  inline FrameBareTitle1: TFrameBareTitle
    Left = 0
    Top = 0
    Width = 1024
    Height = 116
    HorzScrollBar.Visible = False
    VertScrollBar.Visible = False
    Align = alTop
    TabOrder = 0
    ExplicitWidth = 1024
    ExplicitHeight = 116
    inherited IWFrameRegion: TIWRegion
      Width = 1024
      Height = 116
      TabOrder = 10
      ExplicitWidth = 1024
      ExplicitHeight = 116
      inherited titleimage: TIWImageFile
        ImageFile.Filename = 'E:\delphi\delphi_web\files\promotions.GIF'
      end
      inherited IWRectangle1: TIWRectangle
        Top = 91
        Width = 1024
        ExplicitTop = 91
        ExplicitWidth = 1024
      end
      inherited IWRectangle3: TIWRectangle
        Top = 96
        Width = 1024
        ExplicitTop = 96
        ExplicitWidth = 1024
      end
      inherited IWImageFile3: TIWImageFile
        Left = 689
        ExplicitLeft = 689
      end
      inherited langlink: TIWSiLink
        Left = 624
        ExplicitLeft = 624
      end
      inherited Smalltitle: TIWLabel
        Left = 904
        ExplicitLeft = 904
      end
      inherited HideBox: TIWImageFile
        Left = 1009
        Top = 99
        ExplicitLeft = 1009
        ExplicitTop = 99
      end
      inherited TitleLabel: TIWLabel
        Width = 387
        Caption = 'promotions'
        ExplicitWidth = 387
      end
    end
  end
  inline userfooter1: Tuserfooter
    Left = 0
    Top = 768
    Width = 1024
    Height = 29
    HorzScrollBar.Visible = False
    Align = alBottom
    TabOrder = 1
    ExplicitTop = 768
    ExplicitWidth = 1024
    ExplicitHeight = 29
    inherited IWRegion1: TIWRegion
      Width = 1024
      Height = 29
      TabOrder = 9
      ExplicitWidth = 1024
      ExplicitHeight = 29
      inherited IWRectangle1: TIWRectangle
        Left = 648
        ExplicitLeft = 648
      end
      inherited IWRectangle4: TIWRectangle
        Width = 1640
        ExplicitWidth = 1640
      end
      inherited IWRectangle6: TIWRectangle
        Width = 606
        ExplicitWidth = 606
      end
      inherited Cancel: TIWButton
        Caption = 'Back'
        OnClick = userfooter1CancelClick
      end
      inherited fiwSiLink1: TIWSiLink
        Left = 687
        ExplicitLeft = 687
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
    Width = 1024
    Height = 652
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
      1024
      652)
    object BodyRegion: TIWRegion
      Left = 6
      Top = 13
      Width = 992
      Height = 624
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
        992
        624)
      object IWRectangle2: TIWRectangle
        Left = 1
        Top = 1
        Width = 990
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
        ExplicitWidth = 1042
      end
      object IWRectangle1: TIWRectangle
        Left = 1
        Top = 4
        Width = 3
        Height = 619
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
        Height = 545
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
        Left = 764
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
        Left = 847
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
        Left = 903
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
        Left = 903
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
        Left = 815
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
      object Baselabel: TIWLabel
        Left = 375
        Top = 70
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
        Caption = '??'
        RawText = False
      end
      object ImageRegion: TIWRegion
        Left = 376
        Top = 100
        Width = 602
        Height = 516
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
          Width = 598
          Height = 512
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
    Version = '6.5.4.7'
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
      73007400430061007000740069006F006E0073005F0055006E00690063006F00
      640065000D000A0049006D006100670065004C006100620065006C0001005200
      650076006900730069006F006E00730020006F00660001000D000A0049006D00
      6100670065004700720069006400010001000D000A00500072006F0064004200
      74006E00010041007500740068006F00720069007300650001000D000A004900
      44004C006100620065006C0001004900440001000D000A004E00650077004200
      74006E0001004E006500770001000D000A00440065006C00420074006E000100
      440065006C0065007400650001000D000A004D006F00640065004C0062006C00
      01004D006F006400650001000D000A00430070007900420074006E0001004300
      6F007000790001000D000A004C0069006D00690074006C006100620065006C00
      0100580001000D000A0042006100730065006C006100620065006C0001003F00
      3F0001000D000A0073007400480069006E00740073005F0055006E0069006300
      6F00640065000D000A007300740044006900730070006C00610079004C006100
      620065006C0073005F0055006E00690063006F00640065000D000A0073007400
      46006F006E00740073005F0055006E00690063006F00640065000D000A007300
      74004D0075006C00740069004C0069006E00650073005F0055006E0069006300
      6F00640065000D000A004900570052006500670069006F006E0031002E004500
      780074007200610054006100670050006100720061006D007300010001000D00
      0A0049005700530069004C0069006E006B0031002E0045007800740072006100
      54006100670050006100720061006D007300010001000D000A0042006F006400
      790052006500670069006F006E002E0045007800740072006100540061006700
      50006100720061006D007300010001000D000A00490057005200650063007400
      61006E0067006C00650032002E00450078007400720061005400610067005000
      6100720061006D007300010001000D000A004900570052006500630074006100
      6E0067006C00650031002E004500780074007200610054006100670050006100
      720061006D007300010001000D000A0049006D006100670065004C0061006200
      65006C002E004500780074007200610054006100670050006100720061006D00
      7300010001000D000A0049006D0061006700650047007200690064002E004500
      780074007200610054006100670050006100720061006D007300010001000D00
      0A0049006D0061006700650052006500670069006F006E002E00450078007400
      7200610054006100670050006100720061006D007300010001000D000A004D00
      65006D006F002E00450078007400720061005400610067005000610072006100
      6D007300010001000D000A004D0065006D006F002E004C0069006E0065007300
      010001000D000A0049006D006100670065002E00450078007400720061005400
      6100670050006100720061006D007300010001000D000A00500072006F006400
      420074006E002E00450078007400720061005400610067005000610072006100
      6D007300010001000D000A004900440045006400690074002E00450078007400
      7200610054006100670050006100720061006D007300010001000D000A004900
      44004C006100620065006C002E00450078007400720061005400610067005000
      6100720061006D007300010001000D000A004E0061006D006500450064006900
      74002E004500780074007200610054006100670050006100720061006D007300
      010001000D000A004E0065007700420074006E002E0045007800740072006100
      54006100670050006100720061006D007300010001000D000A00440065006C00
      420074006E002E00450078007400720061005400610067005000610072006100
      6D007300010001000D000A004D006F00640065004C0062006C002E0045007800
      74007200610054006100670050006100720061006D007300010001000D000A00
      4D006F00640065004E0061006D0065002E004500780074007200610054006100
      670050006100720061006D007300010001000D000A0043007000790042007400
      6E002E004500780074007200610054006100670050006100720061006D007300
      010001000D000A0043006F006C006F007500720045006400690074002E004500
      780074007200610054006100670050006100720061006D007300010001000D00
      0A004C0069006D00690074006C006100620065006C002E004500780074007200
      610054006100670050006100720061006D007300010001000D000A0042006100
      730065006C006100620065006C002E0045007800740072006100540061006700
      50006100720061006D007300010001000D000A00730074005300740072006900
      6E00670073005F0055006E00690063006F00640065000D000A00470072006900
      64002E004E0061006D00650001004E0061006D00650001000D000A0047007200
      690064002E00540061006700010054006100670001000D000A004D006F006400
      65002E004E00450054000100530074006F0063006B0001000D000A004D006F00
      640065002E0049004D00410047004500010049006D0061006700650001000D00
      0A004D006F00640065002E005300430052004900500054000100530063007200
      69007000740001000D000A004D006F00640065002E0043005500530054000100
      430075007300740001000D000A004D006F00640065002E00520041004E004400
      4F004D000100520061006E0064006F006D0001000D000A004D006F0064006500
      2E005300430041004E004E004500520001005300630061006E006E0065007200
      01000D000A004D006F00640065002E004B004500590042004F00410052004400
      01004B006500790062006F0061007200640001000D000A004D006F0064006500
      2E0054004500580054000100540065007800740001000D000A00470072006900
      64002E0047005500490044000100470055004900440001000D000A0047007200
      690064002E00500072006F00640075006300740069006F006E00010050007200
      6F0064002E0001000D000A0047007200690064002E0054006500730074000100
      540065007300740001000D000A004E006500770043006F006E00740065006E00
      740001004E0065007700200043006F006E00740065006E00740001000D000A00
      47007200690064002E004900440001004900440001000D000A00470072006900
      64002E00560065007200730069006F006E000100560065007200730069006F00
      6E0001000D000A0047007200690064002E00430075007200720065006E007400
      0100430075007200720065006E00740001000D000A0047007200690064002E00
      530065006C006500630074000100530065006C0065006300740001000D000A00
      4D006F00640065002E00520045004400450045004D0001005200650064006500
      65006D0001000D000A004D006F00640065002E0049004E005000550054000100
      49006E0070007500740001000D000A0043006F006C006F00750072002E003000
      01004D006F006E006F006300680072006F006D00650001000D000A0043006F00
      6C006F00750072002E003100010042006C00610063006B002000260020005700
      680069007400650001000D000A0043006F006C006F00750072002E0032000100
      420069002D0043006F006C006F0075007200200052006500640001000D000A00
      43006F006C006F00750072002E0033000100420069002D0043006F006C006F00
      75007200200047007200650065006E0001000D000A0043006F006C006F007500
      72002E0034000100420069002D0043006F006C006F0075007200200042006C00
      7500650001000D000A004D006F00640065002E004500560045004E0054000100
      4500760065006E00740001000D000A0047007200690064002E0049006E005500
      730065000100530065006C006500630074006500640001000D000A0043006F00
      6C006F00750072002E003500010043006F006C006F007500720001000D000A00
      4D006F00640065002E00520045004E0044004500520045004400200054004500
      580054000100520065006E006400650072006500640020005400650078007400
      01000D000A004D006F00640065002E00520045004E0044004500520045004400
      200049004D004100470045000100520065006E00640065007200650064002000
      49006D0061006700650001000D000A00730074004F0074006800650072005300
      7400720069006E00670073005F0055006E00690063006F00640065000D000A00
      4900570052006500670069006F006E0031002E00480065006C0070004B006500
      790077006F0072006400010001000D000A0049005700530069004C0069006E00
      6B0031002E00480065006C0070004B006500790077006F007200640001000100
      0D000A0042006F006400790052006500670069006F006E002E00480065006C00
      70004B006500790077006F0072006400010001000D000A004900570052006500
      6300740061006E0067006C00650032002E00480065006C0070004B0065007900
      77006F0072006400010001000D000A0049005700520065006300740061006E00
      67006C00650032002E005400650078007400010001000D000A00490057005200
      65006300740061006E0067006C00650031002E00480065006C0070004B006500
      790077006F0072006400010001000D000A004900570052006500630074006100
      6E0067006C00650031002E005400650078007400010001000D000A0049006D00
      6100670065004C006100620065006C002E00480065006C0070004B0065007900
      77006F0072006400010001000D000A0049006D00610067006500470072006900
      64002E00480065006C0070004B006500790077006F0072006400010001000D00
      0A00750073006500720066006F006F0074006500720031002E00480065006C00
      70004B006500790077006F0072006400010001000D000A00540066006F007200
      6D0049006D00610067006500560065007200730069006F006E00730054006D00
      70006C002E00480065006C0070004B006500790077006F007200640001000100
      0D000A004600720061006D00650042006100720065005400690074006C006500
      31002E00480065006C0070004B006500790077006F0072006400010001000D00
      0A0049006D0061006700650052006500670069006F006E002E00480065006C00
      70004B006500790077006F0072006400010001000D000A004D0065006D006F00
      2E00480065006C0070004B006500790077006F0072006400010001000D000A00
      49006D006100670065002E0041006C0074005400650078007400010001000D00
      0A0049006D006100670065002E00480065006C0070004B006500790077006F00
      72006400010001000D000A00500072006F006400420074006E002E0048006500
      6C0070004B006500790077006F0072006400010001000D000A00490044004500
      6400690074002E00480065006C0070004B006500790077006F00720064000100
      01000D000A004900440045006400690074002E00540065007800740001004900
      4400450064006900740001000D000A00490044004C006100620065006C002E00
      480065006C0070004B006500790077006F0072006400010001000D000A004E00
      61006D00650045006400690074002E00480065006C0070004B00650079007700
      6F0072006400010001000D000A004E0061006D00650045006400690074002E00
      540065007800740001004E0061006D006500450064006900740001000D000A00
      4E0065007700420074006E002E00480065006C0070004B006500790077006F00
      72006400010001000D000A00440065006C00420074006E002E00480065006C00
      70004B006500790077006F0072006400010001000D000A004D006F0064006500
      4C0062006C002E00480065006C0070004B006500790077006F00720064000100
      01000D000A004D006F00640065004E0061006D0065002E00480065006C007000
      4B006500790077006F0072006400010001000D000A004D006F00640065004E00
      61006D0065002E00540065007800740001004D006F00640065006E0061006D00
      650001000D000A00430070007900420074006E002E00480065006C0070004B00
      6500790077006F0072006400010001000D000A0043006F006C006F0075007200
      45006400690074002E00480065006C0070004B006500790077006F0072006400
      010001000D000A0043006F006C006F007500720045006400690074002E005400
      6500780074000100420069002D0043006F006C006F007500720001000D000A00
      4C0069006D00690074006C006100620065006C002E00480065006C0070004B00
      6500790077006F0072006400010001000D000A00540066006F0072006D004900
      6D00610067006500560065007200730069006F006E00730054006D0070006C00
      2E005400680065006D006500010001000D000A00490057005200650063007400
      61006E0067006C00650032002E00430073007300010001000D000A0049005700
      520065006300740061006E0067006C00650032002E0053006B0069006E004900
      6400010001000D000A0049005700520065006300740061006E0067006C006500
      31002E00430073007300010001000D000A004900570052006500630074006100
      6E0067006C00650031002E0053006B0069006E0049006400010001000D000A00
      49006D006100670065004C006100620065006C002E0043007300730001000100
      0D000A0049006D006100670065004C006100620065006C002E0053006B006900
      6E0049006400010001000D000A0049006D006100670065004700720069006400
      2E00430073007300010001000D000A0049006D00610067006500470072006900
      64002E0053006B0069006E0049006400010001000D000A004900570053006900
      4C0069006E006B0031002E00430073007300010001000D000A00490057005300
      69004C0069006E006B0031002E0053006B0069006E0049006400010001000D00
      0A004900440045006400690074002E00430073007300010001000D000A004900
      440045006400690074002E0053006B0069006E0049006400010001000D000A00
      490044004C006100620065006C002E00430073007300010001000D000A004900
      44004C006100620065006C002E0053006B0069006E0049006400010001000D00
      0A004E0061006D00650045006400690074002E00430073007300010001000D00
      0A004E0061006D00650045006400690074002E0053006B0069006E0049006400
      010001000D000A00500072006F006400420074006E002E004300730073000100
      01000D000A00500072006F006400420074006E002E0053006B0069006E004900
      6400010001000D000A004E0065007700420074006E002E004300730073000100
      01000D000A004E0065007700420074006E002E0053006B0069006E0049006400
      010001000D000A00440065006C00420074006E002E0043007300730001000100
      0D000A00440065006C00420074006E002E0053006B0069006E00490064000100
      01000D000A004D006F00640065004C0062006C002E0043007300730001000100
      0D000A004D006F00640065004C0062006C002E0053006B0069006E0049006400
      010001000D000A004D006F00640065004E0061006D0065002E00430073007300
      010001000D000A004D006F00640065004E0061006D0065002E0053006B006900
      6E0049006400010001000D000A00430070007900420074006E002E0043007300
      7300010001000D000A00430070007900420074006E002E0053006B0069006E00
      49006400010001000D000A0043006F006C006F00750072004500640069007400
      2E00430073007300010001000D000A0043006F006C006F007500720045006400
      690074002E0053006B0069006E0049006400010001000D000A004C0069006D00
      690074006C006100620065006C002E00430073007300010001000D000A004C00
      69006D00690074006C006100620065006C002E0053006B0069006E0049006400
      010001000D000A0042006100730065006C006100620065006C002E0043007300
      7300010001000D000A0042006100730065006C006100620065006C002E004800
      65006C0070004B006500790077006F0072006400010001000D000A0042006100
      730065006C006100620065006C002E0053006B0069006E004900640001000100
      0D000A004D0065006D006F002E00430073007300010001000D000A004D006500
      6D006F002E0053006B0069006E0049006400010001000D000A0049006D006100
      670065002E00430073007300010001000D000A0049006D006100670065002E00
      53006B0069006E0049006400010001000D000A007300740043006F006C006C00
      65006300740069006F006E0073005F0055006E00690063006F00640065000D00
      0A0073007400430068006100720053006500740073005F0055006E0069006300
      6F00640065000D000A00}
  end
end
