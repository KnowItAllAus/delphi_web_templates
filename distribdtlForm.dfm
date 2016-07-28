object formdistribdtl: Tformdistribdtl
  Left = 0
  Top = 0
  Width = 1028
  Height = 648
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
      TabOrder = 5
      ExplicitWidth = 1028
      ExplicitHeight = 116
      DesignSize = (
        1028
        116)
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
        Left = 324
        ExplicitLeft = 324
      end
      inherited langlink: TIWSiLink
        Left = 794
        ExplicitLeft = 794
      end
      inherited Smalltitle: TIWLabel
        Left = 909
        ExplicitLeft = 909
      end
      inherited HideBox: TIWImageFile
        Left = 1009
        Top = 99
        Width = 12
        Height = 14
        ExplicitLeft = 1009
        ExplicitTop = 99
        ExplicitWidth = 12
        ExplicitHeight = 14
      end
      inherited TitleLabel: TIWLabel
        Width = 387
        Caption = 'distribution'
        ExplicitWidth = 387
      end
    end
  end
  object IWRegion1: TIWRegion
    Left = 0
    Top = 116
    Width = 1028
    Height = 501
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
      501)
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
      LangFile = 'jobdist.sil'
      LangControl = RcDataMod.LangEditControl1
    end
    object BodyRegion: TIWRegion
      Left = 40
      Top = 34
      Width = 953
      Height = 407
      Cursor = crAuto
      RenderInvisibleControls = False
      Anchors = [akLeft, akTop, akRight, akBottom]
      BorderOptions.NumericWidth = 0
      BorderOptions.BorderWidth = cbwNumeric
      BorderOptions.Style = cbsNone
      BorderOptions.Color = clNone
      Color = 14202786
      ParentShowHint = False
      ShowHint = True
      ZIndex = 1000
      Splitter = False
      DesignSize = (
        953
        407)
      object IWRectangle1: TIWRectangle
        Left = 0
        Top = 3
        Width = 3
        Height = 404
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
        ExplicitHeight = 395
      end
      object JobLabel: TIWLabel
        Left = 16
        Top = 12
        Width = 134
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
        FriendlyName = 'StoreLabel'
        Caption = 'Job Distribution'
        RawText = False
      end
      object NameEdit: TIWEdit
        Left = 104
        Top = 40
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
        TabOrder = 1
        PasswordPrompt = False
        Text = 'NameEdit'
      end
      object IWLabel3: TIWLabel
        Left = 24
        Top = 41
        Width = 20
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
        Caption = 'Job'
        RawText = False
      end
      object IWRectangle2: TIWRectangle
        Left = 0
        Top = 0
        Width = 953
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
        ExplicitWidth = 441
      end
      object IWLabel1: TIWLabel
        Left = 24
        Top = 73
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
        Left = 104
        Top = 72
        Width = 313
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
        Text = 'DescEdit'
      end
      object IWRegion5: TIWRegion
        Left = 25
        Top = 112
        Width = 912
        Height = 287
        Cursor = crAuto
        HorzScrollBar.Visible = False
        VertScrollBar.Visible = False
        RenderInvisibleControls = False
        TabOrder = 18
        Anchors = [akLeft, akTop, akRight, akBottom]
        BorderOptions.NumericWidth = 0
        BorderOptions.BorderWidth = cbwNumeric
        BorderOptions.Style = cbsSolid
        BorderOptions.Color = clNone
        Color = clWebSILVER
        ParentShowHint = False
        ShowHint = True
        ZIndex = -1
        Splitter = False
        DesignSize = (
          912
          287)
        object GrpLabel: TIWLabel
          Left = 8
          Top = 7
          Width = 57
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
          FriendlyName = 'GrpLabel'
          Caption = 'Group'
          RawText = False
        end
        object GrpGrid: TIWGrid
          Left = 2
          Top = 55
          Width = 907
          Height = 230
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
          OnRenderCell = GrpGridRenderCell
          UseFrame = True
          UseSize = True
          FriendlyName = 'GrpGrid'
          ColumnCount = 3
          OnCellClick = GrpGridCellClick
          RowCount = 1
          ShowEmptyCells = True
          ShowInvisibleRows = True
          ScrollToCurrentRow = False
        end
        object GrpCombo: TIWComboBox
          Left = 72
          Top = 6
          Width = 353
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
          Sorted = False
          FriendlyName = 'GrpCombo'
        end
        object GrpAddBtn: TIWButton
          Left = 72
          Top = 30
          Width = 57
          Height = 25
          Cursor = crAuto
          IW50Hint = False
          ParentShowHint = False
          ShowHint = True
          ZIndex = 1
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
          FriendlyName = 'GrpAddBtn'
          ScriptEvents = <>
          TabOrder = 2
          OnClick = GrpAddBtnClick
        end
      end
    end
  end
  inline userfooter1: Tuserfooter
    Left = 0
    Top = 617
    Width = 1028
    Height = 31
    HorzScrollBar.Visible = False
    Align = alBottom
    TabOrder = 2
    ExplicitTop = 617
    ExplicitWidth = 1028
    ExplicitHeight = 31
    inherited IWRegion1: TIWRegion
      Width = 1028
      Height = 31
      TabOrder = 6
      ExplicitWidth = 1028
      ExplicitHeight = 31
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
        Left = 942
        OnClick = userfooter1CancelClick
        ExplicitLeft = 942
      end
      inherited Extra1: TIWButton
        Left = 854
        Visible = True
        Caption = 'Save'
        OnClick = userfooter1Extra1Click
        ExplicitLeft = 854
      end
      inherited Extra2: TIWButton
        Left = 766
        ExplicitLeft = 766
      end
      inherited fiwSiLink1: TIWSiLink
        Left = 689
        ExplicitLeft = 689
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
      640065000D000A004A006F0062004C006100620065006C0001004A006F006200
      200044006900730074007200690062007500740069006F006E0001000D000A00
      490057004C006100620065006C00330001004A006F00620001000D000A004700
      720070004C006100620065006C000100470072006F007500700001000D000A00
      4700720070004700720069006400010001000D000A0047007200700041006400
      6400420074006E00010041006400640001000D000A00490057004C0061006200
      65006C00310001004400650073006300720069007000740069006F006E000100
      0D000A0073007400480069006E00740073005F0055006E00690063006F006400
      65000D000A007300740044006900730070006C00610079004C00610062006500
      6C0073005F0055006E00690063006F00640065000D000A007300740046006F00
      6E00740073005F0055006E00690063006F00640065000D000A00540075007300
      6500720066006F006F0074006500720001004D0053002000530061006E007300
      20005300650072006900660001000D000A00730074004D0075006C0074006900
      4C0069006E00650073005F0055006E00690063006F00640065000D000A004900
      570052006500670069006F006E0031002E004500780074007200610054006100
      670050006100720061006D007300010001000D000A0049005700530069004C00
      69006E006B0031002E0045007800740072006100540061006700500061007200
      61006D007300010001000D000A0042006F006400790052006500670069006F00
      6E002E004500780074007200610054006100670050006100720061006D007300
      010001000D000A0049005700520065006300740061006E0067006C0065003100
      2E004500780074007200610054006100670050006100720061006D0073000100
      01000D000A004A006F0062004C006100620065006C002E004500780074007200
      610054006100670050006100720061006D007300010001000D000A004E006100
      6D00650045006400690074002E00450078007400720061005400610067005000
      6100720061006D007300010001000D000A00490057004C006100620065006C00
      33002E004500780074007200610054006100670050006100720061006D007300
      010001000D000A0049005700520065006300740061006E0067006C0065003200
      2E004500780074007200610054006100670050006100720061006D0073000100
      01000D000A004900570052006500670069006F006E0035002E00450078007400
      7200610054006100670050006100720061006D007300010001000D000A004700
      720070004C006100620065006C002E0045007800740072006100540061006700
      50006100720061006D007300010001000D000A00470072007000470072006900
      64002E004500780074007200610054006100670050006100720061006D007300
      010001000D000A00470072007000410064006400420074006E002E0045007800
      74007200610054006100670050006100720061006D007300010001000D000A00
      47007200700043006F006D0062006F002E004500780074007200610054006100
      670050006100720061006D007300010001000D000A0047007200700043006F00
      6D0062006F002E004900740065006D007300010001000D000A00490057004C00
      6100620065006C0031002E004500780074007200610054006100670050006100
      720061006D007300010001000D000A0044006500730063004500640069007400
      2E004500780074007200610054006100670050006100720061006D0073000100
      01000D000A007300740053007400720069006E00670073005F0055006E006900
      63006F00640065000D000A0047007200690064002E004E0061006D0065000100
      4E0061006D00650001000D000A0047007200690064002E004900440001004900
      440001000D000A0047007200690064002E00440065006C006500740065000100
      440065006C0065007400650001000D000A00730074004F007400680065007200
      53007400720069006E00670073005F0055006E00690063006F00640065000D00
      0A0049005700530069004C0069006E006B0031002E0043006F006E0066006900
      72006D006100740069006F006E00010001000D000A0049005700530069004C00
      69006E006B0031002E004C0061006E006700460069006C00650001006A006F00
      620064006900730074002E00730069006C0001000D000A004900570052006500
      6300740061006E0067006C00650031002E005400650078007400010001000D00
      0A004E0061006D00650045006400690074002E00540065007800740001004E00
      61006D006500450064006900740001000D000A00490057005200650063007400
      61006E0067006C00650032002E005400650078007400010001000D000A004700
      7200700047007200690064002E00530075006D006D0061007200790001000100
      0D000A00470072007000410064006400420074006E002E0043006F006E006600
      690072006D006100740069006F006E00010001000D000A004700720070004300
      6F006D0062006F002E004E006F00530065006C0065006300740069006F006E00
      540065007800740001002D002D0020004E006F002000530065006C0065006300
      740069006F006E0020002D002D0001000D000A00440065007300630045006400
      690074002E005400650078007400010044006500730063004500640069007400
      01000D000A007300740043006F006C006C0065006300740069006F006E007300
      5F0055006E00690063006F00640065000D000A00730074004300680061007200
      53006500740073005F0055006E00690063006F00640065000D000A0054007500
      73006500720066006F006F007400650072000100440045004600410055004C00
      54005F00430048004100520053004500540001000D000A00}
  end
end
