object FormJobDtl: TFormJobDtl
  Left = 0
  Top = 0
  Width = 1028
  Height = 579
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
      TabOrder = 10
      ExplicitWidth = 1028
      ExplicitHeight = 116
      DesignSize = (
        1028
        116)
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
      end
      inherited IWImageFile3: TIWImageFile
        Left = 623
        ExplicitLeft = 623
      end
      inherited langlink: TIWSiLink
        Left = 636
        ExplicitLeft = 636
      end
      inherited Smalltitle: TIWLabel
        Left = 949
        Width = 57
        ExplicitLeft = 949
        ExplicitWidth = 57
      end
      inherited HideBox: TIWImageFile
        Left = 1013
        ExplicitLeft = 1013
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
    Top = 547
    Width = 1028
    Height = 32
    HorzScrollBar.Visible = False
    Align = alBottom
    TabOrder = 1
    ExplicitTop = 547
    ExplicitWidth = 1028
    ExplicitHeight = 32
    inherited IWRegion1: TIWRegion
      Width = 1028
      Height = 32
      TabOrder = 9
      ExplicitWidth = 1028
      ExplicitHeight = 32
      DesignSize = (
        1028
        32)
      inherited IWRectangle1: TIWRectangle
        Left = 652
        Width = 416
        ExplicitLeft = 652
        ExplicitWidth = 416
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
        OnClick = userfooter1CancelClick
        ExplicitLeft = 939
      end
      inherited Extra1: TIWButton
        Left = 851
        ExplicitLeft = 851
      end
      inherited Extra2: TIWButton
        Left = 763
        Visible = True
        Caption = 'Save'
        OnClick = userfooter1Extra2Click
        ExplicitLeft = 763
      end
      inherited fiwSiLink1: TIWSiLink
        Left = 715
        ExplicitLeft = 715
      end
      inherited navcombo: TIWComboBox
        Visible = False
      end
    end
  end
  object IWRegion1: TIWRegion
    Left = 0
    Top = 116
    Width = 1028
    Height = 431
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
      431)
    object IWSiLink1: TIWSiLink
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
      FriendlyName = 'IWSiLink1'
      TabOrder = 5
      RawText = False
      SiLangLinked = silanglinked1
      LangFile = 'job.sil'
      LangControl = RcDataMod.LangEditControl1
    end
    object BodyRegion: TIWRegion
      Left = 183
      Top = 50
      Width = 657
      Height = 271
      Cursor = crAuto
      RenderInvisibleControls = False
      Anchors = [akTop]
      BorderOptions.NumericWidth = 0
      BorderOptions.BorderWidth = cbwNumeric
      BorderOptions.Style = cbsNone
      BorderOptions.Color = clNone
      Color = 14202786
      ParentShowHint = False
      ShowHint = True
      ZIndex = 1000
      Splitter = False
      object IWRectangle2: TIWRectangle
        Left = 0
        Top = 0
        Width = 657
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
        Left = 0
        Top = 3
        Width = 3
        Height = 268
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
      object JobLabel: TIWLabel
        Left = 48
        Top = 12
        Width = 121
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
        Caption = 'Job Details'
        RawText = False
      end
      object IWLabel1: TIWLabel
        Left = 48
        Top = 89
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
      object IWLabel2: TIWLabel
        Left = 48
        Top = 217
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
      object DescEdit: TIWEdit
        Left = 128
        Top = 216
        Width = 465
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
        FriendlyName = 'IWEdit1'
        MaxLength = 0
        ReadOnly = False
        Required = False
        ScriptEvents = <>
        SubmitOnAsyncEvent = True
        TabOrder = 6
        PasswordPrompt = False
        Text = 'DescEdit'
      end
      object NameEdit: TIWEdit
        Left = 128
        Top = 56
        Width = 257
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
        FriendlyName = 'StatEdit'
        MaxLength = 0
        ReadOnly = False
        Required = False
        ScriptEvents = <>
        SubmitOnAsyncEvent = True
        TabOrder = 7
        PasswordPrompt = False
        Text = 'NameEdit'
      end
      object IWLabel3: TIWLabel
        Left = 48
        Top = 57
        Width = 36
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
        Caption = 'Name'
        RawText = False
      end
      object EditBtn: TIWRadioButton
        Left = 130
        Top = 88
        Width = 252
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
        Caption = 'Edit'
        Editable = True
        Font.Color = clNone
        Font.Size = 10
        Font.Style = []
        ScriptEvents = <>
        DoSubmitValidation = True
        Checked = False
        Group = 'StatusGroup'
        Value = '0'
        FriendlyName = 'EditBtn'
        SubmitOnAsyncEvent = True
      end
      object TestBtn: TIWRadioButton
        Tag = 1
        Left = 130
        Top = 112
        Width = 252
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
        Caption = 'Test'
        Editable = True
        Font.Color = clNone
        Font.Size = 10
        Font.Style = []
        ScriptEvents = <>
        DoSubmitValidation = True
        Checked = False
        Group = 'StatusGroup'
        Value = '1'
        FriendlyName = 'IWRadioButton1'
        SubmitOnAsyncEvent = True
      end
      object ReadyBtn: TIWRadioButton
        Tag = 2
        Left = 130
        Top = 136
        Width = 252
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
        Caption = 'Ready'
        Editable = True
        Font.Color = clNone
        Font.Size = 10
        Font.Style = []
        ScriptEvents = <>
        DoSubmitValidation = True
        Checked = False
        Group = 'StatusGroup'
        Value = '2'
        FriendlyName = 'IWRadioButton1'
        SubmitOnAsyncEvent = True
      end
      object ActiveBtn: TIWRadioButton
        Tag = 3
        Left = 130
        Top = 160
        Width = 252
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
        Caption = 'Active'
        Editable = True
        Font.Color = clNone
        Font.Size = 10
        Font.Style = []
        ScriptEvents = <>
        DoSubmitValidation = True
        Checked = False
        Group = 'StatusGroup'
        Value = '3'
        FriendlyName = 'IWRadioButton1'
        SubmitOnAsyncEvent = True
      end
      object ArchiveBtn: TIWRadioButton
        Tag = 4
        Left = 130
        Top = 184
        Width = 252
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
        Caption = 'Archive'
        Editable = True
        Font.Color = clNone
        Font.Size = 10
        Font.Style = []
        ScriptEvents = <>
        DoSubmitValidation = True
        Checked = False
        Group = 'StatusGroup'
        Value = '4'
        FriendlyName = 'IWRadioButton1'
        SubmitOnAsyncEvent = True
      end
      object DelJobRevBtn: TIWButton
        Left = 514
        Top = 12
        Width = 131
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
        Caption = 'Delete Job'
        Confirmation = 'Delete Record?'
        DoSubmitValidation = True
        Color = clBtnFace
        Font.Color = clNone
        Font.Size = 10
        Font.Style = []
        FriendlyName = 'DelJobRevBtn'
        ScriptEvents = <>
        TabOrder = 8
        OnClick = DelJobRevBtnClick
      end
      object TemplateBox: TIWCheckBox
        Left = 393
        Top = 58
        Width = 96
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
        Caption = 'Template'
        Editable = True
        Font.Color = clNone
        Font.Size = 10
        Font.Style = []
        SubmitOnAsyncEvent = True
        ScriptEvents = <>
        DoSubmitValidation = True
        Style = stNormal
        TabOrder = 11
        Checked = False
        FriendlyName = 'TemplateBox'
      end
      object IWLabel4: TIWLabel
        Left = 496
        Top = 58
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
        Caption = 'Domain'
        RawText = False
      end
      object DomainEdit: TIWEdit
        Left = 576
        Top = 56
        Width = 65
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
        FriendlyName = 'DomainEdit'
        MaxLength = 0
        ReadOnly = False
        Required = False
        ScriptEvents = <>
        SubmitOnAsyncEvent = True
        TabOrder = 12
        PasswordPrompt = False
        Text = 'DomainEdit'
      end
      object CopyBtn: TIWButton
        Left = 368
        Top = 12
        Width = 131
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
        Caption = 'Copy Job'
        Confirmation = 'Duplicate entire job?'
        DoSubmitValidation = True
        Color = clBtnFace
        Font.Color = clNone
        Font.Size = 10
        Font.Style = []
        FriendlyName = 'DelJobRevBtn'
        ScriptEvents = <>
        TabOrder = 13
        OnClick = CopyBtnClick
      end
    end
  end
  object silanglinked1: TsiLangLinked
    Version = '6.5.4.7'
    StringsTypes.Strings = (
      'TIB_STRINGLIST'
      'TSTRINGLIST')
    SmartExcludeProps.Strings = (
      'UserLabel.Caption'
      'Extra1.Caption'
      'Extra2.Caption'
      'Extra3.Caption'
      'Cancel.Caption')
    LangDispatcher = RcDataMod.siLangDispatcher1
    LangDelim = 1
    LangNames.Strings = (
      'English')
    Language = 'English'
    CommonContainer = RcDataMod.siLang1
    ExcludedProperties.Strings = (
      'Hint'
      'HelpKeyword'
      'Title'
      'FriendlyName'
      'StatusText'
      'HotKey')
    Top = 136
    TranslationData = {
      73007400430061007000740069006F006E0073005F0055006E00690063006F00
      640065000D000A004A006F0062004C006100620065006C0001004A006F006200
      2000440065007400610069006C00730001000D000A00490057004C0061006200
      65006C003100010053007400610074007500730001000D000A00490057004C00
      6100620065006C00320001004400650073006300720069007000740069006F00
      6E0001000D000A00490057004C006100620065006C00330001004E0061006D00
      650001000D000A004500640069007400420074006E0001004500640069007400
      01000D000A005400650073007400420074006E00010054006500730074000100
      0D000A0052006500610064007900420074006E00010052006500610064007900
      01000D000A00410063007400690076006500420074006E000100410063007400
      69007600650001000D000A004100720063006800690076006500420074006E00
      0100410072006300680069007600650001000D000A00440065006C004A006F00
      6200520065007600420074006E000100440065006C0065007400650020004A00
      6F00620001000D000A00540065006D0070006C0061007400650042006F007800
      0100540065006D0070006C0061007400650001000D000A007300740048006900
      6E00740073005F0055006E00690063006F00640065000D000A00730074004400
      6900730070006C00610079004C006100620065006C0073005F0055006E006900
      63006F00640065000D000A007300740046006F006E00740073005F0055006E00
      690063006F00640065000D000A005400750073006500720066006F006F007400
      6500720001004D0053002000530061006E007300200053006500720069006600
      01000D000A00730074004D0075006C00740069004C0069006E00650073005F00
      55006E00690063006F00640065000D000A004900570052006500670069006F00
      6E0031002E004500780074007200610054006100670050006100720061006D00
      7300010001000D000A0049005700530069004C0069006E006B0031002E004500
      780074007200610054006100670050006100720061006D007300010001000D00
      0A0042006F006400790052006500670069006F006E002E004500780074007200
      610054006100670050006100720061006D007300010001000D000A0049005700
      520065006300740061006E0067006C00650032002E0045007800740072006100
      54006100670050006100720061006D007300010001000D000A00490057005200
      65006300740061006E0067006C00650031002E00450078007400720061005400
      6100670050006100720061006D007300010001000D000A004A006F0062004C00
      6100620065006C002E0045007800740072006100540061006700500061007200
      61006D007300010001000D000A00490057004C006100620065006C0031002E00
      4500780074007200610054006100670050006100720061006D00730001000100
      0D000A00490057004C006100620065006C0032002E0045007800740072006100
      54006100670050006100720061006D007300010001000D000A00440065007300
      630045006400690074002E004500780074007200610054006100670050006100
      720061006D007300010001000D000A004E0061006D0065004500640069007400
      2E004500780074007200610054006100670050006100720061006D0073000100
      01000D000A00490057004C006100620065006C0033002E004500780074007200
      610054006100670050006100720061006D007300010001000D000A0045006400
      69007400420074006E002E004500780074007200610054006100670050006100
      720061006D007300010001000D000A005400650073007400420074006E002E00
      4500780074007200610054006100670050006100720061006D00730001000100
      0D000A0052006500610064007900420074006E002E0045007800740072006100
      54006100670050006100720061006D007300010001000D000A00410063007400
      690076006500420074006E002E00450078007400720061005400610067005000
      6100720061006D007300010001000D000A004100720063006800690076006500
      420074006E002E00450078007400720061005400610067005000610072006100
      6D007300010001000D000A00440065006C004A006F0062005200650076004200
      74006E002E004500780074007200610054006100670050006100720061006D00
      7300010001000D000A00540065006D0070006C0061007400650042006F007800
      2E004500780074007200610054006100670050006100720061006D0073000100
      01000D000A007300740053007400720069006E00670073005F0055006E006900
      63006F00640065000D000A00730074004F007400680065007200530074007200
      69006E00670073005F0055006E00690063006F00640065000D000A0049005700
      530069004C0069006E006B0031002E0043006F006E006600690072006D006100
      740069006F006E00010001000D000A0049005700530069004C0069006E006B00
      31002E004C0061006E006700460069006C00650001006A006F0062002E007300
      69006C0001000D000A0049005700520065006300740061006E0067006C006500
      32002E005400650078007400010001000D000A00490057005200650063007400
      61006E0067006C00650031002E005400650078007400010001000D000A004400
      65007300630045006400690074002E0054006500780074000100440065007300
      6300450064006900740001000D000A004E0061006D0065004500640069007400
      2E00540065007800740001004E0061006D006500450064006900740001000D00
      0A004500640069007400420074006E002E00470072006F007500700001005300
      74006100740075007300470072006F007500700001000D000A00450064006900
      7400420074006E002E00560061006C00750065000100300001000D000A005400
      650073007400420074006E002E00470072006F00750070000100530074006100
      740075007300470072006F007500700001000D000A0054006500730074004200
      74006E002E00560061006C00750065000100310001000D000A00520065006100
      64007900420074006E002E00470072006F007500700001005300740061007400
      75007300470072006F007500700001000D000A00520065006100640079004200
      74006E002E00560061006C00750065000100320001000D000A00410063007400
      690076006500420074006E002E00470072006F00750070000100530074006100
      740075007300470072006F007500700001000D000A0041006300740069007600
      6500420074006E002E00560061006C00750065000100330001000D000A004100
      720063006800690076006500420074006E002E00470072006F00750070000100
      530074006100740075007300470072006F007500700001000D000A0041007200
      63006800690076006500420074006E002E00560061006C007500650001003400
      01000D000A00440065006C004A006F006200520065007600420074006E002E00
      43006F006E006600690072006D006100740069006F006E000100440065006C00
      65007400650020005200650063006F00720064003F0001000D000A0054006500
      6D0070006C0061007400650042006F0078002E0043006F006E00660069007200
      6D006100740069006F006E00010001000D000A007300740043006F006C006C00
      65006300740069006F006E0073005F0055006E00690063006F00640065000D00
      0A0073007400430068006100720053006500740073005F0055006E0069006300
      6F00640065000D000A005400750073006500720066006F006F00740065007200
      0100440045004600410055004C0054005F004300480041005200530045005400
      01000D000A00}
  end
end
