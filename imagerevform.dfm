object formImageVersions: TformImageVersions
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
  DesignLeft = 167
  DesignTop = 199
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
      TabOrder = 15
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
        Top = 8
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
        Font.Size = 10
        Font.Style = []
        NoWrap = False
        ConvertSpaces = False
        HasTabOrder = False
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
        Font.Size = 10
        Font.Style = []
        FriendlyName = 'DescEdit'
        MaxLength = 0
        ReadOnly = True
        Required = False
        ScriptEvents = <>
        SubmitOnAsyncEvent = True
        TabOrder = 6
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
        TabOrder = 7
        PasswordPrompt = False
        Text = 'NameEdit'
      end
      object TestBtn: TIWButton
        Left = 376
        Top = 74
        Width = 113
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
        Caption = 'Use for Test'
        DoSubmitValidation = True
        Color = clBtnFace
        Font.Color = clNone
        Font.Size = 10
        Font.Style = []
        FriendlyName = 'TestBtn'
        ScriptEvents = <>
        TabOrder = 8
        OnClick = TestBtnClick
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
        TabOrder = 9
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
        TabOrder = 11
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
        TabOrder = 12
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
        TabOrder = 13
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
        TabOrder = 10
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
        TabOrder = 14
        PasswordPrompt = False
        Text = 'Filename'
      end
      object ColourEdit: TIWEdit
        Left = 616
        Top = 74
        Width = 137
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
        TabOrder = 16
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
          TabOrder = 5
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
      0A436F6C6F75722E350146756C6C20636F6C6F7572010D0A4D6F64652E52454E
      444552454420544558540152656E64657265642054657874010D0A4D6F64652E
      52454E444552454420494D4147450152656E646572656420496D616765010D0A
      73744F74686572537472696E67730D0A4957526567696F6E312E48656C704B65
      79776F726401010D0A495753694C696E6B312E48656C704B6579776F72640101
      0D0A426F6479526567696F6E2E48656C704B6579776F726401010D0A49575265
      6374616E676C65322E48656C704B6579776F726401010D0A495752656374616E
      676C65322E5465787401010D0A495752656374616E676C65312E48656C704B65
      79776F726401010D0A495752656374616E676C65312E5465787401010D0A496D
      6167654C6162656C2E48656C704B6579776F726401010D0A496D616765477269
      642E48656C704B6579776F726401010D0A75736572666F6F746572312E48656C
      704B6579776F726401010D0A54666F726D496D61676556657273696F6E732E48
      656C704B6579776F726401010D0A4672616D65426172655469746C65312E4865
      6C704B6579776F726401010D0A496D616765526567696F6E2E48656C704B6579
      776F726401010D0A4D656D6F2E48656C704B6579776F726401010D0A496D6167
      652E416C745465787401010D0A496D6167652E48656C704B6579776F72640101
      0D0A4E657756656E64456469742E48656C704B6579776F726401010D0A4E6577
      56656E64456469742E54657874014E657756656E6445646974010D0A564C6162
      656C2E48656C704B6579776F726401010D0A504C6162656C2E48656C704B6579
      776F726401010D0A4E657750726F64456469742E48656C704B6579776F726401
      010D0A4E657750726F64456469742E54657874014E657750726F644564697401
      0D0A50726F6442746E2E48656C704B6579776F726401010D0A5465737442746E
      2E48656C704B6579776F726401010D0A49574C6162656C332E48656C704B6579
      776F726401010D0A4944456469742E48656C704B6579776F726401010D0A4944
      456469742E5465787401494445646974010D0A49444C6162656C2E48656C704B
      6579776F726401010D0A44657363456469742E48656C704B6579776F72640101
      0D0A44657363456469742E54657874014465736345646974010D0A4E616D6545
      6469742E48656C704B6579776F726401010D0A4E616D65456469742E54657874
      014E616D6545646974010D0A4E657742746E2E48656C704B6579776F72640101
      0D0A44656C42746E2E48656C704B6579776F726401010D0A4D6F64654C626C2E
      48656C704B6579776F726401010D0A4D6F64654E616D652E48656C704B657977
      6F726401010D0A4D6F64654E616D652E54657874014D6F64656E616D65010D0A
      43707942746E2E48656C704B6579776F726401010D0A4E616D654C626C2E4865
      6C704B6579776F726401010D0A52657646696C654E616D65456469742E48656C
      704B6579776F726401010D0A52657646696C654E616D65456469742E54657874
      0146696C656E616D65010D0A436F6C6F7572456469742E48656C704B6579776F
      726401010D0A436F6C6F7572456469742E546578740142692D436F6C6F757201
      0D0A4C696D69746C6162656C2E48656C704B6579776F726401010D0A54666F72
      6D496D61676556657273696F6E732E5468656D6501010D0A495752656374616E
      676C65322E43737301010D0A495752656374616E676C65322E536B696E496401
      010D0A495752656374616E676C65312E43737301010D0A495752656374616E67
      6C65312E536B696E496401010D0A496D6167654C6162656C2E43737301010D0A
      496D6167654C6162656C2E536B696E496401010D0A496D616765477269642E43
      737301010D0A496D616765477269642E536B696E496401010D0A495753694C69
      6E6B312E43737301010D0A495753694C696E6B312E536B696E496401010D0A4E
      657756656E64456469742E43737301010D0A4E657756656E64456469742E536B
      696E496401010D0A564C6162656C2E43737301010D0A564C6162656C2E536B69
      6E496401010D0A504C6162656C2E43737301010D0A504C6162656C2E536B696E
      496401010D0A4E657750726F64456469742E43737301010D0A4E657750726F64
      456469742E536B696E496401010D0A49574C6162656C332E43737301010D0A49
      574C6162656C332E536B696E496401010D0A4944456469742E43737301010D0A
      4944456469742E536B696E496401010D0A49444C6162656C2E43737301010D0A
      49444C6162656C2E536B696E496401010D0A44657363456469742E4373730101
      0D0A44657363456469742E536B696E496401010D0A4E616D65456469742E4373
      7301010D0A4E616D65456469742E536B696E496401010D0A5465737442746E2E
      43737301010D0A5465737442746E2E536B696E496401010D0A50726F6442746E
      2E43737301010D0A50726F6442746E2E536B696E496401010D0A4E657742746E
      2E43737301010D0A4E657742746E2E536B696E496401010D0A44656C42746E2E
      43737301010D0A44656C42746E2E536B696E496401010D0A4D6F64654C626C2E
      43737301010D0A4D6F64654C626C2E536B696E496401010D0A4D6F64654E616D
      652E43737301010D0A4D6F64654E616D652E536B696E496401010D0A43707942
      746E2E43737301010D0A43707942746E2E536B696E496401010D0A4E616D654C
      626C2E43737301010D0A4E616D654C626C2E536B696E496401010D0A52657646
      696C654E616D65456469742E43737301010D0A52657646696C654E616D654564
      69742E536B696E496401010D0A436F6C6F7572456469742E43737301010D0A43
      6F6C6F7572456469742E536B696E496401010D0A4C696D69746C6162656C2E43
      737301010D0A4C696D69746C6162656C2E536B696E496401010D0A4D656D6F2E
      43737301010D0A4D656D6F2E536B696E496401010D0A496D6167652E43737301
      010D0A496D6167652E536B696E496401010D0A7374436F6C6C656374696F6E73
      0D0A737443686172536574730D0A}
  end
end
