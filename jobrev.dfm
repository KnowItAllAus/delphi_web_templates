object FormJobRev: TFormJobRev
  Left = 0
  Top = 0
  Width = 1054
  Height = 763
  ConnectionMode = cmAny
  SupportedBrowsers = [brIE, brNetscape7, brOpera, brSafari, brNetscape6]
  OnCreate = IWAppFormCreate
  BrowserSecurityCheck = True
  Background.Fixed = False
  HandleTabs = False
  LeftToRight = True
  LockUntilLoaded = True
  LockOnSubmit = True
  ShowHint = True
  XPTheme = True
  UpdateMode = umPartial
  DesignLeft = 124
  DesignTop = 146
  inline userfooter1: Tuserfooter
    Left = 0
    Top = 734
    Width = 1054
    Height = 29
    HorzScrollBar.Visible = False
    Align = alBottom
    TabOrder = 0
    inherited IWRegion1: TIWRegion
      Width = 1054
      Height = 29
      TabOrder = 6
      DesignSize = (
        1054
        29)
      inherited IWRectangle1: TIWRectangle
        Left = 678
        Width = 416
      end
      inherited IWRectangle4: TIWRectangle
        Width = 1670
      end
      inherited IWRectangle6: TIWRectangle
        Width = 636
      end
      inherited Cancel: TIWButton
        Left = 968
        Caption = 'Back'
        TabOrder = 3
        OnClick = userfooter1CancelClick
      end
      inherited Extra1: TIWButton
        Left = 880
        TabOrder = 1
      end
      inherited Extra2: TIWButton
        Left = 792
        TabOrder = 2
      end
      inherited fiwSiLink1: TIWSiLink
        Left = 424
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
    Width = 1054
    Height = 615
    Cursor = crAuto
    HorzScrollBar.Visible = False
    VertScrollBar.Visible = False
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
      1054
      615)
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
      RenderSize = False
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
      Left = 40
      Top = 21
      Width = 977
      Height = 579
      Cursor = crAuto
      HorzScrollBar.Visible = False
      VertScrollBar.Visible = False
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
        579)
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
        Height = 574
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
      object JobsLabel: TIWLabel
        Left = 16
        Top = 104
        Width = 953
        Height = 24
        Cursor = crAuto
        Anchors = [akLeft, akTop, akRight]
        IW50Hint = False
        ParentShowHint = False
        ShowHint = True
        ZIndex = 0
        RenderSize = True
        Alignment = taLeftJustify
        BGColor = clNone
        Font.Color = clNone
        Font.Size = 14
        Font.Style = [fsBold]
        NoWrap = False
        ConvertSpaces = False
        AutoSize = False
        FriendlyName = 'JobsLabel'
        Caption = 'Job Revisions'
        RawText = False
      end
      object JobGrid: TIWGrid
        Left = 16
        Top = 128
        Width = 945
        Height = 416
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
        OnRenderCell = JobGridRenderCell
        UseFrame = True
        UseSize = True
        FriendlyName = 'JobGrid'
        ColumnCount = 9
        OnCellClick = JobGridCellClick
        RowCount = 1
        TabOrder = -1
        ShowEmptyCells = True
        ScrollToCurrentRow = False
      end
      object CreateBtn: TIWButton
        Left = 887
        Top = 549
        Width = 75
        Height = 25
        Cursor = crAuto
        Anchors = [akRight, akBottom]
        IW50Hint = False
        ParentShowHint = False
        ShowHint = True
        ZIndex = 0
        RenderSize = True
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
        Top = 8
        Width = 953
        Height = 24
        Cursor = crAuto
        Anchors = [akLeft, akTop, akRight]
        IW50Hint = False
        ParentShowHint = False
        ShowHint = True
        ZIndex = 0
        RenderSize = True
        Alignment = taLeftJustify
        BGColor = clNone
        Font.Color = clNone
        Font.Size = 14
        Font.Style = [fsBold]
        NoWrap = False
        ConvertSpaces = False
        AutoSize = False
        FriendlyName = 'JobsLabel'
        Caption = 'Job : '
        RawText = False
      end
      object IWLabel2: TIWLabel
        Left = 16
        Top = 64
        Width = 74
        Height = 16
        Cursor = crAuto
        IW50Hint = False
        ParentShowHint = False
        ShowHint = True
        ZIndex = 0
        RenderSize = False
        Alignment = taLeftJustify
        BGColor = clNone
        Font.Color = clNone
        Font.Size = 10
        Font.Style = []
        NoWrap = False
        ConvertSpaces = False
        FriendlyName = 'IWLabel1'
        Caption = 'Description'
        RawText = False
      end
      object IWLabel3: TIWLabel
        Left = 16
        Top = 38
        Width = 40
        Height = 16
        Cursor = crAuto
        IW50Hint = False
        ParentShowHint = False
        ShowHint = True
        ZIndex = 0
        RenderSize = False
        Alignment = taLeftJustify
        BGColor = clNone
        Font.Color = clNone
        Font.Size = 10
        Font.Style = []
        NoWrap = False
        ConvertSpaces = False
        FriendlyName = 'IWLabel1'
        Caption = 'Status'
        RawText = False
      end
      object StatEdit: TIWEdit
        Left = 96
        Top = 37
        Width = 121
        Height = 21
        Cursor = crAuto
        IW50Hint = False
        ParentShowHint = False
        ShowHint = True
        ZIndex = 0
        RenderSize = True
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
        TabOrder = 4
        PasswordPrompt = False
        Text = 'StatEdit'
      end
      object DescEdit: TIWEdit
        Left = 96
        Top = 63
        Width = 497
        Height = 21
        Cursor = crAuto
        IW50Hint = False
        ParentShowHint = False
        ShowHint = True
        ZIndex = 0
        RenderSize = True
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
        TabOrder = 5
        PasswordPrompt = False
        Text = 'DescEdit'
      end
      object EditJobBtn: TIWButton
        Left = 518
        Top = 35
        Width = 75
        Height = 25
        Cursor = crAuto
        IW50Hint = False
        ParentShowHint = False
        ShowHint = True
        ZIndex = 0
        RenderSize = True
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
        Top = 550
        Width = 249
        Height = 21
        Cursor = crAuto
        Anchors = [akRight, akBottom]
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
        FriendlyName = 'NoteEdit'
        MaxLength = 0
        ReadOnly = False
        Required = False
        ScriptEvents = <>
        TabOrder = 1
        PasswordPrompt = False
      end
      object NoteLabel: TIWLabel
        Left = 584
        Top = 552
        Width = 29
        Height = 16
        Cursor = crAuto
        Anchors = [akRight, akBottom]
        IW50Hint = False
        ParentShowHint = False
        ShowHint = True
        ZIndex = 0
        RenderSize = False
        Alignment = taRightJustify
        BGColor = clNone
        Font.Color = clNone
        Font.Size = 10
        Font.Style = []
        NoWrap = False
        ConvertSpaces = False
        FriendlyName = 'NoteLabel'
        Caption = 'Note'
        RawText = False
      end
      object templatelbl: TIWLabel
        Left = 195
        Top = 88
        Width = 244
        Height = 24
        Cursor = crAuto
        Anchors = [akLeft, akTop, akRight]
        IW50Hint = False
        ParentShowHint = False
        ShowHint = True
        ZIndex = 0
        RenderSize = True
        Alignment = taLeftJustify
        BGColor = clNone
        Font.Color = clWebRED
        Font.FontFamily = 'Arial, Sans-Serif, Verdana'
        Font.Size = 14
        Font.Style = [fsBold]
        NoWrap = False
        ConvertSpaces = False
        AutoSize = False
        FriendlyName = 'JobsLabel'
        Caption = 'TEMPLATE'
        RawText = False
      end
    end
  end
  inline PromoFrameTitle1: TPromoFrameTitle
    Left = 0
    Top = 0
    Width = 1054
    Height = 119
    HorzScrollBar.Visible = False
    VertScrollBar.Visible = False
    Align = alTop
    TabOrder = 2
    inherited IWFrameRegion: TIWRegion
      Width = 1054
      TabOrder = 7
      inherited IWRectangle1: TIWRectangle
        Width = 2655
      end
      inherited IWRectangle3: TIWRectangle
        Width = 2074
      end
      inherited IWImageFile3: TIWImageFile
        Left = 720
        Top = 0
      end
      inherited langlink: TIWSiLink
        Left = 611
      end
      inherited Smalltitle: TIWLabel
        Left = 960
        Top = 100
      end
      inherited HideBox: TIWImageFile
        Left = 1039
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
      6F7465010D0A74656D706C6174656C626C0154454D504C415445010D0A737448
      696E74730D0A7374446973706C61794C6162656C730D0A7374466F6E74730D0A
      5475736572666F6F746572014D532053616E73205365726966010D0A73744D75
      6C74694C696E65730D0A4957526567696F6E312E457874726154616750617261
      6D7301010D0A6C616E676C696E6B2E4578747261546167506172616D7301010D
      0A426F6479526567696F6E2E4578747261546167506172616D7301010D0A4957
      52656374616E676C65322E4578747261546167506172616D7301010D0A495752
      656374616E676C65312E4578747261546167506172616D7301010D0A4A6F6273
      4C6162656C2E4578747261546167506172616D7301010D0A4A6F62477269642E
      4578747261546167506172616D7301010D0A43726561746542746E2E45787472
      61546167506172616D7301010D0A4A6F624E616D654C626C2E45787472615461
      67506172616D7301010D0A49574C6162656C322E457874726154616750617261
      6D7301010D0A49574C6162656C332E4578747261546167506172616D7301010D
      0A53746174456469742E4578747261546167506172616D7301010D0A44657363
      456469742E4578747261546167506172616D7301010D0A456469744A6F624274
      6E2E4578747261546167506172616D7301010D0A4E6F7465456469742E457874
      7261546167506172616D7301010D0A4E6F74654C6162656C2E45787472615461
      67506172616D7301010D0A74656D706C6174656C626C2E457874726154616750
      6172616D7301010D0A7374537472696E67730D0A43726561746542746E014372
      65617465010D0A477269642E4944014944010D0A477269642E53746174757301
      537461747573010D0A477269642E4E6F7465014E6F7465010D0A477269642E43
      72656174656442790143726561746564206279010D0A477269642E4372656174
      656441740143726561746564206174010D0A50726F640150726F64756374696F
      6E010D0A477269642E546573740154657374010D0A477269642E50726F640150
      726F642E010D0A477269642E436F6E66696701436F6E666967010D0A47726964
      2E41757468427901417574686F7269736564206279010D0A477269642E417574
      68417401417574686F7269736564206174010D0A477269642E41757468014175
      7468010D0A477269642E436F707901436F7079010D0A73744F74686572537472
      696E67730D0A75736572666F6F746572312E48656C704B6579776F726401010D
      0A4957526567696F6E312E48656C704B6579776F726401010D0A6C616E676C69
      6E6B2E436F6E6669726D6174696F6E01010D0A6C616E676C696E6B2E46726965
      6E646C794E616D65016C616E676C696E6B010D0A6C616E676C696E6B2E48656C
      704B6579776F726401010D0A6C616E676C696E6B2E5374617475735465787401
      010D0A426F6479526567696F6E2E48656C704B6579776F726401010D0A495752
      656374616E676C65322E467269656E646C794E616D6501495752656374616E67
      6C6531010D0A495752656374616E676C65322E48656C704B6579776F72640101
      0D0A495752656374616E676C65322E5374617475735465787401010D0A495752
      656374616E676C65322E5465787401010D0A495752656374616E676C65312E46
      7269656E646C794E616D6501495752656374616E676C6531010D0A4957526563
      74616E676C65312E48656C704B6579776F726401010D0A495752656374616E67
      6C65312E5374617475735465787401010D0A495752656374616E676C65312E54
      65787401010D0A4A6F62734C6162656C2E467269656E646C794E616D65014A6F
      62734C6162656C010D0A4A6F62734C6162656C2E48656C704B6579776F726401
      010D0A4A6F62734C6162656C2E5374617475735465787401010D0A4A6F624772
      69642E467269656E646C794E616D65014A6F6247726964010D0A4A6F62477269
      642E48656C704B6579776F726401010D0A4A6F62477269642E53746174757354
      65787401010D0A4A6F62477269642E53756D6D61727901010D0A437265617465
      42746E2E436F6E6669726D6174696F6E01010D0A43726561746542746E2E4672
      69656E646C794E616D650143726561746542746E010D0A43726561746542746E
      2E48656C704B6579776F726401010D0A43726561746542746E2E486F744B6579
      01010D0A43726561746542746E2E5374617475735465787401010D0A54466F72
      6D4A6F625265762E48656C704B6579776F726401010D0A54466F726D4A6F6252
      65762E5469746C6501010D0A4A6F624E616D654C626C2E467269656E646C794E
      616D65014A6F62734C6162656C010D0A4A6F624E616D654C626C2E48656C704B
      6579776F726401010D0A4A6F624E616D654C626C2E5374617475735465787401
      010D0A50726F6D6F4672616D655469746C65312E48656C704B6579776F726401
      010D0A49574C6162656C322E467269656E646C794E616D650149574C6162656C
      31010D0A49574C6162656C322E48656C704B6579776F726401010D0A49574C61
      62656C322E5374617475735465787401010D0A49574C6162656C332E46726965
      6E646C794E616D650149574C6162656C31010D0A49574C6162656C332E48656C
      704B6579776F726401010D0A49574C6162656C332E5374617475735465787401
      010D0A53746174456469742E467269656E646C794E616D650153746174456469
      74010D0A53746174456469742E48656C704B6579776F726401010D0A53746174
      456469742E5374617475735465787401010D0A53746174456469742E54657874
      015374617445646974010D0A44657363456469742E467269656E646C794E616D
      650149574564697431010D0A44657363456469742E48656C704B6579776F7264
      01010D0A44657363456469742E5374617475735465787401010D0A4465736345
      6469742E54657874014465736345646974010D0A456469744A6F6242746E2E43
      6F6E6669726D6174696F6E01010D0A456469744A6F6242746E2E467269656E64
      6C794E616D6501496E7365727442746E010D0A456469744A6F6242746E2E4865
      6C704B6579776F726401010D0A456469744A6F6242746E2E486F744B65790101
      0D0A456469744A6F6242746E2E5374617475735465787401010D0A4E6F746545
      6469742E467269656E646C794E616D65014E6F746545646974010D0A4E6F7465
      456469742E48656C704B6579776F726401010D0A4E6F7465456469742E537461
      7475735465787401010D0A4E6F7465456469742E5465787401010D0A4E6F7465
      4C6162656C2E467269656E646C794E616D65014E6F74654C6162656C010D0A4E
      6F74654C6162656C2E48656C704B6579776F726401010D0A4E6F74654C616265
      6C2E5374617475735465787401010D0A74656D706C6174656C626C2E46726965
      6E646C794E616D65014A6F62734C6162656C010D0A74656D706C6174656C626C
      2E48656C704B6579776F726401010D0A74656D706C6174656C626C2E53746174
      75735465787401010D0A7374436F6C6C656374696F6E730D0A73744368617253
      6574730D0A5475736572666F6F7465720144454641554C545F43484152534554
      010D0A}
  end
end
