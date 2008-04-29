object formImages: TformImages
  Left = 0
  Top = 0
  Width = 1084
  Height = 928
  ConnectionMode = cmAny
  SupportedBrowsers = [brIE, brNetscape7, brOpera, brNetscape6]
  OnCreate = IWAppFormCreate
  OnDestroy = IWAppFormDestroy
  BrowserSecurityCheck = True
  Background.Fixed = False
  HandleTabs = False
  LeftToRight = True
  LockUntilLoaded = True
  LockOnSubmit = True
  ShowHint = True
  XPTheme = True
  DesignLeft = 188
  DesignTop = 26
  inline PromoFrameTitle1: TPromoFrameTitle
    Left = 0
    Top = 0
    Width = 1084
    Height = 119
    HorzScrollBar.Visible = False
    VertScrollBar.Visible = False
    Align = alTop
    TabOrder = 0
    inherited IWFrameRegion: TIWRegion
      Width = 1084
      TabOrder = 2
      DesignSize = (
        1084
        119)
      inherited IWRectangle1: TIWRectangle
        Left = 152
        Width = 2533
      end
      inherited IWRectangle2: TIWRectangle
        Left = 152
      end
      inherited IWRectangle3: TIWRectangle
        Width = 1600
      end
      inherited IWImageFile3: TIWImageFile
        Top = 0
      end
      inherited langlink: TIWSiLink
        Left = 682
        Top = 65
      end
      inherited JobReg: TIWRegion
        Color = 10526880
      end
      inherited PromoReg: TIWRegion
        Color = 11100191
      end
    end
  end
  object IWRegion1: TIWRegion
    Left = 0
    Top = 119
    Width = 1084
    Height = 780
    Cursor = crAuto
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
      1084
      780)
    object IWSiLink1: TIWSiLink
      Left = 8
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
      LangFile = 'images.sil'
      LangControl = RcDataMod.LangEditControl1
    end
    object BodyRegion: TIWRegion
      Left = 104
      Top = 21
      Width = 870
      Height = 740
      Cursor = crAuto
      Anchors = [akLeft, akTop, akRight, akBottom]
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
        870
        740)
      object IWRectangle2: TIWRectangle
        Left = 1
        Top = 1
        Width = 868
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
        Height = 735
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
      object ImageLabel: TIWLabel
        Left = 26
        Top = 8
        Width = 269
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
        FriendlyName = 'ImageLabel'
        Caption = 'Printer Images and Text Content'
        RawText = False
      end
      object ImageGrid: TIWGrid
        Left = 25
        Top = 41
        Width = 806
        Height = 667
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
        OnRenderCell = ImageGridRenderCell
        UseFrame = True
        UseSize = True
        FriendlyName = 'ImageGrid'
        ColumnCount = 5
        OnCellClick = ImageGridCellClick
        RowCount = 1
        TabOrder = -1
        ShowEmptyCells = True
        ScrollToCurrentRow = False
      end
      object InsertBtn: TIWButton
        Left = 747
        Top = 714
        Width = 83
        Height = 21
        Cursor = crAuto
        Anchors = [akRight, akBottom]
        IW50Hint = False
        ParentShowHint = False
        ShowHint = True
        ZIndex = 0
        RenderSize = True
        Caption = 'Insert'
        DoSubmitValidation = True
        Color = clBtnFace
        Font.Color = clNone
        Font.Size = 10
        Font.Style = []
        FriendlyName = 'InsertBtn'
        ScriptEvents = <>
        TabOrder = 3
        OnClick = InsertBtnClick
      end
    end
  end
  inline userfooter1: Tuserfooter
    Left = 0
    Top = 899
    Width = 1084
    Height = 29
    HorzScrollBar.Visible = False
    Align = alBottom
    TabOrder = 2
    inherited IWRegion1: TIWRegion
      Width = 1084
      Height = 29
      TabOrder = 1
      inherited IWRectangle1: TIWRectangle
        Left = 668
        Width = 417
      end
      inherited IWRectangle4: TIWRectangle
        Width = 1700
      end
      inherited IWRectangle6: TIWRectangle
        Width = 626
      end
      inherited Cancel: TIWButton
        Left = 999
        Caption = 'Menu'
        OnClick = userfooter1CancelClick
      end
      inherited Extra1: TIWButton
        Left = 911
      end
      inherited Extra2: TIWButton
        Left = 823
      end
      inherited fiwSiLink1: TIWSiLink
        Left = 727
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
      'Title'
      'Confirmation'
      'FriendlyName'
      'HotKey'
      'StatusText'
      'Summary'
      'LangFile')
    Left = 8
    Top = 144
    TranslationData = {
      737443617074696F6E730D0A496D6167654C6162656C015072696E7465722049
      6D6167657320616E64205465787420436F6E74656E74010D0A496D6167654772
      696401010D0A43726561746542746E01437265617465010D0A737448696E7473
      0D0A7374446973706C61794C6162656C730D0A7374466F6E74730D0A73744D75
      6C74694C696E65730D0A4957526567696F6E312E457874726154616750617261
      6D7301010D0A495753694C696E6B312E4578747261546167506172616D730101
      0D0A426F6479526567696F6E2E4578747261546167506172616D7301010D0A49
      5752656374616E676C65322E4578747261546167506172616D7301010D0A4957
      52656374616E676C65312E4578747261546167506172616D7301010D0A496D61
      67654C6162656C2E4578747261546167506172616D7301010D0A496D61676547
      7269642E4578747261546167506172616D7301010D0A43726561746542746E2E
      4578747261546167506172616D7301010D0A7374537472696E67730D0A477269
      642E4E616D65014E616D65010D0A477269642E54616701546167010D0A4D6F64
      652E4E4554014E6574010D0A4D6F64652E494D41474501496D616765010D0A4D
      6F64652E53435249505401536372697074010D0A4D6F64652E43555354014375
      7374010D0A4D6F64652E52414E444F4D0152616E646F6D010D0A4D6F64652E53
      43414E4E4552015363616E6E6572010D0A4D6F64652E4B4559424F415244014B
      6579626F617264010D0A4D6F64652E544558540154657874010D0A477269642E
      475549440147554944010D0A477269642E50726F64756374696F6E0150726F64
      756374696F6E010D0A477269642E546573740154657374010D0A4E6577436F6E
      74656E74014E657720436F6E74656E74010D0A477269642E4372656174656401
      43726561746564010D0A477269642E4465736372697074696F6E014465736372
      697074696F6E010D0A477269642E50726F706572746965730150726F70657274
      696573010D0A73744F74686572537472696E67730D0A54666F726D496D616765
      732E48656C704B6579776F726401010D0A50726F6D6F4672616D655469746C65
      312E48656C704B6579776F726401010D0A4957526567696F6E312E48656C704B
      6579776F726401010D0A495753694C696E6B312E48656C704B6579776F726401
      010D0A426F6479526567696F6E2E48656C704B6579776F726401010D0A495752
      656374616E676C65322E48656C704B6579776F726401010D0A49575265637461
      6E676C65322E5465787401010D0A495752656374616E676C65312E48656C704B
      6579776F726401010D0A495752656374616E676C65312E5465787401010D0A49
      6D6167654C6162656C2E48656C704B6579776F726401010D0A496D6167654772
      69642E48656C704B6579776F726401010D0A43726561746542746E2E416C7454
      65787401010D0A43726561746542746E2E48656C704B6579776F726401010D0A
      75736572666F6F746572312E48656C704B6579776F726401010D0A7374436F6C
      6C656374696F6E730D0A737443686172536574730D0A}
  end
end
