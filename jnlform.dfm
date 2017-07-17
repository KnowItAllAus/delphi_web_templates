object formJnl: TformJnl
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
      TabOrder = 12
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
        Width = 2557
        ZIndex = 4
        ExplicitWidth = 2557
      end
      inherited IWRectangle2: TIWRectangle
        Top = 88
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
      inherited PromoReg: TIWRegion
        inherited ActivityLink: TIWLink
          OnClick = StatsFrameTitle1ActivityLinkClick
        end
      end
    end
  end
  object IWRegion1: TIWRegion
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
      Top = 8
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
        Width = 145
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
        Caption = 'View Journal'
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
        TabOrder = 2
        PasswordPrompt = False
        Text = 'StartEdit'
      end
      object IWLabel2: TIWLabel
        Left = 352
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
        Left = 432
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
        TabOrder = 3
        PasswordPrompt = False
        Text = 'EndEdit'
      end
      object IWLink1: TIWLink
        Left = 632
        Top = 40
        Width = 49
        Height = 17
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
        Alignment = taLeftJustify
        Color = clNone
        Font.Color = clNone
        Font.Size = 10
        Font.Style = [fsUnderline]
        ScriptEvents = <>
        DoSubmitValidation = False
        FriendlyName = 'IWLink1'
        OnClick = ExportClick
        TabOrder = 0
        RawText = False
        Caption = 'Export'
      end
      object IWSiLink1: TIWSiLink
        Left = 696
        Top = 8
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
        TabOrder = 10
        RawText = False
        SiLangLinked = siLangLinked1
        LangFile = 'jnl.sil'
        LangControl = RcDataMod.LangEditControl1
      end
      object DisplayBtn: TIWButton
        Left = 694
        Top = 35
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
        Caption = 'Update'
        DoSubmitValidation = True
        Color = clWebSILVER
        Font.Color = clWebBLUE
        Font.Size = 10
        Font.Style = []
        FriendlyName = 'DisplayBtn'
        ScriptEvents = <>
        TabOrder = 6
        OnClick = DisplayBtnClick
      end
      object PrevBtn: TIWButton
        Left = 789
        Top = 496
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
        TabOrder = 8
        OnClick = PrevLinkClick
      end
      object NextBtn: TIWButton
        Left = 859
        Top = 496
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
        TabOrder = 9
        OnClick = NextLinkClick
      end
      object DelJnlBtn: TIWButton
        Left = 18
        Top = 498
        Width = 75
        Height = 25
        Cursor = crAuto
        Visible = False
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
        Caption = 'Delete All'
        Confirmation = 'Delete Entire Journal?'
        DoSubmitValidation = True
        Color = clWebSILVER
        Font.Color = clWebBLUE
        Font.Size = 10
        Font.Style = []
        FriendlyName = 'DelJnlBtn'
        ScriptEvents = <>
        TabOrder = 7
        OnClick = DelJnlBtnClick
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
        Left = 17
        Top = 65
        Width = 916
        Height = 427
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
        ColumnCount = 8
        RowCount = 1
        ShowEmptyCells = True
        ShowInvisibleRows = True
        ScrollToCurrentRow = False
      end
      object StoreCombo: TIWComboBox
        Left = 16
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
        TabOrder = 1
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
        TabOrder = 4
        PasswordPrompt = False
        Text = 'StartEdit'
      end
      object IWLabel4: TIWLabel
        Left = 352
        Top = 40
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
        Left = 432
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
        TabOrder = 5
        PasswordPrompt = False
        Text = 'EndEdit'
      end
      object ExptCombo: TIWComboBox
        Left = 520
        Top = 38
        Width = 105
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
        NoSelectionText = '-- No Selection --'
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
        TabOrder = 13
        ItemIndex = 0
        Items.Strings = (
          'Simple'
          'Header/Item'
          'Spreadsheet')
        Sorted = False
        FriendlyName = 'ExptCombo'
      end
      object utccombo: TIWComboBox
        Left = 519
        Top = 6
        Width = 101
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
        NoSelectionText = '-- No Selection --'
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
        TabOrder = 14
        ItemIndex = 12
        Items.Strings = (
          'UTC-12'
          'UTC-11'
          'UTC-10'
          'UTC-9'
          'UTC-8'
          'UTC-7'
          'UTC-6'
          'UTC-5'
          'UTC-4'
          'UTC-3'
          'UTC-2'
          'UTC-1'
          'UTC'
          'UTC+1'
          'UTC+2'
          'UTC+3'
          'UTC+4'
          'UTC+5'
          'UTC+6'
          'UTC+7'
          'UTC+8'
          'UTC+9'
          'UTC+10'
          'UTC+11'
          'UTC+12'
          'UTC+13')
        Sorted = False
        FriendlyName = 'utccombo'
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
      TabOrder = 11
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
    Left = 688
    Top = 128
    TranslationData = {
      73007400430061007000740069006F006E0073005F0055006E00690063006F00
      640065000D000A00490057004C006100620065006C0031000100530074006100
      720074002000440061007400650001000D000A00490057004C00610062006500
      6C003200010045006E0064002000440061007400650001000D000A0056006F00
      750063006800650072004C006100620065006C00010056006900650077002000
      4A006F00750072006E0061006C0001000D000A0044006900730070006C006100
      7900420074006E00010055007000640061007400650001000D000A0044006500
      6C004A006E006C00420074006E000100440065006C0065007400650020004100
      6C006C0001000D000A005000720065007600420074006E0001003C003C002000
      500072006500760001000D000A004E00650078007400420074006E0001004E00
      65007800740020003E003E0001000D000A00490057004C0069006E006B003100
      01004500780070006F007200740001000D000A005400720061006E0047007200
      69006400010001000D000A00490057004C006100620065006C00330001005300
      74006100720074002000540069006D00650001000D000A00490057004C006100
      620065006C003400010045006E0064002000540069006D00650001000D000A00
      73007400480069006E00740073005F0055006E00690063006F00640065000D00
      0A007300740044006900730070006C00610079004C006100620065006C007300
      5F0055006E00690063006F00640065000D000A007300740046006F006E007400
      73005F0055006E00690063006F00640065000D000A00730074004D0075006C00
      740069004C0069006E00650073005F0055006E00690063006F00640065000D00
      0A004900570052006500670069006F006E0031002E0045007800740072006100
      54006100670050006100720061006D007300010001000D000A00490057005200
      6500670069006F006E0032002E00450078007400720061005400610067005000
      6100720061006D007300010001000D000A0056006F0075006300680065007200
      4C006100620065006C002E004500780074007200610054006100670050006100
      720061006D007300010001000D000A00490057004C006100620065006C003100
      2E004500780074007200610054006100670050006100720061006D0073000100
      01000D000A005300740061007200740045006400690074002E00450078007400
      7200610054006100670050006100720061006D007300010001000D000A004900
      57004C006100620065006C0032002E0045007800740072006100540061006700
      50006100720061006D007300010001000D000A0045006E006400450064006900
      74002E004500780074007200610054006100670050006100720061006D007300
      010001000D000A00490057004C0069006E006B0031002E004500780074007200
      610054006100670050006100720061006D007300010001000D000A0049005700
      530069004C0069006E006B0031002E0045007800740072006100540061006700
      50006100720061006D007300010001000D000A0044006900730070006C006100
      7900420074006E002E0045007800740072006100540061006700500061007200
      61006D007300010001000D000A005000720065007600420074006E002E004500
      780074007200610054006100670050006100720061006D007300010001000D00
      0A004E00650078007400420074006E002E004500780074007200610054006100
      670050006100720061006D007300010001000D000A00440065006C004A006E00
      6C00420074006E002E0045007800740072006100540061006700500061007200
      61006D007300010001000D000A0049005700520065006300740061006E006700
      6C00650031002E00450078007400720061005400610067005000610072006100
      6D007300010001000D000A0049005700520065006300740061006E0067006C00
      650032002E004500780074007200610054006100670050006100720061006D00
      7300010001000D000A005400720061006E0047007200690064002E0045007800
      74007200610054006100670050006100720061006D007300010001000D000A00
      530074006F007200650043006F006D0062006F002E0045007800740072006100
      54006100670050006100720061006D007300010001000D000A00530074006F00
      7200650043006F006D0062006F002E004900740065006D007300010001000D00
      0A00490057004C006100620065006C0033002E00450078007400720061005400
      6100670050006100720061006D007300010001000D000A005300740061007200
      7400540069006D0065002E004500780074007200610054006100670050006100
      720061006D007300010001000D000A00490057004C006100620065006C003400
      2E004500780074007200610054006100670050006100720061006D0073000100
      01000D000A0045006E006400540069006D0065002E0045007800740072006100
      54006100670050006100720061006D007300010001000D000A00450078007000
      740043006F006D0062006F002E00450078007400720061005400610067005000
      6100720061006D007300010001000D000A00450078007000740043006F006D00
      62006F002E004900740065006D0073000100530069006D0070006C0065002C00
      4800650061006400650072002F004900740065006D002C005300700072006500
      610064007300680065006500740001000D000A00730074005300740072006900
      6E00670073005F0055006E00690063006F00640065000D000A00470072006900
      64002E00540069006D0065000100540069006D00650001000D000A0047007200
      690064002E0043007500730074006F006D006500720001004300750073007400
      6F006D006500720001000D000A0047007200690064002E004400650073006300
      0100440065007300630001000D000A0047007200690064002E00510074007900
      010051007400790001000D000A0047007200690064002E0041006D006F007500
      6E007400010041006D006F0075006E00740001000D000A004700720069006400
      2E005000720069006300650001005000720069006300650001000D000A004700
      7200690064002E00530074006F0063006B000100530074006F0063006B000100
      0D000A0047007200690064002E005000720069006E0074006500720001005000
      720069006E0074006500720001000D000A0047007200690064002E0053007400
      6F00720065000100530074006F007200650001000D000A0041006C006C002000
      530074006F00720065007300010041006C006C002000530074006F0072006500
      730001000D000A00450078007000740043006F006D0062006F002E0030000100
      530069006D0070006C00650001000D000A00450078007000740043006F006D00
      62006F002E00310001004800650061006400650072002F004900740065006D00
      730001000D000A00450078007000740043006F006D0062006F002E0032000100
      5300700072006500610064007300680065006500740001000D000A0073007400
      4F00740068006500720053007400720069006E00670073005F0055006E006900
      63006F00640065000D000A00490057004C006100620065006C0031002E004600
      7200690065006E0064006C0079004E0061006D0065000100490057004C006100
      620065006C00310001000D000A00490057004C006100620065006C0032002E00
      46007200690065006E0064006C0079004E0061006D0065000100490057004C00
      6100620065006C00320001000D000A0053007400610072007400450064006900
      74002E0046007200690065006E0064006C0079004E0061006D00650001005300
      7400610072007400450064006900740001000D000A0053007400610072007400
      45006400690074002E0054006500780074000100530074006100720074004500
      64006900740001000D000A0045006E00640045006400690074002E0046007200
      690065006E0064006C0079004E0061006D006500010045006E00640045006400
      6900740001000D000A0045006E00640045006400690074002E00540065007800
      7400010045006E006400450064006900740001000D000A0056006F0075006300
      6800650072004C006100620065006C002E0046007200690065006E0064006C00
      79004E0061006D006500010056006F00750063006800650072004C0061006200
      65006C0001000D000A0044006900730070006C0061007900420074006E002E00
      46007200690065006E0064006C0079004E0061006D0065000100440069007300
      70006C0061007900420074006E0001000D000A00440065006C004A006E006C00
      420074006E002E0046007200690065006E0064006C0079004E0061006D006500
      0100440065006C004A006E006C00420074006E0001000D000A00500072006500
      7600420074006E002E0046007200690065006E0064006C0079004E0061006D00
      650001004900570042007500740074006F006E00310001000D000A004E006500
      78007400420074006E002E0046007200690065006E0064006C0079004E006100
      6D00650001004900570042007500740074006F006E00320001000D000A004900
      57004C0069006E006B0031002E0046007200690065006E0064006C0079004E00
      61006D0065000100490057004C0069006E006B00310001000D000A0049005700
      530069004C0069006E006B0031002E0046007200690065006E0064006C007900
      4E0061006D006500010049005700530069004C0069006E006B00310001000D00
      0A0049005700530069004C0069006E006B0031002E004C0061006E0067004600
      69006C00650001006A006E006C002E00730069006C0001000D000A0054006600
      6F0072006D004A006E006C002E00480065006C0070004B006500790077006F00
      72006400010001000D000A00530074006100740073004600720061006D006500
      5400690074006C00650031002E00480065006C0070004B006500790077006F00
      72006400010001000D000A004900570052006500670069006F006E0031002E00
      480065006C0070004B006500790077006F0072006400010001000D000A004900
      570052006500670069006F006E0032002E00480065006C0070004B0065007900
      77006F0072006400010001000D000A0056006F00750063006800650072004C00
      6100620065006C002E00480065006C0070004B006500790077006F0072006400
      010001000D000A00490057004C006100620065006C0031002E00480065006C00
      70004B006500790077006F0072006400010001000D000A005300740061007200
      740045006400690074002E00480065006C0070004B006500790077006F007200
      6400010001000D000A00490057004C006100620065006C0032002E0048006500
      6C0070004B006500790077006F0072006400010001000D000A0045006E006400
      45006400690074002E00480065006C0070004B006500790077006F0072006400
      010001000D000A00490057004C0069006E006B0031002E00480065006C007000
      4B006500790077006F0072006400010001000D000A0049005700530069004C00
      69006E006B0031002E00480065006C0070004B006500790077006F0072006400
      010001000D000A0044006900730070006C0061007900420074006E002E004800
      65006C0070004B006500790077006F0072006400010001000D000A0050007200
      65007600420074006E002E00480065006C0070004B006500790077006F007200
      6400010001000D000A004E00650078007400420074006E002E00480065006C00
      70004B006500790077006F0072006400010001000D000A00440065006C004A00
      6E006C00420074006E002E00480065006C0070004B006500790077006F007200
      6400010001000D000A0049005700520065006300740061006E0067006C006500
      31002E0046007200690065006E0064006C0079004E0061006D00650001004900
      5700520065006300740061006E0067006C006500310001000D000A0049005700
      520065006300740061006E0067006C00650031002E00480065006C0070004B00
      6500790077006F0072006400010001000D000A00490057005200650063007400
      61006E0067006C00650031002E005400650078007400010001000D000A004900
      5700520065006300740061006E0067006C00650032002E004600720069006500
      6E0064006C0079004E0061006D00650001004900570052006500630074006100
      6E0067006C006500310001000D000A0049005700520065006300740061006E00
      67006C00650032002E00480065006C0070004B006500790077006F0072006400
      010001000D000A0049005700520065006300740061006E0067006C0065003200
      2E005400650078007400010001000D000A005400720061006E00470072006900
      64002E0046007200690065006E0064006C0079004E0061006D00650001005400
      720061006E00470072006900640001000D000A005400720061006E0047007200
      690064002E00480065006C0070004B006500790077006F007200640001000100
      0D000A00750073006500720066006F006F0074006500720031002E0048006500
      6C0070004B006500790077006F0072006400010001000D000A00530074006F00
      7200650043006F006D0062006F002E0046007200690065006E0064006C007900
      4E0061006D0065000100530074006F007200650043006F006D0062006F000100
      0D000A00530074006F007200650043006F006D0062006F002E00480065006C00
      70004B006500790077006F0072006400010001000D000A00530074006F007200
      650043006F006D0062006F002E004E006F00530065006C006500630074006900
      6F006E005400650078007400010041006C006C002000530074006F0072006500
      730001000D000A00490057004C006100620065006C0033002E00460072006900
      65006E0064006C0079004E0061006D0065000100490057004C00610062006500
      6C00310001000D000A00490057004C006100620065006C0033002E0048006500
      6C0070004B006500790077006F0072006400010001000D000A00530074006100
      72007400540069006D0065002E0046007200690065006E0064006C0079004E00
      61006D006500010053007400610072007400450064006900740001000D000A00
      53007400610072007400540069006D0065002E00480065006C0070004B006500
      790077006F0072006400010001000D000A005300740061007200740054006900
      6D0065002E005400650078007400010053007400610072007400450064006900
      740001000D000A00490057004C006100620065006C0034002E00460072006900
      65006E0064006C0079004E0061006D0065000100490057004C00610062006500
      6C00320001000D000A00490057004C006100620065006C0034002E0048006500
      6C0070004B006500790077006F0072006400010001000D000A0045006E006400
      540069006D0065002E0046007200690065006E0064006C0079004E0061006D00
      6500010045006E006400450064006900740001000D000A0045006E0064005400
      69006D0065002E00480065006C0070004B006500790077006F00720064000100
      01000D000A0045006E006400540069006D0065002E0054006500780074000100
      45006E006400450064006900740001000D000A00450078007000740043006F00
      6D0062006F002E0046007200690065006E0064006C0079004E0061006D006500
      0100450078007000740043006F006D0062006F0001000D000A00450078007000
      740043006F006D0062006F002E00480065006C0070004B006500790077006F00
      72006400010001000D000A00450078007000740043006F006D0062006F002E00
      4E006F00530065006C0065006300740069006F006E0054006500780074000100
      2D002D0020004E006F002000530065006C0065006300740069006F006E002000
      2D002D0001000D000A007300740043006F006C006C0065006300740069006F00
      6E0073005F0055006E00690063006F00640065000D000A007300740043006800
      6100720053006500740073005F0055006E00690063006F00640065000D000A00}
  end
end
