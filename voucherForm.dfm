object FormVoucher: TFormVoucher
  Left = 0
  Top = 0
  Width = 1028
  Height = 746
  RenderInvisibleControls = False
  AllowPageAccess = True
  ConnectionMode = cmAny
  Title = 'Recast Control'
  SupportedBrowsers = [brNetscape7, brIE, brOpera, brSafari, brNetscape6]
  OnCreate = IWAppFormCreate
  OnDestroy = IWAppFormDestroy
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
    Width = 1028
    Height = 118
    HorzScrollBar.Visible = False
    VertScrollBar.Visible = False
    Align = alTop
    TabOrder = 0
    ExplicitWidth = 1028
    ExplicitHeight = 118
    inherited IWFrameRegion: TIWRegion
      Width = 1028
      Height = 118
      TabOrder = 8
      ExplicitWidth = 1028
      ExplicitHeight = 118
      inherited titleimage: TIWImageFile
        ImageFile.Filename = 'E:\delphi\delphi_web\files\promotions.GIF'
      end
      inherited IWRectangle1: TIWRectangle
        Top = 93
        Width = 1028
        ExplicitTop = 93
        ExplicitWidth = 1028
      end
      inherited IWRectangle3: TIWRectangle
        Top = 98
        Width = 1028
        ExplicitTop = 98
      end
      inherited IWImageFile3: TIWImageFile
        Left = 693
        ExplicitLeft = 693
      end
      inherited langlink: TIWSiLink
        Left = 737
        ExplicitLeft = 737
      end
      inherited Smalltitle: TIWLabel
        Left = 909
        Top = 101
        ExplicitLeft = 909
        ExplicitTop = 101
      end
      inherited HideBox: TIWImageFile
        Left = 1011
        Top = 100
        ExplicitLeft = 1011
        ExplicitTop = 100
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
    Top = 717
    Width = 1028
    Height = 29
    HorzScrollBar.Visible = False
    Align = alBottom
    TabOrder = 1
    ExplicitTop = 717
    ExplicitWidth = 1028
    ExplicitHeight = 29
    inherited IWRegion1: TIWRegion
      Width = 1028
      Height = 29
      TabOrder = 9
      ExplicitWidth = 1028
      ExplicitHeight = 29
      inherited IWRectangle1: TIWRectangle
        Left = 612
        Width = 416
        ExplicitLeft = 612
        ExplicitWidth = 416
      end
      inherited IWRectangle4: TIWRectangle
        Width = 1644
        ExplicitWidth = 1644
      end
      inherited IWRectangle6: TIWRectangle
        Width = 570
        ExplicitWidth = 570
      end
      inherited Cancel: TIWButton
        Left = 942
        Caption = 'Back'
        OnClick = userfooter1CancelClick
        ExplicitLeft = 942
      end
      inherited Extra1: TIWButton
        Left = 854
        ExplicitLeft = 854
      end
      inherited Extra2: TIWButton
        Left = 766
        ExplicitLeft = 766
      end
      inherited fiwSiLink1: TIWSiLink
        Left = 696
        ExplicitLeft = 696
      end
    end
  end
  object IWRegion1: TIWRegion
    Left = 0
    Top = 118
    Width = 1028
    Height = 599
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
      599)
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
      SiLangLinked = silanglinked1
      LangFile = 'rules.sil'
      LangControl = RcDataMod.LangEditControl1
    end
    object BodyRegion: TIWRegion
      Left = 29
      Top = 10
      Width = 975
      Height = 580
      Cursor = crAuto
      RenderInvisibleControls = False
      Anchors = [akLeft, akTop, akRight, akBottom]
      BorderOptions.NumericWidth = 0
      BorderOptions.BorderWidth = cbwNumeric
      BorderOptions.Style = cbsNone
      BorderOptions.Color = clNone
      Color = 14202786
      ParentShowHint = False
      ShowHint = True
      ZIndex = 1000
      Splitter = False
      DesignSize = (
        975
        580)
      object IWRectangle2: TIWRectangle
        Left = 0
        Top = 0
        Width = 975
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
        Left = 0
        Top = 3
        Width = 3
        Height = 577
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
      object VoucherGrid: TIWGrid
        Left = 9
        Top = 120
        Width = 470
        Height = 454
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
        OnRenderCell = VoucherGridRenderCell
        UseFrame = True
        UseSize = True
        FriendlyName = 'VoucherGrid'
        ColumnCount = 2
        OnCellClick = VoucherGridCellClick
        RowCount = 1
        ShowEmptyCells = True
        ShowInvisibleRows = True
        ScrollToCurrentRow = False
      end
      object InsertBtn: TIWButton
        Left = 398
        Top = 88
        Width = 75
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
        Caption = 'New'
        DoSubmitValidation = True
        Color = clBtnFace
        Font.Color = clNone
        Font.Size = 10
        Font.Style = []
        FriendlyName = 'InsertBtn'
        ScriptEvents = <>
        TabOrder = 1
        OnClick = InsertBtnClick
      end
      object JobLabel: TIWLabel
        Left = 48
        Top = 5
        Width = 441
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
        FriendlyName = 'StoreLabel'
        Caption = 'Job'
        RawText = False
      end
      object NoteLabel: TIWLabel
        Left = 48
        Top = 26
        Width = 28
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
        FriendlyName = 'IWLabel1'
        Caption = 'Note'
        RawText = False
      end
      object NoteEdit: TIWEdit
        Left = 128
        Top = 25
        Width = 497
        Height = 21
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
        FriendlyName = 'IWEdit1'
        MaxLength = 0
        ReadOnly = True
        Required = False
        ScriptEvents = <>
        SubmitOnAsyncEvent = True
        TabOrder = 2
        PasswordPrompt = False
        Text = 'NoteEdit'
      end
      object EditJobRevBtn: TIWButton
        Left = 128
        Top = 51
        Width = 75
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
        Caption = 'Edit'
        DoSubmitValidation = True
        Color = clBtnFace
        Font.Color = clNone
        Font.Size = 10
        Font.Style = []
        FriendlyName = 'InsertBtn'
        ScriptEvents = <>
        TabOrder = 3
        OnClick = EditJobRevBtnClick
      end
      object ImageGrid: TIWGrid
        Left = 488
        Top = 120
        Width = 476
        Height = 453
        Cursor = crAuto
        Anchors = [akLeft, akTop, akRight, akBottom]
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
        OnRenderCell = VoucherGridRenderCell
        UseFrame = True
        UseSize = True
        FriendlyName = 'VoucherGrid'
        ColumnCount = 5
        OnCellClick = ImageGridCellClick
        RowCount = 1
        ShowEmptyCells = True
        ShowInvisibleRows = True
        ScrollToCurrentRow = False
      end
      object IWLabel3: TIWLabel
        Left = 8
        Top = 89
        Width = 137
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
        Font.Style = [fsBold]
        NoWrap = False
        ConvertSpaces = False
        HasTabOrder = False
        AutoSize = False
        FriendlyName = 'IWLabel1'
        Caption = 'Rules'
        RawText = False
      end
      object IWLabel4: TIWLabel
        Left = 488
        Top = 89
        Width = 169
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
        Font.Style = [fsBold]
        NoWrap = False
        ConvertSpaces = False
        HasTabOrder = False
        AutoSize = False
        FriendlyName = 'IWLabel1'
        Caption = 'Images'
        RawText = False
      end
      object ImageBtn: TIWButton
        Left = 890
        Top = 88
        Width = 75
        Height = 25
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
        FriendlyName = 'InsertBtn'
        ScriptEvents = <>
        TabOrder = 4
        OnClick = ImageBtnClick
      end
      object AuthBox: TIWCheckBox
        Left = 640
        Top = 16
        Width = 177
        Height = 21
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
        Caption = 'Authorised / Read Only'
        Editable = True
        Font.Color = clNone
        Font.Size = 10
        Font.Style = []
        SubmitOnAsyncEvent = True
        ScriptEvents = <>
        DoSubmitValidation = True
        Style = stNormal
        TabOrder = 5
        OnClick = AuthBoxClick
        Checked = False
        FriendlyName = 'AuthBox'
      end
      object ProdBox: TIWCheckBox
        Left = 640
        Top = 40
        Width = 169
        Height = 21
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
        Caption = 'Production'
        Editable = True
        Font.Color = clNone
        Font.Size = 10
        Font.Style = []
        SubmitOnAsyncEvent = True
        ScriptEvents = <>
        DoSubmitValidation = True
        Style = stNormal
        TabOrder = 6
        OnClick = ProdBoxClick
        Checked = False
        FriendlyName = 'ProdBox'
      end
      object TestBox: TIWCheckBox
        Left = 640
        Top = 64
        Width = 121
        Height = 21
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
        Caption = 'Test'
        Editable = True
        Font.Color = clNone
        Font.Size = 10
        Font.Style = []
        SubmitOnAsyncEvent = True
        ScriptEvents = <>
        DoSubmitValidation = True
        Style = stNormal
        TabOrder = 7
        OnClick = TestBoxClick
        Checked = False
        FriendlyName = 'TestBox'
      end
      object FormatBox: TIWCheckBox
        Left = 255
        Top = 94
        Width = 121
        Height = 21
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
        Caption = 'New Format'
        Editable = True
        Font.Color = clNone
        Font.Size = 10
        Font.Style = []
        SubmitOnAsyncEvent = True
        ScriptEvents = <>
        DoSubmitValidation = True
        Style = stNormal
        TabOrder = 10
        OnClick = TestBoxClick
        OnChange = FormatBoxChange
        Checked = False
        FriendlyName = 'TestBox'
      end
      object templatelbl: TIWLabel
        Left = 18
        Top = 54
        Width = 98
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
        Font.Color = clWebRED
        Font.Size = 12
        Font.Style = [fsBold]
        NoWrap = False
        ConvertSpaces = False
        HasTabOrder = False
        AutoSize = False
        FriendlyName = 'templatelbl'
        Caption = 'TEMPLATE'
        RawText = False
      end
    end
  end
  object silanglinked1: TsiLangLinked
    Version = '6.5.4.7'
    StringsTypes.Strings = (
      'TIB_STRINGLIST'
      'TSTRINGLIST')
    SmartExcludeProps.Strings = (
      'UserLabel.Caption'
      'Extra1.Caption'
      'Extra2.Caption'
      'Extra3.Caption'
      'Cancel.Caption'
      'VoucherGrid.Caption')
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
      73007400430061007000740069006F006E0073005F0055006E00690063006F00
      640065000D000A0049006E007300650072007400420074006E0001004E006500
      770001000D000A004A006F0062004C006100620065006C0001004A006F006200
      01000D000A004E006F00740065004C006100620065006C0001004E006F007400
      650001000D000A0045006400690074004A006F00620052006500760042007400
      6E000100450064006900740001000D000A0049006D0061006700650047007200
      69006400010001000D000A00490057004C006100620065006C00330001005200
      75006C006500730001000D000A00490057004C006100620065006C0034000100
      49006D00610067006500730001000D000A0049006D0061006700650042007400
      6E0001004E006500770001000D000A00410075007400680042006F0078000100
      41007500740068006F007200690073006500640020002F002000520065006100
      640020004F006E006C00790001000D000A00500072006F00640042006F007800
      0100500072006F00640075006300740069006F006E0001000D000A0054006500
      7300740042006F0078000100540065007300740001000D000A0046006F007200
      6D006100740042006F00780001004E0065007700200046006F0072006D006100
      740001000D000A00740065006D0070006C006100740065006C0062006C000100
      540045004D0050004C0041005400450001000D000A0073007400480069006E00
      740073005F0055006E00690063006F00640065000D000A007300740044006900
      730070006C00610079004C006100620065006C0073005F0055006E0069006300
      6F00640065000D000A007300740046006F006E00740073005F0055006E006900
      63006F00640065000D000A005400750073006500720066006F006F0074006500
      720001004D0053002000530061006E0073002000530065007200690066000100
      0D000A00730074004D0075006C00740069004C0069006E00650073005F005500
      6E00690063006F00640065000D000A004900570052006500670069006F006E00
      31002E004500780074007200610054006100670050006100720061006D007300
      010001000D000A0049005700530069004C0069006E006B0031002E0045007800
      74007200610054006100670050006100720061006D007300010001000D000A00
      42006F006400790052006500670069006F006E002E0045007800740072006100
      54006100670050006100720061006D007300010001000D000A00490057005200
      65006300740061006E0067006C00650032002E00450078007400720061005400
      6100670050006100720061006D007300010001000D000A004900570052006500
      6300740061006E0067006C00650031002E004500780074007200610054006100
      670050006100720061006D007300010001000D000A0056006F00750063006800
      6500720047007200690064002E00450078007400720061005400610067005000
      6100720061006D007300010001000D000A0049006E0073006500720074004200
      74006E002E004500780074007200610054006100670050006100720061006D00
      7300010001000D000A004A006F0062004C006100620065006C002E0045007800
      74007200610054006100670050006100720061006D007300010001000D000A00
      4E006F00740065004C006100620065006C002E00450078007400720061005400
      6100670050006100720061006D007300010001000D000A004E006F0074006500
      45006400690074002E0045007800740072006100540061006700500061007200
      61006D007300010001000D000A0045006400690074004A006F00620052006500
      7600420074006E002E0045007800740072006100540061006700500061007200
      61006D007300010001000D000A0049006D006100670065004700720069006400
      2E004500780074007200610054006100670050006100720061006D0073000100
      01000D000A00490057004C006100620065006C0033002E004500780074007200
      610054006100670050006100720061006D007300010001000D000A0049005700
      4C006100620065006C0034002E00450078007400720061005400610067005000
      6100720061006D007300010001000D000A0049006D0061006700650042007400
      6E002E004500780074007200610054006100670050006100720061006D007300
      010001000D000A00410075007400680042006F0078002E004500780074007200
      610054006100670050006100720061006D007300010001000D000A0050007200
      6F00640042006F0078002E004500780074007200610054006100670050006100
      720061006D007300010001000D000A00540065007300740042006F0078002E00
      4500780074007200610054006100670050006100720061006D00730001000100
      0D000A0046006F0072006D006100740042006F0078002E004500780074007200
      610054006100670050006100720061006D007300010001000D000A0074006500
      6D0070006C006100740065006C0062006C002E00450078007400720061005400
      6100670050006100720061006D007300010001000D000A007300740053007400
      720069006E00670073005F0055006E00690063006F00640065000D000A004700
      7200690064002E004E0061006D00650001004E0061006D00650001000D000A00
      47007200690064002E00540061006700010054006100670001000D000A004700
      7200690064002E00540072006900670067006500720001005400720069006700
      67006500720001000D000A0047007200690064002E0047005500490044000100
      470055004900440001000D000A0047007200690064002E004400650073006300
      01004400650073006300720069007000740069006F006E0001000D000A004700
      7200690064002E00500072006F00700065007200740069006500730001005000
      72006F00700065007200740069006500730001000D000A004700720069006400
      2E0054007900700065000100540079007000650001000D000A00470072006900
      64002E0050006100720061006D00730001004F00760065007200720069006400
      6500730001000D000A00730074004F0074006800650072005300740072006900
      6E00670073005F0055006E00690063006F00640065000D000A00540046006F00
      72006D0056006F00750063006800650072002E00480065006C0070004B006500
      790077006F0072006400010001000D000A00540046006F0072006D0056006F00
      750063006800650072002E005400690074006C00650001005200650063006100
      73007400200043006F006E00740072006F006C0001000D000A00460072006100
      6D00650042006100720065005400690074006C00650031002E00480065006C00
      70004B006500790077006F0072006400010001000D000A007500730065007200
      66006F006F0074006500720031002E00480065006C0070004B00650079007700
      6F0072006400010001000D000A004900570052006500670069006F006E003100
      2E00480065006C0070004B006500790077006F0072006400010001000D000A00
      49005700530069004C0069006E006B0031002E0043006F006E00660069007200
      6D006100740069006F006E00010001000D000A0049005700530069004C006900
      6E006B0031002E0046007200690065006E0064006C0079004E0061006D006500
      010049005700530069004C0069006E006B00310001000D000A00490057005300
      69004C0069006E006B0031002E00480065006C0070004B006500790077006F00
      72006400010001000D000A0049005700530069004C0069006E006B0031002E00
      4C0061006E006700460069006C0065000100720075006C00650073002E007300
      69006C0001000D000A0049005700530069004C0069006E006B0031002E005300
      740061007400750073005400650078007400010001000D000A0042006F006400
      790052006500670069006F006E002E00480065006C0070004B00650079007700
      6F0072006400010001000D000A0049005700520065006300740061006E006700
      6C00650032002E0046007200690065006E0064006C0079004E0061006D006500
      010049005700520065006300740061006E0067006C006500310001000D000A00
      49005700520065006300740061006E0067006C00650032002E00480065006C00
      70004B006500790077006F0072006400010001000D000A004900570052006500
      6300740061006E0067006C00650032002E005300740061007400750073005400
      650078007400010001000D000A0049005700520065006300740061006E006700
      6C00650032002E005400650078007400010001000D000A004900570052006500
      6300740061006E0067006C00650031002E0046007200690065006E0064006C00
      79004E0061006D006500010049005700520065006300740061006E0067006C00
      6500310001000D000A0049005700520065006300740061006E0067006C006500
      31002E00480065006C0070004B006500790077006F0072006400010001000D00
      0A0049005700520065006300740061006E0067006C00650031002E0053007400
      61007400750073005400650078007400010001000D000A004900570052006500
      6300740061006E0067006C00650031002E005400650078007400010001000D00
      0A0056006F007500630068006500720047007200690064002E00460072006900
      65006E0064006C0079004E0061006D006500010056006F007500630068006500
      7200470072006900640001000D000A0056006F00750063006800650072004700
      7200690064002E00480065006C0070004B006500790077006F00720064000100
      01000D000A0056006F007500630068006500720047007200690064002E005300
      740061007400750073005400650078007400010001000D000A0056006F007500
      630068006500720047007200690064002E00530075006D006D00610072007900
      010001000D000A0049006E007300650072007400420074006E002E0043006F00
      6E006600690072006D006100740069006F006E00010001000D000A0049006E00
      7300650072007400420074006E002E0046007200690065006E0064006C007900
      4E0061006D006500010049006E007300650072007400420074006E0001000D00
      0A0049006E007300650072007400420074006E002E00480065006C0070004B00
      6500790077006F0072006400010001000D000A0049006E007300650072007400
      420074006E002E0048006F0074004B0065007900010001000D000A0049006E00
      7300650072007400420074006E002E0053007400610074007500730054006500
      78007400010001000D000A004A006F0062004C006100620065006C002E004600
      7200690065006E0064006C0079004E0061006D0065000100530074006F007200
      65004C006100620065006C0001000D000A004A006F0062004C00610062006500
      6C002E00480065006C0070004B006500790077006F0072006400010001000D00
      0A004A006F0062004C006100620065006C002E00530074006100740075007300
      5400650078007400010001000D000A004E006F00740065004C00610062006500
      6C002E0046007200690065006E0064006C0079004E0061006D00650001004900
      57004C006100620065006C00310001000D000A004E006F00740065004C006100
      620065006C002E00480065006C0070004B006500790077006F00720064000100
      01000D000A004E006F00740065004C006100620065006C002E00530074006100
      7400750073005400650078007400010001000D000A004E006F00740065004500
      6400690074002E0046007200690065006E0064006C0079004E0061006D006500
      0100490057004500640069007400310001000D000A004E006F00740065004500
      6400690074002E00480065006C0070004B006500790077006F00720064000100
      01000D000A004E006F007400650045006400690074002E005300740061007400
      750073005400650078007400010001000D000A004E006F007400650045006400
      690074002E00540065007800740001004E006F00740065004500640069007400
      01000D000A0045006400690074004A006F006200520065007600420074006E00
      2E0043006F006E006600690072006D006100740069006F006E00010001000D00
      0A0045006400690074004A006F006200520065007600420074006E002E004600
      7200690065006E0064006C0079004E0061006D006500010049006E0073006500
      72007400420074006E0001000D000A0045006400690074004A006F0062005200
      65007600420074006E002E00480065006C0070004B006500790077006F007200
      6400010001000D000A0045006400690074004A006F0062005200650076004200
      74006E002E0048006F0074004B0065007900010001000D000A00450064006900
      74004A006F006200520065007600420074006E002E0053007400610074007500
      73005400650078007400010001000D000A0049006D0061006700650047007200
      690064002E0046007200690065006E0064006C0079004E0061006D0065000100
      56006F0075006300680065007200470072006900640001000D000A0049006D00
      61006700650047007200690064002E00480065006C0070004B00650079007700
      6F0072006400010001000D000A0049006D006100670065004700720069006400
      2E005300740061007400750073005400650078007400010001000D000A004900
      6D0061006700650047007200690064002E00530075006D006D00610072007900
      010001000D000A00490057004C006100620065006C0033002E00460072006900
      65006E0064006C0079004E0061006D0065000100490057004C00610062006500
      6C00310001000D000A00490057004C006100620065006C0033002E0048006500
      6C0070004B006500790077006F0072006400010001000D000A00490057004C00
      6100620065006C0033002E005300740061007400750073005400650078007400
      010001000D000A00490057004C006100620065006C0034002E00460072006900
      65006E0064006C0079004E0061006D0065000100490057004C00610062006500
      6C00310001000D000A00490057004C006100620065006C0034002E0048006500
      6C0070004B006500790077006F0072006400010001000D000A00490057004C00
      6100620065006C0034002E005300740061007400750073005400650078007400
      010001000D000A0049006D00610067006500420074006E002E0043006F006E00
      6600690072006D006100740069006F006E00010001000D000A0049006D006100
      67006500420074006E002E0046007200690065006E0064006C0079004E006100
      6D006500010049006E007300650072007400420074006E0001000D000A004900
      6D00610067006500420074006E002E00480065006C0070004B00650079007700
      6F0072006400010001000D000A0049006D00610067006500420074006E002E00
      48006F0074004B0065007900010001000D000A0049006D006100670065004200
      74006E002E005300740061007400750073005400650078007400010001000D00
      0A00410075007400680042006F0078002E0043006F006E006600690072006D00
      6100740069006F006E00010001000D000A00410075007400680042006F007800
      2E0046007200690065006E0064006C0079004E0061006D006500010041007500
      7400680042006F00780001000D000A00410075007400680042006F0078002E00
      480065006C0070004B006500790077006F0072006400010001000D000A004100
      75007400680042006F0078002E00530074006100740075007300540065007800
      7400010001000D000A00500072006F00640042006F0078002E0043006F006E00
      6600690072006D006100740069006F006E00010001000D000A00500072006F00
      640042006F0078002E0046007200690065006E0064006C0079004E0061006D00
      65000100500072006F00640042006F00780001000D000A00500072006F006400
      42006F0078002E00480065006C0070004B006500790077006F00720064000100
      01000D000A00500072006F00640042006F0078002E0053007400610074007500
      73005400650078007400010001000D000A00540065007300740042006F007800
      2E0043006F006E006600690072006D006100740069006F006E00010001000D00
      0A00540065007300740042006F0078002E0046007200690065006E0064006C00
      79004E0061006D0065000100540065007300740042006F00780001000D000A00
      540065007300740042006F0078002E00480065006C0070004B00650079007700
      6F0072006400010001000D000A00540065007300740042006F0078002E005300
      740061007400750073005400650078007400010001000D000A0046006F007200
      6D006100740042006F0078002E0043006F006E006600690072006D0061007400
      69006F006E00010001000D000A0046006F0072006D006100740042006F007800
      2E0046007200690065006E0064006C0079004E0061006D006500010054006500
      7300740042006F00780001000D000A0046006F0072006D006100740042006F00
      78002E00480065006C0070004B006500790077006F0072006400010001000D00
      0A0046006F0072006D006100740042006F0078002E0053007400610074007500
      73005400650078007400010001000D000A00740065006D0070006C0061007400
      65006C0062006C002E0046007200690065006E0064006C0079004E0061006D00
      65000100740065006D0070006C006100740065006C0062006C0001000D000A00
      740065006D0070006C006100740065006C0062006C002E00480065006C007000
      4B006500790077006F0072006400010001000D000A00740065006D0070006C00
      6100740065006C0062006C002E00530074006100740075007300540065007800
      7400010001000D000A007300740043006F006C006C0065006300740069006F00
      6E0073005F0055006E00690063006F00640065000D000A007300740043006800
      6100720053006500740073005F0055006E00690063006F00640065000D000A00
      5400750073006500720066006F006F0074006500720001004400450046004100
      55004C0054005F00430048004100520053004500540001000D000A00}
  end
end
