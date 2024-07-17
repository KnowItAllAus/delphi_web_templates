object formgw: Tformgw
  Left = 0
  Top = 0
  Width = 1015
  Height = 688
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
  LockOnSubmit = False
  ShowHint = True
  OnDefaultAction = DisplayBtnClick
  XPTheme = True
  DesignLeft = 8
  DesignTop = 8
  inline StatsFrameTitle1: TStatsFrameTitle
    Left = 0
    Top = 0
    Width = 1015
    Height = 113
    HorzScrollBar.Visible = False
    VertScrollBar.Visible = False
    Align = alTop
    TabOrder = 0
    ExplicitWidth = 1015
    ExplicitHeight = 113
    inherited IWFrameRegion: TIWRegion
      Width = 1015
      Height = 113
      TabOrder = 10
      ExplicitWidth = 1015
      ExplicitHeight = 113
      DesignSize = (
        1015
        113)
      inherited IWImageFile1: TIWImageFile
        ZIndex = 2
      end
      inherited IWImageFile2: TIWImageFile
        Height = 74
        ZIndex = 3
        ExplicitHeight = 74
      end
      inherited IWRectangle1: TIWRectangle
        Left = 152
        Width = 2405
        ZIndex = 4
        ExplicitLeft = 152
        ExplicitWidth = 2405
      end
      inherited IWRectangle2: TIWRectangle
        Left = 152
        Top = 88
        ExplicitLeft = 152
        ExplicitTop = 88
      end
      inherited IWRectangle3: TIWRectangle
        Width = 2187
        ExplicitWidth = 2187
      end
      inherited IWImageFile3: TIWImageFile
        Left = 622
        Height = 85
        ZIndex = 3
        ExplicitLeft = 622
        ExplicitHeight = 85
      end
      inherited langlink: TIWSiLink
        Left = 575
        ExplicitLeft = 575
      end
      inherited TitleLabel: TIWLabel
        ZIndex = 3
      end
      inherited IWRegion1: TIWRegion
        Color = 10526880
        inherited JournalLink: TIWLink
          OnClick = StatsFrameTitle1JournalLinkClick
          ExplicitLeft = -4
          ExplicitTop = 2
        end
      end
      inherited PromoReg: TIWRegion
        Color = 11100191
        inherited ActivityLink: TIWLink
          OnClick = StatsFrameTitle1ActivityLinkClick
          ExplicitLeft = 9
          ExplicitTop = 1
        end
      end
    end
  end
  object backregion: TIWRegion
    Left = 0
    Top = 113
    Width = 1015
    Height = 547
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
      1015
      547)
    object IWRegion2: TIWRegion
      Left = 32
      Top = 7
      Width = 950
      Height = 529
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
        950
        529)
      object VoucherLabel: TIWLabel
        Left = 16
        Top = 8
        Width = 73
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
        FriendlyName = 'VoucherLabel'
        Caption = 'Service'
        RawText = False
      end
      object IWLabel1: TIWLabel
        Left = 192
        Top = 8
        Width = 72
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
        Alignment = taRightJustify
        BGColor = clNone
        Font.Color = clNone
        Font.Size = 10
        Font.Style = []
        NoWrap = False
        ConvertSpaces = False
        HasTabOrder = False
        AutoSize = False
        FriendlyName = 'IWLabel1'
        Caption = 'Start Date'
        RawText = False
      end
      object StartEdit: TIWEdit
        Left = 272
        Top = 6
        Width = 81
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
        BGColor = clNone
        FocusColor = clNone
        DoSubmitValidation = True
        Editable = True
        NonEditableAsLabel = True
        Font.Color = clNone
        Font.Size = 10
        Font.Style = []
        FriendlyName = 'StartEdit'
        MaxLength = 0
        ReadOnly = False
        Required = False
        ScriptEvents = <>
        SubmitOnAsyncEvent = True
        TabOrder = 1
        PasswordPrompt = False
        Text = 'StartEdit'
      end
      object IWLabel2: TIWLabel
        Left = 359
        Top = 8
        Width = 59
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
        Alignment = taRightJustify
        BGColor = clNone
        Font.Color = clNone
        Font.Size = 10
        Font.Style = []
        NoWrap = False
        ConvertSpaces = False
        HasTabOrder = False
        AutoSize = False
        FriendlyName = 'IWLabel2'
        Caption = 'End Date'
        RawText = False
      end
      object EndEdit: TIWEdit
        Left = 421
        Top = 6
        Width = 81
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
        BGColor = clNone
        FocusColor = clNone
        DoSubmitValidation = True
        Editable = True
        NonEditableAsLabel = True
        Font.Color = clNone
        Font.Size = 10
        Font.Style = []
        FriendlyName = 'EndEdit'
        MaxLength = 0
        ReadOnly = False
        Required = False
        ScriptEvents = <>
        SubmitOnAsyncEvent = True
        TabOrder = 2
        PasswordPrompt = False
        Text = 'EndEdit'
      end
      object IWSiLink1: TIWSiLink
        Left = 508
        Top = 42
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
        TabOrder = 8
        RawText = False
        SiLangLinked = siLangLinked1
        LangFile = 'jnl.sil'
        LangControl = RcDataMod.LangEditControl1
      end
      object DisplayBtn: TIWButton
        Left = 846
        Top = 10
        Width = 68
        Height = 40
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
        Caption = 'Search'
        DoSubmitValidation = True
        Color = clWebSILVER
        Font.Color = clWebBLUE
        Font.Size = 10
        Font.Style = []
        FriendlyName = 'Search'
        ScriptEvents = <>
        TabOrder = 5
        OnClick = DisplayBtnClick
      end
      object PrevBtn: TIWButton
        Left = 760
        Top = 479
        Width = 75
        Height = 25
        Cursor = crAuto
        Anchors = [akRight, akBottom]
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
        Caption = '<< Prev'
        DoSubmitValidation = True
        Color = clWebCORNFLOWERBLUE
        Font.Color = clNone
        Font.Size = 10
        Font.Style = []
        FriendlyName = 'IWButton1'
        ScriptEvents = <>
        TabOrder = 6
        OnClick = PrevLinkClick
      end
      object NextBtn: TIWButton
        Left = 841
        Top = 479
        Width = 75
        Height = 25
        Cursor = crAuto
        Anchors = [akRight, akBottom]
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
        Caption = 'Next >>'
        DoSubmitValidation = True
        Color = clWebCORNFLOWERBLUE
        Font.Color = clNone
        Font.Size = 10
        Font.Style = []
        FriendlyName = 'IWButton2'
        ScriptEvents = <>
        TabOrder = 7
        OnClick = NextLinkClick
      end
      object IWRectangle1: TIWRectangle
        Left = 1
        Top = 4
        Width = 3
        Height = 524
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
        Left = 1
        Top = 1
        Width = 948
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
      object TranGrid: TIWGrid
        Left = 16
        Top = 65
        Width = 898
        Height = 408
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
        Font.Color = clWebWHITE
        Font.Size = 10
        Font.Style = []
        FrameBuffer = 40
        Lines = tlAll
        OnRenderCell = TranGridRenderCell
        UseFrame = True
        UseSize = True
        FriendlyName = 'TranGrid'
        ColumnCount = 10
        RowCount = 1
        ShowEmptyCells = True
        ShowInvisibleRows = True
        ScrollToCurrentRow = False
      end
      object StoreCombo: TIWComboBox
        Left = 17
        Top = 38
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
        BGColor = clNone
        Font.Color = clNone
        Font.Size = 10
        Font.Style = []
        FocusColor = clNone
        AutoHideOnMenuActivation = False
        ItemsHaveValues = False
        NoSelectionText = 'All Stores'
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
        TabOrder = 0
        ItemIndex = -1
        Sorted = False
        FriendlyName = 'StoreCombo'
      end
      object IWLabel3: TIWLabel
        Left = 192
        Top = 40
        Width = 72
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
        Alignment = taRightJustify
        BGColor = clNone
        Font.Color = clNone
        Font.Size = 10
        Font.Style = []
        NoWrap = False
        ConvertSpaces = False
        HasTabOrder = False
        AutoSize = False
        FriendlyName = 'IWLabel1'
        Caption = 'Start Time'
        RawText = False
      end
      object StartTime: TIWEdit
        Left = 272
        Top = 38
        Width = 81
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
        BGColor = clNone
        FocusColor = clNone
        DoSubmitValidation = True
        Editable = True
        NonEditableAsLabel = True
        Font.Color = clNone
        Font.Size = 10
        Font.Style = []
        FriendlyName = 'StartEdit'
        MaxLength = 0
        ReadOnly = False
        Required = False
        ScriptEvents = <>
        SubmitOnAsyncEvent = True
        TabOrder = 3
        PasswordPrompt = False
        Text = 'StartEdit'
      end
      object IWLabel4: TIWLabel
        Left = 359
        Top = 40
        Width = 59
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
        Alignment = taRightJustify
        BGColor = clNone
        Font.Color = clNone
        Font.Size = 10
        Font.Style = []
        NoWrap = False
        ConvertSpaces = False
        HasTabOrder = False
        AutoSize = False
        FriendlyName = 'IWLabel2'
        Caption = 'End Time'
        RawText = False
      end
      object EndTime: TIWEdit
        Left = 421
        Top = 38
        Width = 81
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
        BGColor = clNone
        FocusColor = clNone
        DoSubmitValidation = True
        Editable = True
        NonEditableAsLabel = True
        Font.Color = clNone
        Font.Size = 10
        Font.Style = []
        FriendlyName = 'EndEdit'
        MaxLength = 0
        ReadOnly = False
        Required = False
        ScriptEvents = <>
        SubmitOnAsyncEvent = True
        TabOrder = 4
        PasswordPrompt = False
        Text = 'EndEdit'
      end
      object loyaltytx: TIWCheckBox
        Left = 600
        Top = 10
        Width = 90
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
        Caption = 'Lty tx'
        Editable = True
        Font.Color = clNone
        Font.Size = 10
        Font.Style = []
        SubmitOnAsyncEvent = True
        ScriptEvents = <>
        DoSubmitValidation = True
        Style = stNormal
        TabOrder = 11
        Checked = True
        FriendlyName = 'loyalty tx'
      end
      object nonloyaltytx: TIWCheckBox
        Left = 600
        Top = 29
        Width = 90
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
        Caption = 'Non-lty tx'
        Editable = True
        Font.Color = clNone
        Font.Size = 10
        Font.Style = []
        SubmitOnAsyncEvent = True
        ScriptEvents = <>
        DoSubmitValidation = True
        Style = stNormal
        TabOrder = 12
        Checked = True
        FriendlyName = 'nonloyaltytx'
      end
      object getpts: TIWCheckBox
        Left = 600
        Top = 46
        Width = 90
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
        Caption = 'Get pts'
        Editable = True
        Font.Color = clNone
        Font.Size = 10
        Font.Style = []
        SubmitOnAsyncEvent = True
        ScriptEvents = <>
        DoSubmitValidation = True
        Style = stNormal
        TabOrder = 13
        Checked = True
        FriendlyName = 'nonloyaltytx'
      end
      object search: TIWCheckBox
        Left = 700
        Top = 10
        Width = 82
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
        Caption = 'Search'
        Editable = True
        Font.Color = clNone
        Font.Size = 10
        Font.Style = []
        SubmitOnAsyncEvent = True
        ScriptEvents = <>
        DoSubmitValidation = True
        Style = stNormal
        TabOrder = 14
        Checked = True
        FriendlyName = 'nonloyaltytx'
      end
      object update: TIWCheckBox
        Left = 700
        Top = 29
        Width = 82
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
        Caption = 'Update'
        Editable = True
        Font.Color = clNone
        Font.Size = 10
        Font.Style = []
        SubmitOnAsyncEvent = True
        ScriptEvents = <>
        DoSubmitValidation = True
        Style = stNormal
        TabOrder = 15
        Checked = True
        FriendlyName = 'nonloyaltytx'
      end
      object other: TIWCheckBox
        Left = 781
        Top = 29
        Width = 82
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
        Caption = 'Other'
        Editable = True
        Font.Color = clNone
        Font.Size = 10
        Font.Style = []
        SubmitOnAsyncEvent = True
        ScriptEvents = <>
        DoSubmitValidation = True
        Style = stNormal
        TabOrder = 16
        Checked = False
        FriendlyName = 'nonloyaltytx'
      end
      object Redeem: TIWCheckBox
        Left = 700
        Top = 46
        Width = 97
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
        Caption = 'Redeem'
        Editable = True
        Font.Color = clNone
        Font.Size = 10
        Font.Style = []
        SubmitOnAsyncEvent = True
        ScriptEvents = <>
        DoSubmitValidation = True
        Style = stNormal
        TabOrder = 17
        Checked = True
        FriendlyName = 'nonloyaltytx'
      end
      object adjust: TIWCheckBox
        Left = 781
        Top = 10
        Width = 66
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
        Caption = 'Adjust'
        Editable = True
        Font.Color = clNone
        Font.Size = 10
        Font.Style = []
        SubmitOnAsyncEvent = True
        ScriptEvents = <>
        DoSubmitValidation = True
        Style = stNormal
        TabOrder = 18
        Checked = True
        FriendlyName = 'nonloyaltytx'
      end
      object IWLabel5: TIWLabel
        Left = 512
        Top = 8
        Width = 77
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
        FriendlyName = 'IWLabel5'
        Caption = 'Sydney time'
        RawText = False
      end
      object servicename: TIWComboBox
        Left = 87
        Top = 6
        Width = 99
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
        BGColor = clNone
        Font.Color = clNone
        Font.Size = 10
        Font.Style = []
        FocusColor = clNone
        AutoHideOnMenuActivation = False
        ItemsHaveValues = False
        NoSelectionText = 'All Stores'
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
        TabOrder = 19
        ItemIndex = 0
        Items.Strings = (
          'Prime'
          'Stickystreet'
          'Medibank')
        Sorted = False
        FriendlyName = 'StoreCombo'
      end
    end
  end
  inline userfooter1: Tuserfooter
    Left = 0
    Top = 660
    Width = 1015
    Height = 28
    HorzScrollBar.Visible = False
    Align = alBottom
    TabOrder = 2
    ExplicitTop = 660
    ExplicitWidth = 1015
    inherited IWRegion1: TIWRegion
      Width = 1015
      TabOrder = 9
      ExplicitWidth = 1015
      DesignSize = (
        1015
        28)
      inherited IWRectangle1: TIWRectangle
        Left = 599
        Width = 417
        ExplicitLeft = 599
        ExplicitWidth = 417
      end
      inherited IWRectangle4: TIWRectangle
        Width = 1631
        ExplicitWidth = 1631
      end
      inherited IWRectangle6: TIWRectangle
        Width = 557
        ExplicitWidth = 557
      end
      inherited Cancel: TIWButton
        Left = 929
        Caption = 'Menu'
        OnClick = userfooter1CancelClick
        ExplicitLeft = 929
      end
      inherited Extra1: TIWButton
        Left = 841
        ExplicitLeft = 841
      end
      inherited Extra2: TIWButton
        Left = 753
        ExplicitLeft = 753
      end
      inherited fiwSiLink1: TIWSiLink
        Left = 686
        ExplicitLeft = 686
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
      'StatusText'
      'Confirmation'
      'HotKey'
      'Summary')
    Left = 920
    Top = 192
    TranslationData = {
      73007400430061007000740069006F006E0073005F0055006E00690063006F00
      640065000D000A00490057004C006100620065006C0031000100530074006100
      720074002000440061007400650001000D000A00490057004C00610062006500
      6C003200010045006E0064002000440061007400650001000D000A0056006F00
      750063006800650072004C006100620065006C00010056006900650077002000
      4A006F00750072006E0061006C0001000D000A0044006900730070006C006100
      7900420074006E00010055007000640061007400650001000D000A0050007200
      65007600420074006E0001003C003C002000500072006500760001000D000A00
      4E00650078007400420074006E0001004E0065007800740020003E003E000100
      0D000A005400720061006E004700720069006400010001000D000A0049005700
      4C006100620065006C0033000100530074006100720074002000540069006D00
      650001000D000A00490057004C006100620065006C003400010045006E006400
      2000540069006D00650001000D000A0073007400480069006E00740073005F00
      55006E00690063006F00640065000D000A007300740044006900730070006C00
      610079004C006100620065006C0073005F0055006E00690063006F0064006500
      0D000A007300740046006F006E00740073005F0055006E00690063006F006400
      65000D000A00730074004D0075006C00740069004C0069006E00650073005F00
      55006E00690063006F00640065000D000A006200610063006B00720065006700
      69006F006E002E00450078007400720061005400610067005000610072006100
      6D007300010001000D000A004900570052006500670069006F006E0032002E00
      4500780074007200610054006100670050006100720061006D00730001000100
      0D000A0056006F00750063006800650072004C006100620065006C002E004500
      780074007200610054006100670050006100720061006D007300010001000D00
      0A00490057004C006100620065006C0031002E00450078007400720061005400
      6100670050006100720061006D007300010001000D000A005300740061007200
      740045006400690074002E004500780074007200610054006100670050006100
      720061006D007300010001000D000A00490057004C006100620065006C003200
      2E004500780074007200610054006100670050006100720061006D0073000100
      01000D000A0045006E00640045006400690074002E0045007800740072006100
      54006100670050006100720061006D007300010001000D000A00490057005300
      69004C0069006E006B0031002E00450078007400720061005400610067005000
      6100720061006D007300010001000D000A0044006900730070006C0061007900
      420074006E002E00450078007400720061005400610067005000610072006100
      6D007300010001000D000A005000720065007600420074006E002E0045007800
      74007200610054006100670050006100720061006D007300010001000D000A00
      4E00650078007400420074006E002E0045007800740072006100540061006700
      50006100720061006D007300010001000D000A00490057005200650063007400
      61006E0067006C00650031002E00450078007400720061005400610067005000
      6100720061006D007300010001000D000A004900570052006500630074006100
      6E0067006C00650032002E004500780074007200610054006100670050006100
      720061006D007300010001000D000A005400720061006E004700720069006400
      2E004500780074007200610054006100670050006100720061006D0073000100
      01000D000A00530074006F007200650043006F006D0062006F002E0045007800
      74007200610054006100670050006100720061006D007300010001000D000A00
      530074006F007200650043006F006D0062006F002E004900740065006D007300
      010001000D000A00490057004C006100620065006C0033002E00450078007400
      7200610054006100670050006100720061006D007300010001000D000A005300
      7400610072007400540069006D0065002E004500780074007200610054006100
      670050006100720061006D007300010001000D000A00490057004C0061006200
      65006C0034002E00450078007400720061005400610067005000610072006100
      6D007300010001000D000A0045006E006400540069006D0065002E0045007800
      74007200610054006100670050006100720061006D007300010001000D000A00
      7300740053007400720069006E00670073005F0055006E00690063006F006400
      65000D000A0047007200690064002E00540069006D0065000100540069006D00
      650001000D000A0047007200690064002E0043007500730074006F006D006500
      7200010043007500730074006F006D006500720001000D000A00470072006900
      64002E0044006500730063000100440065007300630001000D000A0047007200
      690064002E00510074007900010051007400790001000D000A00470072006900
      64002E0041006D006F0075006E007400010041006D006F0075006E0074000100
      0D000A0047007200690064002E00500072006900630065000100500072006900
      6300650001000D000A0047007200690064002E00530074006F0063006B000100
      530074006F0063006B0001000D000A0047007200690064002E00500072006900
      6E0074006500720001005000720069006E0074006500720001000D000A004700
      7200690064002E00530074006F00720065000100530074006F00720065000100
      0D000A0041006C006C002000530074006F00720065007300010041006C006C00
      2000530074006F0072006500730001000D000A00450078007000740043006F00
      6D0062006F002E0030000100530069006D0070006C00650001000D000A004500
      78007000740043006F006D0062006F002E003100010048006500610064006500
      72002F004900740065006D00730001000D000A00450078007000740043006F00
      6D0062006F002E00320001005300700072006500610064007300680065006500
      740001000D000A00730074004F00740068006500720053007400720069006E00
      670073005F0055006E00690063006F00640065000D000A00490057004C006100
      620065006C0031002E0046007200690065006E0064006C0079004E0061006D00
      65000100490057004C006100620065006C00310001000D000A00490057004C00
      6100620065006C0032002E0046007200690065006E0064006C0079004E006100
      6D0065000100490057004C006100620065006C00320001000D000A0053007400
      61007200740045006400690074002E0046007200690065006E0064006C007900
      4E0061006D006500010053007400610072007400450064006900740001000D00
      0A005300740061007200740045006400690074002E0054006500780074000100
      53007400610072007400450064006900740001000D000A0045006E0064004500
      6400690074002E0046007200690065006E0064006C0079004E0061006D006500
      010045006E006400450064006900740001000D000A0045006E00640045006400
      690074002E005400650078007400010045006E00640045006400690074000100
      0D000A0056006F00750063006800650072004C006100620065006C002E004600
      7200690065006E0064006C0079004E0061006D006500010056006F0075006300
      6800650072004C006100620065006C0001000D000A0044006900730070006C00
      61007900420074006E002E0046007200690065006E0064006C0079004E006100
      6D006500010044006900730070006C0061007900420074006E0001000D000A00
      5000720065007600420074006E002E0046007200690065006E0064006C007900
      4E0061006D00650001004900570042007500740074006F006E00310001000D00
      0A004E00650078007400420074006E002E0046007200690065006E0064006C00
      79004E0061006D00650001004900570042007500740074006F006E0032000100
      0D000A0049005700530069004C0069006E006B0031002E004600720069006500
      6E0064006C0079004E0061006D006500010049005700530069004C0069006E00
      6B00310001000D000A0049005700530069004C0069006E006B0031002E004C00
      61006E006700460069006C00650001006A006E006C002E00730069006C000100
      0D000A00540066006F0072006D00670077002E00480065006C0070004B006500
      790077006F0072006400010001000D000A005300740061007400730046007200
      61006D0065005400690074006C00650031002E00480065006C0070004B006500
      790077006F0072006400010001000D000A006200610063006B00720065006700
      69006F006E002E00480065006C0070004B006500790077006F00720064000100
      01000D000A004900570052006500670069006F006E0032002E00480065006C00
      70004B006500790077006F0072006400010001000D000A0056006F0075006300
      6800650072004C006100620065006C002E00480065006C0070004B0065007900
      77006F0072006400010001000D000A00490057004C006100620065006C003100
      2E00480065006C0070004B006500790077006F0072006400010001000D000A00
      5300740061007200740045006400690074002E00480065006C0070004B006500
      790077006F0072006400010001000D000A00490057004C006100620065006C00
      32002E00480065006C0070004B006500790077006F0072006400010001000D00
      0A0045006E00640045006400690074002E00480065006C0070004B0065007900
      77006F0072006400010001000D000A0049005700530069004C0069006E006B00
      31002E00480065006C0070004B006500790077006F0072006400010001000D00
      0A0044006900730070006C0061007900420074006E002E00480065006C007000
      4B006500790077006F0072006400010001000D000A0050007200650076004200
      74006E002E00480065006C0070004B006500790077006F007200640001000100
      0D000A004E00650078007400420074006E002E00480065006C0070004B006500
      790077006F0072006400010001000D000A004900570052006500630074006100
      6E0067006C00650031002E0046007200690065006E0064006C0079004E006100
      6D006500010049005700520065006300740061006E0067006C00650031000100
      0D000A0049005700520065006300740061006E0067006C00650031002E004800
      65006C0070004B006500790077006F0072006400010001000D000A0049005700
      520065006300740061006E0067006C00650031002E0054006500780074000100
      01000D000A0049005700520065006300740061006E0067006C00650032002E00
      46007200690065006E0064006C0079004E0061006D0065000100490057005200
      65006300740061006E0067006C006500310001000D000A004900570052006500
      6300740061006E0067006C00650032002E00480065006C0070004B0065007900
      77006F0072006400010001000D000A0049005700520065006300740061006E00
      67006C00650032002E005400650078007400010001000D000A00540072006100
      6E0047007200690064002E0046007200690065006E0064006C0079004E006100
      6D00650001005400720061006E00470072006900640001000D000A0054007200
      61006E0047007200690064002E00480065006C0070004B006500790077006F00
      72006400010001000D000A00750073006500720066006F006F00740065007200
      31002E00480065006C0070004B006500790077006F0072006400010001000D00
      0A00530074006F007200650043006F006D0062006F002E004600720069006500
      6E0064006C0079004E0061006D0065000100530074006F007200650043006F00
      6D0062006F0001000D000A00530074006F007200650043006F006D0062006F00
      2E00480065006C0070004B006500790077006F0072006400010001000D000A00
      530074006F007200650043006F006D0062006F002E004E006F00530065006C00
      65006300740069006F006E005400650078007400010041006C006C0020005300
      74006F0072006500730001000D000A00490057004C006100620065006C003300
      2E0046007200690065006E0064006C0079004E0061006D006500010049005700
      4C006100620065006C00310001000D000A00490057004C006100620065006C00
      33002E00480065006C0070004B006500790077006F0072006400010001000D00
      0A0053007400610072007400540069006D0065002E0046007200690065006E00
      64006C0079004E0061006D006500010053007400610072007400450064006900
      740001000D000A0053007400610072007400540069006D0065002E0048006500
      6C0070004B006500790077006F0072006400010001000D000A00530074006100
      72007400540069006D0065002E00540065007800740001005300740061007200
      7400450064006900740001000D000A00490057004C006100620065006C003400
      2E0046007200690065006E0064006C0079004E0061006D006500010049005700
      4C006100620065006C00320001000D000A00490057004C006100620065006C00
      34002E00480065006C0070004B006500790077006F0072006400010001000D00
      0A0045006E006400540069006D0065002E0046007200690065006E0064006C00
      79004E0061006D006500010045006E006400450064006900740001000D000A00
      45006E006400540069006D0065002E00480065006C0070004B00650079007700
      6F0072006400010001000D000A0045006E006400540069006D0065002E005400
      650078007400010045006E006400450064006900740001000D000A0073007400
      43006F006C006C0065006300740069006F006E0073005F0055006E0069006300
      6F00640065000D000A0073007400430068006100720053006500740073005F00
      55006E00690063006F00640065000D000A00}
  end
end
