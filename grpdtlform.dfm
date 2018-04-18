object FormGrpDtl: TFormGrpDtl
  Left = 0
  Top = 0
  Width = 1028
  Height = 697
  RenderInvisibleControls = False
  AllowPageAccess = True
  ConnectionMode = cmAny
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
      TabOrder = 14
      ExplicitWidth = 1028
      ExplicitHeight = 118
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
        ExplicitWidth = 1028
      end
      inherited IWImageFile3: TIWImageFile
        Left = 693
        ExplicitLeft = 693
      end
      inherited langlink: TIWSiLink
        Left = 629
        ExplicitLeft = 629
      end
      inherited Smalltitle: TIWLabel
        Left = 908
        Top = 101
        ExplicitLeft = 908
        ExplicitTop = 101
      end
      inherited HideBox: TIWImageFile
        Left = 1012
        Top = 100
        Width = 12
        Height = 14
        ExplicitLeft = 1012
        ExplicitTop = 100
        ExplicitWidth = 12
        ExplicitHeight = 14
      end
      inherited TitleLabel: TIWLabel
        Width = 387
        Caption = 'distribution'
        ExplicitWidth = 387
      end
    end
  end
  object IWRegion1: TIWRegion
    Left = 0
    Top = 118
    Width = 1028
    Height = 550
    Cursor = crAuto
    RenderInvisibleControls = False
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
      1028
      550)
    object IWRegion2: TIWRegion
      Left = 3
      Top = 6
      Width = 1021
      Height = 520
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
        1021
        520)
      object GrpLabel: TIWLabel
        Left = 14
        Top = 10
        Width = 113
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
        FriendlyName = 'GrpLabel'
        Caption = 'Group Detail'
        RawText = False
      end
      object IWLabel2: TIWLabel
        Left = 120
        Top = 13
        Width = 54
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
        FriendlyName = 'IWLabel6'
        Caption = 'Name'
        RawText = False
      end
      object NameEdit: TIWEdit
        Left = 180
        Top = 11
        Width = 301
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
        BGColor = clWebLIGHTGRAY
        FocusColor = clNone
        DoSubmitValidation = True
        Editable = False
        NonEditableAsLabel = True
        Font.Color = clNone
        Font.Size = 10
        Font.Style = []
        FriendlyName = 'NameEdit'
        MaxLength = 0
        ReadOnly = True
        Required = False
        ScriptEvents = <>
        SubmitOnAsyncEvent = True
        TabOrder = 0
        Enabled = False
        PasswordPrompt = False
        Text = 'NameEdit'
      end
      object IWLabel1: TIWLabel
        Left = 19
        Top = 254
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
        Font.Style = [fsBold]
        NoWrap = False
        ConvertSpaces = False
        HasTabOrder = False
        AutoSize = False
        FriendlyName = 'IWLabel6'
        Caption = 'Stores'
        RawText = False
      end
      object StoreGrid: TIWGrid
        Left = 19
        Top = 275
        Width = 462
        Height = 207
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
        OnRenderCell = StoreGridRenderCell
        UseFrame = True
        UseSize = True
        FriendlyName = 'PrinterGrid'
        ColumnCount = 2
        OnCellClick = StoreGridCellClick
        RowCount = 1
        ShowEmptyCells = True
        ShowInvisibleRows = True
        ScrollToCurrentRow = False
      end
      object VoucherGrid: TIWGrid
        Left = 17
        Top = 95
        Width = 464
        Height = 124
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
        OnRenderCell = StoreGridRenderCell
        UseFrame = True
        UseSize = True
        FriendlyName = 'VoucherGrid'
        ColumnCount = 3
        OnCellClick = VoucherGridCellClick
        RowCount = 1
        ShowEmptyCells = True
        ShowInvisibleRows = True
        ScrollToCurrentRow = False
      end
      object IWLabel6: TIWLabel
        Left = 17
        Top = 73
        Width = 57
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
        FriendlyName = 'IWLabel6'
        Caption = 'Jobs'
        RawText = False
      end
      object DelBtn: TIWButton
        Left = 406
        Top = 38
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
        Caption = 'Delete'
        Confirmation = 'Delete this record?'
        DoSubmitValidation = True
        Color = clBtnFace
        Font.Color = clWebBLUE
        Font.Size = 10
        Font.Style = []
        FriendlyName = 'DelBtn'
        ScriptEvents = <>
        TabOrder = 1
        OnClick = DelBtnClick
      end
      object IWSiLink1: TIWSiLink
        Left = 335
        Top = 38
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
        TabOrder = 2
        RawText = False
        SiLangLinked = siLangLinked1
        LangFile = 'Grpdtl.sil'
        LangControl = RcDataMod.LangEditControl1
      end
      object IWRectangle1: TIWRectangle
        Left = 0
        Top = 3
        Width = 3
        Height = 517
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
      object IWRectangle2: TIWRectangle
        Left = 0
        Top = 0
        Width = 1021
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
        ExplicitWidth = 897
      end
      object TestBox: TIWCheckBox
        Left = 571
        Top = 14
        Width = 141
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
        Editable = True
        Font.Color = clNone
        Font.Size = 10
        Font.Style = []
        SubmitOnAsyncEvent = True
        ScriptEvents = <>
        DoSubmitValidation = True
        Style = stNormal
        TabOrder = 4
        OnClick = TestBoxChange
        OnChange = TestBoxChange
        Checked = False
        FriendlyName = 'TestBox'
      end
      object StoreCombo: TIWComboBox
        Left = 93
        Top = 487
        Width = 388
        Height = 21
        Cursor = crAuto
        Anchors = [akLeft, akBottom]
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
        UseSize = False
        Style = stNormal
        ButtonColor = clBtnFace
        DoSubmitValidation = True
        Editable = True
        NonEditableAsLabel = True
        SubmitOnAsyncEvent = True
        TabOrder = 5
        ItemIndex = -1
        Sorted = False
        FriendlyName = 'RegionCombo'
      end
      object AddStoreBtn: TIWButton
        Left = 21
        Top = 486
        Width = 61
        Height = 25
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
        Caption = 'Add'
        DoSubmitValidation = True
        Color = clBtnFace
        Font.Color = clWebBLUE
        Font.Size = 10
        Font.Style = []
        FriendlyName = 'IWButton2'
        ScriptEvents = <>
        TabOrder = 6
        OnClick = AddStoreBtnClick
      end
      object AddJobBtn: TIWButton
        Left = 17
        Top = 224
        Width = 61
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
        Caption = 'Add'
        DoSubmitValidation = True
        Color = clBtnFace
        Font.Color = clWebBLUE
        Font.Size = 10
        Font.Style = []
        FriendlyName = 'IWButton2'
        ScriptEvents = <>
        TabOrder = 7
        OnClick = AddJobBtnClick
      end
      object PromoCombo: TIWComboBox
        Left = 88
        Top = 225
        Width = 393
        Height = 21
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
        UseSize = False
        Style = stNormal
        ButtonColor = clBtnFace
        DoSubmitValidation = True
        Editable = True
        NonEditableAsLabel = True
        SubmitOnAsyncEvent = True
        TabOrder = 8
        ItemIndex = -1
        Sorted = False
        FriendlyName = 'RegionCombo'
      end
      object EditBtn: TIWButton
        Left = 489
        Top = 11
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
        Font.Color = clWebBLUE
        Font.Size = 10
        Font.Style = []
        FriendlyName = 'DelBtn'
        ScriptEvents = <>
        TabOrder = 9
        OnClick = EditBtnClick
      end
      object GroupGrid: TIWGrid
        Left = 523
        Top = 95
        Width = 479
        Height = 124
        Cursor = crAuto
        Anchors = [akLeft, akTop, akRight]
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
        OnRenderCell = StoreGridRenderCell
        UseFrame = True
        UseSize = True
        FriendlyName = 'VoucherGrid'
        ColumnCount = 2
        OnCellClick = GroupGridCellClick
        RowCount = 1
        ShowEmptyCells = True
        ShowInvisibleRows = True
        ScrollToCurrentRow = False
      end
      object AddGroupButton: TIWButton
        Left = 523
        Top = 225
        Width = 61
        Height = 23
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
        Caption = 'Add'
        DoSubmitValidation = True
        Color = clBtnFace
        Font.Color = clWebBLUE
        Font.Size = 10
        Font.Style = []
        FriendlyName = 'IWButton2'
        ScriptEvents = <>
        TabOrder = 10
        OnClick = AddGroupButtonClick
      end
      object GroupCombo: TIWComboBox
        Left = 590
        Top = 225
        Width = 412
        Height = 21
        Cursor = crAuto
        Anchors = [akLeft, akTop, akRight]
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
        UseSize = False
        Style = stNormal
        ButtonColor = clBtnFace
        DoSubmitValidation = True
        Editable = True
        NonEditableAsLabel = True
        SubmitOnAsyncEvent = True
        TabOrder = 11
        ItemIndex = -1
        Sorted = False
        FriendlyName = 'RegionCombo'
      end
      object DepGrid: TIWGrid
        Left = 525
        Top = 315
        Width = 477
        Height = 166
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
        OnRenderCell = StoreGridRenderCell
        UseFrame = True
        UseSize = True
        FriendlyName = 'VoucherGrid'
        ColumnCount = 2
        OnCellClick = DepGridCellClick
        RowCount = 1
        ShowEmptyCells = True
        ShowInvisibleRows = True
        ScrollToCurrentRow = False
      end
      object IWLabel8: TIWLabel
        Left = 521
        Top = 46
        Width = 481
        Height = 43
        Cursor = crAuto
        Anchors = [akLeft, akTop, akRight]
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
        FriendlyName = 'IWLabel6'
        Caption = 
          'Parent Groups - Stores in this group will get jobs and updates f' +
          'rom these groups'
        RawText = False
      end
      object IWLabel10: TIWLabel
        Left = 523
        Top = 270
        Width = 479
        Height = 39
        Cursor = crAuto
        Anchors = [akLeft, akTop, akRight]
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
        FriendlyName = 'IWLabel6'
        Caption = 
          'Child Groups - Stores in these groups will get jobs and updates ' +
          'from both this group and any groups included above'
        RawText = False
      end
      object AddChildButton: TIWButton
        Left = 523
        Top = 487
        Width = 61
        Height = 23
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
        Caption = 'Add'
        DoSubmitValidation = True
        Color = clBtnFace
        Font.Color = clWebBLUE
        Font.Size = 10
        Font.Style = []
        FriendlyName = 'IWButton2'
        ScriptEvents = <>
        TabOrder = 12
        OnClick = AddChildButtonClick
      end
      object ChildCombo: TIWComboBox
        Left = 590
        Top = 487
        Width = 412
        Height = 21
        Cursor = crAuto
        Anchors = [akLeft, akRight, akBottom]
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
        UseSize = False
        Style = stNormal
        ButtonColor = clBtnFace
        DoSubmitValidation = True
        Editable = True
        NonEditableAsLabel = True
        SubmitOnAsyncEvent = True
        TabOrder = 13
        ItemIndex = -1
        Sorted = False
        FriendlyName = 'RegionCombo'
      end
      object IWLabel12: TIWLabel
        Left = 88
        Top = 35
        Width = 86
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
        FriendlyName = 'IWLabel6'
        Caption = 'Group Kind'
        RawText = False
      end
      object GroupEdit: TIWEdit
        Left = 180
        Top = 36
        Width = 133
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
        BGColor = clWebLIGHTGRAY
        FocusColor = clNone
        DoSubmitValidation = True
        Editable = False
        NonEditableAsLabel = True
        Font.Color = clNone
        Font.Size = 10
        Font.Style = []
        FriendlyName = 'NameEdit'
        MaxLength = 0
        ReadOnly = True
        Required = False
        ScriptEvents = <>
        SubmitOnAsyncEvent = True
        TabOrder = 15
        Enabled = False
        PasswordPrompt = False
        Text = 'GroupEdit'
      end
      object IWComboBox1: TIWComboBox
        Left = 168
        Top = 68
        Width = 313
        Height = 21
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
        UseSize = False
        Style = stNormal
        ButtonColor = clBtnFace
        DoSubmitValidation = True
        Editable = True
        NonEditableAsLabel = True
        SubmitOnAsyncEvent = True
        TabOrder = 16
        ItemIndex = -1
        Sorted = False
        FriendlyName = 'RegionCombo'
      end
      object IWButton1: TIWButton
        Left = 87
        Top = 65
        Width = 75
        Height = 24
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
        Caption = 'Copy To...'
        DoSubmitValidation = True
        Color = clBtnFace
        Font.Color = clWebBLUE
        Font.Size = 10
        Font.Style = []
        FriendlyName = 'IWButton2'
        ScriptEvents = <>
        TabOrder = 17
        OnClick = AddJobBtnClick
      end
    end
  end
  inline userfooter1: Tuserfooter
    Left = 0
    Top = 668
    Width = 1028
    Height = 29
    HorzScrollBar.Visible = False
    Align = alBottom
    TabOrder = 2
    ExplicitTop = 668
    ExplicitWidth = 1028
    ExplicitHeight = 29
    inherited IWRegion1: TIWRegion
      Width = 1028
      Height = 29
      TabOrder = 3
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
        Left = 941
        Caption = 'Back'
        OnClick = CancelBtnClick
        ExplicitLeft = 941
      end
      inherited Extra1: TIWButton
        Left = 855
        ExplicitLeft = 855
      end
      inherited Extra2: TIWButton
        Left = 769
        ExplicitLeft = 769
      end
      inherited fiwSiLink1: TIWSiLink
        Left = 700
        ExplicitLeft = 700
      end
      inherited navcombo: TIWComboBox
        Visible = False
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
      'FriendlyName'
      'HotKey'
      'StatusText'
      'LangFile'
      'Confirmation'
      'Text'
      'Summary'
      'Title')
    Left = 24
    Top = 128
    TranslationData = {
      73007400430061007000740069006F006E0073005F0055006E00690063006F00
      640065000D000A004700720070004C006100620065006C000100470072006F00
      750070002000440065007400610069006C0001000D000A00490057004C006100
      620065006C00320001004E0061006D00650001000D000A00490057004C006100
      620065006C0031000100530074006F0072006500730001000D000A0053007400
      6F00720065004700720069006400010001000D000A0056006F00750063006800
      650072004700720069006400010001000D000A00490057004C00610062006500
      6C00360001004A006F006200730001000D000A00440065006C00420074006E00
      0100440065006C0065007400650001000D000A00540065007300740042006F00
      78000100550073006500200066006F0072002000540065007300740001000D00
      0A00410064006400530074006F0072006500420074006E000100410064006400
      01000D000A004100640064004A006F006200420074006E000100410064006400
      01000D000A004500640069007400420074006E00010045006400690074000100
      0D000A0073007400480069006E00740073005F0055006E00690063006F006400
      65000D000A007300740044006900730070006C00610079004C00610062006500
      6C0073005F0055006E00690063006F00640065000D000A007300740046006F00
      6E00740073005F0055006E00690063006F00640065000D000A00730074004D00
      75006C00740069004C0069006E00650073005F0055006E00690063006F006400
      65000D000A004900570052006500670069006F006E0031002E00450078007400
      7200610054006100670050006100720061006D007300010001000D000A004900
      570052006500670069006F006E0032002E004500780074007200610054006100
      670050006100720061006D007300010001000D000A004700720070004C006100
      620065006C002E00450078007400720061005400610067005000610072006100
      6D007300010001000D000A00490057004C006100620065006C0032002E004500
      780074007200610054006100670050006100720061006D007300010001000D00
      0A004E0061006D00650045006400690074002E00450078007400720061005400
      6100670050006100720061006D007300010001000D000A00490057004C006100
      620065006C0031002E0045007800740072006100540061006700500061007200
      61006D007300010001000D000A00530074006F00720065004700720069006400
      2E004500780074007200610054006100670050006100720061006D0073000100
      01000D000A0056006F007500630068006500720047007200690064002E004500
      780074007200610054006100670050006100720061006D007300010001000D00
      0A00490057004C006100620065006C0036002E00450078007400720061005400
      6100670050006100720061006D007300010001000D000A00440065006C004200
      74006E002E004500780074007200610054006100670050006100720061006D00
      7300010001000D000A0049005700530069004C0069006E006B0031002E004500
      780074007200610054006100670050006100720061006D007300010001000D00
      0A0049005700520065006300740061006E0067006C00650031002E0045007800
      74007200610054006100670050006100720061006D007300010001000D000A00
      49005700520065006300740061006E0067006C00650032002E00450078007400
      7200610054006100670050006100720061006D007300010001000D000A005400
      65007300740042006F0078002E00450078007400720061005400610067005000
      6100720061006D007300010001000D000A00530074006F007200650043006F00
      6D0062006F002E00450078007400720061005400610067005000610072006100
      6D007300010001000D000A00530074006F007200650043006F006D0062006F00
      2E004900740065006D007300010001000D000A00410064006400530074006F00
      72006500420074006E002E004500780074007200610054006100670050006100
      720061006D007300010001000D000A004100640064004A006F00620042007400
      6E002E004500780074007200610054006100670050006100720061006D007300
      010001000D000A00500072006F006D006F0043006F006D0062006F002E004500
      780074007200610054006100670050006100720061006D007300010001000D00
      0A00500072006F006D006F0043006F006D0062006F002E004900740065006D00
      7300010001000D000A004500640069007400420074006E002E00450078007400
      7200610054006100670050006100720061006D007300010001000D000A007300
      740053007400720069006E00670073005F0055006E00690063006F0064006500
      0D000A00440065006C006500740065005200650063000100440065006C006500
      740065002000740068006900730020007200650063006F00720064003F000100
      0D000A0047007200690064002E004E0061006D00650001004E0061006D006500
      01000D000A0047007200690064002E00440065006C0065007400650001004400
      65006C0065007400650001000D000A0047007200690064002E004E006F007400
      650001004E006F007400650001000D000A0047007200690064002E0044006100
      740065000100440061007400650001000D000A0047007200690064002E004500
      6400690074000100450064006900740001000D000A0047007200690064002E00
      430075007200720065006E0074000100430075007200720065006E0074000100
      0D000A0047007200690064002E00530065006C00650063007400650064000100
      530065006C006500630074006500640001000D000A0047007200690064002E00
      500072006F0070006500720074006900650073000100500072006F0070006500
      7200740069006500730001000D000A00730074004F0074006800650072005300
      7400720069006E00670073005F0055006E00690063006F00640065000D000A00
      540046006F0072006D00470072007000440074006C002E00480065006C007000
      4B006500790077006F0072006400010001000D000A004600720061006D006500
      42006100720065005400690074006C00650031002E00480065006C0070004B00
      6500790077006F0072006400010001000D000A00490057005200650067006900
      6F006E0031002E00480065006C0070004B006500790077006F00720064000100
      01000D000A004900570052006500670069006F006E0032002E00480065006C00
      70004B006500790077006F0072006400010001000D000A004700720070004C00
      6100620065006C002E00480065006C0070004B006500790077006F0072006400
      010001000D000A00490057004C006100620065006C0032002E00480065006C00
      70004B006500790077006F0072006400010001000D000A004E0061006D006500
      45006400690074002E00480065006C0070004B006500790077006F0072006400
      010001000D000A00490057004C006100620065006C0031002E00480065006C00
      70004B006500790077006F0072006400010001000D000A00530074006F007200
      650047007200690064002E00480065006C0070004B006500790077006F007200
      6400010001000D000A0056006F00750063006800650072004700720069006400
      2E00480065006C0070004B006500790077006F0072006400010001000D000A00
      490057004C006100620065006C0036002E00480065006C0070004B0065007900
      77006F0072006400010001000D000A00440065006C00420074006E002E004800
      65006C0070004B006500790077006F0072006400010001000D000A0049005700
      530069004C0069006E006B0031002E00480065006C0070004B00650079007700
      6F0072006400010001000D000A0049005700520065006300740061006E006700
      6C00650031002E00480065006C0070004B006500790077006F00720064000100
      01000D000A0049005700520065006300740061006E0067006C00650032002E00
      480065006C0070004B006500790077006F0072006400010001000D000A007500
      73006500720066006F006F0074006500720031002E00480065006C0070004B00
      6500790077006F0072006400010001000D000A00540065007300740042006F00
      78002E00480065006C0070004B006500790077006F0072006400010001000D00
      0A00530074006F007200650043006F006D0062006F002E00480065006C007000
      4B006500790077006F0072006400010001000D000A00530074006F0072006500
      43006F006D0062006F002E004E006F00530065006C0065006300740069006F00
      6E00540065007800740001002D002D0020004E006F002000530065006C006500
      6300740069006F006E0020002D002D0001000D000A0041006400640053007400
      6F0072006500420074006E002E00480065006C0070004B006500790077006F00
      72006400010001000D000A004100640064004A006F006200420074006E002E00
      480065006C0070004B006500790077006F0072006400010001000D000A005000
      72006F006D006F0043006F006D0062006F002E00480065006C0070004B006500
      790077006F0072006400010001000D000A00500072006F006D006F0043006F00
      6D0062006F002E004E006F00530065006C0065006300740069006F006E005400
      65007800740001002D002D0020004E006F002000530065006C00650063007400
      69006F006E0020002D002D0001000D000A004500640069007400420074006E00
      2E00480065006C0070004B006500790077006F0072006400010001000D000A00
      7300740043006F006C006C0065006300740069006F006E0073005F0055006E00
      690063006F00640065000D000A00730074004300680061007200530065007400
      73005F0055006E00690063006F00640065000D000A00}
  end
end
