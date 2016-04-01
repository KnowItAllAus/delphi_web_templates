object FormImgHdr: TFormImgHdr
  Left = 0
  Top = 0
  Width = 1028
  Height = 656
  HorzScrollBar.Visible = False
  VertScrollBar.Visible = False
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
    Height = 114
    HorzScrollBar.Visible = False
    VertScrollBar.Visible = False
    Align = alTop
    TabOrder = 0
    ExplicitWidth = 1028
    inherited IWFrameRegion: TIWRegion
      Width = 1028
      TabOrder = 6
      ExplicitWidth = 1028
      inherited titleimage: TIWImageFile
        ImageFile.Filename = 'E:\delphi\delphi_web\files\promotions.GIF'
      end
      inherited IWRectangle1: TIWRectangle
        Width = 1028
        ExplicitWidth = 1028
      end
      inherited IWRectangle3: TIWRectangle
        Width = 1028
      end
      inherited IWImageFile3: TIWImageFile
        Left = 693
        ExplicitLeft = 693
      end
      inherited langlink: TIWSiLink
        Left = 630
        ExplicitLeft = 630
      end
      inherited Smalltitle: TIWLabel
        Left = 910
        ExplicitLeft = 910
      end
      inherited HideBox: TIWImageFile
        Left = 1014
        Width = 12
        Height = 14
        ExplicitLeft = 1014
        ExplicitWidth = 12
        ExplicitHeight = 14
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
    Top = 627
    Width = 1028
    Height = 29
    HorzScrollBar.Visible = False
    Align = alBottom
    TabOrder = 1
    ExplicitTop = 627
    ExplicitWidth = 1028
    ExplicitHeight = 29
    inherited IWRegion1: TIWRegion
      Width = 1028
      Height = 29
      TabOrder = 7
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
        OnClick = userfooter1CancelClick
        ExplicitLeft = 941
      end
      inherited Extra1: TIWButton
        Left = 854
        Visible = True
        Caption = 'Delete'
        Confirmation = 'Delete this record?'
        FriendlyName = 'DelBtn'
        OnClick = DelBtnClick
        ExplicitLeft = 854
      end
      inherited Extra2: TIWButton
        Left = 766
        Visible = True
        Caption = 'Save'
        OnClick = userfooter1Extra1Click
        ExplicitLeft = 766
      end
      inherited fiwSiLink1: TIWSiLink
        Left = 693
        ExplicitLeft = 693
      end
      inherited navcombo: TIWComboBox
        Visible = False
      end
    end
  end
  object IWRegion1: TIWRegion
    Left = 0
    Top = 114
    Width = 1028
    Height = 513
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
      513)
    object IWRegion2: TIWRegion
      Left = 228
      Top = 50
      Width = 585
      Height = 215
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
      object NewTagEdit: TIWEdit
        Left = 96
        Top = 96
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
        TabOrder = 0
        PasswordPrompt = False
        Text = 'NewTagEdit'
      end
      object SuppressBox: TIWCheckBox
        Left = 96
        Top = 133
        Width = 217
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
        Caption = 'Suppress On Test'
        Editable = True
        Font.Color = clNone
        Font.Size = 10
        Font.Style = []
        SubmitOnAsyncEvent = True
        ScriptEvents = <>
        DoSubmitValidation = True
        Style = stNormal
        TabOrder = 1
        Checked = False
        FriendlyName = 'IWCheckBox1'
      end
      object IWLabel3: TIWLabel
        Left = 43
        Top = 97
        Width = 35
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
        FriendlyName = 'IWLabel3'
        Caption = 'Tag'
        RawText = False
      end
      object IWLabel1: TIWLabel
        Left = 16
        Top = 33
        Width = 64
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
        Font.Size = 12
        Font.Style = [fsBold]
        NoWrap = False
        ConvertSpaces = False
        HasTabOrder = False
        AutoSize = False
        FriendlyName = 'IWLabel1'
        Caption = 'Name'
        RawText = False
      end
      object NewNameEdit: TIWEdit
        Left = 96
        Top = 32
        Width = 201
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
        Alignment = taLeftJustify
        BGColor = clNone
        FocusColor = clNone
        DoSubmitValidation = True
        Editable = True
        NonEditableAsLabel = True
        Font.Color = clNone
        Font.Size = 12
        Font.Style = [fsBold]
        FriendlyName = 'NewNameEdit'
        MaxLength = 0
        ReadOnly = False
        Required = False
        ScriptEvents = <>
        SubmitOnAsyncEvent = True
        TabOrder = 2
        PasswordPrompt = False
        Text = 'NewNameEdit'
      end
      object IWLabel2: TIWLabel
        Left = 64
        Top = 65
        Width = 14
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
        Caption = 'ID'
        RawText = False
      end
      object NewIDEdit: TIWEdit
        Left = 96
        Top = 64
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
        TabOrder = 3
        PasswordPrompt = False
        Text = 'NewIDEdit'
      end
      object IWSiLink1: TIWSiLink
        Left = 512
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
        TabOrder = 4
        RawText = False
        SiLangLinked = siLangLinked1
        LangFile = 'imagehdr.sil'
        LangControl = RcDataMod.LangEditControl1
      end
      object IWRectangle2: TIWRectangle
        Left = 0
        Top = 0
        Width = 585
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
        Height = 212
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
      object IWLabel4: TIWLabel
        Left = 6
        Top = 161
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
        FriendlyName = 'IWLabel3'
        Caption = 'Description'
        RawText = False
      end
      object NewDescEdit: TIWEdit
        Left = 96
        Top = 160
        Width = 441
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
        TabOrder = 5
        PasswordPrompt = False
        Text = 'NewDescEdit'
      end
      object TemplateBox: TIWCheckBox
        Left = 96
        Top = 188
        Width = 225
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
        Caption = 'Template Object'
        Editable = True
        Font.Color = clNone
        Font.Size = 10
        Font.Style = []
        SubmitOnAsyncEvent = True
        ScriptEvents = <>
        DoSubmitValidation = True
        Style = stNormal
        TabOrder = 8
        OnClick = TemplateBoxClick
        Checked = False
        FriendlyName = 'TemplateBox'
      end
      object ObjectCombo: TIWComboBox
        Left = 385
        Top = 35
        Width = 156
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
        NoSelectionText = 'XXXXX'
        Required = False
        RequireSelection = True
        ScriptEvents = <>
        UseSize = True
        Style = stNormal
        ButtonColor = clBtnFace
        DoSubmitValidation = True
        Editable = True
        NonEditableAsLabel = False
        SubmitOnAsyncEvent = True
        TabOrder = 9
        ItemIndex = 0
        Items.Strings = (
          '- - - - - - - - -')
        Sorted = False
        FriendlyName = 'ObjectCombo'
      end
      object ParamLbl: TIWLabel
        Left = 310
        Top = 36
        Width = 66
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
        FriendlyName = 'ParamLbl'
        Caption = 'Parameter'
        RawText = False
      end
      object SetNameBtn: TIWButton
        Left = 385
        Top = 60
        Width = 86
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
        Caption = 'Set Name'
        DoSubmitValidation = True
        Color = clBtnFace
        Font.Color = clNone
        Font.Size = 10
        Font.Style = []
        FriendlyName = 'SetNameBtn'
        ScriptEvents = <>
        TabOrder = 10
        OnClick = SetNameBtnClick
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
      'Confirmation'
      'HotKey'
      'StatusText'
      'FriendlyName'
      'LangFile'
      'AltText'
      'Text'
      'Title')
    Top = 120
    TranslationData = {
      73007400430061007000740069006F006E0073005F0055006E00690063006F00
      640065000D000A005300750070007000720065007300730042006F0078000100
      5300750070007000720065007300730020004F006E0020005400650073007400
      01000D000A00490057004C006100620065006C00330001005400610067000100
      0D000A00490057004C006100620065006C00310001004E0061006D0065000100
      0D000A00490057004C006100620065006C00320001004900440001000D000A00
      490057004C006100620065006C00340001004400650073006300720069007000
      740069006F006E0001000D000A00540065006D0070006C006100740065004200
      6F0078000100540065006D0070006C0061007400650020004F0062006A006500
      6300740001000D000A0050006100720061006D004C0062006C00010050006100
      720061006D00650074006500720001000D000A005300650074004E0061006D00
      6500420074006E00010053006500740020004E0061006D00650001000D000A00
      73007400480069006E00740073005F0055006E00690063006F00640065000D00
      0A007300740044006900730070006C00610079004C006100620065006C007300
      5F0055006E00690063006F00640065000D000A007300740046006F006E007400
      73005F0055006E00690063006F00640065000D000A00730074004D0075006C00
      740069004C0069006E00650073005F0055006E00690063006F00640065000D00
      0A004900570052006500670069006F006E0031002E0045007800740072006100
      54006100670050006100720061006D007300010001000D000A00490057005200
      6500670069006F006E0032002E00450078007400720061005400610067005000
      6100720061006D007300010001000D000A004E00650077005400610067004500
      6400690074002E00450078007400720061005400610067005000610072006100
      6D007300010001000D000A005300750070007000720065007300730042006F00
      78002E004500780074007200610054006100670050006100720061006D007300
      010001000D000A00490057004C006100620065006C0033002E00450078007400
      7200610054006100670050006100720061006D007300010001000D000A004900
      57004C006100620065006C0031002E0045007800740072006100540061006700
      50006100720061006D007300010001000D000A004E00650077004E0061006D00
      650045006400690074002E004500780074007200610054006100670050006100
      720061006D007300010001000D000A00490057004C006100620065006C003200
      2E004500780074007200610054006100670050006100720061006D0073000100
      01000D000A004E00650077004900440045006400690074002E00450078007400
      7200610054006100670050006100720061006D007300010001000D000A004900
      5700530069004C0069006E006B0031002E004500780074007200610054006100
      670050006100720061006D007300010001000D000A0049005700520065006300
      740061006E0067006C00650032002E0045007800740072006100540061006700
      50006100720061006D007300010001000D000A00490057005200650063007400
      61006E0067006C00650031002E00450078007400720061005400610067005000
      6100720061006D007300010001000D000A00490057004C006100620065006C00
      34002E004500780074007200610054006100670050006100720061006D007300
      010001000D000A004E0065007700440065007300630045006400690074002E00
      4500780074007200610054006100670050006100720061006D00730001000100
      0D000A00540065006D0070006C0061007400650042006F0078002E0045007800
      74007200610054006100670050006100720061006D007300010001000D000A00
      4F0062006A0065006300740043006F006D0062006F002E004500780074007200
      610054006100670050006100720061006D007300010001000D000A004F006200
      6A0065006300740043006F006D0062006F002E004900740065006D0073000100
      22002D0020002D0020002D0020002D0020002D0020002D0020002D0020002D00
      20002D00220001000D000A0050006100720061006D004C0062006C002E004500
      780074007200610054006100670050006100720061006D007300010001000D00
      0A005300650074004E0061006D006500420074006E002E004500780074007200
      610054006100670050006100720061006D007300010001000D000A0073007400
      53007400720069006E00670073005F0055006E00690063006F00640065000D00
      0A004E00650077004F0062006A0065006300740001004E006500770020004F00
      62006A0065006300740001000D000A00730074004F0074006800650072005300
      7400720069006E00670073005F0055006E00690063006F00640065000D000A00
      4600720061006D00650042006100720065005400690074006C00650031002E00
      480065006C0070004B006500790077006F0072006400010001000D000A007500
      73006500720066006F006F0074006500720031002E00480065006C0070004B00
      6500790077006F0072006400010001000D000A00490057005200650067006900
      6F006E0031002E00480065006C0070004B006500790077006F00720064000100
      01000D000A004900570052006500670069006F006E0032002E00480065006C00
      70004B006500790077006F0072006400010001000D000A004E00650077005400
      6100670045006400690074002E00480065006C0070004B006500790077006F00
      72006400010001000D000A005300750070007000720065007300730042006F00
      78002E00480065006C0070004B006500790077006F0072006400010001000D00
      0A00490057004C006100620065006C0033002E00480065006C0070004B006500
      790077006F0072006400010001000D000A00490057004C006100620065006C00
      31002E00480065006C0070004B006500790077006F0072006400010001000D00
      0A004E00650077004E0061006D00650045006400690074002E00480065006C00
      70004B006500790077006F0072006400010001000D000A00490057004C006100
      620065006C0032002E00480065006C0070004B006500790077006F0072006400
      010001000D000A004E00650077004900440045006400690074002E0048006500
      6C0070004B006500790077006F0072006400010001000D000A00490057005300
      69004C0069006E006B0031002E00480065006C0070004B006500790077006F00
      72006400010001000D000A0049005700520065006300740061006E0067006C00
      650032002E00480065006C0070004B006500790077006F007200640001000100
      0D000A0049005700520065006300740061006E0067006C00650031002E004800
      65006C0070004B006500790077006F0072006400010001000D000A0054004600
      6F0072006D0049006D0067004800640072002E00480065006C0070004B006500
      790077006F0072006400010001000D000A00490057004C006100620065006C00
      34002E00480065006C0070004B006500790077006F0072006400010001000D00
      0A004E0065007700440065007300630045006400690074002E00480065006C00
      70004B006500790077006F0072006400010001000D000A00540065006D007000
      6C0061007400650042006F0078002E00480065006C0070004B00650079007700
      6F0072006400010001000D000A004F0062006A0065006300740043006F006D00
      62006F002E00480065006C0070004B006500790077006F007200640001000100
      0D000A004F0062006A0065006300740043006F006D0062006F002E004E006F00
      530065006C0065006300740069006F006E005400650078007400010058005800
      58005800580001000D000A0050006100720061006D004C0062006C002E004800
      65006C0070004B006500790077006F0072006400010001000D000A0053006500
      74004E0061006D006500420074006E002E00480065006C0070004B0065007900
      77006F0072006400010001000D000A007300740043006F006C006C0065006300
      740069006F006E0073005F0055006E00690063006F00640065000D000A007300
      7400430068006100720053006500740073005F0055006E00690063006F006400
      65000D000A00}
  end
end
