object formStore: TformStore
  Left = 0
  Top = 0
  Width = 1020
  Height = 725
  ConnectionMode = cmAny
  SupportedBrowsers = [brIE, brNetscape7, brOpera, brSafari, brNetscape6]
  OnCreate = IWAppFormCreate
  OnDestroy = IWAppFormDestroy
  BrowserSecurityCheck = True
  Background.Fixed = False
  HandleTabs = False
  LeftToRight = True
  LockUntilLoaded = True
  LockOnSubmit = True
  ShowHint = True
  OnDefaultAction = IWAppFormDefaultAction
  XPTheme = True
  DesignLeft = 184
  DesignTop = 232
  object IWRegion1: TIWRegion
    Left = 0
    Top = 114
    Width = 1020
    Height = 582
    Cursor = crAuto
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
      1020
      582)
    object IWRegion2: TIWRegion
      Left = 152
      Top = 24
      Width = 716
      Height = 547
      Cursor = crAuto
      Anchors = [akTop, akBottom]
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
        716
        547)
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
        Alignment = taLeftJustify
        BGColor = clNone
        Font.Color = clNone
        Font.FontName = 'Arial'
        Font.Size = 12
        Font.Style = [fsBold]
        NoWrap = False
        ConvertSpaces = False
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
        Alignment = taLeftJustify
        BGColor = clNone
        Font.Color = clNone
        Font.Size = 10
        Font.Style = []
        NoWrap = False
        ConvertSpaces = False
        AutoSize = False
        FriendlyName = 'IWLabel1'
        Caption = 'Name'
        RawText = False
      end
      object NewNameEdit: TIWEdit
        Left = 136
        Top = 30
        Width = 205
        Height = 20
        Cursor = crAuto
        IW50Hint = False
        ParentShowHint = False
        ShowHint = True
        ZIndex = 0
        RenderSize = True
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
        Alignment = taLeftJustify
        BGColor = clNone
        Font.Color = clNone
        Font.Size = 10
        Font.Style = []
        NoWrap = False
        ConvertSpaces = False
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
        Alignment = taLeftJustify
        BGColor = clNone
        Font.Color = clNone
        Font.Size = 10
        Font.Style = []
        NoWrap = False
        ConvertSpaces = False
        AutoSize = False
        FriendlyName = 'IWLabel4'
        Caption = 'POS Printer'
        RawText = False
      end
      object PrinterCombo: TIWComboBox
        Left = 136
        Top = 81
        Width = 209
        Height = 21
        Cursor = crAuto
        IW50Hint = False
        ParentShowHint = False
        ShowHint = True
        ZIndex = 0
        RenderSize = False
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
        Width = 209
        Height = 21
        Cursor = crAuto
        IW50Hint = False
        ParentShowHint = False
        ShowHint = True
        ZIndex = 0
        RenderSize = False
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
        Alignment = taLeftJustify
        BGColor = clNone
        Font.Color = clNone
        Font.Size = 10
        Font.Style = []
        NoWrap = False
        ConvertSpaces = False
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
        Alignment = taLeftJustify
        BGColor = clNone
        Font.Color = clNone
        Font.Size = 10
        Font.Style = []
        NoWrap = False
        ConvertSpaces = False
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
        Alignment = taLeftJustify
        BGColor = clNone
        Font.Color = clNone
        Font.Size = 10
        Font.Style = []
        NoWrap = False
        ConvertSpaces = False
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
        RenderSize = False
        Editable = True
        Font.Color = clNone
        Font.Size = 10
        Font.Style = []
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
        Width = 209
        Height = 21
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
        Alignment = taLeftJustify
        BGColor = clNone
        Font.Color = clNone
        Font.Size = 10
        Font.Style = []
        NoWrap = False
        ConvertSpaces = False
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
        Alignment = taLeftJustify
        BGColor = clNone
        Font.Color = clNone
        Font.Size = 10
        Font.Style = []
        NoWrap = False
        ConvertSpaces = False
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
        Alignment = taLeftJustify
        BGColor = clNone
        Font.Color = clNone
        Font.Size = 10
        Font.Style = []
        NoWrap = False
        ConvertSpaces = False
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
        Alignment = taLeftJustify
        BGColor = clNone
        Font.Color = clNone
        Font.Size = 10
        Font.Style = []
        NoWrap = False
        ConvertSpaces = False
        AutoSize = False
        FriendlyName = 'IWLabel1'
        Caption = 'Config ID'
        RawText = False
      end
      object IWLabel6: TIWLabel
        Left = 22
        Top = 392
        Width = 57
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
        Font.Style = [fsBold]
        NoWrap = False
        ConvertSpaces = False
        AutoSize = False
        FriendlyName = 'IWLabel6'
        Caption = 'Printers'
        RawText = False
      end
      object PrinterGrid: TIWGrid
        Left = 104
        Top = 395
        Width = 577
        Height = 149
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
        OnRenderCell = PrinterGridRenderCell
        UseFrame = True
        UseSize = True
        FriendlyName = 'PrinterGrid'
        ColumnCount = 10
        OnCellClick = PrinterGridCellClick
        RowCount = 1
        TabOrder = -1
        ShowEmptyCells = True
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
        TabOrder = 12
        ItemIndex = -1
        Sorted = False
        FriendlyName = 'zonecombo'
      end
      object IWLabel13: TIWLabel
        Left = 70
        Top = 293
        Width = 61
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
        Caption = 'Setup'
        RawText = False
      end
      object GrpGrid: TIWGrid
        Left = 416
        Top = 72
        Width = 265
        Height = 199
        Cursor = crAuto
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
        OnRenderCell = PrinterGridRenderCell
        UseFrame = True
        UseSize = True
        FriendlyName = 'PrinterGrid'
        ColumnCount = 2
        OnCellClick = GrpGridCellClick
        RowCount = 1
        TabOrder = -1
        ShowEmptyCells = True
        ScrollToCurrentRow = False
      end
      object GroupCombo: TIWComboBox
        Left = 416
        Top = 46
        Width = 265
        Height = 21
        Cursor = crAuto
        IW50Hint = False
        ParentShowHint = False
        ShowHint = True
        ZIndex = 0
        RenderSize = False
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
        TabOrder = 17
        ItemIndex = -1
        Items.Strings = (
          'All')
        Sorted = False
        FriendlyName = 'RegionCombo'
      end
      object IWLabel3: TIWLabel
        Left = 416
        Top = 25
        Width = 56
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
        Font.Style = [fsBold]
        NoWrap = False
        ConvertSpaces = False
        AutoSize = False
        FriendlyName = 'IWLabel5'
        Caption = 'Groups'
        RawText = False
      end
      object AddGrpBtn: TIWButton
        Left = 611
        Top = 19
        Width = 61
        Height = 25
        Cursor = crAuto
        IW50Hint = False
        ParentShowHint = False
        ShowHint = True
        ZIndex = 0
        RenderSize = True
        Caption = 'Add'
        DoSubmitValidation = True
        Color = clBtnFace
        Font.Color = clWebBLUE
        Font.Size = 10
        Font.Style = []
        FriendlyName = 'IWButton2'
        ScriptEvents = <>
        TabOrder = 16
        OnClick = AddGrpBtnClick
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
        RenderSize = False
        Alignment = taLeftJustify
        Color = clNone
        Font.Color = clNone
        Font.Size = 10
        Font.Style = [fsUnderline]
        ScriptEvents = <>
        DoSubmitValidation = False
        FriendlyName = 'IWSiLink1'
        TabOrder = 18
        RawText = False
        SiLangLinked = siLangLinked1
        LangFile = 'store.sil'
        LangControl = RcDataMod.LangEditControl1
      end
      object IWRectangle1: TIWRectangle
        Left = 0
        Top = 3
        Width = 3
        Height = 544
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
      object IWRectangle2: TIWRectangle
        Left = 0
        Top = 0
        Width = 716
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
        TabOrder = 21
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
        Alignment = taLeftJustify
        BGColor = clNone
        Font.Color = clNone
        Font.Size = 10
        Font.Style = []
        NoWrap = False
        ConvertSpaces = False
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
        Alignment = taLeftJustify
        BGColor = clNone
        Font.Color = clNone
        Font.Size = 10
        Font.Style = []
        NoWrap = False
        ConvertSpaces = False
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
        TabOrder = 22
        PasswordPrompt = False
        Text = 'MacEdit'
      end
      object CleanBtn: TIWButton
        Left = 11
        Top = 414
        Width = 86
        Height = 25
        Cursor = crAuto
        IW50Hint = False
        ParentShowHint = False
        ShowHint = True
        ZIndex = 0
        RenderSize = True
        Caption = 'Cleanup'
        DoSubmitValidation = True
        Color = clBtnFace
        Font.Color = clWebBLUE
        Font.Size = 10
        Font.Style = []
        FriendlyName = 'IWButton2'
        ScriptEvents = <>
        TabOrder = 15
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
        Alignment = taLeftJustify
        BGColor = clNone
        Font.Color = clNone
        Font.Size = 10
        Font.Style = []
        NoWrap = False
        ConvertSpaces = False
        AutoSize = False
        FriendlyName = 'IWLabel1'
        Caption = 'Params'
        RawText = False
      end
      object ParamEdit: TIWEdit
        Left = 136
        Top = 318
        Width = 545
        Height = 20
        Cursor = crAuto
        IW50Hint = False
        ParentShowHint = False
        ShowHint = True
        ZIndex = 0
        RenderSize = True
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
        TabOrder = 13
        PasswordPrompt = False
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
        Alignment = taLeftJustify
        BGColor = clNone
        Font.Color = clNone
        Font.Size = 10
        Font.Style = []
        NoWrap = False
        ConvertSpaces = False
        AutoSize = False
        FriendlyName = 'IWLabel1'
        Caption = 'Printer Errata'
        RawText = False
      end
      object ErrataEdit: TIWEdit
        Left = 136
        Top = 343
        Width = 545
        Height = 20
        Cursor = crAuto
        IW50Hint = False
        ParentShowHint = False
        ShowHint = True
        ZIndex = 0
        RenderSize = True
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
        TabOrder = 14
        PasswordPrompt = False
      end
      object AuxPromoCombo: TIWComboBox
        Left = 156
        Top = 164
        Width = 209
        Height = 21
        Cursor = crAuto
        IW50Hint = False
        ParentShowHint = False
        ShowHint = True
        ZIndex = 0
        RenderSize = False
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
        Width = 209
        Height = 21
        Cursor = crAuto
        IW50Hint = False
        ParentShowHint = False
        ShowHint = True
        ZIndex = 0
        RenderSize = False
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
        Width = 113
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
        FriendlyName = 'IWLabel4'
        Caption = 'Aux POS Printer'
        RawText = False
      end
      object auxpromolbl: TIWLabel
        Left = 22
        Top = 165
        Width = 113
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
        Alignment = taLeftJustify
        BGColor = clNone
        Font.Color = clNone
        Font.Size = 10
        Font.Style = []
        NoWrap = False
        ConvertSpaces = False
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
        RenderSize = False
        Editable = True
        Font.Color = clNone
        Font.Size = 10
        Font.Style = []
        ScriptEvents = <>
        DoSubmitValidation = True
        Style = stNormal
        TabOrder = 23
        Checked = False
        FriendlyName = 'EnabledBox'
      end
    end
  end
  inline FrameBareTitle1: TFrameBareTitle
    Left = 0
    Top = 0
    Width = 1020
    Height = 114
    HorzScrollBar.Visible = False
    VertScrollBar.Visible = False
    Align = alTop
    TabOrder = 1
    inherited IWFrameRegion: TIWRegion
      Width = 1020
      TabOrder = 19
      DesignSize = (
        1020
        114)
      inherited IWImageFile1: TIWImageFile
        TabOrder = 0
      end
      inherited titleimage: TIWImageFile
        ImageFile.Filename = 'E:\delphi\delphi_web\files\admin.GIF'
      end
      inherited IWRectangle1: TIWRectangle
        Width = 1020
      end
      inherited IWImageFile3: TIWImageFile
        Left = 685
        TabOrder = 2
      end
      inherited TitleLabel: TIWLabel
        Width = 486
        Caption = 'administration'
      end
      inherited langlink: TIWSiLink
        Left = 623
      end
      inherited Smalltitle: TIWLabel
        Left = 900
      end
      inherited HideBox: TIWImageFile
        Left = 1003
      end
    end
  end
  inline userfooter1: Tuserfooter
    Left = 0
    Top = 696
    Width = 1020
    Height = 29
    HorzScrollBar.Visible = False
    Align = alBottom
    TabOrder = 2
    inherited IWRegion1: TIWRegion
      Width = 1020
      Height = 29
      TabOrder = 20
      DesignSize = (
        1020
        29)
      inherited IWRectangle1: TIWRectangle
        Left = 644
      end
      inherited IWRectangle4: TIWRectangle
        Width = 1636
      end
      inherited IWRectangle6: TIWRectangle
        Width = 602
      end
      inherited Cancel: TIWButton
        Left = 934
        OnClick = CancelBtnClick
      end
      inherited Extra1: TIWButton
        Left = 846
        Visible = True
        Caption = 'Delete'
        Confirmation = 'Delete this record?'
        OnClick = DelBtnClick
      end
      inherited Extra2: TIWButton
        Left = 758
        Visible = True
        Caption = 'Save'
        OnClick = PostButtonClick
      end
      inherited fiwSiLink1: TIWSiLink
        Left = 686
      end
      inherited navcombo: TIWComboBox
        Visible = False
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
      737443617074696F6E730D0A53746F72654C6162656C0153746F7265010D0A49
      574C6162656C31014E616D65010D0A49574C6162656C32014944010D0A49574C
      6162656C3401504F53205072696E746572010D0A49574C6162656C370150726F
      6D6F205072696E746572010D0A49574C6162656C3901504F53010D0A49574C61
      62656C3501456E61626C6564010D0A456E61626C6564426F7801010D0A49574C
      6162656C3131014D696E757465732066726F6D205554432E010D0A49574C6162
      656C313001555443202B2F2D010D0A49574C6162656C380154696D657A6F6E65
      010D0A49574C6162656C3132014C616E6775616765010D0A49574C6162656C31
      3401436F6E666967204944010D0A49574C6162656C36015072696E7465727301
      0D0A5072696E7465724772696401010D0A49574C6162656C3133015365747570
      010D0A4772704772696401010D0A49574C6162656C330147726F757073010D0A
      41646447727042746E01416464010D0A49574C6162656C3135014C6F67010D0A
      49574C6162656C3136014D6163010D0A436C65616E42746E01436C65616E7570
      010D0A49574C6162656C313701506172616D73010D0A49574C6162656C313801
      5072696E74657220457272617461010D0A49574C6162656C3139014175782050
      4F53205072696E746572010D0A61757870726F6D6F6C626C014175782050726F
      6D6F205072696E746572010D0A737448696E74730D0A7374446973706C61794C
      6162656C730D0A7374466F6E74730D0A73744D756C74694C696E65730D0A4957
      526567696F6E312E4578747261546167506172616D7301010D0A495752656769
      6F6E322E4578747261546167506172616D7301010D0A53746F72654C6162656C
      2E4578747261546167506172616D7301010D0A49574C6162656C312E45787472
      61546167506172616D7301010D0A4E65774E616D65456469742E457874726154
      6167506172616D7301010D0A4E65774944456469742E45787472615461675061
      72616D7301010D0A49574C6162656C322E4578747261546167506172616D7301
      010D0A49574C6162656C342E4578747261546167506172616D7301010D0A5072
      696E746572436F6D626F2E4578747261546167506172616D7301010D0A507269
      6E746572436F6D626F2E4974656D7301455343504F532C457363706F734E6F50
      6F6C6C010D0A50726F6D6F436F6D626F2E4578747261546167506172616D7301
      010D0A50726F6D6F436F6D626F2E4974656D7301455343504F532C457363706F
      734E6F506F6C6C010D0A49574C6162656C372E4578747261546167506172616D
      7301010D0A49574C6162656C392E4578747261546167506172616D7301010D0A
      504F53436F6D626F2E4578747261546167506172616D7301010D0A504F53436F
      6D626F2E4974656D7301455343504F532C457363706F734E6F506F6C6C010D0A
      555443456469742E4578747261546167506172616D7301010D0A49574C616265
      6C352E4578747261546167506172616D7301010D0A456E61626C6564426F782E
      4578747261546167506172616D7301010D0A49574C6162656C31312E45787472
      61546167506172616D7301010D0A49574C6162656C31302E4578747261546167
      506172616D7301010D0A7A6F6E65636F6D626F2E457874726154616750617261
      6D7301010D0A7A6F6E65636F6D626F2E4974656D7301010D0A49574C6162656C
      382E4578747261546167506172616D7301010D0A49574C6162656C31322E4578
      747261546167506172616D7301010D0A6C616E67636F6D626F2E457874726154
      6167506172616D7301010D0A6C616E67636F6D626F2E4974656D7301010D0A43
      6F6E6669674964456469742E4578747261546167506172616D7301010D0A4957
      4C6162656C31342E4578747261546167506172616D7301010D0A49574C616265
      6C362E4578747261546167506172616D7301010D0A5072696E74657247726964
      2E4578747261546167506172616D7301010D0A7365747570636F6D626F2E4578
      747261546167506172616D7301010D0A7365747570636F6D626F2E4974656D73
      01010D0A49574C6162656C31332E4578747261546167506172616D7301010D0A
      477270477269642E4578747261546167506172616D7301010D0A47726F757043
      6F6D626F2E4578747261546167506172616D7301010D0A47726F7570436F6D62
      6F2E4974656D7301416C6C010D0A49574C6162656C332E457874726154616750
      6172616D7301010D0A41646447727042746E2E4578747261546167506172616D
      7301010D0A495753694C696E6B312E4578747261546167506172616D7301010D
      0A495752656374616E676C65312E4578747261546167506172616D7301010D0A
      495752656374616E676C65322E4578747261546167506172616D7301010D0A4C
      6F67456469742E4578747261546167506172616D7301010D0A49574C6162656C
      31352E4578747261546167506172616D7301010D0A49574C6162656C31362E45
      78747261546167506172616D7301010D0A4D6163456469742E45787472615461
      67506172616D7301010D0A436C65616E42746E2E457874726154616750617261
      6D7301010D0A49574C6162656C31372E4578747261546167506172616D730101
      0D0A506172616D456469742E4578747261546167506172616D7301010D0A4957
      4C6162656C31382E4578747261546167506172616D7301010D0A457272617461
      456469742E4578747261546167506172616D7301010D0A41757850726F6D6F43
      6F6D626F2E4578747261546167506172616D7301010D0A41757850726F6D6F43
      6F6D626F2E4974656D7301455343504F532C457363706F734E6F506F6C6C010D
      0A4175785072696E746572436F6D626F2E4578747261546167506172616D7301
      010D0A4175785072696E746572436F6D626F2E4974656D7301455343504F532C
      457363706F734E6F506F6C6C010D0A49574C6162656C31392E45787472615461
      67506172616D7301010D0A61757870726F6D6F6C626C2E457874726154616750
      6172616D7301010D0A7374537472696E67730D0A44656C657465436F6E660144
      656C65746520746869732073746F72653F20010D0A477269642E496401494401
      0D0A477269642E4E616D65014E616D65010D0A477269642E4164647265737301
      41646472657373010D0A477269642E4C6173745265706F7274014C6173742041
      6363657373010D0A477269642E56657273696F6E0156657273696F6E010D0A47
      7269642E526F6C6501526F6C65010D0A477269642E4172636869746563747572
      6501417263682E010D0A477269642E436F6E66696756657201436F6E66696701
      0D0A477269642E504F5301504F53010D0A477269642E4C6F67014C6F67010D0A
      73744F74686572537472696E67730D0A54666F726D53746F72652E48656C704B
      6579776F726401010D0A4957526567696F6E312E48656C704B6579776F726401
      010D0A4957526567696F6E322E48656C704B6579776F726401010D0A53746F72
      654C6162656C2E48656C704B6579776F726401010D0A49574C6162656C312E48
      656C704B6579776F726401010D0A4E65774E616D65456469742E48656C704B65
      79776F726401010D0A4E65774944456469742E48656C704B6579776F72640101
      0D0A49574C6162656C322E48656C704B6579776F726401010D0A49574C616265
      6C342E48656C704B6579776F726401010D0A5072696E746572436F6D626F2E48
      656C704B6579776F726401010D0A50726F6D6F436F6D626F2E48656C704B6579
      776F726401010D0A49574C6162656C372E48656C704B6579776F726401010D0A
      49574C6162656C392E48656C704B6579776F726401010D0A504F53436F6D626F
      2E48656C704B6579776F726401010D0A555443456469742E48656C704B657977
      6F726401010D0A49574C6162656C352E48656C704B6579776F726401010D0A45
      6E61626C6564426F782E48656C704B6579776F726401010D0A49574C6162656C
      31312E48656C704B6579776F726401010D0A49574C6162656C31302E48656C70
      4B6579776F726401010D0A7A6F6E65636F6D626F2E48656C704B6579776F7264
      01010D0A49574C6162656C382E48656C704B6579776F726401010D0A49574C61
      62656C31322E48656C704B6579776F726401010D0A6C616E67636F6D626F2E48
      656C704B6579776F726401010D0A436F6E6669674964456469742E48656C704B
      6579776F726401010D0A49574C6162656C31342E48656C704B6579776F726401
      010D0A49574C6162656C362E48656C704B6579776F726401010D0A5072696E74
      6572477269642E48656C704B6579776F726401010D0A7365747570636F6D626F
      2E48656C704B6579776F726401010D0A49574C6162656C31332E48656C704B65
      79776F726401010D0A477270477269642E48656C704B6579776F726401010D0A
      47726F7570436F6D626F2E48656C704B6579776F726401010D0A49574C616265
      6C332E48656C704B6579776F726401010D0A41646447727042746E2E48656C70
      4B6579776F726401010D0A495753694C696E6B312E48656C704B6579776F7264
      01010D0A495752656374616E676C65312E48656C704B6579776F726401010D0A
      495752656374616E676C65322E48656C704B6579776F726401010D0A4672616D
      65426172655469746C65312E48656C704B6579776F726401010D0A7573657266
      6F6F746572312E48656C704B6579776F726401010D0A4C6F67456469742E4865
      6C704B6579776F726401010D0A49574C6162656C31352E48656C704B6579776F
      726401010D0A49574C6162656C31362E48656C704B6579776F726401010D0A4D
      6163456469742E48656C704B6579776F726401010D0A436C65616E42746E2E48
      656C704B6579776F726401010D0A49574C6162656C31372E48656C704B657977
      6F726401010D0A506172616D456469742E48656C704B6579776F726401010D0A
      49574C6162656C31382E48656C704B6579776F726401010D0A45727261746145
      6469742E48656C704B6579776F726401010D0A41757850726F6D6F436F6D626F
      2E48656C704B6579776F726401010D0A4175785072696E746572436F6D626F2E
      48656C704B6579776F726401010D0A49574C6162656C31392E48656C704B6579
      776F726401010D0A61757870726F6D6F6C626C2E48656C704B6579776F726401
      010D0A7374436F6C6C656374696F6E730D0A737443686172536574730D0A}
  end
end
