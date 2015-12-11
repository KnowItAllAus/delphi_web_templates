object formEditTmpl: TformEditTmpl
  Left = 0
  Top = 0
  Width = 1024
  Height = 605
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
  object IWRegion1: TIWRegion
    Left = 0
    Top = 118
    Width = 1024
    Height = 458
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
      1024
      458)
    object IWRegion2: TIWRegion
      Left = 67
      Top = 14
      Width = 911
      Height = 423
      Cursor = crAuto
      RenderInvisibleControls = False
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
        911
        423)
      object TmplLabel: TIWLabel
        Left = 8
        Top = 8
        Width = 118
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
        FriendlyName = 'TmplLabel'
        Caption = 'Template Job :'
        RawText = False
      end
      object TmplGrid: TIWGrid
        Left = 20
        Top = 47
        Width = 871
        Height = 366
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
        OnRenderCell = TmplGridRenderCell
        UseFrame = True
        UseSize = True
        FriendlyName = 'PrinterGrid'
        ColumnCount = 4
        OnCellClick = TmplGridCellClick
        RowCount = 1
        ShowEmptyCells = True
        ShowInvisibleRows = True
        ScrollToCurrentRow = False
      end
      object IWSiLink1: TIWSiLink
        Left = 10
        Top = 24
        Width = 63
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
        SiLangLinked = siLangLinked1
        LangFile = 'tmpledit.sil'
        LangControl = RcDataMod.LangEditControl1
      end
      object IWRectangle1: TIWRectangle
        Left = 0
        Top = 3
        Width = 3
        Height = 420
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
        Width = 911
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
      object NameLbl: TIWLabel
        Left = 128
        Top = 8
        Width = 658
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
        FriendlyName = 'TmplLabel'
        Caption = 'Template Name'
        RawText = False
      end
      object EditBtn: TIWButton
        Left = 830
        Top = 8
        Width = 60
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
        Caption = 'Edit'
        DoSubmitValidation = True
        Color = clBtnFace
        Font.Color = clNone
        Font.Size = 10
        Font.Style = []
        FriendlyName = 'EditBtn'
        ScriptEvents = <>
        TabOrder = 3
        OnClick = EditBtnClick
      end
    end
  end
  inline userfooter1: Tuserfooter
    Left = 0
    Top = 576
    Width = 1024
    Height = 29
    HorzScrollBar.Visible = False
    Align = alBottom
    TabOrder = 1
    ExplicitTop = 576
    ExplicitWidth = 1024
    ExplicitHeight = 29
    inherited IWRegion1: TIWRegion
      Width = 1024
      Height = 29
      TabOrder = 1
      ExplicitWidth = 1024
      ExplicitHeight = 29
      DesignSize = (
        1024
        29)
      inherited IWRectangle1: TIWRectangle
        Left = 648
        ExplicitLeft = 648
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
        OnClick = CancelBtnClick
        ExplicitLeft = 938
      end
      inherited Extra1: TIWButton
        Left = 850
        Caption = 'Delete'
        Confirmation = 'Delete this record?'
        OnClick = userfooter1Extra1Click
        ExplicitLeft = 850
      end
      inherited Extra2: TIWButton
        Left = 762
        ExplicitLeft = 762
      end
      inherited fiwSiLink1: TIWSiLink
        Left = 690
        ExplicitLeft = 690
      end
      inherited navcombo: TIWComboBox
        Visible = False
      end
    end
  end
  inline FrameBareTitle1: TFrameBareTitle
    Left = 0
    Top = 0
    Width = 1024
    Height = 118
    HorzScrollBar.Visible = False
    VertScrollBar.Visible = False
    Align = alTop
    TabOrder = 2
    ExplicitWidth = 1024
    ExplicitHeight = 118
    inherited IWFrameRegion: TIWRegion
      Width = 1024
      Height = 118
      TabOrder = 2
      ExplicitWidth = 1024
      ExplicitHeight = 118
      inherited IWRectangle1: TIWRectangle
        Top = 93
        Width = 1537
        ExplicitTop = 93
        ExplicitWidth = 1537
      end
      inherited IWRectangle3: TIWRectangle
        Top = 98
        Width = 1024
        ExplicitTop = 98
        ExplicitWidth = 1024
      end
      inherited IWImageFile3: TIWImageFile
        Left = 689
        ExplicitLeft = 689
      end
      inherited langlink: TIWSiLink
        Left = 618
        ExplicitLeft = 618
      end
      inherited Smalltitle: TIWLabel
        Left = 904
        Top = 102
        ExplicitLeft = 904
        ExplicitTop = 102
      end
      inherited HideBox: TIWImageFile
        Left = 1007
        Top = 99
        Width = 12
        Height = 14
        ExplicitLeft = 1007
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
  object siLangLinked1: TsiLangLinked
    Version = '6.5.4.7'
    StringsTypes.Strings = (
      'TIB_STRINGLIST'
      'TSTRINGLIST')
    SmartExcludeProps.Strings = (
      'NameLbl.Caption')
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
    Left = 548
    Top = 147
    TranslationData = {
      73007400430061007000740069006F006E0073005F0055006E00690063006F00
      640065000D000A0054006D0070006C004C006100620065006C00010054006500
      6D0070006C0061007400650020004A006F00620020003A0001000D000A004500
      640069007400420074006E000100450064006900740001000D000A0073007400
      480069006E00740073005F0055006E00690063006F00640065000D000A007300
      740044006900730070006C00610079004C006100620065006C0073005F005500
      6E00690063006F00640065000D000A007300740046006F006E00740073005F00
      55006E00690063006F00640065000D000A00730074004D0075006C0074006900
      4C0069006E00650073005F0055006E00690063006F00640065000D000A007300
      740053007400720069006E00670073005F0055006E00690063006F0064006500
      0D000A00440065006C0065007400650043006F006E0066000100440065006C00
      650074006500200074006800690073002000740065006D0070006C0061007400
      650020007200650066006500720065006E00630065003F00200001000D000A00
      47007200690064002E004900640001004900440001000D000A00470072006900
      64002E004E0061006D00650001004E0061006D00650001000D000A0047007200
      690064002E00440065006C006500740065000100440065006C00650074006500
      01000D000A0047007200690064002E0050006100720061006D00650074006500
      72007300010050006100720061006D006500740065007200730001000D000A00
      47007200690064002E0041006400640050006100720061006D00010041006400
      6400200050006100720061006D00650074006500720001000D000A0047007200
      690064002E004E006500770050006100720061006D0065007400650072000100
      4E0065007700200050006100720061006D00650074006500720001000D000A00
      47007200690064002E0045006400690074000100450064006900740001000D00
      0A0047007200690064002E00500072006F007000650072007400690065007300
      0100500072006F00700065007200740069006500730001000D000A0047007200
      690064002E0047005500490044000100470055004900440001000D000A004700
      7200690064002E004600690065006C00640001004600690065006C0064000100
      0D000A0047007200690064002E00540079007000650001005000610072006100
      6D0065007400650072002000540079007000650001000D000A00470072006900
      64002E004F0062006A0065006300740001004F0062006A006500630074000100
      0D000A0047007200690064002E004E006F007400650001004E006F0074006500
      01000D000A0047007200690064002E0075006E006C0069006E006B0065006400
      010055006E007200650066006500720065006E0063006500640001000D000A00
      47007200690064002E0043006F006E00730074007200610069006E0074000100
      43006F006E00730074007200610069006E007400730001000D000A0073007400
      4F00740068006500720053007400720069006E00670073005F0055006E006900
      63006F00640065000D000A007300740043006F006C006C006500630074006900
      6F006E0073005F0055006E00690063006F00640065000D000A00730074004300
      68006100720053006500740073005F0055006E00690063006F00640065000D00
      0A00}
  end
end
