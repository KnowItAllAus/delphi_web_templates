object FormJobRevDtl: TFormJobRevDtl
  Left = 0
  Top = 0
  Width = 1016
  Height = 659
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
  DesignLeft = -184
  DesignTop = -191
  object IWRegion1: TIWRegion
    Left = 0
    Top = 118
    Width = 1016
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
      1016
      513)
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
      TabOrder = 0
      RawText = False
      SiLangLinked = silanglinked1
      LangFile = 'jobrevdtl.sil'
      LangControl = RcDataMod.LangEditControl1
    end
    object BodyRegion: TIWRegion
      Left = 185
      Top = 122
      Width = 657
      Height = 167
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
        Height = 164
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
        Caption = 'Revision Details'
        RawText = False
      end
      object NoteEdit: TIWEdit
        Left = 128
        Top = 72
        Width = 401
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
        TabOrder = 1
        PasswordPrompt = False
        Text = 'NoteEdit'
      end
      object IWLabel3: TIWLabel
        Left = 48
        Top = 73
        Width = 28
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
        Caption = 'Note'
        RawText = False
      end
      object DelJobRevBtn: TIWButton
        Left = 512
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
        Caption = 'Delete Revision'
        Confirmation = 'Delete Record?'
        DoSubmitValidation = True
        Color = clBtnFace
        Font.Color = clNone
        Font.Size = 10
        Font.Style = []
        FriendlyName = 'DelJobRevBtn'
        ScriptEvents = <>
        TabOrder = 4
        OnClick = DelJobRevBtnClick
      end
    end
  end
  inline FrameBareTitle1: TFrameBareTitle
    Left = 0
    Top = 0
    Width = 1016
    Height = 118
    HorzScrollBar.Visible = False
    VertScrollBar.Visible = False
    Align = alTop
    TabOrder = 1
    ExplicitWidth = 1016
    ExplicitHeight = 118
    inherited IWFrameRegion: TIWRegion
      Width = 1016
      Height = 118
      TabOrder = 2
      ExplicitWidth = 1016
      ExplicitHeight = 118
      inherited titleimage: TIWImageFile
        ImageFile.Filename = 'E:\delphi\delphi_web\files\promotions.GIF'
      end
      inherited IWRectangle1: TIWRectangle
        Top = 93
        Width = 1529
        ExplicitTop = 93
        ExplicitWidth = 1529
      end
      inherited IWRectangle3: TIWRectangle
        Top = 98
        Width = 1016
        ExplicitTop = 98
      end
      inherited IWImageFile3: TIWImageFile
        Left = 681
        ExplicitLeft = 681
      end
      inherited langlink: TIWSiLink
        Left = 610
        ExplicitLeft = 610
      end
      inherited Smalltitle: TIWLabel
        Top = 100
        ExplicitTop = 100
      end
      inherited HideBox: TIWImageFile
        Left = 999
        Top = 100
        ExplicitLeft = 999
        ExplicitTop = 100
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
    Top = 631
    Width = 1016
    Height = 28
    HorzScrollBar.Visible = False
    Align = alBottom
    TabOrder = 2
    ExplicitTop = 631
    ExplicitWidth = 1016
    inherited IWRegion1: TIWRegion
      Width = 1016
      TabOrder = 3
      ExplicitWidth = 1016
      inherited Cancel: TIWButton
        OnClick = userfooter1CancelClick
      end
      inherited Extra2: TIWButton
        Visible = True
        Caption = 'Save'
        OnClick = userfooter1Extra2Click
      end
      inherited navcombo: TIWComboBox
        Visible = False
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
      640065000D000A004A006F0062004C006100620065006C000100520065007600
      6900730069006F006E002000440065007400610069006C00730001000D000A00
      490057004C006100620065006C00330001004E006F007400650001000D000A00
      73007400480069006E00740073005F0055006E00690063006F00640065000D00
      0A007300740044006900730070006C00610079004C006100620065006C007300
      5F0055006E00690063006F00640065000D000A007300740046006F006E007400
      73005F0055006E00690063006F00640065000D000A0054007500730065007200
      66006F006F0074006500720001004D0053002000530061006E00730020005300
      650072006900660001000D000A00730074004D0075006C00740069004C006900
      6E00650073005F0055006E00690063006F00640065000D000A00490057005200
      6500670069006F006E0031002E00450078007400720061005400610067005000
      6100720061006D007300010001000D000A0049005700530069004C0069006E00
      6B0031002E004500780074007200610054006100670050006100720061006D00
      7300010001000D000A0042006F006400790052006500670069006F006E002E00
      4500780074007200610054006100670050006100720061006D00730001000100
      0D000A0049005700520065006300740061006E0067006C00650032002E004500
      780074007200610054006100670050006100720061006D007300010001000D00
      0A0049005700520065006300740061006E0067006C00650031002E0045007800
      74007200610054006100670050006100720061006D007300010001000D000A00
      4A006F0062004C006100620065006C002E004500780074007200610054006100
      670050006100720061006D007300010001000D000A004E006F00740065004500
      6400690074002E00450078007400720061005400610067005000610072006100
      6D007300010001000D000A00490057004C006100620065006C0033002E004500
      780074007200610054006100670050006100720061006D007300010001000D00
      0A007300740053007400720069006E00670073005F0055006E00690063006F00
      640065000D000A00730074004F00740068006500720053007400720069006E00
      670073005F0055006E00690063006F00640065000D000A004900570053006900
      4C0069006E006B0031002E0043006F006E006600690072006D00610074006900
      6F006E00010001000D000A0049005700530069004C0069006E006B0031002E00
      4C0061006E006700460069006C00650001006A006F0062007200650076006400
      74006C002E00730069006C0001000D000A004900570052006500630074006100
      6E0067006C00650032002E005400650078007400010001000D000A0049005700
      520065006300740061006E0067006C00650031002E0054006500780074000100
      01000D000A004E006F007400650045006400690074002E005400650078007400
      01004E0061006D006500450064006900740001000D000A007300740043006F00
      6C006C0065006300740069006F006E0073005F0055006E00690063006F006400
      65000D000A0073007400430068006100720053006500740073005F0055006E00
      690063006F00640065000D000A005400750073006500720066006F006F007400
      650072000100440045004600410055004C0054005F0043004800410052005300
      4500540001000D000A00}
  end
end
