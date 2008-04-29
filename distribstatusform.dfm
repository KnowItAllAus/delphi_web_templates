object formDistribStatus: TformDistribStatus
  Left = 0
  Top = 0
  Width = 1017
  Height = 540
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
  DesignLeft = 294
  DesignTop = 293
  inline DistribFrameTitle1: TDistribFrameTitle
    Left = 0
    Top = 0
    Width = 1017
    Height = 114
    HorzScrollBar.Visible = False
    VertScrollBar.Visible = False
    Align = alTop
    TabOrder = 0
    inherited IWFrameRegion: TIWRegion
      Width = 1017
      Height = 114
      TabOrder = 3
      inherited IWRectangle1: TIWRectangle
        Left = 608
        Width = 422
      end
      inherited IWRectangle2: TIWRectangle
        Left = 608
      end
      inherited IWRectangle3: TIWRectangle
        Width = 257
      end
      inherited IWImageFile3: TIWImageFile
        Left = 679
      end
      inherited langlink: TIWSiLink
        Left = 619
      end
      inherited HideBox: TIWImageFile
        Left = 1003
      end
      inherited Smalltitle: TIWLabel
        Left = 878
      end
      inherited EntityRegn: TIWRegion
        Color = 10526880
      end
      inherited statusregn: TIWRegion
        Color = 11100191
      end
    end
  end
  inline userfooter1: Tuserfooter
    Left = 0
    Top = 511
    Width = 1017
    Height = 29
    HorzScrollBar.Visible = False
    Align = alBottom
    TabOrder = 1
    inherited IWRegion1: TIWRegion
      Width = 1017
      Height = 29
      TabOrder = 4
      inherited IWRectangle1: TIWRectangle
        Left = 641
      end
      inherited IWRectangle4: TIWRectangle
        Width = 1633
      end
      inherited IWRectangle6: TIWRectangle
        Width = 599
      end
      inherited Cancel: TIWButton
        Left = 932
        Caption = 'Menu'
        OnClick = userfooter1CancelClick
      end
      inherited Extra1: TIWButton
        Left = 844
      end
      inherited Extra2: TIWButton
        Left = 756
      end
      inherited fiwSiLink1: TIWSiLink
        Left = 716
      end
    end
  end
  object IWRegion1: TIWRegion
    Left = 0
    Top = 114
    Width = 1017
    Height = 397
    Cursor = crAuto
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
      1017
      397)
    object IWRegion2: TIWRegion
      Left = 48
      Top = 24
      Width = 946
      Height = 343
      Cursor = crAuto
      Anchors = [akLeft, akTop, akRight, akBottom]
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
        946
        343)
      object StoreGrid: TIWGrid
        Left = 56
        Top = 56
        Width = 842
        Height = 239
        Cursor = crAuto
        Anchors = [akLeft, akTop, akRight, akBottom]
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
        OnRenderCell = StoreGridRenderCell
        UseFrame = True
        UseSize = True
        FriendlyName = 'StoreGrid'
        ColumnCount = 10
        RowCount = 1
        TabOrder = -1
        ShowEmptyCells = True
        ScrollToCurrentRow = False
      end
      object StoreLabel: TIWLabel
        Left = 56
        Top = 24
        Width = 217
        Height = 19
        Cursor = crAuto
        IW50Hint = False
        ParentShowHint = False
        ShowHint = True
        ZIndex = 0
        RenderSize = True
        Alignment = taLeftJustify
        BGColor = clNone
        Font.Color = clNone
        Font.FontName = 'Arial'
        Font.Size = 12
        Font.Style = [fsBold]
        NoWrap = False
        ConvertSpaces = False
        AutoSize = False
        FriendlyName = 'StoreLabel'
        Caption = 'Store Status'
        RawText = False
      end
      object IWSiLink1: TIWSiLink
        Left = 56
        Top = 2
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
        FriendlyName = 'IWSiLink1'
        TabOrder = 0
        RawText = False
        SiLangLinked = siLangLinked1
        LangFile = 'diststat.sil'
        LangControl = RcDataMod.LangEditControl1
      end
      object RefreshBtn: TIWButton
        Left = 825
        Top = 24
        Width = 75
        Height = 25
        Cursor = crAuto
        Anchors = [akTop, akRight]
        IW50Hint = False
        ParentShowHint = False
        ShowHint = True
        ZIndex = 0
        RenderSize = True
        Caption = 'Refresh'
        DoSubmitValidation = True
        Color = clBtnFace
        Font.Color = clWebBLUE
        Font.Size = 10
        Font.Style = []
        FriendlyName = 'RefreshBtn'
        ScriptEvents = <>
        TabOrder = 1
        OnClick = RefreshBtnClick
      end
      object IWLabel1: TIWLabel
        Left = 56
        Top = 302
        Width = 241
        Height = 21
        Cursor = crAuto
        Anchors = [akLeft, akBottom]
        IW50Hint = False
        ParentShowHint = False
        ShowHint = True
        ZIndex = 0
        RenderSize = True
        Alignment = taLeftJustify
        BGColor = clNone
        Font.Color = clNone
        Font.Size = 10
        Font.Style = []
        NoWrap = False
        ConvertSpaces = False
        AutoSize = False
        FriendlyName = 'IWLabel1'
        Caption = 'Yellow=Update Pending '
        RawText = False
      end
      object IWLabel3: TIWLabel
        Left = 667
        Top = 302
        Width = 111
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
        Font.Color = clNone
        Font.Size = 10
        Font.Style = []
        NoWrap = False
        ConvertSpaces = False
        AutoSize = False
        FriendlyName = 'IWLabel1'
        Caption = 'Red=Offline >'
        RawText = False
      end
      object OffCombo: TIWComboBox
        Left = 785
        Top = 300
        Width = 49
        Height = 21
        Cursor = crAuto
        Anchors = [akRight, akBottom]
        IW50Hint = False
        ParentShowHint = False
        ShowHint = True
        ZIndex = 0
        RenderSize = True
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
        TabOrder = 2
        ItemIndex = 0
        Items.Strings = (
          '120'
          '60'
          '15'
          '5')
        Sorted = False
        FriendlyName = 'OffCombo'
      end
      object IWLabel2: TIWLabel
        Left = 849
        Top = 302
        Width = 57
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
        Font.Color = clNone
        Font.Size = 10
        Font.Style = []
        NoWrap = False
        ConvertSpaces = False
        AutoSize = False
        FriendlyName = 'IWLabel1'
        Caption = 'minutes'
        RawText = False
      end
      object IWRectangle1: TIWRectangle
        Left = 0
        Top = 3
        Width = 3
        Height = 340
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
      object IWRectangle2: TIWRectangle
        Left = 0
        Top = 0
        Width = 946
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
    end
  end
  object siLangLinked1: TsiLangLinked
    Version = '5.3.1.1'
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
      'Summary'
      'StatusText'
      'HotKey'
      'FriendlyName'
      'Confirmation'
      'Title'
      'NoSelectionText'
      'LangFile')
    Top = 120
    TranslationData = {
      737443617074696F6E730D0A53746F72654772696401010D0A53746F72654C61
      62656C0153746F726520537461747573010D0A5265667265736842746E015265
      6672657368010D0A49574C6162656C310159656C6C6F773D5570646174652050
      656E64696E6720010D0A49574C6162656C33015265643D4F66666C696E65203E
      010D0A49574C6162656C32016D696E75746573010D0A737448696E74730D0A73
      74446973706C61794C6162656C730D0A7374466F6E74730D0A73744D756C7469
      4C696E65730D0A4957526567696F6E312E4578747261546167506172616D7301
      010D0A4957526567696F6E322E4578747261546167506172616D7301010D0A53
      746F7265477269642E4578747261546167506172616D7301010D0A53746F7265
      4C6162656C2E4578747261546167506172616D7301010D0A495753694C696E6B
      312E4578747261546167506172616D7301010D0A5265667265736842746E2E45
      78747261546167506172616D7301010D0A49574C6162656C312E457874726154
      6167506172616D7301010D0A49574C6162656C332E4578747261546167506172
      616D7301010D0A4F6666436F6D626F2E4578747261546167506172616D730101
      0D0A4F6666436F6D626F2E4974656D73013132302C36302C31352C35010D0A49
      574C6162656C322E4578747261546167506172616D7301010D0A495752656374
      616E676C65312E4578747261546167506172616D7301010D0A49575265637461
      6E676C65322E4578747261546167506172616D7301010D0A7374537472696E67
      730D0A477269642E4964014944010D0A477269642E4E616D65014E616D65010D
      0A477269642E504F5301504F53010D0A477269642E456E61626C656401456E61
      626C6564010D0A477269642E5072696E746572015072696E746572010D0A4772
      69642E43666701436667010D0A477269642E53656E740153656E74010D0A4772
      69642E53697A650153697A65010D0A477269642E5075626C6973686564015075
      626C6973686564010D0A73744F74686572537472696E67730D0A54666F726D44
      6973747269625374617475732E48656C704B6579776F726401010D0A44697374
      7269624672616D655469746C65312E48656C704B6579776F726401010D0A7573
      6572666F6F746572312E48656C704B6579776F726401010D0A4957526567696F
      6E312E48656C704B6579776F726401010D0A4957526567696F6E322E48656C70
      4B6579776F726401010D0A53746F7265477269642E48656C704B6579776F7264
      01010D0A53746F72654C6162656C2E48656C704B6579776F726401010D0A4957
      53694C696E6B312E48656C704B6579776F726401010D0A526566726573684274
      6E2E48656C704B6579776F726401010D0A49574C6162656C312E48656C704B65
      79776F726401010D0A49574C6162656C332E48656C704B6579776F726401010D
      0A4F6666436F6D626F2E48656C704B6579776F726401010D0A49574C6162656C
      322E48656C704B6579776F726401010D0A495752656374616E676C65312E4865
      6C704B6579776F726401010D0A495752656374616E676C65312E546578740101
      0D0A495752656374616E676C65322E48656C704B6579776F726401010D0A4957
      52656374616E676C65322E5465787401010D0A7374436F6C6C656374696F6E73
      0D0A737443686172536574730D0A}
  end
end
