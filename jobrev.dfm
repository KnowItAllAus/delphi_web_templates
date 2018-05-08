object FormJobRev: TFormJobRev
  Left = 0
  Top = 0
  Width = 1024
  Height = 713
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
  DesignLeft = -194
  DesignTop = 8
  object IWCheckBox1: TIWCheckBox
    Left = 328
    Top = 288
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
    Caption = 'IWCheckBox1'
    Editable = True
    Font.Color = clNone
    Font.Size = 10
    Font.Style = []
    SubmitOnAsyncEvent = True
    ScriptEvents = <>
    DoSubmitValidation = True
    Style = stNormal
    TabOrder = 17
    Checked = False
    FriendlyName = 'IWCheckBox1'
  end
  inline userfooter1: Tuserfooter
    Left = 0
    Top = 684
    Width = 1024
    Height = 29
    HorzScrollBar.Visible = False
    Align = alBottom
    TabOrder = 0
    ExplicitTop = 684
    ExplicitWidth = 1024
    ExplicitHeight = 29
    inherited IWRegion1: TIWRegion
      Width = 1024
      Height = 29
      TabOrder = 7
      ExplicitWidth = 1024
      ExplicitHeight = 29
      DesignSize = (
        1024
        29)
      inherited IWRectangle1: TIWRectangle
        Left = 648
        Width = 416
        ExplicitLeft = 648
        ExplicitWidth = 416
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
        Left = 938
        Caption = 'Back'
        TabOrder = 2
        OnClick = userfooter1CancelClick
        ExplicitLeft = 938
      end
      inherited Extra1: TIWButton
        Left = 850
        TabOrder = 0
        ExplicitLeft = 850
      end
      inherited Extra2: TIWButton
        Left = 762
        TabOrder = 1
        ExplicitLeft = 762
      end
      inherited fiwSiLink1: TIWSiLink
        Left = 394
        Top = 1
        ExplicitLeft = 394
        ExplicitTop = 1
      end
    end
    inherited silink_footer: TsiLangLinked
      Left = 80
    end
  end
  object IWRegion1: TIWRegion
    Left = 0
    Top = 119
    Width = 1024
    Height = 565
    Cursor = crAuto
    HorzScrollBar.Visible = False
    VertScrollBar.Visible = False
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
      565)
    object langlink: TIWSiLink
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
      FriendlyName = 'langlink'
      TabOrder = 3
      RawText = False
      SiLangLinked = silink
      LangFile = 'jobrev.sil'
      LangControl = RcDataMod.LangEditControl1
    end
    object BodyRegion: TIWRegion
      Left = 13
      Top = 20
      Width = 977
      Height = 540
      Cursor = crAuto
      HorzScrollBar.Visible = False
      VertScrollBar.Visible = False
      RenderInvisibleControls = False
      Anchors = [akTop, akBottom]
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
        977
        540)
      object IWRectangle2: TIWRectangle
        Left = 1
        Top = 1
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
        Left = 1
        Top = 4
        Width = 3
        Height = 535
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
        ExplicitHeight = 524
      end
      object JobsLabel: TIWLabel
        Left = 10
        Top = 135
        Width = 285
        Height = 24
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
        Font.Size = 14
        Font.Style = [fsBold]
        NoWrap = False
        ConvertSpaces = False
        HasTabOrder = False
        AutoSize = False
        FriendlyName = 'JobsLabel'
        Caption = 'Job Revisions'
        RawText = False
      end
      object JobGrid: TIWGrid
        Left = 10
        Top = 193
        Width = 945
        Height = 311
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
        OnRenderCell = JobGridRenderCell
        UseFrame = True
        UseSize = True
        FriendlyName = 'JobGrid'
        ColumnCount = 9
        OnCellClick = JobGridCellClick
        RowCount = 1
        ShowEmptyCells = True
        ShowInvisibleRows = True
        ScrollToCurrentRow = False
      end
      object CreateBtn: TIWButton
        Left = 887
        Top = 510
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
        Caption = 'Create'
        DoSubmitValidation = True
        Color = clBtnFace
        Font.Color = clNone
        Font.Size = 10
        Font.Style = []
        FriendlyName = 'CreateBtn'
        ScriptEvents = <>
        TabOrder = 2
        OnClick = CreateBtnClick
        ExplicitTop = 499
      end
      object JobNameLbl: TIWLabel
        Left = 16
        Top = 13
        Width = 570
        Height = 24
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
        Font.Size = 14
        Font.Style = [fsBold]
        NoWrap = False
        ConvertSpaces = False
        HasTabOrder = False
        AutoSize = False
        FriendlyName = 'JobsLabel'
        Caption = 'Job : '
        RawText = False
      end
      object IWLabel2: TIWLabel
        Left = 16
        Top = 79
        Width = 69
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
        Caption = 'Description'
        RawText = False
      end
      object IWLabel3: TIWLabel
        Left = 16
        Top = 53
        Width = 39
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
        Caption = 'Status'
        RawText = False
      end
      object StatEdit: TIWEdit
        Left = 96
        Top = 52
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
        Alignment = taLeftJustify
        BGColor = clGrayText
        FocusColor = clNone
        DoSubmitValidation = True
        Editable = True
        NonEditableAsLabel = True
        Font.Color = clNone
        Font.Size = 10
        Font.Style = []
        FriendlyName = 'StatEdit'
        MaxLength = 0
        ReadOnly = True
        Required = False
        ScriptEvents = <>
        SubmitOnAsyncEvent = True
        TabOrder = 4
        PasswordPrompt = False
        Text = 'StatEdit'
      end
      object DescEdit: TIWEdit
        Left = 96
        Top = 78
        Width = 460
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
        TabOrder = 5
        PasswordPrompt = False
        Text = 'DescEdit'
      end
      object EditJobBtn: TIWButton
        Left = 483
        Top = 50
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
        TabOrder = 0
        OnClick = EditJobBtnClick
      end
      object NoteEdit: TIWEdit
        Left = 624
        Top = 511
        Width = 249
        Height = 21
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
        Alignment = taLeftJustify
        BGColor = clNone
        FocusColor = clNone
        DoSubmitValidation = True
        Editable = True
        NonEditableAsLabel = True
        Font.Color = clNone
        Font.Size = 10
        Font.Style = []
        FriendlyName = 'NoteEdit'
        MaxLength = 0
        ReadOnly = False
        Required = False
        ScriptEvents = <>
        SubmitOnAsyncEvent = True
        TabOrder = 1
        PasswordPrompt = False
        ExplicitTop = 500
      end
      object NoteLabel: TIWLabel
        Left = 584
        Top = 513
        Width = 26
        Height = 16
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
        Alignment = taRightJustify
        BGColor = clNone
        Font.Color = clNone
        Font.Size = 10
        Font.Style = []
        NoWrap = False
        ConvertSpaces = False
        HasTabOrder = False
        FriendlyName = 'NoteLabel'
        Caption = 'Note'
        RawText = False
        ExplicitTop = 502
      end
      object templatelbl: TIWLabel
        Left = 185
        Top = 105
        Width = 244
        Height = 24
        Cursor = crAuto
        Visible = False
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
        Font.Color = clWebRED
        Font.FontFamily = 'Arial, Sans-Serif, Verdana'
        Font.Size = 14
        Font.Style = [fsBold]
        NoWrap = False
        ConvertSpaces = False
        HasTabOrder = False
        AutoSize = False
        FriendlyName = 'JobsLabel'
        Caption = 'TEMPLATE'
        RawText = False
      end
      object ParamGrid: TIWGrid
        Left = 592
        Top = 10
        Width = 370
        Height = 84
        Cursor = crAuto
        Visible = False
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
        OnRenderCell = ParamGridRenderCell
        UseFrame = True
        UseSize = True
        FriendlyName = 'JobGrid'
        ColumnCount = 5
        OnCellClick = ParamGridCellClick
        RowCount = 1
        ShowEmptyCells = True
        ShowInvisibleRows = True
        ScrollToCurrentRow = False
      end
      object NameEdit: TIWEdit
        Left = 591
        Top = 123
        Width = 282
        Height = 21
        Cursor = crAuto
        Visible = False
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
        FriendlyName = 'NoteEdit'
        MaxLength = 0
        ReadOnly = False
        Required = False
        ScriptEvents = <>
        SubmitOnAsyncEvent = True
        TabOrder = 10
        PasswordPrompt = False
      end
      object ParamSaveBtn: TIWButton
        Left = 887
        Top = 166
        Width = 75
        Height = 24
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
        Caption = 'Add'
        DoSubmitValidation = True
        Color = clBtnFace
        Font.Color = clNone
        Font.Size = 10
        Font.Style = []
        FriendlyName = 'CreateBtn'
        ScriptEvents = <>
        TabOrder = 14
        OnClick = ParamSaveBtnClick
      end
      object TypeCombo: TIWComboBox
        Left = 591
        Top = 100
        Width = 186
        Height = 21
        Cursor = crAuto
        Visible = False
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
        TabOrder = 8
        ItemIndex = -1
        Items.Strings = (
          'Object'
          'Text Field'
          'Date Field'
          'Time Field'
          'Integer Field'
          'Printer Image'
          'Text Block'
          'Raw Image'
          'Colour')
        Sorted = False
        FriendlyName = 'TypeCombo'
      end
      object TypeLbl: TIWLabel
        Left = 545
        Top = 105
        Width = 28
        Height = 16
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
        Alignment = taRightJustify
        BGColor = clNone
        Font.Color = clNone
        Font.Size = 10
        Font.Style = []
        NoWrap = False
        ConvertSpaces = False
        HasTabOrder = False
        FriendlyName = 'NoteLabel'
        Caption = 'Type'
        RawText = False
      end
      object IWLabel1: TIWLabel
        Left = 248
        Top = 53
        Width = 73
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
        Caption = 'Domain'
        RawText = False
      end
      object DomainEdit: TIWEdit
        Left = 328
        Top = 52
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
        Alignment = taLeftJustify
        BGColor = clGrayText
        FocusColor = clNone
        DoSubmitValidation = True
        Editable = True
        NonEditableAsLabel = True
        Font.Color = clNone
        Font.Size = 10
        Font.Style = []
        FriendlyName = 'StatEdit'
        MaxLength = 0
        ReadOnly = True
        Required = False
        ScriptEvents = <>
        SubmitOnAsyncEvent = True
        TabOrder = 9
        PasswordPrompt = False
        Text = 'DomainEdit'
      end
      object ConstraintEdit: TIWEdit
        Left = 591
        Top = 146
        Width = 282
        Height = 21
        Cursor = crAuto
        Visible = False
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
        FriendlyName = 'NoteEdit'
        MaxLength = 0
        ReadOnly = False
        Required = False
        ScriptEvents = <>
        SubmitOnAsyncEvent = True
        TabOrder = 11
        PasswordPrompt = False
      end
      object ConstraintLbl: TIWLabel
        Left = 511
        Top = 149
        Width = 70
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
        FriendlyName = 'NoteLabel'
        Caption = 'Constraints'
        RawText = False
      end
      object NameLbl: TIWLabel
        Left = 540
        Top = 127
        Width = 33
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
        Alignment = taRightJustify
        BGColor = clNone
        Font.Color = clNone
        Font.Size = 10
        Font.Style = []
        NoWrap = False
        ConvertSpaces = False
        HasTabOrder = False
        FriendlyName = 'NoteLabel'
        Caption = 'Name'
        RawText = False
      end
      object ParamDelBtn: TIWButton
        Left = 887
        Top = 106
        Width = 75
        Height = 24
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
        Caption = 'Delete'
        DoSubmitValidation = True
        Color = clBtnFace
        Font.Color = clNone
        Font.Size = 10
        Font.Style = []
        FriendlyName = 'CreateBtn'
        ScriptEvents = <>
        TabOrder = 12
        OnClick = ParamDelBtnClick
      end
      object ParamCancelBtn: TIWButton
        Left = 887
        Top = 136
        Width = 75
        Height = 24
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
        Caption = 'Cancel'
        DoSubmitValidation = True
        Color = clBtnFace
        Font.Color = clNone
        Font.Size = 10
        Font.Style = []
        FriendlyName = 'CreateBtn'
        ScriptEvents = <>
        TabOrder = 13
        OnClick = ParamCancelBtnClick
      end
      object paramnotelbl: TIWLabel
        Left = 548
        Top = 173
        Width = 26
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
        Alignment = taRightJustify
        BGColor = clNone
        Font.Color = clNone
        Font.Size = 10
        Font.Style = []
        NoWrap = False
        ConvertSpaces = False
        HasTabOrder = False
        FriendlyName = 'NoteLabel'
        Caption = 'Note'
        RawText = False
      end
      object paramnoteedit: TIWEdit
        Left = 591
        Top = 169
        Width = 282
        Height = 21
        Cursor = crAuto
        Visible = False
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
        FriendlyName = 'NoteEdit'
        MaxLength = 0
        ReadOnly = False
        Required = False
        ScriptEvents = <>
        SubmitOnAsyncEvent = True
        TabOrder = 15
        PasswordPrompt = False
      end
      object CleanBtn: TIWButton
        Left = 10
        Top = 165
        Width = 105
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
        Caption = 'Delete Selected'
        Confirmation = 'Delete selected revisions?'
        DoSubmitValidation = True
        Color = clBtnFace
        Font.Color = clNone
        Font.Size = 10
        Font.Style = []
        FriendlyName = 'InsertBtn'
        ScriptEvents = <>
        TabOrder = 16
        OnClick = CleanBtnClick
      end
    end
  end
  inline PromoFrameTitle1: TPromoFrameTitle
    Left = 0
    Top = 0
    Width = 1024
    Height = 119
    HorzScrollBar.Visible = False
    VertScrollBar.Visible = False
    Align = alTop
    TabOrder = 2
    ExplicitWidth = 1024
    inherited IWFrameRegion: TIWRegion
      Width = 1024
      TabOrder = 6
      ExplicitWidth = 1024
      DesignSize = (
        1024
        119)
      inherited IWRectangle1: TIWRectangle
        Width = 2625
        ExplicitWidth = 2625
      end
      inherited IWRectangle3: TIWRectangle
        Width = 2044
        ExplicitWidth = 2044
      end
      inherited IWImageFile3: TIWImageFile
        Left = 690
        Top = 0
        ExplicitLeft = 690
        ExplicitTop = 0
      end
      inherited langlink: TIWSiLink
        Left = 581
        ExplicitLeft = 581
      end
      inherited Smalltitle: TIWLabel
        Left = 885
        Top = 100
        ExplicitLeft = 885
        ExplicitTop = 100
      end
      inherited HideBox: TIWImageFile
        Left = 1009
        ExplicitLeft = 1009
      end
    end
  end
  object silink: TsiLangLinked
    Version = '6.5.4.7'
    StringsTypes.Strings = (
      'TIB_STRINGLIST'
      'TSTRINGLIST')
    SmartExcludeProps.Strings = (
      'UserLabel.Caption'
      'Extra1.Caption'
      'Extra2.Caption'
      'Extra3.Caption'
      'CreateBtn.Caption'
      'JobGrid.Caption')
    LangDispatcher = RcDataMod.siLangDispatcher1
    LangDelim = 1
    LangNames.Strings = (
      'English')
    Language = 'English'
    CommonContainer = RcDataMod.siLang1
    ExcludedProperties.Strings = (
      'Hint'
      'LangFile')
    Top = 136
    TranslationData = {
      73007400430061007000740069006F006E0073005F0055006E00690063006F00
      640065000D000A004A006F00620073004C006100620065006C0001004A006F00
      620020005200650076006900730069006F006E00730001000D000A004A006F00
      62004E0061006D0065004C0062006C0001004A006F00620020003A0020000100
      0D000A00490057004C006100620065006C003200010044006500730063007200
      69007000740069006F006E0001000D000A00490057004C006100620065006C00
      3300010053007400610074007500730001000D000A0045006400690074004A00
      6F006200420074006E000100450064006900740001000D000A004E006F007400
      65004C006100620065006C0001004E006F007400650001000D000A0074006500
      6D0070006C006100740065006C0062006C000100540045004D0050004C004100
      5400450001000D000A0050006100720061006D00530061007600650042007400
      6E00010041006400640001000D000A0054007900700065004C0062006C000100
      540079007000650001000D000A00490057004C006100620065006C0031000100
      44006F006D00610069006E0001000D000A0043006F006E007300740072006100
      69006E0074004C0062006C00010043006F006E00730074007200610069006E00
      7400730001000D000A004E0061006D0065004C0062006C0001004E0061006D00
      650001000D000A0050006100720061006D00440065006C00420074006E000100
      440065006C0065007400650001000D000A0050006100720061006D0043006100
      6E00630065006C00420074006E000100430061006E00630065006C0001000D00
      0A0070006100720061006D006E006F00740065006C0062006C0001004E006F00
      7400650001000D000A0043006C00650061006E00420074006E00010043006C00
      650061006E0020004F006C006400200001000D000A0073007400480069006E00
      740073005F0055006E00690063006F00640065000D000A007300740044006900
      730070006C00610079004C006100620065006C0073005F0055006E0069006300
      6F00640065000D000A007300740046006F006E00740073005F0055006E006900
      63006F00640065000D000A00730074004D0075006C00740069004C0069006E00
      650073005F0055006E00690063006F00640065000D000A005400790070006500
      43006F006D0062006F002E004900740065006D00730001004F0062006A006500
      630074002C002200540065007800740020004600690065006C00640022002C00
      2200440061007400650020004600690065006C00640022002C00220054006900
      6D00650020004600690065006C00640022002C00220049006E00740065006700
      6500720020004600690065006C00640022002C0022005000720069006E007400
      65007200200049006D0061006700650022002C00220054006500780074002000
      42006C006F0063006B0022002C002200520061007700200049006D0061006700
      6500220001000D000A007300740053007400720069006E00670073005F005500
      6E00690063006F00640065000D000A0043007200650061007400650042007400
      6E00010043007200650061007400650001000D000A0047007200690064002E00
      4900440001004900440001000D000A0047007200690064002E00530074006100
      740075007300010053007400610074007500730001000D000A00470072006900
      64002E004E006F007400650001004E006F007400650001000D000A0047007200
      690064002E004300720065006100740065006400420079000100430072006500
      610074006500640020006200790001000D000A0047007200690064002E004300
      7200650061007400650064004100740001004300720065006100740065006400
      20006100740001000D000A00500072006F0064000100500072006F0064007500
      6300740069006F006E0001000D000A0047007200690064002E00540065007300
      74000100540065007300740001000D000A0047007200690064002E0050007200
      6F0064000100500072006F0064002E0001000D000A0047007200690064002E00
      43006F006E00660069006700010043006F006E0066006900670001000D000A00
      47007200690064002E0041007500740068004200790001004100750074006800
      6F007200690073006500640020006200790001000D000A004700720069006400
      2E00410075007400680041007400010041007500740068006F00720069007300
      6500640020006100740001000D000A0047007200690064002E00410075007400
      68000100410075007400680001000D000A0047007200690064002E0043006F00
      70007900010043006F007000790001000D000A0047007200690064002E005000
      6100720061006D006500740065007200010050006100720061006D0065007400
      6500720001000D000A0047007200690064002E00440065006C00650074006500
      0100440065006C0065007400650001000D000A0047007200690064002E005400
      7900700065000100540079007000650001000D000A0054007900700065004300
      6F006D0062006F002E00300001004F0062006A0065006300740001000D000A00
      540079007000650043006F006D0062006F002E00310001005400650078007400
      20004600690065006C00640001000D000A00540079007000650043006F006D00
      62006F002E0032000100440061007400650020004600690065006C0064000100
      0D000A00540079007000650043006F006D0062006F002E003300010054006900
      6D00650020004600690065006C00640001000D000A0054007900700065004300
      6F006D0062006F002E003400010049006E007400650067006500720020004600
      690065006C00640001000D000A00540079007000650043006F006D0062006F00
      2E00350001005000720069006E00740065007200200049006D00610067006500
      01000D000A00540079007000650043006F006D0062006F002E00360001005400
      650078007400200042006C006F0063006B0001000D000A004700720069006400
      2E0043006F006E00730074007200610069006E0074007300010043006F006E00
      730074007200610069006E00740001000D000A00540079007000650043006F00
      6D0062006F002E0037000100520061007700200049006D006100670065000100
      0D000A0047007200690064002E00450064006900740001004500640069007400
      01000D000A00730074004F00740068006500720053007400720069006E006700
      73005F0055006E00690063006F00640065000D000A006C0061006E0067006C00
      69006E006B002E0046007200690065006E0064006C0079004E0061006D006500
      01006C0061006E0067006C0069006E006B0001000D000A004900570052006500
      6300740061006E0067006C00650032002E0046007200690065006E0064006C00
      79004E0061006D006500010049005700520065006300740061006E0067006C00
      6500310001000D000A0049005700520065006300740061006E0067006C006500
      31002E0046007200690065006E0064006C0079004E0061006D00650001004900
      5700520065006300740061006E0067006C006500310001000D000A004A006F00
      620073004C006100620065006C002E0046007200690065006E0064006C007900
      4E0061006D00650001004A006F00620073004C006100620065006C0001000D00
      0A004A006F00620047007200690064002E0046007200690065006E0064006C00
      79004E0061006D00650001004A006F006200470072006900640001000D000A00
      430072006500610074006500420074006E002E0046007200690065006E006400
      6C0079004E0061006D0065000100430072006500610074006500420074006E00
      01000D000A004A006F0062004E0061006D0065004C0062006C002E0046007200
      690065006E0064006C0079004E0061006D00650001004A006F00620073004C00
      6100620065006C0001000D000A00490057004C006100620065006C0032002E00
      46007200690065006E0064006C0079004E0061006D0065000100490057004C00
      6100620065006C00310001000D000A00490057004C006100620065006C003300
      2E0046007200690065006E0064006C0079004E0061006D006500010049005700
      4C006100620065006C00310001000D000A005300740061007400450064006900
      74002E0046007200690065006E0064006C0079004E0061006D00650001005300
      740061007400450064006900740001000D000A00530074006100740045006400
      690074002E005400650078007400010053007400610074004500640069007400
      01000D000A00440065007300630045006400690074002E004600720069006500
      6E0064006C0079004E0061006D00650001004900570045006400690074003100
      01000D000A00440065007300630045006400690074002E005400650078007400
      01004400650073006300450064006900740001000D000A004500640069007400
      4A006F006200420074006E002E0046007200690065006E0064006C0079004E00
      61006D006500010049006E007300650072007400420074006E0001000D000A00
      4E006F007400650045006400690074002E0046007200690065006E0064006C00
      79004E0061006D00650001004E006F0074006500450064006900740001000D00
      0A004E006F00740065004C006100620065006C002E0046007200690065006E00
      64006C0079004E0061006D00650001004E006F00740065004C00610062006500
      6C0001000D000A00740065006D0070006C006100740065006C0062006C002E00
      46007200690065006E0064006C0079004E0061006D00650001004A006F006200
      73004C006100620065006C0001000D000A0050006100720061006D0047007200
      690064002E0046007200690065006E0064006C0079004E0061006D0065000100
      4A006F006200470072006900640001000D000A004E0061006D00650045006400
      690074002E0046007200690065006E0064006C0079004E0061006D0065000100
      4E006F0074006500450064006900740001000D000A0050006100720061006D00
      5300610076006500420074006E002E0046007200690065006E0064006C007900
      4E0061006D0065000100430072006500610074006500420074006E0001000D00
      0A00540079007000650043006F006D0062006F002E0046007200690065006E00
      64006C0079004E0061006D0065000100540079007000650043006F006D006200
      6F0001000D000A00540079007000650043006F006D0062006F002E004E006F00
      530065006C0065006300740069006F006E00540065007800740001002D002D00
      20004E006F002000530065006C0065006300740069006F006E0020002D002D00
      01000D000A0054007900700065004C0062006C002E0046007200690065006E00
      64006C0079004E0061006D00650001004E006F00740065004C00610062006500
      6C0001000D000A00490057004C006100620065006C0031002E00460072006900
      65006E0064006C0079004E0061006D0065000100490057004C00610062006500
      6C00310001000D000A0044006F006D00610069006E0045006400690074002E00
      46007200690065006E0064006C0079004E0061006D0065000100530074006100
      7400450064006900740001000D000A0044006F006D00610069006E0045006400
      690074002E005400650078007400010044006F006D00610069006E0045006400
      6900740001000D000A0043006F006E00730074007200610069006E0074004500
      6400690074002E0046007200690065006E0064006C0079004E0061006D006500
      01004E006F0074006500450064006900740001000D000A0043006F006E007300
      74007200610069006E0074004C0062006C002E0046007200690065006E006400
      6C0079004E0061006D00650001004E006F00740065004C006100620065006C00
      01000D000A004E0061006D0065004C0062006C002E0046007200690065006E00
      64006C0079004E0061006D00650001004E006F00740065004C00610062006500
      6C0001000D000A0050006100720061006D00440065006C00420074006E002E00
      46007200690065006E0064006C0079004E0061006D0065000100430072006500
      610074006500420074006E0001000D000A0050006100720061006D0043006100
      6E00630065006C00420074006E002E0046007200690065006E0064006C007900
      4E0061006D0065000100430072006500610074006500420074006E0001000D00
      0A0070006100720061006D006E006F00740065006C0062006C002E0046007200
      690065006E0064006C0079004E0061006D00650001004E006F00740065004C00
      6100620065006C0001000D000A0070006100720061006D006E006F0074006500
      65006400690074002E0046007200690065006E0064006C0079004E0061006D00
      650001004E006F0074006500450064006900740001000D000A0043006C006500
      61006E00420074006E002E0046007200690065006E0064006C0079004E006100
      6D006500010049006E007300650072007400420074006E0001000D000A007300
      740043006F006C006C0065006300740069006F006E0073005F0055006E006900
      63006F00640065000D000A007300740043006800610072005300650074007300
      5F0055006E00690063006F00640065000D000A00}
  end
end
