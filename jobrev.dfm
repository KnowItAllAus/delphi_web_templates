object FormJobRev: TFormJobRev
  Left = 0
  Top = 0
  Width = 1024
  Height = 727
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
  DesignLeft = 137
  DesignTop = 229
  inline userfooter1: Tuserfooter
    Left = 0
    Top = 698
    Width = 1024
    Height = 29
    HorzScrollBar.Visible = False
    Align = alBottom
    TabOrder = 0
    inherited IWRegion1: TIWRegion
      Width = 1024
      Height = 29
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
    Height = 579
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
      579)
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
      TabOrder = 4
      RawText = False
      SiLangLinked = silink
      LangFile = 'jobrev.sil'
      LangControl = RcDataMod.LangEditControl1
    end
    object BodyRegion: TIWRegion
      Left = 25
      Top = 21
      Width = 977
      Height = 543
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
        543)
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
        Height = 538
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
        Height = 353
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
        Top = 513
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
        TabOrder = 3
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
        TabOrder = 5
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
        TabOrder = 6
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
        TabOrder = 1
        OnClick = EditJobBtnClick
      end
      object NoteEdit: TIWEdit
        Left = 624
        Top = 514
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
        TabOrder = 2
        PasswordPrompt = False
      end
      object NoteLabel: TIWLabel
        Left = 584
        Top = 516
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
        Left = 615
        Top = 15
        Width = 346
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
        ColumnCount = 3
        OnCellClick = ParamGridCellClick
        RowCount = 1
        ShowEmptyCells = True
        ShowInvisibleRows = True
        ScrollToCurrentRow = False
      end
      object NameLbl: TIWLabel
        Left = 569
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
        Left = 615
        Top = 125
        Width = 258
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
        TabOrder = 8
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
        TabOrder = 9
        OnClick = AddParamBtnClick
      end
      object TypeCombo: TIWComboBox
        Left = 615
        Top = 100
        Width = 191
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
        TabOrder = 10
        ItemIndex = -1
        Items.Strings = (
          'Object'
          'Text Field'
          'Date Field'
          'Time Field'
          'Integer Field')
        Sorted = False
        FriendlyName = 'TypeCombo'
      end
      object TypeLbl: TIWLabel
        Left = 569
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
      TabOrder = 7
      inherited IWImageFile1: TIWImageFile
        RenderSize = False
        StyleRenderOptions.RenderSize = False
      end
      inherited IWImageFile2: TIWImageFile
        RenderSize = False
        StyleRenderOptions.RenderSize = False
      end
      inherited IWRectangle1: TIWRectangle
        Width = 2625
      end
      inherited IWRectangle3: TIWRectangle
        Width = 2044
      end
      inherited IWImageFile3: TIWImageFile
        Left = 690
        Top = 0
        RenderSize = False
        StyleRenderOptions.RenderSize = False
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
        RenderSize = False
        StyleRenderOptions.RenderSize = False
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
      6D42746E01416464010D0A547970654C626C0154797065010D0A737448696E74
      730D0A7374446973706C61794C6162656C730D0A7374466F6E74730D0A547573
      6572666F6F746572014D532053616E73205365726966010D0A73744D756C7469
      4C696E65730D0A4957526567696F6E312E4578747261546167506172616D7301
      010D0A6C616E676C696E6B2E4578747261546167506172616D7301010D0A426F
      6479526567696F6E2E4578747261546167506172616D7301010D0A4957526563
      74616E676C65322E4578747261546167506172616D7301010D0A495752656374
      616E676C65312E4578747261546167506172616D7301010D0A4A6F62734C6162
      656C2E4578747261546167506172616D7301010D0A4A6F62477269642E457874
      7261546167506172616D7301010D0A43726561746542746E2E45787472615461
      67506172616D7301010D0A4A6F624E616D654C626C2E45787472615461675061
      72616D7301010D0A49574C6162656C322E4578747261546167506172616D7301
      010D0A49574C6162656C332E4578747261546167506172616D7301010D0A5374
      6174456469742E4578747261546167506172616D7301010D0A44657363456469
      742E4578747261546167506172616D7301010D0A456469744A6F6242746E2E45
      78747261546167506172616D7301010D0A4E6F7465456469742E457874726154
      6167506172616D7301010D0A4E6F74654C6162656C2E45787472615461675061
      72616D7301010D0A74656D706C6174656C626C2E457874726154616750617261
      6D7301010D0A506172616D477269642E4578747261546167506172616D730101
      0D0A4E616D654C626C2E4578747261546167506172616D7301010D0A4E616D65
      456469742E4578747261546167506172616D7301010D0A416464506172616D42
      746E2E4578747261546167506172616D7301010D0A54797065436F6D626F2E45
      78747261546167506172616D7301010D0A54797065436F6D626F2E4974656D73
      014F626A6563742C2254657874204669656C64222C2244617465204669656C64
      222C2254696D65204669656C64222C22496E7465676572204669656C6422010D
      0A547970654C626C2E4578747261546167506172616D7301010D0A7374537472
      696E67730D0A43726561746542746E01437265617465010D0A477269642E4944
      014944010D0A477269642E53746174757301537461747573010D0A477269642E
      4E6F7465014E6F7465010D0A477269642E437265617465644279014372656174
      6564206279010D0A477269642E43726561746564417401437265617465642061
      74010D0A50726F640150726F64756374696F6E010D0A477269642E5465737401
      54657374010D0A477269642E50726F640150726F642E010D0A477269642E436F
      6E66696701436F6E666967010D0A477269642E41757468427901417574686F72
      69736564206279010D0A477269642E41757468417401417574686F7269736564
      206174010D0A477269642E417574680141757468010D0A477269642E436F7079
      01436F7079010D0A477269642E506172616D6574657201506172616D65746572
      010D0A477269642E44656C6574650144656C657465010D0A477269642E547970
      650154797065010D0A54797065436F6D626F2E30014F626A656374010D0A5479
      7065436F6D626F2E310154657874204669656C64010D0A54797065436F6D626F
      2E320144617465204669656C64010D0A54797065436F6D626F2E330154696D65
      204669656C64010D0A54797065436F6D626F2E3401496E746567657220466965
      6C64010D0A73744F74686572537472696E67730D0A75736572666F6F74657231
      2E48656C704B6579776F726401010D0A4957526567696F6E312E48656C704B65
      79776F726401010D0A6C616E676C696E6B2E436F6E6669726D6174696F6E0101
      0D0A6C616E676C696E6B2E467269656E646C794E616D65016C616E676C696E6B
      010D0A6C616E676C696E6B2E48656C704B6579776F726401010D0A6C616E676C
      696E6B2E5374617475735465787401010D0A426F6479526567696F6E2E48656C
      704B6579776F726401010D0A495752656374616E676C65322E467269656E646C
      794E616D6501495752656374616E676C6531010D0A495752656374616E676C65
      322E48656C704B6579776F726401010D0A495752656374616E676C65322E5374
      617475735465787401010D0A495752656374616E676C65322E5465787401010D
      0A495752656374616E676C65312E467269656E646C794E616D65014957526563
      74616E676C6531010D0A495752656374616E676C65312E48656C704B6579776F
      726401010D0A495752656374616E676C65312E5374617475735465787401010D
      0A495752656374616E676C65312E5465787401010D0A4A6F62734C6162656C2E
      467269656E646C794E616D65014A6F62734C6162656C010D0A4A6F62734C6162
      656C2E48656C704B6579776F726401010D0A4A6F62734C6162656C2E53746174
      75735465787401010D0A4A6F62477269642E467269656E646C794E616D65014A
      6F6247726964010D0A4A6F62477269642E48656C704B6579776F726401010D0A
      4A6F62477269642E5374617475735465787401010D0A4A6F62477269642E5375
      6D6D61727901010D0A43726561746542746E2E436F6E6669726D6174696F6E01
      010D0A43726561746542746E2E467269656E646C794E616D6501437265617465
      42746E010D0A43726561746542746E2E48656C704B6579776F726401010D0A43
      726561746542746E2E486F744B657901010D0A43726561746542746E2E537461
      7475735465787401010D0A54466F726D4A6F625265762E48656C704B6579776F
      726401010D0A54466F726D4A6F625265762E5469746C6501010D0A4A6F624E61
      6D654C626C2E467269656E646C794E616D65014A6F62734C6162656C010D0A4A
      6F624E616D654C626C2E48656C704B6579776F726401010D0A4A6F624E616D65
      4C626C2E5374617475735465787401010D0A50726F6D6F4672616D655469746C
      65312E48656C704B6579776F726401010D0A49574C6162656C322E467269656E
      646C794E616D650149574C6162656C31010D0A49574C6162656C322E48656C70
      4B6579776F726401010D0A49574C6162656C322E537461747573546578740101
      0D0A49574C6162656C332E467269656E646C794E616D650149574C6162656C31
      010D0A49574C6162656C332E48656C704B6579776F726401010D0A49574C6162
      656C332E5374617475735465787401010D0A53746174456469742E467269656E
      646C794E616D65015374617445646974010D0A53746174456469742E48656C70
      4B6579776F726401010D0A53746174456469742E537461747573546578740101
      0D0A53746174456469742E54657874015374617445646974010D0A4465736345
      6469742E467269656E646C794E616D650149574564697431010D0A4465736345
      6469742E48656C704B6579776F726401010D0A44657363456469742E53746174
      75735465787401010D0A44657363456469742E54657874014465736345646974
      010D0A456469744A6F6242746E2E436F6E6669726D6174696F6E01010D0A4564
      69744A6F6242746E2E467269656E646C794E616D6501496E7365727442746E01
      0D0A456469744A6F6242746E2E48656C704B6579776F726401010D0A45646974
      4A6F6242746E2E486F744B657901010D0A456469744A6F6242746E2E53746174
      75735465787401010D0A4E6F7465456469742E467269656E646C794E616D6501
      4E6F746545646974010D0A4E6F7465456469742E48656C704B6579776F726401
      010D0A4E6F7465456469742E5374617475735465787401010D0A4E6F74654564
      69742E5465787401010D0A4E6F74654C6162656C2E467269656E646C794E616D
      65014E6F74654C6162656C010D0A4E6F74654C6162656C2E48656C704B657977
      6F726401010D0A4E6F74654C6162656C2E5374617475735465787401010D0A74
      656D706C6174656C626C2E467269656E646C794E616D65014A6F62734C616265
      6C010D0A74656D706C6174656C626C2E48656C704B6579776F726401010D0A74
      656D706C6174656C626C2E5374617475735465787401010D0A506172616D4772
      69642E467269656E646C794E616D65014A6F6247726964010D0A506172616D47
      7269642E48656C704B6579776F726401010D0A506172616D477269642E537461
      7475735465787401010D0A506172616D477269642E53756D6D61727901010D0A
      4E616D654C626C2E467269656E646C794E616D65014E6F74654C6162656C010D
      0A4E616D654C626C2E48656C704B6579776F726401010D0A4E616D654C626C2E
      5374617475735465787401010D0A4E616D65456469742E467269656E646C794E
      616D65014E6F746545646974010D0A4E616D65456469742E48656C704B657977
      6F726401010D0A4E616D65456469742E5374617475735465787401010D0A4E61
      6D65456469742E5465787401010D0A416464506172616D42746E2E436F6E6669
      726D6174696F6E01010D0A416464506172616D42746E2E467269656E646C794E
      616D650143726561746542746E010D0A416464506172616D42746E2E48656C70
      4B6579776F726401010D0A416464506172616D42746E2E486F744B657901010D
      0A416464506172616D42746E2E5374617475735465787401010D0A5479706543
      6F6D626F2E467269656E646C794E616D650154797065436F6D626F010D0A5479
      7065436F6D626F2E48656C704B6579776F726401010D0A54797065436F6D626F
      2E4E6F53656C656374696F6E54657874012D2D204E6F2053656C656374696F6E
      202D2D010D0A54797065436F6D626F2E5374617475735465787401010D0A5479
      70654C626C2E467269656E646C794E616D65014E6F74654C6162656C010D0A54
      7970654C626C2E48656C704B6579776F726401010D0A547970654C626C2E5374
      617475735465787401010D0A7374436F6C6C656374696F6E730D0A7374436861
      72536574730D0A5475736572666F6F7465720144454641554C545F4348415253
      4554010D0A}
  end
end
