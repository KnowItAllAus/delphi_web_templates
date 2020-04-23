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
  DesignLeft = 8
  DesignTop = 8
  inline FrameBareTitle1: TFrameBareTitle
    Left = 0
    Top = 0
    Width = 1028
    Height = 116
    HorzScrollBar.Visible = False
    VertScrollBar.Visible = False
    Align = alTop
    TabOrder = 0
    ExplicitWidth = 1028
    ExplicitHeight = 116
    inherited IWFrameRegion: TIWRegion
      Width = 1028
      Height = 116
      TabOrder = 15
      ExplicitWidth = 1028
      ExplicitHeight = 116
      inherited titleimage: TIWImageFile
        ImageFile.Filename = 'E:\delphi\delphi_web\files\promotions.GIF'
      end
      inherited IWRectangle1: TIWRectangle
        Top = 91
        Width = 1028
        ExplicitTop = 91
        ExplicitWidth = 1028
      end
      inherited IWRectangle3: TIWRectangle
        Top = 96
        Width = 1028
        ExplicitTop = 96
        ExplicitWidth = 1028
      end
      inherited IWImageFile3: TIWImageFile
        Left = 693
        ExplicitLeft = 693
      end
      inherited langlink: TIWSiLink
        Left = 628
        ExplicitLeft = 628
      end
      inherited Smalltitle: TIWLabel
        Left = 908
        ExplicitLeft = 908
      end
      inherited HideBox: TIWImageFile
        Left = 1013
        Top = 99
        ExplicitLeft = 1013
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
      TabOrder = 14
      ExplicitWidth = 1028
      ExplicitHeight = 29
      inherited IWRectangle1: TIWRectangle
        Left = 652
        ExplicitLeft = 652
      end
      inherited IWRectangle4: TIWRectangle
        Width = 1644
        ExplicitWidth = 1644
      end
      inherited IWRectangle6: TIWRectangle
        Width = 610
        ExplicitWidth = 610
      end
      inherited Cancel: TIWButton
        Left = 939
        Caption = 'Back'
        OnClick = userfooter1CancelClick
        ExplicitLeft = 939
      end
      inherited Extra1: TIWButton
        Left = 851
        ExplicitLeft = 851
      end
      inherited Extra2: TIWButton
        Left = 763
        ExplicitLeft = 763
      end
      inherited fiwSiLink1: TIWSiLink
        Left = 691
        ExplicitLeft = 691
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
        Width = 994
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
        TabOrder = 3
        RawText = False
        SiLangLinked = siLangLinked1
        LangFile = 'imagesver.sil'
        LangControl = RcDataMod.LangEditControl1
      end
      object NewVendEdit: TIWEdit
        Left = 720
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
        TabOrder = 1
        PasswordPrompt = False
        Text = 'NewVendEdit'
      end
      object VLabel: TIWLabel
        Left = 664
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
        Left = 791
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
        Left = 839
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
        TabOrder = 2
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
        TabOrder = 5
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
        TabOrder = 6
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
        TabOrder = 7
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
        TabOrder = 8
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
        TabOrder = 10
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
        TabOrder = 11
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
        TabOrder = 12
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
        TabOrder = 9
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
        TabOrder = 13
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
      object flashlbl: TIWLabel
        Left = 543
        Top = 44
        Width = 101
        Height = 16
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
          TabOrder = 4
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
      6100670065004700720069006400010001000D000A0056004C00610062006500
      6C000100560065006E0064002E0001000D000A0050004C006100620065006C00
      0100500072006F0064002E0001000D000A00500072006F006400420074006E00
      010041007500740068006F00720069007300650001000D000A00540065007300
      7400420074006E000100550073006500200066006F0072002000540065007300
      740001000D000A00490057004C006100620065006C0033000100440065007300
      63002E0001000D000A00490044004C006100620065006C000100490044000100
      0D000A004E0065007700420074006E0001004E006500770001000D000A004400
      65006C00420074006E000100440065006C0065007400650001000D000A004D00
      6F00640065004C0062006C0001004D006F006400650001000D000A0043007000
      7900420074006E00010043006F007000790001000D000A004E0061006D006500
      4C0062006C000100460069006C00650001000D000A004C0069006D0069007400
      6C006100620065006C000100580001000D000A0073007400480069006E007400
      73005F0055006E00690063006F00640065000D000A0073007400440069007300
      70006C00610079004C006100620065006C0073005F0055006E00690063006F00
      640065000D000A007300740046006F006E00740073005F0055006E0069006300
      6F00640065000D000A00730074004D0075006C00740069004C0069006E006500
      73005F0055006E00690063006F00640065000D000A0049005700520065006700
      69006F006E0031002E0045007800740072006100540061006700500061007200
      61006D007300010001000D000A0049005700530069004C0069006E006B003100
      2E004500780074007200610054006100670050006100720061006D0073000100
      01000D000A0042006F006400790052006500670069006F006E002E0045007800
      74007200610054006100670050006100720061006D007300010001000D000A00
      49005700520065006300740061006E0067006C00650032002E00450078007400
      7200610054006100670050006100720061006D007300010001000D000A004900
      5700520065006300740061006E0067006C00650031002E004500780074007200
      610054006100670050006100720061006D007300010001000D000A0049006D00
      6100670065004C006100620065006C002E004500780074007200610054006100
      670050006100720061006D007300010001000D000A0049006D00610067006500
      47007200690064002E0045007800740072006100540061006700500061007200
      61006D007300010001000D000A0049006D006100670065005200650067006900
      6F006E002E004500780074007200610054006100670050006100720061006D00
      7300010001000D000A004D0065006D006F002E00450078007400720061005400
      6100670050006100720061006D007300010001000D000A004D0065006D006F00
      2E004C0069006E0065007300010001000D000A0049006D006100670065002E00
      4500780074007200610054006100670050006100720061006D00730001000100
      0D000A004E0065007700560065006E00640045006400690074002E0045007800
      74007200610054006100670050006100720061006D007300010001000D000A00
      56004C006100620065006C002E00450078007400720061005400610067005000
      6100720061006D007300010001000D000A0050004C006100620065006C002E00
      4500780074007200610054006100670050006100720061006D00730001000100
      0D000A004E0065007700500072006F00640045006400690074002E0045007800
      74007200610054006100670050006100720061006D007300010001000D000A00
      500072006F006400420074006E002E0045007800740072006100540061006700
      50006100720061006D007300010001000D000A00540065007300740042007400
      6E002E004500780074007200610054006100670050006100720061006D007300
      010001000D000A00490057004C006100620065006C0033002E00450078007400
      7200610054006100670050006100720061006D007300010001000D000A004900
      440045006400690074002E004500780074007200610054006100670050006100
      720061006D007300010001000D000A00490044004C006100620065006C002E00
      4500780074007200610054006100670050006100720061006D00730001000100
      0D000A00440065007300630045006400690074002E0045007800740072006100
      54006100670050006100720061006D007300010001000D000A004E0061006D00
      650045006400690074002E004500780074007200610054006100670050006100
      720061006D007300010001000D000A004E0065007700420074006E002E004500
      780074007200610054006100670050006100720061006D007300010001000D00
      0A00440065006C00420074006E002E0045007800740072006100540061006700
      50006100720061006D007300010001000D000A004D006F00640065004C006200
      6C002E004500780074007200610054006100670050006100720061006D007300
      010001000D000A004D006F00640065004E0061006D0065002E00450078007400
      7200610054006100670050006100720061006D007300010001000D000A004300
      70007900420074006E002E004500780074007200610054006100670050006100
      720061006D007300010001000D000A004E0061006D0065004C0062006C002E00
      4500780074007200610054006100670050006100720061006D00730001000100
      0D000A00520065007600460069006C0065004E0061006D006500450064006900
      74002E004500780074007200610054006100670050006100720061006D007300
      010001000D000A0043006F006C006F007500720045006400690074002E004500
      780074007200610054006100670050006100720061006D007300010001000D00
      0A004C0069006D00690074006C006100620065006C002E004500780074007200
      610054006100670050006100720061006D007300010001000D000A0073007400
      53007400720069006E00670073005F0055006E00690063006F00640065000D00
      0A0047007200690064002E004E0061006D00650001004E0061006D0065000100
      0D000A0047007200690064002E00540061006700010054006100670001000D00
      0A004D006F00640065002E004E00450054000100530074006F0063006B000100
      0D000A004D006F00640065002E0049004D00410047004500010049006D006100
      6700650001000D000A004D006F00640065002E00530043005200490050005400
      010053006300720069007000740001000D000A004D006F00640065002E004300
      5500530054000100430075007300740001000D000A004D006F00640065002E00
      520041004E0044004F004D000100520061006E0064006F006D0001000D000A00
      4D006F00640065002E005300430041004E004E00450052000100530063006100
      6E006E006500720001000D000A004D006F00640065002E004B00450059004200
      4F0041005200440001004B006500790062006F0061007200640001000D000A00
      4D006F00640065002E0054004500580054000100540065007800740001000D00
      0A0047007200690064002E004700550049004400010047005500490044000100
      0D000A0047007200690064002E00500072006F00640075006300740069006F00
      6E000100500072006F0064002E0001000D000A0047007200690064002E005400
      6500730074000100540065007300740001000D000A004E006500770043006F00
      6E00740065006E00740001004E0065007700200043006F006E00740065006E00
      740001000D000A0047007200690064002E004900440001004900440001000D00
      0A0047007200690064002E00560065007200730069006F006E00010056006500
      7200730069006F006E0001000D000A0047007200690064002E00430075007200
      720065006E0074000100430075007200720065006E00740001000D000A004700
      7200690064002E00530065006C006500630074000100530065006C0065006300
      740001000D000A004D006F00640065002E00520045004400450045004D000100
      520065006400650065006D0001000D000A004D006F00640065002E0049004E00
      500055005400010049006E0070007500740001000D000A0043006F006C006F00
      750072002E00300001004D006F006E006F006300680072006F006D0065000100
      0D000A0043006F006C006F00750072002E003100010042006C00610063006B00
      2000260020005700680069007400650001000D000A0043006F006C006F007500
      72002E0032000100420069002D0043006F006C006F0075007200200052006500
      640001000D000A0043006F006C006F00750072002E0033000100420069002D00
      43006F006C006F0075007200200047007200650065006E0001000D000A004300
      6F006C006F00750072002E0034000100420069002D0043006F006C006F007500
      7200200042006C007500650001000D000A004D006F00640065002E0045005600
      45004E00540001004500760065006E00740001000D000A004700720069006400
      2E0049006E005500730065000100530065006C00650063007400650064000100
      0D000A004D006F00640065002E0049004E005400450052004300450050005400
      4F005200010049006E0074006500720063006500700074006F00720001000D00
      0A0043006F006C006F00750072002E0035000100460075006C006C0020006300
      6F006C006F007500720001000D000A004D006F00640065002E00520045004E00
      44004500520045004400200054004500580054000100520065006E0064006500
      7200650064002000540065007800740001000D000A004D006F00640065002E00
      520045004E0044004500520045004400200049004D0041004700450001005200
      65006E0064006500720065006400200049006D0061006700650001000D000A00
      730074004F00740068006500720053007400720069006E00670073005F005500
      6E00690063006F00640065000D000A004900570052006500670069006F006E00
      31002E00480065006C0070004B006500790077006F0072006400010001000D00
      0A0049005700530069004C0069006E006B0031002E00480065006C0070004B00
      6500790077006F0072006400010001000D000A0042006F006400790052006500
      670069006F006E002E00480065006C0070004B006500790077006F0072006400
      010001000D000A0049005700520065006300740061006E0067006C0065003200
      2E00480065006C0070004B006500790077006F0072006400010001000D000A00
      49005700520065006300740061006E0067006C00650032002E00540065007800
      7400010001000D000A0049005700520065006300740061006E0067006C006500
      31002E00480065006C0070004B006500790077006F0072006400010001000D00
      0A0049005700520065006300740061006E0067006C00650031002E0054006500
      78007400010001000D000A0049006D006100670065004C006100620065006C00
      2E00480065006C0070004B006500790077006F0072006400010001000D000A00
      49006D0061006700650047007200690064002E00480065006C0070004B006500
      790077006F0072006400010001000D000A00750073006500720066006F006F00
      74006500720031002E00480065006C0070004B006500790077006F0072006400
      010001000D000A00540066006F0072006D0049006D0061006700650056006500
      7200730069006F006E0073002E00480065006C0070004B006500790077006F00
      72006400010001000D000A004600720061006D00650042006100720065005400
      690074006C00650031002E00480065006C0070004B006500790077006F007200
      6400010001000D000A0049006D0061006700650052006500670069006F006E00
      2E00480065006C0070004B006500790077006F0072006400010001000D000A00
      4D0065006D006F002E00480065006C0070004B006500790077006F0072006400
      010001000D000A0049006D006100670065002E0041006C007400540065007800
      7400010001000D000A0049006D006100670065002E00480065006C0070004B00
      6500790077006F0072006400010001000D000A004E0065007700560065006E00
      640045006400690074002E00480065006C0070004B006500790077006F007200
      6400010001000D000A004E0065007700560065006E0064004500640069007400
      2E00540065007800740001004E0065007700560065006E006400450064006900
      740001000D000A0056004C006100620065006C002E00480065006C0070004B00
      6500790077006F0072006400010001000D000A0050004C006100620065006C00
      2E00480065006C0070004B006500790077006F0072006400010001000D000A00
      4E0065007700500072006F00640045006400690074002E00480065006C007000
      4B006500790077006F0072006400010001000D000A004E006500770050007200
      6F00640045006400690074002E00540065007800740001004E00650077005000
      72006F006400450064006900740001000D000A00500072006F00640042007400
      6E002E00480065006C0070004B006500790077006F0072006400010001000D00
      0A005400650073007400420074006E002E00480065006C0070004B0065007900
      77006F0072006400010001000D000A00490057004C006100620065006C003300
      2E00480065006C0070004B006500790077006F0072006400010001000D000A00
      4900440045006400690074002E00480065006C0070004B006500790077006F00
      72006400010001000D000A004900440045006400690074002E00540065007800
      7400010049004400450064006900740001000D000A00490044004C0061006200
      65006C002E00480065006C0070004B006500790077006F007200640001000100
      0D000A00440065007300630045006400690074002E00480065006C0070004B00
      6500790077006F0072006400010001000D000A00440065007300630045006400
      690074002E005400650078007400010044006500730063004500640069007400
      01000D000A004E0061006D00650045006400690074002E00480065006C007000
      4B006500790077006F0072006400010001000D000A004E0061006D0065004500
      6400690074002E00540065007800740001004E0061006D006500450064006900
      740001000D000A004E0065007700420074006E002E00480065006C0070004B00
      6500790077006F0072006400010001000D000A00440065006C00420074006E00
      2E00480065006C0070004B006500790077006F0072006400010001000D000A00
      4D006F00640065004C0062006C002E00480065006C0070004B00650079007700
      6F0072006400010001000D000A004D006F00640065004E0061006D0065002E00
      480065006C0070004B006500790077006F0072006400010001000D000A004D00
      6F00640065004E0061006D0065002E00540065007800740001004D006F006400
      65006E0061006D00650001000D000A00430070007900420074006E002E004800
      65006C0070004B006500790077006F0072006400010001000D000A004E006100
      6D0065004C0062006C002E00480065006C0070004B006500790077006F007200
      6400010001000D000A00520065007600460069006C0065004E0061006D006500
      45006400690074002E00480065006C0070004B006500790077006F0072006400
      010001000D000A00520065007600460069006C0065004E0061006D0065004500
      6400690074002E0054006500780074000100460069006C0065006E0061006D00
      650001000D000A0043006F006C006F007500720045006400690074002E004800
      65006C0070004B006500790077006F0072006400010001000D000A0043006F00
      6C006F007500720045006400690074002E005400650078007400010042006900
      2D0043006F006C006F007500720001000D000A004C0069006D00690074006C00
      6100620065006C002E00480065006C0070004B006500790077006F0072006400
      010001000D000A00540066006F0072006D0049006D0061006700650056006500
      7200730069006F006E0073002E005400680065006D006500010001000D000A00
      49005700520065006300740061006E0067006C00650032002E00430073007300
      010001000D000A0049005700520065006300740061006E0067006C0065003200
      2E0053006B0069006E0049006400010001000D000A0049005700520065006300
      740061006E0067006C00650031002E00430073007300010001000D000A004900
      5700520065006300740061006E0067006C00650031002E0053006B0069006E00
      49006400010001000D000A0049006D006100670065004C006100620065006C00
      2E00430073007300010001000D000A0049006D006100670065004C0061006200
      65006C002E0053006B0069006E0049006400010001000D000A0049006D006100
      6700650047007200690064002E00430073007300010001000D000A0049006D00
      61006700650047007200690064002E0053006B0069006E004900640001000100
      0D000A0049005700530069004C0069006E006B0031002E004300730073000100
      01000D000A0049005700530069004C0069006E006B0031002E0053006B006900
      6E0049006400010001000D000A004E0065007700560065006E00640045006400
      690074002E00430073007300010001000D000A004E0065007700560065006E00
      640045006400690074002E0053006B0069006E0049006400010001000D000A00
      56004C006100620065006C002E00430073007300010001000D000A0056004C00
      6100620065006C002E0053006B0069006E0049006400010001000D000A005000
      4C006100620065006C002E00430073007300010001000D000A0050004C006100
      620065006C002E0053006B0069006E0049006400010001000D000A004E006500
      7700500072006F00640045006400690074002E00430073007300010001000D00
      0A004E0065007700500072006F00640045006400690074002E0053006B006900
      6E0049006400010001000D000A00490057004C006100620065006C0033002E00
      430073007300010001000D000A00490057004C006100620065006C0033002E00
      53006B0069006E0049006400010001000D000A00490044004500640069007400
      2E00430073007300010001000D000A004900440045006400690074002E005300
      6B0069006E0049006400010001000D000A00490044004C006100620065006C00
      2E00430073007300010001000D000A00490044004C006100620065006C002E00
      53006B0069006E0049006400010001000D000A00440065007300630045006400
      690074002E00430073007300010001000D000A00440065007300630045006400
      690074002E0053006B0069006E0049006400010001000D000A004E0061006D00
      650045006400690074002E00430073007300010001000D000A004E0061006D00
      650045006400690074002E0053006B0069006E0049006400010001000D000A00
      5400650073007400420074006E002E00430073007300010001000D000A005400
      650073007400420074006E002E0053006B0069006E0049006400010001000D00
      0A00500072006F006400420074006E002E00430073007300010001000D000A00
      500072006F006400420074006E002E0053006B0069006E004900640001000100
      0D000A004E0065007700420074006E002E00430073007300010001000D000A00
      4E0065007700420074006E002E0053006B0069006E0049006400010001000D00
      0A00440065006C00420074006E002E00430073007300010001000D000A004400
      65006C00420074006E002E0053006B0069006E0049006400010001000D000A00
      4D006F00640065004C0062006C002E00430073007300010001000D000A004D00
      6F00640065004C0062006C002E0053006B0069006E0049006400010001000D00
      0A004D006F00640065004E0061006D0065002E00430073007300010001000D00
      0A004D006F00640065004E0061006D0065002E0053006B0069006E0049006400
      010001000D000A00430070007900420074006E002E0043007300730001000100
      0D000A00430070007900420074006E002E0053006B0069006E00490064000100
      01000D000A004E0061006D0065004C0062006C002E0043007300730001000100
      0D000A004E0061006D0065004C0062006C002E0053006B0069006E0049006400
      010001000D000A00520065007600460069006C0065004E0061006D0065004500
      6400690074002E00430073007300010001000D000A0052006500760046006900
      6C0065004E0061006D00650045006400690074002E0053006B0069006E004900
      6400010001000D000A0043006F006C006F007500720045006400690074002E00
      430073007300010001000D000A0043006F006C006F0075007200450064006900
      74002E0053006B0069006E0049006400010001000D000A004C0069006D006900
      74006C006100620065006C002E00430073007300010001000D000A004C006900
      6D00690074006C006100620065006C002E0053006B0069006E00490064000100
      01000D000A004D0065006D006F002E00430073007300010001000D000A004D00
      65006D006F002E0053006B0069006E0049006400010001000D000A0049006D00
      6100670065002E00430073007300010001000D000A0049006D00610067006500
      2E0053006B0069006E0049006400010001000D000A007300740043006F006C00
      6C0065006300740069006F006E0073005F0055006E00690063006F0064006500
      0D000A0073007400430068006100720053006500740073005F0055006E006900
      63006F00640065000D000A00}
  end
end
