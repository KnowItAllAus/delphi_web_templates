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
  DesignLeft = 8
  DesignTop = 8
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
      TabOrder = 9
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
      Left = 25
      Top = 21
      Width = 977
      Height = 529
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
        529)
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
      object JobsLabel: TIWLabel
        Left = 16
        Top = 129
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
        Left = 16
        Top = 155
        Width = 945
        Height = 339
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
        Top = 499
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
        Top = 500
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
      end
      object NoteLabel: TIWLabel
        Left = 584
        Top = 502
        Width = 29
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
      end
      object templatelbl: TIWLabel
        Left = 195
        Top = 108
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
        Left = 591
        Top = 15
        Width = 370
        Height = 81
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
        ColumnCount = 4
        OnCellClick = ParamGridCellClick
        RowCount = 1
        ShowEmptyCells = True
        ShowInvisibleRows = True
        ScrollToCurrentRow = False
      end
      object NameLbl: TIWLabel
        Left = 547
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
      object NameEdit: TIWEdit
        Left = 591
        Top = 125
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
        TabOrder = 7
        PasswordPrompt = False
      end
      object AddParamBtn: TIWButton
        Left = 887
        Top = 124
        Width = 75
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
        Caption = 'Add'
        DoSubmitValidation = True
        Color = clBtnFace
        Font.Color = clNone
        Font.Size = 10
        Font.Style = []
        FriendlyName = 'CreateBtn'
        ScriptEvents = <>
        TabOrder = 8
        OnClick = AddParamBtnClick
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
        OnAsyncChange = TypeComboAsyncChange
        Style = stNormal
        ButtonColor = clBtnFace
        DoSubmitValidation = True
        Editable = True
        NonEditableAsLabel = True
        SubmitOnAsyncEvent = True
        TabOrder = 10
        ItemIndex = -1
        Items.Strings = (
          'Object'
          'Text Field'
          'Date Field'
          'Time Field'
          'Integer Field'
          'Image'
          'Text Block')
        Sorted = False
        FriendlyName = 'TypeCombo'
      end
      object TypeLbl: TIWLabel
        Left = 545
        Top = 102
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
      object lenlabel: TIWLabel
        Left = 793
        Top = 102
        Width = 33
        Height = 16
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
        Alignment = taRightJustify
        BGColor = clNone
        Font.Color = clNone
        Font.Size = 10
        Font.Style = []
        NoWrap = False
        ConvertSpaces = False
        ForControl = LengthEdit
        HasTabOrder = False
        FriendlyName = 'NoteLabel'
        Caption = 'Width'
        RawText = False
      end
      object LengthEdit: TIWEdit
        Left = 843
        Top = 99
        Width = 33
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
        BGColor = clInactiveCaptionText
        FocusColor = clNone
        DoSubmitValidation = True
        Editable = True
        NonEditableAsLabel = True
        Font.Color = clWebGRAY
        Font.Size = 10
        Font.Style = []
        FriendlyName = 'LengthEdit'
        MaxLength = 0
        ReadOnly = False
        Required = False
        ScriptEvents = <>
        SubmitOnAsyncEvent = True
        TabOrder = 11
        Enabled = False
        PasswordPrompt = False
        Text = '0'
      end
      object Heightlabel: TIWLabel
        Left = 885
        Top = 102
        Width = 39
        Height = 16
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
        Alignment = taRightJustify
        BGColor = clNone
        Font.Color = clNone
        Font.Size = 10
        Font.Style = []
        NoWrap = False
        ConvertSpaces = False
        ForControl = heightedit
        HasTabOrder = False
        FriendlyName = 'NoteLabel'
        Caption = 'Height'
        RawText = False
      end
      object heightedit: TIWEdit
        Left = 928
        Top = 99
        Width = 33
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
        BGColor = clInactiveCaptionText
        FocusColor = clNone
        DoSubmitValidation = True
        Editable = True
        NonEditableAsLabel = True
        Font.Color = clWebGRAY
        Font.Size = 10
        Font.Style = []
        FriendlyName = 'HeightEdit'
        MaxLength = 0
        ReadOnly = False
        Required = False
        ScriptEvents = <>
        SubmitOnAsyncEvent = True
        TabOrder = 12
        Enabled = False
        PasswordPrompt = False
        Text = '0'
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
        TabOrder = 13
        PasswordPrompt = False
        Text = 'DomainEdit'
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
      5400450001000D000A0050006100720061006D00470072006900640001000100
      0D000A004E0061006D0065004C0062006C0001004E0061006D00650001000D00
      0A0041006400640050006100720061006D00420074006E000100410064006400
      01000D000A0054007900700065004C0062006C00010054007900700065000100
      0D000A006C0065006E006C006100620065006C00010057006900640074006800
      01000D000A004800650069006700680074006C006100620065006C0001004800
      6500690067006800740001000D000A0073007400480069006E00740073005F00
      55006E00690063006F00640065000D000A007300740044006900730070006C00
      610079004C006100620065006C0073005F0055006E00690063006F0064006500
      0D000A007300740046006F006E00740073005F0055006E00690063006F006400
      65000D000A005400750073006500720066006F006F0074006500720001004D00
      53002000530061006E00730020005300650072006900660001000D000A007300
      74004D0075006C00740069004C0069006E00650073005F0055006E0069006300
      6F00640065000D000A004900570052006500670069006F006E0031002E004500
      780074007200610054006100670050006100720061006D007300010001000D00
      0A006C0061006E0067006C0069006E006B002E00450078007400720061005400
      6100670050006100720061006D007300010001000D000A0042006F0064007900
      52006500670069006F006E002E00450078007400720061005400610067005000
      6100720061006D007300010001000D000A004900570052006500630074006100
      6E0067006C00650032002E004500780074007200610054006100670050006100
      720061006D007300010001000D000A0049005700520065006300740061006E00
      67006C00650031002E0045007800740072006100540061006700500061007200
      61006D007300010001000D000A004A006F00620073004C006100620065006C00
      2E004500780074007200610054006100670050006100720061006D0073000100
      01000D000A004A006F00620047007200690064002E0045007800740072006100
      54006100670050006100720061006D007300010001000D000A00430072006500
      610074006500420074006E002E00450078007400720061005400610067005000
      6100720061006D007300010001000D000A004A006F0062004E0061006D006500
      4C0062006C002E00450078007400720061005400610067005000610072006100
      6D007300010001000D000A00490057004C006100620065006C0032002E004500
      780074007200610054006100670050006100720061006D007300010001000D00
      0A00490057004C006100620065006C0033002E00450078007400720061005400
      6100670050006100720061006D007300010001000D000A005300740061007400
      45006400690074002E0045007800740072006100540061006700500061007200
      61006D007300010001000D000A00440065007300630045006400690074002E00
      4500780074007200610054006100670050006100720061006D00730001000100
      0D000A0045006400690074004A006F006200420074006E002E00450078007400
      7200610054006100670050006100720061006D007300010001000D000A004E00
      6F007400650045006400690074002E0045007800740072006100540061006700
      50006100720061006D007300010001000D000A004E006F00740065004C006100
      620065006C002E00450078007400720061005400610067005000610072006100
      6D007300010001000D000A00740065006D0070006C006100740065006C006200
      6C002E004500780074007200610054006100670050006100720061006D007300
      010001000D000A0050006100720061006D0047007200690064002E0045007800
      74007200610054006100670050006100720061006D007300010001000D000A00
      4E0061006D0065004C0062006C002E0045007800740072006100540061006700
      50006100720061006D007300010001000D000A004E0061006D00650045006400
      690074002E004500780074007200610054006100670050006100720061006D00
      7300010001000D000A0041006400640050006100720061006D00420074006E00
      2E004500780074007200610054006100670050006100720061006D0073000100
      01000D000A00540079007000650043006F006D0062006F002E00450078007400
      7200610054006100670050006100720061006D007300010001000D000A005400
      79007000650043006F006D0062006F002E004900740065006D00730001004F00
      62006A006500630074002C002200540065007800740020004600690065006C00
      640022002C002200440061007400650020004600690065006C00640022002C00
      2200540069006D00650020004600690065006C00640022002C00220049006E00
      7400650067006500720020004600690065006C00640022002C0049006D006100
      670065002C0022005400650078007400200042006C006F0063006B0022000100
      0D000A0054007900700065004C0062006C002E00450078007400720061005400
      6100670050006100720061006D007300010001000D000A006C0065006E006C00
      6100620065006C002E0045007800740072006100540061006700500061007200
      61006D007300010001000D000A004C0065006E00670074006800450064006900
      74002E004500780074007200610054006100670050006100720061006D007300
      010001000D000A004800650069006700680074006C006100620065006C002E00
      4500780074007200610054006100670050006100720061006D00730001000100
      0D000A0068006500690067006800740065006400690074002E00450078007400
      7200610054006100670050006100720061006D007300010001000D000A007300
      740053007400720069006E00670073005F0055006E00690063006F0064006500
      0D000A00430072006500610074006500420074006E0001004300720065006100
      7400650001000D000A0047007200690064002E00490044000100490044000100
      0D000A0047007200690064002E00530074006100740075007300010053007400
      610074007500730001000D000A0047007200690064002E004E006F0074006500
      01004E006F007400650001000D000A0047007200690064002E00430072006500
      6100740065006400420079000100430072006500610074006500640020006200
      790001000D000A0047007200690064002E004300720065006100740065006400
      410074000100430072006500610074006500640020006100740001000D000A00
      500072006F0064000100500072006F00640075006300740069006F006E000100
      0D000A0047007200690064002E00540065007300740001005400650073007400
      01000D000A0047007200690064002E00500072006F0064000100500072006F00
      64002E0001000D000A0047007200690064002E0043006F006E00660069006700
      010043006F006E0066006900670001000D000A0047007200690064002E004100
      75007400680042007900010041007500740068006F0072006900730065006400
      20006200790001000D000A0047007200690064002E0041007500740068004100
      7400010041007500740068006F00720069007300650064002000610074000100
      0D000A0047007200690064002E00410075007400680001004100750074006800
      01000D000A0047007200690064002E0043006F0070007900010043006F007000
      790001000D000A0047007200690064002E0050006100720061006D0065007400
      65007200010050006100720061006D00650074006500720001000D000A004700
      7200690064002E00440065006C006500740065000100440065006C0065007400
      650001000D000A0047007200690064002E005400790070006500010054007900
      7000650001000D000A00540079007000650043006F006D0062006F002E003000
      01004F0062006A0065006300740001000D000A00540079007000650043006F00
      6D0062006F002E0031000100540065007800740020004600690065006C006400
      01000D000A00540079007000650043006F006D0062006F002E00320001004400
      61007400650020004600690065006C00640001000D000A005400790070006500
      43006F006D0062006F002E0033000100540069006D0065002000460069006500
      6C00640001000D000A00540079007000650043006F006D0062006F002E003400
      010049006E007400650067006500720020004600690065006C00640001000D00
      0A00540079007000650043006F006D0062006F002E003500010049006D006100
      6700650001000D000A00540079007000650043006F006D0062006F002E003600
      01005400650078007400200042006C006F0063006B0001000D000A0047007200
      690064002E0043006F006E00730074007200610069006E007400730001004300
      6F006E00730074007200610069006E00740001000D000A00730074004F007400
      68006500720053007400720069006E00670073005F0055006E00690063006F00
      640065000D000A00750073006500720066006F006F0074006500720031002E00
      480065006C0070004B006500790077006F0072006400010001000D000A004900
      570052006500670069006F006E0031002E00480065006C0070004B0065007900
      77006F0072006400010001000D000A006C0061006E0067006C0069006E006B00
      2E0043006F006E006600690072006D006100740069006F006E00010001000D00
      0A006C0061006E0067006C0069006E006B002E0046007200690065006E006400
      6C0079004E0061006D00650001006C0061006E0067006C0069006E006B000100
      0D000A006C0061006E0067006C0069006E006B002E00480065006C0070004B00
      6500790077006F0072006400010001000D000A006C0061006E0067006C006900
      6E006B002E005300740061007400750073005400650078007400010001000D00
      0A0042006F006400790052006500670069006F006E002E00480065006C007000
      4B006500790077006F0072006400010001000D000A0049005700520065006300
      740061006E0067006C00650032002E0046007200690065006E0064006C007900
      4E0061006D006500010049005700520065006300740061006E0067006C006500
      310001000D000A0049005700520065006300740061006E0067006C0065003200
      2E00480065006C0070004B006500790077006F0072006400010001000D000A00
      49005700520065006300740061006E0067006C00650032002E00530074006100
      7400750073005400650078007400010001000D000A0049005700520065006300
      740061006E0067006C00650032002E005400650078007400010001000D000A00
      49005700520065006300740061006E0067006C00650031002E00460072006900
      65006E0064006C0079004E0061006D0065000100490057005200650063007400
      61006E0067006C006500310001000D000A004900570052006500630074006100
      6E0067006C00650031002E00480065006C0070004B006500790077006F007200
      6400010001000D000A0049005700520065006300740061006E0067006C006500
      31002E005300740061007400750073005400650078007400010001000D000A00
      49005700520065006300740061006E0067006C00650031002E00540065007800
      7400010001000D000A004A006F00620073004C006100620065006C002E004600
      7200690065006E0064006C0079004E0061006D00650001004A006F0062007300
      4C006100620065006C0001000D000A004A006F00620073004C00610062006500
      6C002E00480065006C0070004B006500790077006F0072006400010001000D00
      0A004A006F00620073004C006100620065006C002E0053007400610074007500
      73005400650078007400010001000D000A004A006F0062004700720069006400
      2E0046007200690065006E0064006C0079004E0061006D00650001004A006F00
      6200470072006900640001000D000A004A006F00620047007200690064002E00
      480065006C0070004B006500790077006F0072006400010001000D000A004A00
      6F00620047007200690064002E00530074006100740075007300540065007800
      7400010001000D000A004A006F00620047007200690064002E00530075006D00
      6D00610072007900010001000D000A0043007200650061007400650042007400
      6E002E0043006F006E006600690072006D006100740069006F006E0001000100
      0D000A00430072006500610074006500420074006E002E004600720069006500
      6E0064006C0079004E0061006D00650001004300720065006100740065004200
      74006E0001000D000A00430072006500610074006500420074006E002E004800
      65006C0070004B006500790077006F0072006400010001000D000A0043007200
      6500610074006500420074006E002E0048006F0074004B006500790001000100
      0D000A00430072006500610074006500420074006E002E005300740061007400
      750073005400650078007400010001000D000A00540046006F0072006D004A00
      6F0062005200650076002E00480065006C0070004B006500790077006F007200
      6400010001000D000A00540046006F0072006D004A006F006200520065007600
      2E005400690074006C006500010001000D000A004A006F0062004E0061006D00
      65004C0062006C002E0046007200690065006E0064006C0079004E0061006D00
      650001004A006F00620073004C006100620065006C0001000D000A004A006F00
      62004E0061006D0065004C0062006C002E00480065006C0070004B0065007900
      77006F0072006400010001000D000A004A006F0062004E0061006D0065004C00
      62006C002E005300740061007400750073005400650078007400010001000D00
      0A00500072006F006D006F004600720061006D0065005400690074006C006500
      31002E00480065006C0070004B006500790077006F0072006400010001000D00
      0A00490057004C006100620065006C0032002E0046007200690065006E006400
      6C0079004E0061006D0065000100490057004C006100620065006C0031000100
      0D000A00490057004C006100620065006C0032002E00480065006C0070004B00
      6500790077006F0072006400010001000D000A00490057004C00610062006500
      6C0032002E005300740061007400750073005400650078007400010001000D00
      0A00490057004C006100620065006C0033002E0046007200690065006E006400
      6C0079004E0061006D0065000100490057004C006100620065006C0031000100
      0D000A00490057004C006100620065006C0033002E00480065006C0070004B00
      6500790077006F0072006400010001000D000A00490057004C00610062006500
      6C0033002E005300740061007400750073005400650078007400010001000D00
      0A00530074006100740045006400690074002E0046007200690065006E006400
      6C0079004E0061006D0065000100530074006100740045006400690074000100
      0D000A00530074006100740045006400690074002E00480065006C0070004B00
      6500790077006F0072006400010001000D000A00530074006100740045006400
      690074002E005300740061007400750073005400650078007400010001000D00
      0A00530074006100740045006400690074002E00540065007800740001005300
      740061007400450064006900740001000D000A00440065007300630045006400
      690074002E0046007200690065006E0064006C0079004E0061006D0065000100
      490057004500640069007400310001000D000A00440065007300630045006400
      690074002E00480065006C0070004B006500790077006F007200640001000100
      0D000A00440065007300630045006400690074002E0053007400610074007500
      73005400650078007400010001000D000A004400650073006300450064006900
      74002E0054006500780074000100440065007300630045006400690074000100
      0D000A0045006400690074004A006F006200420074006E002E0043006F006E00
      6600690072006D006100740069006F006E00010001000D000A00450064006900
      74004A006F006200420074006E002E0046007200690065006E0064006C007900
      4E0061006D006500010049006E007300650072007400420074006E0001000D00
      0A0045006400690074004A006F006200420074006E002E00480065006C007000
      4B006500790077006F0072006400010001000D000A0045006400690074004A00
      6F006200420074006E002E0048006F0074004B0065007900010001000D000A00
      45006400690074004A006F006200420074006E002E0053007400610074007500
      73005400650078007400010001000D000A004E006F0074006500450064006900
      74002E0046007200690065006E0064006C0079004E0061006D00650001004E00
      6F0074006500450064006900740001000D000A004E006F007400650045006400
      690074002E00480065006C0070004B006500790077006F007200640001000100
      0D000A004E006F007400650045006400690074002E0053007400610074007500
      73005400650078007400010001000D000A004E006F0074006500450064006900
      74002E005400650078007400010001000D000A004E006F00740065004C006100
      620065006C002E0046007200690065006E0064006C0079004E0061006D006500
      01004E006F00740065004C006100620065006C0001000D000A004E006F007400
      65004C006100620065006C002E00480065006C0070004B006500790077006F00
      72006400010001000D000A004E006F00740065004C006100620065006C002E00
      5300740061007400750073005400650078007400010001000D000A0074006500
      6D0070006C006100740065006C0062006C002E0046007200690065006E006400
      6C0079004E0061006D00650001004A006F00620073004C006100620065006C00
      01000D000A00740065006D0070006C006100740065006C0062006C002E004800
      65006C0070004B006500790077006F0072006400010001000D000A0074006500
      6D0070006C006100740065006C0062006C002E00530074006100740075007300
      5400650078007400010001000D000A0050006100720061006D00470072006900
      64002E0046007200690065006E0064006C0079004E0061006D00650001004A00
      6F006200470072006900640001000D000A0050006100720061006D0047007200
      690064002E00480065006C0070004B006500790077006F007200640001000100
      0D000A0050006100720061006D0047007200690064002E005300740061007400
      750073005400650078007400010001000D000A0050006100720061006D004700
      7200690064002E00530075006D006D00610072007900010001000D000A004E00
      61006D0065004C0062006C002E0046007200690065006E0064006C0079004E00
      61006D00650001004E006F00740065004C006100620065006C0001000D000A00
      4E0061006D0065004C0062006C002E00480065006C0070004B00650079007700
      6F0072006400010001000D000A004E0061006D0065004C0062006C002E005300
      740061007400750073005400650078007400010001000D000A004E0061006D00
      650045006400690074002E0046007200690065006E0064006C0079004E006100
      6D00650001004E006F0074006500450064006900740001000D000A004E006100
      6D00650045006400690074002E00480065006C0070004B006500790077006F00
      72006400010001000D000A004E0061006D00650045006400690074002E005300
      740061007400750073005400650078007400010001000D000A004E0061006D00
      650045006400690074002E005400650078007400010001000D000A0041006400
      640050006100720061006D00420074006E002E0043006F006E00660069007200
      6D006100740069006F006E00010001000D000A00410064006400500061007200
      61006D00420074006E002E0046007200690065006E0064006C0079004E006100
      6D0065000100430072006500610074006500420074006E0001000D000A004100
      6400640050006100720061006D00420074006E002E00480065006C0070004B00
      6500790077006F0072006400010001000D000A00410064006400500061007200
      61006D00420074006E002E0048006F0074004B0065007900010001000D000A00
      41006400640050006100720061006D00420074006E002E005300740061007400
      750073005400650078007400010001000D000A00540079007000650043006F00
      6D0062006F002E0046007200690065006E0064006C0079004E0061006D006500
      0100540079007000650043006F006D0062006F0001000D000A00540079007000
      650043006F006D0062006F002E00480065006C0070004B006500790077006F00
      72006400010001000D000A00540079007000650043006F006D0062006F002E00
      4E006F00530065006C0065006300740069006F006E0054006500780074000100
      2D002D0020004E006F002000530065006C0065006300740069006F006E002000
      2D002D0001000D000A00540079007000650043006F006D0062006F002E005300
      740061007400750073005400650078007400010001000D000A00540079007000
      65004C0062006C002E0046007200690065006E0064006C0079004E0061006D00
      650001004E006F00740065004C006100620065006C0001000D000A0054007900
      700065004C0062006C002E00480065006C0070004B006500790077006F007200
      6400010001000D000A0054007900700065004C0062006C002E00530074006100
      7400750073005400650078007400010001000D000A00540046006F0072006D00
      4A006F0062005200650076002E005400680065006D006500010001000D000A00
      6C0061006E0067006C0069006E006B002E00430073007300010001000D000A00
      6C0061006E0067006C0069006E006B002E0053006B0069006E00490064000100
      01000D000A0049005700520065006300740061006E0067006C00650032002E00
      430073007300010001000D000A0049005700520065006300740061006E006700
      6C00650032002E0053006B0069006E0049006400010001000D000A0049005700
      520065006300740061006E0067006C00650031002E0043007300730001000100
      0D000A0049005700520065006300740061006E0067006C00650031002E005300
      6B0069006E0049006400010001000D000A004A006F00620073004C0061006200
      65006C002E00430073007300010001000D000A004A006F00620073004C006100
      620065006C002E0053006B0069006E0049006400010001000D000A004A006F00
      620047007200690064002E00430073007300010001000D000A004A006F006200
      47007200690064002E0053006B0069006E0049006400010001000D000A004300
      72006500610074006500420074006E002E00430073007300010001000D000A00
      430072006500610074006500420074006E002E0053006B0069006E0049006400
      010001000D000A004A006F0062004E0061006D0065004C0062006C002E004300
      73007300010001000D000A004A006F0062004E0061006D0065004C0062006C00
      2E0053006B0069006E0049006400010001000D000A00490057004C0061006200
      65006C0032002E00430073007300010001000D000A00490057004C0061006200
      65006C0032002E0053006B0069006E0049006400010001000D000A0049005700
      4C006100620065006C0033002E00430073007300010001000D000A0049005700
      4C006100620065006C0033002E0053006B0069006E0049006400010001000D00
      0A00530074006100740045006400690074002E00430073007300010001000D00
      0A00530074006100740045006400690074002E0053006B0069006E0049006400
      010001000D000A00440065007300630045006400690074002E00430073007300
      010001000D000A00440065007300630045006400690074002E0053006B006900
      6E0049006400010001000D000A0045006400690074004A006F00620042007400
      6E002E00430073007300010001000D000A0045006400690074004A006F006200
      420074006E002E0053006B0069006E0049006400010001000D000A004E006F00
      7400650045006400690074002E00430073007300010001000D000A004E006F00
      7400650045006400690074002E0053006B0069006E0049006400010001000D00
      0A004E006F00740065004C006100620065006C002E0043007300730001000100
      0D000A004E006F00740065004C006100620065006C002E0053006B0069006E00
      49006400010001000D000A00740065006D0070006C006100740065006C006200
      6C002E00430073007300010001000D000A00740065006D0070006C0061007400
      65006C0062006C002E0053006B0069006E0049006400010001000D000A005000
      6100720061006D0047007200690064002E00430073007300010001000D000A00
      50006100720061006D0047007200690064002E0053006B0069006E0049006400
      010001000D000A004E0061006D0065004C0062006C002E004300730073000100
      01000D000A004E0061006D0065004C0062006C002E0053006B0069006E004900
      6400010001000D000A004E0061006D00650045006400690074002E0043007300
      7300010001000D000A004E0061006D00650045006400690074002E0053006B00
      69006E0049006400010001000D000A0041006400640050006100720061006D00
      420074006E002E00430073007300010001000D000A0041006400640050006100
      720061006D00420074006E002E0053006B0069006E0049006400010001000D00
      0A00540079007000650043006F006D0062006F002E0043007300730001000100
      0D000A00540079007000650043006F006D0062006F002E0053006B0069006E00
      49006400010001000D000A0054007900700065004C0062006C002E0043007300
      7300010001000D000A0054007900700065004C0062006C002E0053006B006900
      6E0049006400010001000D000A006C0065006E006C006100620065006C002E00
      430073007300010001000D000A006C0065006E006C006100620065006C002E00
      46007200690065006E0064006C0079004E0061006D00650001004E006F007400
      65004C006100620065006C0001000D000A006C0065006E006C00610062006500
      6C002E00480065006C0070004B006500790077006F0072006400010001000D00
      0A006C0065006E006C006100620065006C002E0053006B0069006E0049006400
      010001000D000A006C0065006E006C006100620065006C002E00530074006100
      7400750073005400650078007400010001000D000A004C0065006E0067007400
      680045006400690074002E00430073007300010001000D000A004C0065006E00
      67007400680045006400690074002E0046007200690065006E0064006C007900
      4E0061006D00650001004C0065006E0067007400680045006400690074000100
      0D000A004C0065006E0067007400680045006400690074002E00480065006C00
      70004B006500790077006F0072006400010001000D000A004C0065006E006700
      7400680045006400690074002E0053006B0069006E0049006400010001000D00
      0A004C0065006E0067007400680045006400690074002E005300740061007400
      750073005400650078007400010001000D000A004C0065006E00670074006800
      45006400690074002E0054006500780074000100300001000D000A0048006500
      69006700680074006C006100620065006C002E00430073007300010001000D00
      0A004800650069006700680074006C006100620065006C002E00460072006900
      65006E0064006C0079004E0061006D00650001004E006F00740065004C006100
      620065006C0001000D000A004800650069006700680074006C00610062006500
      6C002E00480065006C0070004B006500790077006F0072006400010001000D00
      0A004800650069006700680074006C006100620065006C002E0053006B006900
      6E0049006400010001000D000A004800650069006700680074006C0061006200
      65006C002E005300740061007400750073005400650078007400010001000D00
      0A0068006500690067006800740065006400690074002E004300730073000100
      01000D000A0068006500690067006800740065006400690074002E0046007200
      690065006E0064006C0079004E0061006D006500010048006500690067006800
      7400450064006900740001000D000A0068006500690067006800740065006400
      690074002E00480065006C0070004B006500790077006F007200640001000100
      0D000A0068006500690067006800740065006400690074002E0053006B006900
      6E0049006400010001000D000A00680065006900670068007400650064006900
      74002E005300740061007400750073005400650078007400010001000D000A00
      68006500690067006800740065006400690074002E0054006500780074000100
      300001000D000A007300740043006F006C006C0065006300740069006F006E00
      73005F0055006E00690063006F00640065000D000A0073007400430068006100
      720053006500740073005F0055006E00690063006F00640065000D000A005400
      750073006500720066006F006F00740065007200010044004500460041005500
      4C0054005F00430048004100520053004500540001000D000A00}
  end
end
