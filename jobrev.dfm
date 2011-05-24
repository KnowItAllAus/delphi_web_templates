object FormJobRev: TFormJobRev
  Left = 0
  Top = 0
  Width = 1024
  Height = 479
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
  DesignLeft = 78
  DesignTop = 113
  inline userfooter1: Tuserfooter
    Left = 0
    Top = 450
    Width = 1024
    Height = 29
    HorzScrollBar.Visible = False
    Align = alBottom
    TabOrder = 0
    inherited IWRegion1: TIWRegion
      Width = 1024
      Height = 29
      TabOrder = 9
      DesignSize = (
        1024
        29)
      inherited IWRectangle1: TIWRectangle
        Left = 648
        Width = 416
      end
      inherited IWRectangle4: TIWRectangle
        Width = 1640
      end
      inherited IWRectangle6: TIWRectangle
        Width = 606
      end
      inherited Cancel: TIWButton
        Left = 938
        Caption = 'Back'
        TabOrder = 2
        OnClick = userfooter1CancelClick
      end
      inherited Extra1: TIWButton
        Left = 850
        TabOrder = 0
      end
      inherited Extra2: TIWButton
        Left = 762
        TabOrder = 1
      end
      inherited fiwSiLink1: TIWSiLink
        Left = 394
        Top = 1
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
    Height = 331
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
      331)
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
      Height = 295
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
        295)
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
        Height = 290
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
        Height = 105
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
        Top = 265
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
        Width = 74
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
        Width = 40
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
        Top = 266
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
        Top = 268
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
        Width = 37
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
        Width = 32
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
        Width = 34
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
    inherited IWFrameRegion: TIWRegion
      Width = 1024
      TabOrder = 6
      DesignSize = (
        1024
        119)
      inherited IWRectangle1: TIWRectangle
        Width = 2625
      end
      inherited IWRectangle3: TIWRectangle
        Width = 2044
      end
      inherited IWImageFile3: TIWImageFile
        Left = 690
        Top = 0
      end
      inherited langlink: TIWSiLink
        Left = 581
      end
      inherited Smalltitle: TIWLabel
        Left = 885
        Top = 100
      end
      inherited HideBox: TIWImageFile
        Left = 1009
      end
    end
  end
  object silink: TsiLangLinked
    Version = '5.3.1.1'
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
      737443617074696F6E730D0A4A6F62734C6162656C014A6F6220526576697369
      6F6E73010D0A4A6F624E616D654C626C014A6F62203A20010D0A49574C616265
      6C32014465736372697074696F6E010D0A49574C6162656C3301537461747573
      010D0A456469744A6F6242746E0145646974010D0A4E6F74654C6162656C014E
      6F7465010D0A74656D706C6174656C626C0154454D504C415445010D0A506172
      616D4772696401010D0A4E616D654C626C014E616D65010D0A41646450617261
      6D42746E01416464010D0A547970654C626C0154797065010D0A6C656E6C6162
      656C015769647468010D0A4865696768746C6162656C01486569676874010D0A
      737448696E74730D0A7374446973706C61794C6162656C730D0A7374466F6E74
      730D0A5475736572666F6F746572014D532053616E73205365726966010D0A73
      744D756C74694C696E65730D0A4957526567696F6E312E457874726154616750
      6172616D7301010D0A6C616E676C696E6B2E4578747261546167506172616D73
      01010D0A426F6479526567696F6E2E4578747261546167506172616D7301010D
      0A495752656374616E676C65322E4578747261546167506172616D7301010D0A
      495752656374616E676C65312E4578747261546167506172616D7301010D0A4A
      6F62734C6162656C2E4578747261546167506172616D7301010D0A4A6F624772
      69642E4578747261546167506172616D7301010D0A43726561746542746E2E45
      78747261546167506172616D7301010D0A4A6F624E616D654C626C2E45787472
      61546167506172616D7301010D0A49574C6162656C322E457874726154616750
      6172616D7301010D0A49574C6162656C332E4578747261546167506172616D73
      01010D0A53746174456469742E4578747261546167506172616D7301010D0A44
      657363456469742E4578747261546167506172616D7301010D0A456469744A6F
      6242746E2E4578747261546167506172616D7301010D0A4E6F7465456469742E
      4578747261546167506172616D7301010D0A4E6F74654C6162656C2E45787472
      61546167506172616D7301010D0A74656D706C6174656C626C2E457874726154
      6167506172616D7301010D0A506172616D477269642E45787472615461675061
      72616D7301010D0A4E616D654C626C2E4578747261546167506172616D730101
      0D0A4E616D65456469742E4578747261546167506172616D7301010D0A416464
      506172616D42746E2E4578747261546167506172616D7301010D0A5479706543
      6F6D626F2E4578747261546167506172616D7301010D0A54797065436F6D626F
      2E4974656D73014F626A6563742C2254657874204669656C64222C2244617465
      204669656C64222C2254696D65204669656C64222C22496E7465676572204669
      656C64222C496D6167652C225465787420426C6F636B22010D0A547970654C62
      6C2E4578747261546167506172616D7301010D0A6C656E6C6162656C2E457874
      7261546167506172616D7301010D0A4C656E677468456469742E457874726154
      6167506172616D7301010D0A4865696768746C6162656C2E4578747261546167
      506172616D7301010D0A686569676874656469742E4578747261546167506172
      616D7301010D0A7374537472696E67730D0A43726561746542746E0143726561
      7465010D0A477269642E4944014944010D0A477269642E537461747573015374
      61747573010D0A477269642E4E6F7465014E6F7465010D0A477269642E437265
      6174656442790143726561746564206279010D0A477269642E43726561746564
      41740143726561746564206174010D0A50726F640150726F64756374696F6E01
      0D0A477269642E546573740154657374010D0A477269642E50726F640150726F
      642E010D0A477269642E436F6E66696701436F6E666967010D0A477269642E41
      757468427901417574686F7269736564206279010D0A477269642E4175746841
      7401417574686F7269736564206174010D0A477269642E417574680141757468
      010D0A477269642E436F707901436F7079010D0A477269642E506172616D6574
      657201506172616D65746572010D0A477269642E44656C6574650144656C6574
      65010D0A477269642E547970650154797065010D0A54797065436F6D626F2E30
      014F626A656374010D0A54797065436F6D626F2E310154657874204669656C64
      010D0A54797065436F6D626F2E320144617465204669656C64010D0A54797065
      436F6D626F2E330154696D65204669656C64010D0A54797065436F6D626F2E34
      01496E7465676572204669656C64010D0A54797065436F6D626F2E3501496D61
      6765010D0A54797065436F6D626F2E36015465787420426C6F636B010D0A4772
      69642E436F6E73747261696E747301436F6E73747261696E74010D0A73744F74
      686572537472696E67730D0A75736572666F6F746572312E48656C704B657977
      6F726401010D0A4957526567696F6E312E48656C704B6579776F726401010D0A
      6C616E676C696E6B2E436F6E6669726D6174696F6E01010D0A6C616E676C696E
      6B2E467269656E646C794E616D65016C616E676C696E6B010D0A6C616E676C69
      6E6B2E48656C704B6579776F726401010D0A6C616E676C696E6B2E5374617475
      735465787401010D0A426F6479526567696F6E2E48656C704B6579776F726401
      010D0A495752656374616E676C65322E467269656E646C794E616D6501495752
      656374616E676C6531010D0A495752656374616E676C65322E48656C704B6579
      776F726401010D0A495752656374616E676C65322E5374617475735465787401
      010D0A495752656374616E676C65322E5465787401010D0A495752656374616E
      676C65312E467269656E646C794E616D6501495752656374616E676C6531010D
      0A495752656374616E676C65312E48656C704B6579776F726401010D0A495752
      656374616E676C65312E5374617475735465787401010D0A495752656374616E
      676C65312E5465787401010D0A4A6F62734C6162656C2E467269656E646C794E
      616D65014A6F62734C6162656C010D0A4A6F62734C6162656C2E48656C704B65
      79776F726401010D0A4A6F62734C6162656C2E5374617475735465787401010D
      0A4A6F62477269642E467269656E646C794E616D65014A6F6247726964010D0A
      4A6F62477269642E48656C704B6579776F726401010D0A4A6F62477269642E53
      74617475735465787401010D0A4A6F62477269642E53756D6D61727901010D0A
      43726561746542746E2E436F6E6669726D6174696F6E01010D0A437265617465
      42746E2E467269656E646C794E616D650143726561746542746E010D0A437265
      61746542746E2E48656C704B6579776F726401010D0A43726561746542746E2E
      486F744B657901010D0A43726561746542746E2E537461747573546578740101
      0D0A54466F726D4A6F625265762E48656C704B6579776F726401010D0A54466F
      726D4A6F625265762E5469746C6501010D0A4A6F624E616D654C626C2E467269
      656E646C794E616D65014A6F62734C6162656C010D0A4A6F624E616D654C626C
      2E48656C704B6579776F726401010D0A4A6F624E616D654C626C2E5374617475
      735465787401010D0A50726F6D6F4672616D655469746C65312E48656C704B65
      79776F726401010D0A49574C6162656C322E467269656E646C794E616D650149
      574C6162656C31010D0A49574C6162656C322E48656C704B6579776F72640101
      0D0A49574C6162656C322E5374617475735465787401010D0A49574C6162656C
      332E467269656E646C794E616D650149574C6162656C31010D0A49574C616265
      6C332E48656C704B6579776F726401010D0A49574C6162656C332E5374617475
      735465787401010D0A53746174456469742E467269656E646C794E616D650153
      74617445646974010D0A53746174456469742E48656C704B6579776F72640101
      0D0A53746174456469742E5374617475735465787401010D0A53746174456469
      742E54657874015374617445646974010D0A44657363456469742E467269656E
      646C794E616D650149574564697431010D0A44657363456469742E48656C704B
      6579776F726401010D0A44657363456469742E5374617475735465787401010D
      0A44657363456469742E54657874014465736345646974010D0A456469744A6F
      6242746E2E436F6E6669726D6174696F6E01010D0A456469744A6F6242746E2E
      467269656E646C794E616D6501496E7365727442746E010D0A456469744A6F62
      42746E2E48656C704B6579776F726401010D0A456469744A6F6242746E2E486F
      744B657901010D0A456469744A6F6242746E2E5374617475735465787401010D
      0A4E6F7465456469742E467269656E646C794E616D65014E6F74654564697401
      0D0A4E6F7465456469742E48656C704B6579776F726401010D0A4E6F74654564
      69742E5374617475735465787401010D0A4E6F7465456469742E546578740101
      0D0A4E6F74654C6162656C2E467269656E646C794E616D65014E6F74654C6162
      656C010D0A4E6F74654C6162656C2E48656C704B6579776F726401010D0A4E6F
      74654C6162656C2E5374617475735465787401010D0A74656D706C6174656C62
      6C2E467269656E646C794E616D65014A6F62734C6162656C010D0A74656D706C
      6174656C626C2E48656C704B6579776F726401010D0A74656D706C6174656C62
      6C2E5374617475735465787401010D0A506172616D477269642E467269656E64
      6C794E616D65014A6F6247726964010D0A506172616D477269642E48656C704B
      6579776F726401010D0A506172616D477269642E537461747573546578740101
      0D0A506172616D477269642E53756D6D61727901010D0A4E616D654C626C2E46
      7269656E646C794E616D65014E6F74654C6162656C010D0A4E616D654C626C2E
      48656C704B6579776F726401010D0A4E616D654C626C2E537461747573546578
      7401010D0A4E616D65456469742E467269656E646C794E616D65014E6F746545
      646974010D0A4E616D65456469742E48656C704B6579776F726401010D0A4E61
      6D65456469742E5374617475735465787401010D0A4E616D65456469742E5465
      787401010D0A416464506172616D42746E2E436F6E6669726D6174696F6E0101
      0D0A416464506172616D42746E2E467269656E646C794E616D65014372656174
      6542746E010D0A416464506172616D42746E2E48656C704B6579776F72640101
      0D0A416464506172616D42746E2E486F744B657901010D0A416464506172616D
      42746E2E5374617475735465787401010D0A54797065436F6D626F2E46726965
      6E646C794E616D650154797065436F6D626F010D0A54797065436F6D626F2E48
      656C704B6579776F726401010D0A54797065436F6D626F2E4E6F53656C656374
      696F6E54657874012D2D204E6F2053656C656374696F6E202D2D010D0A547970
      65436F6D626F2E5374617475735465787401010D0A547970654C626C2E467269
      656E646C794E616D65014E6F74654C6162656C010D0A547970654C626C2E4865
      6C704B6579776F726401010D0A547970654C626C2E5374617475735465787401
      010D0A54466F726D4A6F625265762E5468656D6501010D0A6C616E676C696E6B
      2E43737301010D0A6C616E676C696E6B2E536B696E496401010D0A4957526563
      74616E676C65322E43737301010D0A495752656374616E676C65322E536B696E
      496401010D0A495752656374616E676C65312E43737301010D0A495752656374
      616E676C65312E536B696E496401010D0A4A6F62734C6162656C2E4373730101
      0D0A4A6F62734C6162656C2E536B696E496401010D0A4A6F62477269642E4373
      7301010D0A4A6F62477269642E536B696E496401010D0A43726561746542746E
      2E43737301010D0A43726561746542746E2E536B696E496401010D0A4A6F624E
      616D654C626C2E43737301010D0A4A6F624E616D654C626C2E536B696E496401
      010D0A49574C6162656C322E43737301010D0A49574C6162656C322E536B696E
      496401010D0A49574C6162656C332E43737301010D0A49574C6162656C332E53
      6B696E496401010D0A53746174456469742E43737301010D0A53746174456469
      742E536B696E496401010D0A44657363456469742E43737301010D0A44657363
      456469742E536B696E496401010D0A456469744A6F6242746E2E43737301010D
      0A456469744A6F6242746E2E536B696E496401010D0A4E6F7465456469742E43
      737301010D0A4E6F7465456469742E536B696E496401010D0A4E6F74654C6162
      656C2E43737301010D0A4E6F74654C6162656C2E536B696E496401010D0A7465
      6D706C6174656C626C2E43737301010D0A74656D706C6174656C626C2E536B69
      6E496401010D0A506172616D477269642E43737301010D0A506172616D477269
      642E536B696E496401010D0A4E616D654C626C2E43737301010D0A4E616D654C
      626C2E536B696E496401010D0A4E616D65456469742E43737301010D0A4E616D
      65456469742E536B696E496401010D0A416464506172616D42746E2E43737301
      010D0A416464506172616D42746E2E536B696E496401010D0A54797065436F6D
      626F2E43737301010D0A54797065436F6D626F2E536B696E496401010D0A5479
      70654C626C2E43737301010D0A547970654C626C2E536B696E496401010D0A6C
      656E6C6162656C2E43737301010D0A6C656E6C6162656C2E467269656E646C79
      4E616D65014E6F74654C6162656C010D0A6C656E6C6162656C2E48656C704B65
      79776F726401010D0A6C656E6C6162656C2E536B696E496401010D0A6C656E6C
      6162656C2E5374617475735465787401010D0A4C656E677468456469742E4373
      7301010D0A4C656E677468456469742E467269656E646C794E616D65014C656E
      67746845646974010D0A4C656E677468456469742E48656C704B6579776F7264
      01010D0A4C656E677468456469742E536B696E496401010D0A4C656E67746845
      6469742E5374617475735465787401010D0A4C656E677468456469742E546578
      740130010D0A4865696768746C6162656C2E43737301010D0A4865696768746C
      6162656C2E467269656E646C794E616D65014E6F74654C6162656C010D0A4865
      696768746C6162656C2E48656C704B6579776F726401010D0A4865696768746C
      6162656C2E536B696E496401010D0A4865696768746C6162656C2E5374617475
      735465787401010D0A686569676874656469742E43737301010D0A6865696768
      74656469742E467269656E646C794E616D650148656967687445646974010D0A
      686569676874656469742E48656C704B6579776F726401010D0A686569676874
      656469742E536B696E496401010D0A686569676874656469742E537461747573
      5465787401010D0A686569676874656469742E546578740130010D0A7374436F
      6C6C656374696F6E730D0A737443686172536574730D0A5475736572666F6F74
      65720144454641554C545F43484152534554010D0A}
  end
end
