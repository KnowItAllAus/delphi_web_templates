object formStore: TformStore
  Left = 0
  Top = 0
  Width = 849
  Height = 744
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
  OnDefaultAction = IWAppFormDefaultAction
  XPTheme = True
  DesignLeft = 8
  DesignTop = 8
  object IWRegion1: TIWRegion
    Left = 0
    Top = 114
    Width = 849
    Height = 601
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
      849
      601)
    object IWRegion2: TIWRegion
      Left = 9
      Top = 21
      Width = 824
      Height = 566
      Cursor = crAuto
      RenderInvisibleControls = False
      Anchors = [akLeft, akTop, akRight, akBottom]
      BorderOptions.NumericWidth = 0
      BorderOptions.BorderWidth = cbwNumeric
      BorderOptions.Style = cbsSolid
      BorderOptions.Color = clNone
      Color = 14202786
      ParentShowHint = False
      ShowHint = True
      ZIndex = 1000
      Splitter = False
      DesignSize = (
        824
        566)
      object StoreLabel: TIWLabel
        Left = 8
        Top = 8
        Width = 89
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
        Caption = 'Store'
        RawText = False
      end
      object IWLabel1: TIWLabel
        Left = 22
        Top = 31
        Width = 118
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
        FriendlyName = 'IWLabel1'
        Caption = 'Name'
        RawText = False
      end
      object NewNameEdit: TIWEdit
        Left = 136
        Top = 27
        Width = 257
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
        Alignment = taLeftJustify
        BGColor = clNone
        FocusColor = clNone
        DoSubmitValidation = True
        Editable = True
        NonEditableAsLabel = True
        Font.Color = clNone
        Font.Size = 10
        Font.Style = []
        FriendlyName = 'NewNameEdit'
        MaxLength = 0
        ReadOnly = False
        Required = False
        ScriptEvents = <>
        SubmitOnAsyncEvent = True
        TabOrder = 0
        PasswordPrompt = False
        Text = 'NewNameEdit'
      end
      object NewIDEdit: TIWEdit
        Left = 136
        Top = 55
        Width = 73
        Height = 20
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
        BGColor = clBtnFace
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
        Text = 'NewIDEdit'
      end
      object IWLabel2: TIWLabel
        Left = 22
        Top = 56
        Width = 118
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
        FriendlyName = 'IWLabel2'
        Caption = 'ID'
        RawText = False
      end
      object IWLabel4: TIWLabel
        Left = 22
        Top = 82
        Width = 113
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
        FriendlyName = 'IWLabel4'
        Caption = 'POS Printer'
        RawText = False
      end
      object PrinterCombo: TIWComboBox
        Left = 136
        Top = 81
        Width = 257
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
        TabOrder = 3
        ItemIndex = -1
        Items.Strings = (
          'ESCPOS'
          'EscposNoPoll')
        Sorted = False
        FriendlyName = 'PrinterCombo'
      end
      object PromoCombo: TIWComboBox
        Left = 136
        Top = 109
        Width = 257
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
        RequireSelection = False
        ScriptEvents = <>
        UseSize = False
        Style = stNormal
        ButtonColor = clBtnFace
        DoSubmitValidation = True
        Editable = True
        NonEditableAsLabel = True
        SubmitOnAsyncEvent = True
        TabOrder = 4
        ItemIndex = -1
        Items.Strings = (
          'ESCPOS'
          'EscposNoPoll')
        Sorted = False
        FriendlyName = 'PrinterCombo'
      end
      object IWLabel7: TIWLabel
        Left = 22
        Top = 110
        Width = 113
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
        FriendlyName = 'IWLabel4'
        Caption = 'Promo Printer'
        RawText = False
      end
      object IWLabel9: TIWLabel
        Left = 22
        Top = 191
        Width = 104
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
        FriendlyName = 'IWLabel9'
        Caption = 'POS'
        RawText = False
      end
      object POSCombo: TIWComboBox
        Left = 136
        Top = 190
        Width = 209
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
        TabOrder = 7
        ItemIndex = -1
        Items.Strings = (
          'ESCPOS'
          'EscposNoPoll')
        Sorted = False
        FriendlyName = 'POSCombo'
      end
      object UTCEdit: TIWEdit
        Left = 136
        Top = 214
        Width = 73
        Height = 20
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
        FriendlyName = 'NewIDEdit'
        MaxLength = 0
        ReadOnly = False
        Required = False
        ScriptEvents = <>
        SubmitOnAsyncEvent = True
        TabOrder = 8
        PasswordPrompt = False
        Text = 'UTCEdit'
      end
      object IWLabel5: TIWLabel
        Left = 215
        Top = 56
        Width = 56
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
        FriendlyName = 'IWLabel5'
        Caption = 'Enabled'
        RawText = False
      end
      object EnabledBox: TIWCheckBox
        Left = 274
        Top = 57
        Width = 25
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
        Editable = True
        Font.Color = clNone
        Font.Size = 10
        Font.Style = []
        SubmitOnAsyncEvent = True
        ScriptEvents = <>
        DoSubmitValidation = True
        Style = stNormal
        TabOrder = 2
        Checked = True
        FriendlyName = 'EnabledBox'
      end
      object IWLabel11: TIWLabel
        Left = 216
        Top = 214
        Width = 193
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
        Font.Color = clNone
        Font.Size = 8
        Font.Style = []
        NoWrap = False
        ConvertSpaces = False
        HasTabOrder = False
        AutoSize = False
        FriendlyName = 'IWLabel11'
        Caption = 'Minutes from UTC.'
        RawText = False
      end
      object IWLabel10: TIWLabel
        Left = 22
        Top = 215
        Width = 118
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
        Caption = 'UTC +/-'
        RawText = False
      end
      object zonecombo: TIWComboBox
        Left = 136
        Top = 241
        Width = 209
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
        RequireSelection = False
        ScriptEvents = <>
        UseSize = True
        Style = stNormal
        ButtonColor = clBtnFace
        DoSubmitValidation = True
        Editable = True
        NonEditableAsLabel = True
        SubmitOnAsyncEvent = True
        TabOrder = 9
        ItemIndex = -1
        Sorted = False
        FriendlyName = 'zonecombo'
      end
      object IWLabel8: TIWLabel
        Left = 22
        Top = 242
        Width = 105
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
        Caption = 'Timezone'
        RawText = False
      end
      object IWLabel12: TIWLabel
        Left = 22
        Top = 268
        Width = 105
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
        Caption = 'Language'
        RawText = False
      end
      object langcombo: TIWComboBox
        Left = 136
        Top = 267
        Width = 209
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
        RequireSelection = False
        ScriptEvents = <>
        UseSize = True
        Style = stNormal
        ButtonColor = clBtnFace
        DoSubmitValidation = True
        Editable = True
        NonEditableAsLabel = True
        SubmitOnAsyncEvent = True
        TabOrder = 10
        ItemIndex = -1
        Sorted = False
        FriendlyName = 'zonecombo'
      end
      object ConfigIdEdit: TIWEdit
        Left = 136
        Top = 368
        Width = 89
        Height = 20
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
        BGColor = clBtnFace
        FocusColor = clNone
        DoSubmitValidation = True
        Editable = True
        NonEditableAsLabel = True
        Font.Color = clNone
        Font.Size = 10
        Font.Style = []
        FriendlyName = 'NewNameEdit'
        MaxLength = 0
        ReadOnly = True
        Required = False
        ScriptEvents = <>
        SubmitOnAsyncEvent = True
        TabOrder = 11
        PasswordPrompt = False
        Text = 'ConfigIdEdit'
      end
      object IWLabel14: TIWLabel
        Left = 22
        Top = 369
        Width = 89
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
        FriendlyName = 'IWLabel1'
        Caption = 'Config ID'
        RawText = False
      end
      object IWLabel6: TIWLabel
        Left = 416
        Top = 392
        Width = 57
        Height = 16
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
        BGColor = clNone
        Font.Color = clNone
        Font.Size = 10
        Font.Style = [fsBold]
        NoWrap = False
        ConvertSpaces = False
        HasTabOrder = False
        FriendlyName = 'IWLabel6'
        Caption = 'Printers'
        RawText = False
      end
      object PrinterGrid: TIWGrid
        Left = 416
        Top = 414
        Width = 373
        Height = 148
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
        OnRenderCell = PrinterGridRenderCell
        UseFrame = True
        UseSize = True
        FriendlyName = 'PrinterGrid'
        ColumnCount = 10
        OnCellClick = PrinterGridCellClick
        RowCount = 1
        ShowEmptyCells = True
        ShowInvisibleRows = True
        ScrollToCurrentRow = False
      end
      object setupcombo: TIWComboBox
        Left = 136
        Top = 292
        Width = 161
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
        RequireSelection = False
        ScriptEvents = <>
        UseSize = True
        Style = stNormal
        ButtonColor = clBtnFace
        DoSubmitValidation = True
        Editable = True
        NonEditableAsLabel = True
        SubmitOnAsyncEvent = True
        TabOrder = 12
        ItemIndex = -1
        Sorted = False
        FriendlyName = 'zonecombo'
      end
      object IWLabel13: TIWLabel
        Left = 22
        Top = 293
        Width = 107
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
        Caption = 'Setup'
        RawText = False
      end
      object GrpGrid: TIWGrid
        Left = 416
        Top = 87
        Width = 373
        Height = 171
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
        OnRenderCell = PrinterGridRenderCell
        UseFrame = True
        UseSize = True
        FriendlyName = 'PrinterGrid'
        ColumnCount = 2
        OnCellClick = GrpGridCellClick
        RowCount = 1
        ShowEmptyCells = True
        ShowInvisibleRows = True
        ScrollToCurrentRow = False
        ExplicitWidth = 265
      end
      object GroupCombo: TIWComboBox
        Left = 416
        Top = 61
        Width = 373
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
        TabOrder = 18
        ItemIndex = -1
        Items.Strings = (
          'All')
        Sorted = False
        FriendlyName = 'RegionCombo'
        ExplicitWidth = 265
      end
      object IWLabel3: TIWLabel
        Left = 416
        Top = 40
        Width = 56
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
        FriendlyName = 'IWLabel5'
        Caption = 'Groups'
        RawText = False
      end
      object AddGrpBtn: TIWButton
        Left = 724
        Top = 32
        Width = 61
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
        Caption = 'Add'
        DoSubmitValidation = True
        Color = clBtnFace
        Font.Color = clWebBLUE
        Font.Size = 10
        Font.Style = []
        FriendlyName = 'IWButton2'
        ScriptEvents = <>
        TabOrder = 17
        OnClick = AddGrpBtnClick
        ExplicitLeft = 616
      end
      object IWSiLink1: TIWSiLink
        Left = 253
        Top = 4
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
        TabOrder = 19
        RawText = False
        SiLangLinked = siLangLinked1
        LangFile = 'store.sil'
        LangControl = RcDataMod.LangEditControl1
      end
      object IWRectangle1: TIWRectangle
        Left = 0
        Top = 3
        Width = 3
        Height = 563
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
        Width = 824
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
        ExplicitWidth = 716
      end
      object LogEdit: TIWEdit
        Left = 296
        Top = 368
        Width = 49
        Height = 20
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
        BGColor = clBtnFace
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
        TabOrder = 22
        PasswordPrompt = False
        Text = 'LogEdit'
      end
      object IWLabel15: TIWLabel
        Left = 248
        Top = 369
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
        FriendlyName = 'IWLabel2'
        Caption = 'Log'
        RawText = False
      end
      object IWLabel16: TIWLabel
        Left = 376
        Top = 369
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
        FriendlyName = 'IWLabel2'
        Caption = 'Mac'
        RawText = False
      end
      object MacEdit: TIWEdit
        Left = 416
        Top = 368
        Width = 129
        Height = 20
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
        BGColor = clBtnFace
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
        TabOrder = 23
        PasswordPrompt = False
        Text = 'MacEdit'
      end
      object CleanBtn: TIWButton
        Left = 699
        Top = 383
        Width = 86
        Height = 25
        Cursor = crAuto
        Visible = False
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
        Caption = 'Cleanup'
        DoSubmitValidation = True
        Color = clBtnFace
        Font.Color = clWebBLUE
        Font.Size = 10
        Font.Style = []
        FriendlyName = 'IWButton2'
        ScriptEvents = <>
        TabOrder = 16
        OnClick = CleanBtnClick
      end
      object IWLabel17: TIWLabel
        Left = 22
        Top = 319
        Width = 113
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
        FriendlyName = 'IWLabel1'
        Caption = 'Params'
        RawText = False
      end
      object ParamEdit: TIWEdit
        Left = 136
        Top = 315
        Width = 653
        Height = 23
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
        FocusColor = clNone
        DoSubmitValidation = True
        Editable = True
        NonEditableAsLabel = True
        Font.Color = clNone
        Font.Size = 10
        Font.Style = []
        FriendlyName = 'NewNameEdit'
        MaxLength = 0
        ReadOnly = False
        Required = False
        ScriptEvents = <>
        SubmitOnAsyncEvent = True
        TabOrder = 14
        PasswordPrompt = False
        ExplicitWidth = 545
      end
      object IWLabel18: TIWLabel
        Left = 22
        Top = 344
        Width = 113
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
        FriendlyName = 'IWLabel1'
        Caption = 'Printer Errata'
        RawText = False
      end
      object ErrataEdit: TIWEdit
        Left = 136
        Top = 340
        Width = 653
        Height = 23
        Cursor = crAuto
        Hint = '#n'#39'text'#39' format separated by colons. Use > to replace codes.'
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
        FocusColor = clNone
        DoSubmitValidation = True
        Editable = True
        NonEditableAsLabel = True
        Font.Color = clNone
        Font.Size = 10
        Font.Style = []
        FriendlyName = 'NewNameEdit'
        MaxLength = 0
        ReadOnly = False
        Required = False
        ScriptEvents = <>
        SubmitOnAsyncEvent = True
        TabOrder = 15
        PasswordPrompt = False
        ExplicitWidth = 545
      end
      object AuxPromoCombo: TIWComboBox
        Left = 156
        Top = 164
        Width = 248
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
        RequireSelection = False
        ScriptEvents = <>
        UseSize = False
        Style = stNormal
        ButtonColor = clBtnFace
        DoSubmitValidation = True
        Editable = True
        NonEditableAsLabel = True
        SubmitOnAsyncEvent = True
        TabOrder = 6
        ItemIndex = -1
        Items.Strings = (
          'ESCPOS'
          'EscposNoPoll')
        Sorted = False
        FriendlyName = 'PrinterCombo'
      end
      object AuxPrinterCombo: TIWComboBox
        Left = 156
        Top = 136
        Width = 248
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
        RequireSelection = False
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
        Items.Strings = (
          'ESCPOS'
          'EscposNoPoll')
        Sorted = False
        FriendlyName = 'PrinterCombo'
      end
      object IWLabel19: TIWLabel
        Left = 22
        Top = 137
        Width = 131
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
        FriendlyName = 'IWLabel4'
        Caption = 'Aux POS Printer'
        RawText = False
      end
      object auxpromolbl: TIWLabel
        Left = 22
        Top = 165
        Width = 131
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
        FriendlyName = 'IWLabel4'
        Caption = 'Aux Promo Printer'
        RawText = False
      end
      object IWLabel20: TIWLabel
        Left = 315
        Top = 56
        Width = 41
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
        FriendlyName = 'IWLabel5'
        Caption = 'Test'
        RawText = False
      end
      object TestBox: TIWCheckBox
        Left = 354
        Top = 57
        Width = 25
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
        Editable = True
        Font.Color = clNone
        Font.Size = 10
        Font.Style = []
        SubmitOnAsyncEvent = True
        ScriptEvents = <>
        DoSubmitValidation = True
        Style = stNormal
        TabOrder = 24
        Checked = False
        FriendlyName = 'EnabledBox'
      end
      object AutoBox: TIWCheckBox
        Left = 416
        Top = 19
        Width = 185
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
        Caption = 'Auto-create group'
        Editable = True
        Font.Color = clNone
        Font.Size = 10
        Font.Style = []
        SubmitOnAsyncEvent = True
        ScriptEvents = <>
        DoSubmitValidation = True
        Style = stNormal
        TabOrder = 25
        Checked = False
        FriendlyName = 'AutoBox'
      end
      object IWLabel21: TIWLabel
        Left = 416
        Top = 293
        Width = 82
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
        Caption = 'Serial #'
        RawText = False
      end
      object SerialEdit: TIWEdit
        Left = 504
        Top = 290
        Width = 285
        Height = 23
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
        FocusColor = clNone
        DoSubmitValidation = True
        Editable = True
        NonEditableAsLabel = True
        Font.Color = clNone
        Font.Size = 10
        Font.Style = []
        FriendlyName = 'NewNameEdit'
        MaxLength = 0
        ReadOnly = False
        Required = False
        ScriptEvents = <>
        SubmitOnAsyncEvent = True
        TabOrder = 13
        PasswordPrompt = False
        ExplicitWidth = 177
      end
      object IWLabel22: TIWLabel
        Left = 416
        Top = 267
        Width = 82
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
        Caption = 'Phone'
        RawText = False
      end
      object PhoneEdit: TIWEdit
        Left = 504
        Top = 264
        Width = 285
        Height = 23
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
        FocusColor = clNone
        DoSubmitValidation = True
        Editable = True
        NonEditableAsLabel = True
        Font.Color = clNone
        Font.Size = 10
        Font.Style = []
        FriendlyName = 'NewNameEdit'
        MaxLength = 0
        ReadOnly = False
        Required = False
        ScriptEvents = <>
        SubmitOnAsyncEvent = True
        TabOrder = 26
        PasswordPrompt = False
        ExplicitWidth = 177
      end
      object BuildLogMemo: TIWMemo
        AlignWithMargins = True
        Left = 22
        Top = 414
        Width = 378
        Height = 141
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
        BGColor = clWebPALEGOLDENROD
        Editable = False
        Font.Color = clNone
        Font.Size = 10
        Font.Style = []
        ScriptEvents = <>
        InvisibleBorder = False
        HorizScrollBar = False
        VertScrollBar = True
        Required = False
        TabOrder = 27
        SubmitOnAsyncEvent = True
        FriendlyName = 'BuildLogMemo'
        ExplicitHeight = 147
      end
      object IWLabel23: TIWLabel
        Left = 22
        Top = 392
        Width = 111
        Height = 16
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
        BGColor = clNone
        Font.Color = clNone
        Font.Size = 10
        Font.Style = [fsBold]
        NoWrap = False
        ConvertSpaces = False
        HasTabOrder = False
        FriendlyName = 'IWLabel6'
        Caption = 'Config Build Log'
        RawText = False
      end
    end
  end
  inline FrameBareTitle1: TFrameBareTitle
    Left = 0
    Top = 0
    Width = 849
    Height = 114
    HorzScrollBar.Visible = False
    VertScrollBar.Visible = False
    Align = alTop
    TabOrder = 1
    ExplicitWidth = 849
    inherited IWFrameRegion: TIWRegion
      Width = 849
      TabOrder = 20
      ExplicitWidth = 849
      DesignSize = (
        849
        114)
      inherited titleimage: TIWImageFile
        ImageFile.Filename = 'E:\delphi\delphi_web\files\admin.GIF'
      end
      inherited IWRectangle1: TIWRectangle
        Width = 849
        ExplicitWidth = 849
      end
      inherited IWRectangle3: TIWRectangle
        Width = 849
        ExplicitWidth = 849
      end
      inherited IWImageFile3: TIWImageFile
        Left = 514
        ExplicitLeft = 514
      end
      inherited langlink: TIWSiLink
        Left = 452
        ExplicitLeft = 452
      end
      inherited Smalltitle: TIWLabel
        Left = 729
        ExplicitLeft = 729
      end
      inherited HideBox: TIWImageFile
        Left = 832
        ExplicitLeft = 832
      end
      inherited TitleLabel: TIWLabel
        Width = 486
        Caption = 'administration'
        ExplicitWidth = 486
      end
    end
  end
  inline userfooter1: Tuserfooter
    Left = 0
    Top = 715
    Width = 849
    Height = 29
    HorzScrollBar.Visible = False
    Align = alBottom
    TabOrder = 2
    ExplicitTop = 715
    ExplicitWidth = 849
    ExplicitHeight = 29
    inherited IWRegion1: TIWRegion
      Width = 849
      Height = 29
      TabOrder = 21
      ExplicitWidth = 849
      ExplicitHeight = 29
      DesignSize = (
        849
        29)
      inherited IWRectangle1: TIWRectangle
        Left = 473
        ExplicitLeft = 473
      end
      inherited IWRectangle4: TIWRectangle
        Width = 1465
        ExplicitWidth = 1465
      end
      inherited IWRectangle6: TIWRectangle
        Width = 431
        ExplicitWidth = 431
      end
      inherited Cancel: TIWButton
        Left = 763
        OnClick = CancelBtnClick
        ExplicitLeft = 763
      end
      inherited Extra1: TIWButton
        Left = 675
        Visible = True
        Caption = 'Delete'
        Confirmation = 'Delete this record?'
        OnClick = DelBtnClick
        ExplicitLeft = 675
      end
      inherited Extra2: TIWButton
        Left = 587
        Visible = True
        Caption = 'Save'
        OnClick = PostButtonClick
        ExplicitLeft = 587
      end
      inherited fiwSiLink1: TIWSiLink
        Left = 515
        ExplicitLeft = 515
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
      'Title'
      'FriendlyName'
      'HotKey'
      'StatusText'
      'Text'
      'NoSelectionText'
      'Confirmation'
      'Summary'
      'LangFile')
    Left = 688
    Top = 152
    TranslationData = {
      73007400430061007000740069006F006E0073005F0055006E00690063006F00
      640065000D000A00530074006F00720065004C006100620065006C0001005300
      74006F007200650001000D000A00490057004C006100620065006C0031000100
      4E0061006D00650001000D000A00490057004C006100620065006C0032000100
      4900440001000D000A00490057004C006100620065006C003400010050004F00
      530020005000720069006E0074006500720001000D000A00490057004C006100
      620065006C0037000100500072006F006D006F0020005000720069006E007400
      6500720001000D000A00490057004C006100620065006C003900010050004F00
      530001000D000A00490057004C006100620065006C003500010045006E006100
      62006C006500640001000D000A0045006E00610062006C006500640042006F00
      7800010001000D000A00490057004C006100620065006C003100310001004D00
      69006E0075007400650073002000660072006F006D0020005500540043002E00
      01000D000A00490057004C006100620065006C00310030000100550054004300
      20002B002F002D0001000D000A00490057004C006100620065006C0038000100
      540069006D0065007A006F006E00650001000D000A00490057004C0061006200
      65006C003100320001004C0061006E006700750061006700650001000D000A00
      490057004C006100620065006C0031003400010043006F006E00660069006700
      20004900440001000D000A00490057004C006100620065006C00360001005000
      720069006E00740065007200730001000D000A005000720069006E0074006500
      72004700720069006400010001000D000A00490057004C006100620065006C00
      3100330001005300650074007500700001000D000A0047007200700047007200
      69006400010001000D000A00490057004C006100620065006C00330001004700
      72006F0075007000730001000D000A0041006400640047007200700042007400
      6E00010041006400640001000D000A00490057004C006100620065006C003100
      350001004C006F00670001000D000A00490057004C006100620065006C003100
      360001004D006100630001000D000A0043006C00650061006E00420074006E00
      010043006C00650061006E007500700001000D000A00490057004C0061006200
      65006C0031003700010050006100720061006D00730001000D000A0049005700
      4C006100620065006C003100380001005000720069006E007400650072002000
      45007200720061007400610001000D000A00490057004C006100620065006C00
      310039000100410075007800200050004F00530020005000720069006E007400
      6500720001000D000A00610075007800700072006F006D006F006C0062006C00
      01004100750078002000500072006F006D006F0020005000720069006E007400
      6500720001000D000A00490057004C006100620065006C003200300001005400
      65007300740001000D000A00540065007300740042006F007800010001000D00
      0A004100750074006F0042006F00780001004100750074006F002D0063007200
      65006100740065002000670072006F007500700001000D000A00730074004800
      69006E00740073005F0055006E00690063006F00640065000D000A0073007400
      44006900730070006C00610079004C006100620065006C0073005F0055006E00
      690063006F00640065000D000A007300740046006F006E00740073005F005500
      6E00690063006F00640065000D000A00730074004D0075006C00740069004C00
      69006E00650073005F0055006E00690063006F00640065000D000A0049005700
      52006500670069006F006E0031002E0045007800740072006100540061006700
      50006100720061006D007300010001000D000A00490057005200650067006900
      6F006E0032002E00450078007400720061005400610067005000610072006100
      6D007300010001000D000A00530074006F00720065004C006100620065006C00
      2E004500780074007200610054006100670050006100720061006D0073000100
      01000D000A00490057004C006100620065006C0031002E004500780074007200
      610054006100670050006100720061006D007300010001000D000A004E006500
      77004E0061006D00650045006400690074002E00450078007400720061005400
      6100670050006100720061006D007300010001000D000A004E00650077004900
      440045006400690074002E004500780074007200610054006100670050006100
      720061006D007300010001000D000A00490057004C006100620065006C003200
      2E004500780074007200610054006100670050006100720061006D0073000100
      01000D000A00490057004C006100620065006C0034002E004500780074007200
      610054006100670050006100720061006D007300010001000D000A0050007200
      69006E0074006500720043006F006D0062006F002E0045007800740072006100
      54006100670050006100720061006D007300010001000D000A00500072006900
      6E0074006500720043006F006D0062006F002E004900740065006D0073000100
      45005300430050004F0053002C0045007300630070006F0073004E006F005000
      6F006C006C0001000D000A00500072006F006D006F0043006F006D0062006F00
      2E004500780074007200610054006100670050006100720061006D0073000100
      01000D000A00500072006F006D006F0043006F006D0062006F002E0049007400
      65006D007300010045005300430050004F0053002C0045007300630070006F00
      73004E006F0050006F006C006C0001000D000A00490057004C00610062006500
      6C0037002E004500780074007200610054006100670050006100720061006D00
      7300010001000D000A00490057004C006100620065006C0039002E0045007800
      74007200610054006100670050006100720061006D007300010001000D000A00
      50004F00530043006F006D0062006F002E004500780074007200610054006100
      670050006100720061006D007300010001000D000A0050004F00530043006F00
      6D0062006F002E004900740065006D007300010045005300430050004F005300
      2C0045007300630070006F0073004E006F0050006F006C006C0001000D000A00
      55005400430045006400690074002E0045007800740072006100540061006700
      50006100720061006D007300010001000D000A00490057004C00610062006500
      6C0035002E004500780074007200610054006100670050006100720061006D00
      7300010001000D000A0045006E00610062006C006500640042006F0078002E00
      4500780074007200610054006100670050006100720061006D00730001000100
      0D000A00490057004C006100620065006C00310031002E004500780074007200
      610054006100670050006100720061006D007300010001000D000A0049005700
      4C006100620065006C00310030002E0045007800740072006100540061006700
      50006100720061006D007300010001000D000A007A006F006E00650063006F00
      6D0062006F002E00450078007400720061005400610067005000610072006100
      6D007300010001000D000A007A006F006E00650063006F006D0062006F002E00
      4900740065006D007300010001000D000A00490057004C006100620065006C00
      38002E004500780074007200610054006100670050006100720061006D007300
      010001000D000A00490057004C006100620065006C00310032002E0045007800
      74007200610054006100670050006100720061006D007300010001000D000A00
      6C0061006E00670063006F006D0062006F002E00450078007400720061005400
      6100670050006100720061006D007300010001000D000A006C0061006E006700
      63006F006D0062006F002E004900740065006D007300010001000D000A004300
      6F006E006600690067004900640045006400690074002E004500780074007200
      610054006100670050006100720061006D007300010001000D000A0049005700
      4C006100620065006C00310034002E0045007800740072006100540061006700
      50006100720061006D007300010001000D000A00490057004C00610062006500
      6C0036002E004500780074007200610054006100670050006100720061006D00
      7300010001000D000A005000720069006E007400650072004700720069006400
      2E004500780074007200610054006100670050006100720061006D0073000100
      01000D000A007300650074007500700063006F006D0062006F002E0045007800
      74007200610054006100670050006100720061006D007300010001000D000A00
      7300650074007500700063006F006D0062006F002E004900740065006D007300
      010001000D000A00490057004C006100620065006C00310033002E0045007800
      74007200610054006100670050006100720061006D007300010001000D000A00
      47007200700047007200690064002E0045007800740072006100540061006700
      50006100720061006D007300010001000D000A00470072006F00750070004300
      6F006D0062006F002E0045007800740072006100540061006700500061007200
      61006D007300010001000D000A00470072006F007500700043006F006D006200
      6F002E004900740065006D007300010041006C006C0001000D000A0049005700
      4C006100620065006C0033002E00450078007400720061005400610067005000
      6100720061006D007300010001000D000A004100640064004700720070004200
      74006E002E004500780074007200610054006100670050006100720061006D00
      7300010001000D000A0049005700530069004C0069006E006B0031002E004500
      780074007200610054006100670050006100720061006D007300010001000D00
      0A0049005700520065006300740061006E0067006C00650031002E0045007800
      74007200610054006100670050006100720061006D007300010001000D000A00
      49005700520065006300740061006E0067006C00650032002E00450078007400
      7200610054006100670050006100720061006D007300010001000D000A004C00
      6F00670045006400690074002E00450078007400720061005400610067005000
      6100720061006D007300010001000D000A00490057004C006100620065006C00
      310035002E004500780074007200610054006100670050006100720061006D00
      7300010001000D000A00490057004C006100620065006C00310036002E004500
      780074007200610054006100670050006100720061006D007300010001000D00
      0A004D006100630045006400690074002E004500780074007200610054006100
      670050006100720061006D007300010001000D000A0043006C00650061006E00
      420074006E002E00450078007400720061005400610067005000610072006100
      6D007300010001000D000A00490057004C006100620065006C00310037002E00
      4500780074007200610054006100670050006100720061006D00730001000100
      0D000A0050006100720061006D0045006400690074002E004500780074007200
      610054006100670050006100720061006D007300010001000D000A0049005700
      4C006100620065006C00310038002E0045007800740072006100540061006700
      50006100720061006D007300010001000D000A00450072007200610074006100
      45006400690074002E0045007800740072006100540061006700500061007200
      61006D007300010001000D000A00410075007800500072006F006D006F004300
      6F006D0062006F002E0045007800740072006100540061006700500061007200
      61006D007300010001000D000A00410075007800500072006F006D006F004300
      6F006D0062006F002E004900740065006D007300010045005300430050004F00
      53002C0045007300630070006F0073004E006F0050006F006C006C0001000D00
      0A004100750078005000720069006E0074006500720043006F006D0062006F00
      2E004500780074007200610054006100670050006100720061006D0073000100
      01000D000A004100750078005000720069006E0074006500720043006F006D00
      62006F002E004900740065006D007300010045005300430050004F0053002C00
      45007300630070006F0073004E006F0050006F006C006C0001000D000A004900
      57004C006100620065006C00310039002E004500780074007200610054006100
      670050006100720061006D007300010001000D000A0061007500780070007200
      6F006D006F006C0062006C002E00450078007400720061005400610067005000
      6100720061006D007300010001000D000A00490057004C006100620065006C00
      320030002E004500780074007200610054006100670050006100720061006D00
      7300010001000D000A00540065007300740042006F0078002E00450078007400
      7200610054006100670050006100720061006D007300010001000D000A004100
      750074006F0042006F0078002E00450078007400720061005400610067005000
      6100720061006D007300010001000D000A007300740053007400720069006E00
      670073005F0055006E00690063006F00640065000D000A00440065006C006500
      7400650043006F006E0066000100440065006C00650074006500200074006800
      690073002000730074006F00720065003F00200001000D000A00470072006900
      64002E004900640001004900440001000D000A0047007200690064002E004E00
      61006D00650001004E0061006D00650001000D000A0047007200690064002E00
      4100640064007200650073007300010041006400640072006500730073000100
      0D000A0047007200690064002E004C006100730074005200650070006F007200
      740001004C00610073007400200041006300630065007300730001000D000A00
      47007200690064002E00560065007200730069006F006E000100560065007200
      730069006F006E0001000D000A0047007200690064002E0052006F006C006500
      010052006F006C00650001000D000A0047007200690064002E00410072006300
      680069007400650063007400750072006500010041007200630068002E000100
      0D000A0047007200690064002E0043006F006E00660069006700560065007200
      010043006F006E0066006900670001000D000A0047007200690064002E005000
      4F005300010050004F00530001000D000A0047007200690064002E004C006F00
      670001004C006F00670001000D000A0049006E00760061006C00690064004500
      72007200610074006100010049006E00760061006C0069006400200065007200
      720061007400610020002D002000550073006500200023006E00270074006500
      78007400270020006E006F0074006100740069006F006E00200061006E006400
      200073006500700061007200610074006500200065006E007400720069006500
      730020007700690074006800200063006F006C006F006E00730020006F007200
      2000730065006D00690063006F006C006F006E00730001000D000A0073007400
      4F00740068006500720053007400720069006E00670073005F0055006E006900
      63006F00640065000D000A00540066006F0072006D00530074006F0072006500
      2E00480065006C0070004B006500790077006F0072006400010001000D000A00
      4900570052006500670069006F006E0031002E00480065006C0070004B006500
      790077006F0072006400010001000D000A004900570052006500670069006F00
      6E0032002E00480065006C0070004B006500790077006F007200640001000100
      0D000A00530074006F00720065004C006100620065006C002E00480065006C00
      70004B006500790077006F0072006400010001000D000A00490057004C006100
      620065006C0031002E00480065006C0070004B006500790077006F0072006400
      010001000D000A004E00650077004E0061006D00650045006400690074002E00
      480065006C0070004B006500790077006F0072006400010001000D000A004E00
      650077004900440045006400690074002E00480065006C0070004B0065007900
      77006F0072006400010001000D000A00490057004C006100620065006C003200
      2E00480065006C0070004B006500790077006F0072006400010001000D000A00
      490057004C006100620065006C0034002E00480065006C0070004B0065007900
      77006F0072006400010001000D000A005000720069006E007400650072004300
      6F006D0062006F002E00480065006C0070004B006500790077006F0072006400
      010001000D000A00500072006F006D006F0043006F006D0062006F002E004800
      65006C0070004B006500790077006F0072006400010001000D000A0049005700
      4C006100620065006C0037002E00480065006C0070004B006500790077006F00
      72006400010001000D000A00490057004C006100620065006C0039002E004800
      65006C0070004B006500790077006F0072006400010001000D000A0050004F00
      530043006F006D0062006F002E00480065006C0070004B006500790077006F00
      72006400010001000D000A0055005400430045006400690074002E0048006500
      6C0070004B006500790077006F0072006400010001000D000A00490057004C00
      6100620065006C0035002E00480065006C0070004B006500790077006F007200
      6400010001000D000A0045006E00610062006C006500640042006F0078002E00
      480065006C0070004B006500790077006F0072006400010001000D000A004900
      57004C006100620065006C00310031002E00480065006C0070004B0065007900
      77006F0072006400010001000D000A00490057004C006100620065006C003100
      30002E00480065006C0070004B006500790077006F0072006400010001000D00
      0A007A006F006E00650063006F006D0062006F002E00480065006C0070004B00
      6500790077006F0072006400010001000D000A00490057004C00610062006500
      6C0038002E00480065006C0070004B006500790077006F007200640001000100
      0D000A00490057004C006100620065006C00310032002E00480065006C007000
      4B006500790077006F0072006400010001000D000A006C0061006E0067006300
      6F006D0062006F002E00480065006C0070004B006500790077006F0072006400
      010001000D000A0043006F006E00660069006700490064004500640069007400
      2E00480065006C0070004B006500790077006F0072006400010001000D000A00
      490057004C006100620065006C00310034002E00480065006C0070004B006500
      790077006F0072006400010001000D000A00490057004C006100620065006C00
      36002E00480065006C0070004B006500790077006F0072006400010001000D00
      0A005000720069006E0074006500720047007200690064002E00480065006C00
      70004B006500790077006F0072006400010001000D000A007300650074007500
      700063006F006D0062006F002E00480065006C0070004B006500790077006F00
      72006400010001000D000A00490057004C006100620065006C00310033002E00
      480065006C0070004B006500790077006F0072006400010001000D000A004700
      7200700047007200690064002E00480065006C0070004B006500790077006F00
      72006400010001000D000A00470072006F007500700043006F006D0062006F00
      2E00480065006C0070004B006500790077006F0072006400010001000D000A00
      490057004C006100620065006C0033002E00480065006C0070004B0065007900
      77006F0072006400010001000D000A0041006400640047007200700042007400
      6E002E00480065006C0070004B006500790077006F0072006400010001000D00
      0A0049005700530069004C0069006E006B0031002E00480065006C0070004B00
      6500790077006F0072006400010001000D000A00490057005200650063007400
      61006E0067006C00650031002E00480065006C0070004B006500790077006F00
      72006400010001000D000A0049005700520065006300740061006E0067006C00
      650032002E00480065006C0070004B006500790077006F007200640001000100
      0D000A004600720061006D00650042006100720065005400690074006C006500
      31002E00480065006C0070004B006500790077006F0072006400010001000D00
      0A00750073006500720066006F006F0074006500720031002E00480065006C00
      70004B006500790077006F0072006400010001000D000A004C006F0067004500
      6400690074002E00480065006C0070004B006500790077006F00720064000100
      01000D000A00490057004C006100620065006C00310035002E00480065006C00
      70004B006500790077006F0072006400010001000D000A00490057004C006100
      620065006C00310036002E00480065006C0070004B006500790077006F007200
      6400010001000D000A004D006100630045006400690074002E00480065006C00
      70004B006500790077006F0072006400010001000D000A0043006C0065006100
      6E00420074006E002E00480065006C0070004B006500790077006F0072006400
      010001000D000A00490057004C006100620065006C00310037002E0048006500
      6C0070004B006500790077006F0072006400010001000D000A00500061007200
      61006D0045006400690074002E00480065006C0070004B006500790077006F00
      72006400010001000D000A00490057004C006100620065006C00310038002E00
      480065006C0070004B006500790077006F0072006400010001000D000A004500
      7200720061007400610045006400690074002E00480065006C0070004B006500
      790077006F0072006400010001000D000A00410075007800500072006F006D00
      6F0043006F006D0062006F002E00480065006C0070004B006500790077006F00
      72006400010001000D000A004100750078005000720069006E00740065007200
      43006F006D0062006F002E00480065006C0070004B006500790077006F007200
      6400010001000D000A00490057004C006100620065006C00310039002E004800
      65006C0070004B006500790077006F0072006400010001000D000A0061007500
      7800700072006F006D006F006C0062006C002E00480065006C0070004B006500
      790077006F0072006400010001000D000A00490057004C006100620065006C00
      320030002E00480065006C0070004B006500790077006F007200640001000100
      0D000A00540065007300740042006F0078002E00480065006C0070004B006500
      790077006F0072006400010001000D000A004100750074006F0042006F007800
      2E00480065006C0070004B006500790077006F0072006400010001000D000A00
      7300740043006F006C006C0065006300740069006F006E0073005F0055006E00
      690063006F00640065000D000A00730074004300680061007200530065007400
      73005F0055006E00690063006F00640065000D000A00}
  end
end
