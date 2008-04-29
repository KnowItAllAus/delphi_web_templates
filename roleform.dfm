object su_FormRole: Tsu_FormRole
  Left = 0
  Top = 0
  Width = 1014
  Height = 698
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
  DesignLeft = 102
  DesignTop = 195
  object IWRegion1: TIWRegion
    Left = 0
    Top = 118
    Width = 1014
    Height = 551
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
      1014
      551)
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
      TabOrder = 4
      RawText = False
      SiLangLinked = silink
      LangFile = 'role.sil'
      LangControl = RcDataMod.LangEditControl1
    end
    object loginlanglink: TIWLink
      Left = 0
      Top = 24
      Width = 105
      Height = 17
      Cursor = crAuto
      IW50Hint = False
      ParentShowHint = False
      ShowHint = True
      ZIndex = 0
      RenderSize = True
      Alignment = taLeftJustify
      Color = clNone
      Font.Color = clNone
      Font.Size = 10
      Font.Style = [fsUnderline]
      ScriptEvents = <>
      DoSubmitValidation = False
      FriendlyName = 'Login Language'
      OnClick = loginlanglinkClick
      TabOrder = 6
      RawText = False
      Caption = 'Login language'
    end
    object BodyRegion: TIWRegion
      Left = 196
      Top = 50
      Width = 596
      Height = 415
      Cursor = crAuto
      HorzScrollBar.Visible = False
      VertScrollBar.Visible = False
      Anchors = [akTop]
      BorderOptions.NumericWidth = 1
      BorderOptions.BorderWidth = cbwNumeric
      BorderOptions.Style = cbsSolid
      BorderOptions.Color = clNone
      Color = 14202786
      ParentShowHint = False
      ShowHint = True
      ZIndex = 1000
      Splitter = False
      object IWRectangle2: TIWRectangle
        Left = 1
        Top = 1
        Width = 594
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
        Height = 410
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
      object CompanyLabel: TIWLabel
        Left = 16
        Top = 24
        Width = 569
        Height = 24
        Cursor = crAuto
        IW50Hint = False
        ParentShowHint = False
        ShowHint = True
        ZIndex = 0
        RenderSize = True
        Alignment = taCenter
        BGColor = clNone
        Font.Color = clNone
        Font.Size = 14
        Font.Style = [fsBold]
        NoWrap = False
        ConvertSpaces = False
        AutoSize = False
        FriendlyName = 'CompanyLabel'
        Caption = 'CompanyLabel'
        RawText = False
      end
      object LastLoginLabel: TIWLabel
        Left = 216
        Top = 56
        Width = 89
        Height = 16
        Cursor = crAuto
        IW50Hint = False
        ParentShowHint = False
        ShowHint = True
        ZIndex = 0
        RenderSize = True
        Alignment = taRightJustify
        BGColor = clNone
        Font.Color = clNone
        Font.Size = 10
        Font.Style = []
        NoWrap = False
        ConvertSpaces = False
        AutoSize = False
        FriendlyName = 'LastLoginLabel'
        Caption = 'Last Login @ '
        RawText = False
      end
      object AccessLabel: TIWLabel
        Left = 312
        Top = 56
        Width = 153
        Height = 16
        Cursor = crAuto
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
        FriendlyName = 'AccessLabel'
        Caption = 'AccessLabel'
        RawText = False
      end
      object PromoRegn: TIWRegion
        Left = 210
        Top = 90
        Width = 206
        Height = 40
        Cursor = crAuto
        HorzScrollBar.Visible = False
        VertScrollBar.Visible = False
        TabOrder = 6
        BorderOptions.NumericWidth = 1
        BorderOptions.BorderWidth = cbwNumeric
        BorderOptions.Style = cbsHidden
        BorderOptions.Color = clNone
        Color = 14202786
        ParentShowHint = False
        ShowHint = True
        ZIndex = 1000
        Splitter = False
        object IWImageFile1: TIWImageFile
          Left = 0
          Top = 0
          Width = 206
          Height = 40
          Cursor = crAuto
          Align = alClient
          IW50Hint = False
          ParentShowHint = False
          ShowHint = True
          ZIndex = 0
          RenderSize = True
          AutoSize = False
          BorderOptions.Color = clNone
          BorderOptions.Width = 0
          DoSubmitValidation = True
          ScriptEvents = <>
          TabOrder = 0
          UseSize = True
          OnClick = PromoLinkClick
          Cacheable = True
          FriendlyName = 'IWImageFile1'
          ImageFile.Filename = 'E:\delphi\delphi_web\Files\navbtn_large.GIF'
        end
        object IWRegion4: TIWRegion
          Left = 6
          Top = 8
          Width = 193
          Height = 25
          Cursor = crAuto
          HorzScrollBar.Visible = False
          VertScrollBar.Visible = False
          BorderOptions.NumericWidth = 1
          BorderOptions.BorderWidth = cbwNumeric
          BorderOptions.Style = cbsNone
          BorderOptions.Color = clNone
          Color = clNone
          ParentShowHint = False
          ShowHint = True
          ZIndex = 1000
          Splitter = False
          object PromoLnk: TIWLink
            Left = 0
            Top = 0
            Width = 193
            Height = 25
            Cursor = crAuto
            Align = alClient
            IW50Hint = False
            ParentShowHint = False
            ShowHint = True
            ZIndex = 0
            RenderSize = False
            Alignment = taLeftJustify
            Color = clMenuText
            Font.Color = clWebWHITE
            Font.FontName = 'Arial'
            Font.Size = 14
            Font.Style = [fsBold]
            ScriptEvents = <
              item
                EventCode.Strings = (
                  'this.style.color="white";')
                Event = 'onMouseOut'
              end
              item
                EventCode.Strings = (
                  'this.style.color="yellow";')
                Event = 'onMouseOver'
              end>
            DoSubmitValidation = False
            FriendlyName = 'PromoLnk'
            OnClick = PromoLinkClick
            TabOrder = 11
            RawText = False
            Caption = '&nbsp;PROMOTIONS'
          end
        end
      end
      object DistribRegn: TIWRegion
        Left = 210
        Top = 138
        Width = 206
        Height = 41
        Cursor = crAuto
        HorzScrollBar.Visible = False
        VertScrollBar.Visible = False
        TabOrder = 6
        BorderOptions.NumericWidth = 1
        BorderOptions.BorderWidth = cbwNumeric
        BorderOptions.Style = cbsHidden
        BorderOptions.Color = clNone
        Color = clNone
        ParentShowHint = False
        ShowHint = True
        ZIndex = 1000
        Splitter = False
        object IWImageFile2: TIWImageFile
          Left = 0
          Top = 0
          Width = 206
          Height = 41
          Cursor = crAuto
          Align = alClient
          IW50Hint = False
          ParentShowHint = False
          ShowHint = True
          ZIndex = 0
          RenderSize = True
          AutoSize = False
          BorderOptions.Color = clNone
          BorderOptions.Width = 0
          DoSubmitValidation = True
          ScriptEvents = <>
          TabOrder = 1
          UseSize = True
          Cacheable = True
          FriendlyName = 'IWImageFile1'
          ImageFile.Filename = 'E:\delphi\delphi_web\Files\navbtn_large.GIF'
        end
        object IWRegion2: TIWRegion
          Left = 6
          Top = 8
          Width = 193
          Height = 25
          Cursor = crAuto
          HorzScrollBar.Visible = False
          VertScrollBar.Visible = False
          BorderOptions.NumericWidth = 1
          BorderOptions.BorderWidth = cbwNumeric
          BorderOptions.Style = cbsNone
          BorderOptions.Color = clNone
          Color = clNone
          ParentShowHint = False
          ShowHint = True
          ZIndex = 1000
          Splitter = False
          object DistribLnk: TIWLink
            Left = 0
            Top = 0
            Width = 193
            Height = 25
            Cursor = crAuto
            Align = alClient
            IW50Hint = False
            ParentShowHint = False
            ShowHint = True
            ZIndex = 0
            RenderSize = False
            Alignment = taLeftJustify
            Color = clMenuText
            Font.Color = clWebWHITE
            Font.FontName = 'Arial'
            Font.Size = 14
            Font.Style = [fsBold]
            ScriptEvents = <
              item
                EventCode.Strings = (
                  'this.style.color="white";')
                Event = 'onMouseOut'
              end
              item
                EventCode.Strings = (
                  'this.style.color="yellow";')
                Event = 'onMouseOver'
              end>
            DoSubmitValidation = False
            FriendlyName = 'IWLink1'
            OnClick = DistribLnkClick
            TabOrder = 9
            RawText = False
            Caption = '&nbsp;DISTRIBUTION'
          end
        end
      end
      object InstallRegn: TIWRegion
        Left = 210
        Top = 314
        Width = 206
        Height = 41
        Cursor = crAuto
        HorzScrollBar.Visible = False
        VertScrollBar.Visible = False
        TabOrder = 6
        BorderOptions.NumericWidth = 1
        BorderOptions.BorderWidth = cbwNumeric
        BorderOptions.Style = cbsHidden
        BorderOptions.Color = clNone
        Color = clNone
        ParentShowHint = False
        ShowHint = True
        ZIndex = 1000
        Splitter = False
        object IWImageFile3: TIWImageFile
          Left = 0
          Top = 0
          Width = 206
          Height = 41
          Cursor = crAuto
          Visible = False
          Align = alClient
          IW50Hint = False
          ParentShowHint = False
          ShowHint = True
          ZIndex = 0
          RenderSize = True
          AutoSize = False
          BorderOptions.Color = clNone
          BorderOptions.Width = 0
          DoSubmitValidation = True
          ScriptEvents = <>
          TabOrder = 2
          UseSize = True
          Cacheable = True
          FriendlyName = 'IWImageFile1'
          ImageFile.Filename = 'E:\delphi\delphi_web\Files\navbtn_large.GIF'
        end
        object IWRegion6: TIWRegion
          Left = 6
          Top = 8
          Width = 193
          Height = 25
          Cursor = crAuto
          HorzScrollBar.Visible = False
          VertScrollBar.Visible = False
          BorderOptions.NumericWidth = 1
          BorderOptions.BorderWidth = cbwNumeric
          BorderOptions.Style = cbsNone
          BorderOptions.Color = clNone
          Color = clNone
          ParentShowHint = False
          ShowHint = True
          ZIndex = 1000
          Splitter = False
          object InstallLnk: TIWLink
            Left = 0
            Top = 0
            Width = 193
            Height = 25
            Cursor = crAuto
            Visible = False
            Align = alClient
            IW50Hint = False
            ParentShowHint = False
            ShowHint = True
            ZIndex = 0
            RenderSize = False
            Alignment = taLeftJustify
            Color = clMenuText
            Font.Color = clWebWHITE
            Font.FontName = 'Arial'
            Font.Size = 14
            Font.Style = [fsBold]
            ScriptEvents = <
              item
                EventCode.Strings = (
                  'this.style.color="white";')
                Event = 'onMouseOut'
              end
              item
                EventCode.Strings = (
                  'this.style.color="yellow";')
                Event = 'onMouseOver'
              end>
            DoSubmitValidation = False
            FriendlyName = 'IWLink1'
            TabOrder = 13
            RawText = False
            Caption = '&nbsp;INSTALLATION'
          end
        end
      end
      object AdminRegn: TIWRegion
        Left = 210
        Top = 266
        Width = 206
        Height = 41
        Cursor = crAuto
        HorzScrollBar.Visible = False
        VertScrollBar.Visible = False
        TabOrder = 6
        BorderOptions.NumericWidth = 1
        BorderOptions.BorderWidth = cbwNumeric
        BorderOptions.Style = cbsHidden
        BorderOptions.Color = clNone
        Color = clNone
        ParentShowHint = False
        ShowHint = True
        ZIndex = 1000
        Splitter = False
        object AdminImg: TIWImageFile
          Left = 0
          Top = 0
          Width = 206
          Height = 41
          Cursor = crAuto
          Align = alClient
          IW50Hint = False
          ParentShowHint = False
          ShowHint = True
          ZIndex = 0
          RenderSize = True
          AutoSize = False
          BorderOptions.Color = clNone
          BorderOptions.Width = 0
          DoSubmitValidation = True
          ScriptEvents = <>
          TabOrder = 3
          UseSize = True
          OnClick = IWAdminClick
          Cacheable = True
          FriendlyName = 'IWImageFile1'
          ImageFile.Filename = 'E:\delphi\delphi_web\Files\navbtn_large.GIF'
        end
        object IWRegion5: TIWRegion
          Left = 6
          Top = 8
          Width = 193
          Height = 25
          Cursor = crAuto
          HorzScrollBar.Visible = False
          VertScrollBar.Visible = False
          BorderOptions.NumericWidth = 1
          BorderOptions.BorderWidth = cbwNumeric
          BorderOptions.Style = cbsNone
          BorderOptions.Color = clNone
          Color = clNone
          ParentShowHint = False
          ShowHint = True
          ZIndex = 1000
          Splitter = False
          object AdminLnk: TIWLink
            Left = 0
            Top = 0
            Width = 193
            Height = 25
            Cursor = crAuto
            Align = alClient
            IW50Hint = False
            ParentShowHint = False
            ShowHint = True
            ZIndex = 0
            RenderSize = False
            Alignment = taLeftJustify
            Color = clMenuText
            Font.Color = clWebWHITE
            Font.FontName = 'Arial'
            Font.Size = 14
            Font.Style = [fsBold]
            ScriptEvents = <
              item
                EventCode.Strings = (
                  'this.style.color="white";')
                Event = 'onMouseOut'
              end
              item
                EventCode.Strings = (
                  'this.style.color="yellow";')
                Event = 'onMouseOver'
              end>
            DoSubmitValidation = False
            FriendlyName = 'IWLink1'
            OnClick = IWAdminClick
            TabOrder = 12
            RawText = False
            Caption = '&nbsp;ADMINISTRATION'
          end
        end
      end
      object ReportRegn: TIWRegion
        Left = 210
        Top = 202
        Width = 206
        Height = 41
        Cursor = crAuto
        HorzScrollBar.Visible = False
        VertScrollBar.Visible = False
        TabOrder = 6
        BorderOptions.NumericWidth = 1
        BorderOptions.BorderWidth = cbwNumeric
        BorderOptions.Style = cbsHidden
        BorderOptions.Color = clNone
        Color = clNone
        ParentShowHint = False
        ShowHint = True
        ZIndex = 1000
        Splitter = False
        object IWImageFile4: TIWImageFile
          Left = 0
          Top = 0
          Width = 206
          Height = 41
          Cursor = crAuto
          Align = alClient
          IW50Hint = False
          ParentShowHint = False
          ShowHint = True
          ZIndex = 0
          RenderSize = True
          AutoSize = False
          BorderOptions.Color = clNone
          BorderOptions.Width = 0
          DoSubmitValidation = True
          ScriptEvents = <>
          TabOrder = 7
          UseSize = True
          OnClick = IWAdminClick
          Cacheable = True
          FriendlyName = 'IWImageFile1'
          ImageFile.Filename = 'E:\delphi\delphi_web\Files\navbtn_large.GIF'
        end
        object IWRegion3: TIWRegion
          Left = 6
          Top = 8
          Width = 193
          Height = 25
          Cursor = crAuto
          HorzScrollBar.Visible = False
          VertScrollBar.Visible = False
          BorderOptions.NumericWidth = 1
          BorderOptions.BorderWidth = cbwNumeric
          BorderOptions.Style = cbsNone
          BorderOptions.Color = clNone
          Color = clNone
          ParentShowHint = False
          ShowHint = True
          ZIndex = 1000
          Splitter = False
          object StatLnk: TIWLink
            Left = 0
            Top = 0
            Width = 193
            Height = 25
            Cursor = crAuto
            Align = alClient
            IW50Hint = False
            ParentShowHint = False
            ShowHint = True
            ZIndex = 0
            RenderSize = False
            Alignment = taLeftJustify
            Color = clMenuText
            Font.Color = clWebWHITE
            Font.FontName = 'Arial'
            Font.Size = 14
            Font.Style = [fsBold]
            ScriptEvents = <
              item
                EventCode.Strings = (
                  'this.style.color="white";')
                Event = 'onMouseOut'
              end
              item
                EventCode.Strings = (
                  'this.style.color="yellow";')
                Event = 'onMouseOver'
              end>
            DoSubmitValidation = False
            FriendlyName = 'StatLnk'
            OnClick = StatLnkClick
            TabOrder = 10
            RawText = False
            Caption = '&nbsp;REPORTS'
          end
        end
      end
    end
  end
  inline FrameBareTitle1: TFrameBareTitle
    Left = 0
    Top = 0
    Width = 1014
    Height = 118
    HorzScrollBar.Visible = False
    VertScrollBar.Visible = False
    Align = alTop
    TabOrder = 0
    inherited IWFrameRegion: TIWRegion
      Width = 1014
      Height = 118
      TabOrder = 8
      inherited titleimage: TIWImageFile
        Width = 125
        ImageFile.Filename = 'E:\delphi\delphi_web\files\role.GIF'
      end
      inherited IWRectangle1: TIWRectangle
        Top = 93
        Width = 2615
      end
      inherited IWRectangle3: TIWRectangle
        Top = 98
      end
      inherited IWImageFile3: TIWImageFile
        Left = 679
      end
      inherited TitleLabel: TIWLabel
        Width = 129
        Caption = 'role'
      end
      inherited HideBox: TIWImageFile
        Top = 100
        Width = 12
        Height = 14
      end
    end
  end
  inline userfooter1: Tuserfooter
    Left = 0
    Top = 669
    Width = 1014
    Height = 29
    HorzScrollBar.Visible = False
    Align = alBottom
    TabOrder = 2
    inherited IWRegion1: TIWRegion
      Width = 1014
      Height = 29
      TabOrder = 5
      inherited IWRectangle1: TIWRectangle
        Left = 598
        Width = 417
      end
      inherited IWRectangle4: TIWRectangle
        Width = 1630
      end
      inherited IWRectangle6: TIWRectangle
        Width = 556
      end
      inherited Cancel: TIWButton
        Left = 786
        Height = 20
        Caption = 'LOGOUT'
        OnClick = IWLogoutClick
      end
      inherited Extra1: TIWButton
        Left = 698
        Height = 20
        Visible = True
        Caption = 'Password'
        OnClick = PwdLinkClick
      end
      inherited Extra2: TIWButton
        Left = 610
        Height = 20
      end
      inherited fiwSiLink1: TIWSiLink
        Left = 874
      end
    end
    inherited silink_footer: TsiLangLinked
      Left = 312
    end
  end
  object silink: TsiLangLinked
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
      'HelpKeyword'
      'Title'
      'Confirmation'
      'FriendlyName'
      'StatusText'
      'AltText')
    Top = 160
    TranslationData = {
      737443617074696F6E730D0A6C6F67696E6C616E676C696E6B014C6F67696E20
      6C616E6775616765010D0A436F6D70616E794C6162656C01436F6D70616E794C
      6162656C010D0A4C6173744C6F67696E4C6162656C014C617374204C6F67696E
      204020010D0A4163636573734C6162656C014163636573734C6162656C010D0A
      50726F6D6F4C6E6B0150524F4D4F54494F4E53010D0A446973747269624C6E6B
      01444953545249425554494F4E010D0A496E7374616C6C4C6E6B01494E535441
      4C4C4154494F4E010D0A41646D696E4C6E6B0141444D494E495354524154494F
      4E010D0A537461744C6E6B015245504F525453010D0A737448696E74730D0A73
      74446973706C61794C6162656C730D0A7374466F6E74730D0A73744D756C7469
      4C696E65730D0A4957526567696F6E312E4578747261546167506172616D7301
      010D0A6C616E676C696E6B2E4578747261546167506172616D7301010D0A6C6F
      67696E6C616E676C696E6B2E4578747261546167506172616D7301010D0A426F
      6479526567696F6E2E4578747261546167506172616D7301010D0A4957526563
      74616E676C65322E4578747261546167506172616D7301010D0A495752656374
      616E676C65312E4578747261546167506172616D7301010D0A436F6D70616E79
      4C6162656C2E4578747261546167506172616D7301010D0A4C6173744C6F6769
      6E4C6162656C2E4578747261546167506172616D7301010D0A4163636573734C
      6162656C2E4578747261546167506172616D7301010D0A50726F6D6F5265676E
      2E4578747261546167506172616D7301010D0A4957496D61676546696C65312E
      4578747261546167506172616D7301010D0A446973747269625265676E2E4578
      747261546167506172616D7301010D0A4957496D61676546696C65322E457874
      7261546167506172616D7301010D0A496E7374616C6C5265676E2E4578747261
      546167506172616D7301010D0A4957496D61676546696C65332E457874726154
      6167506172616D7301010D0A41646D696E5265676E2E45787472615461675061
      72616D7301010D0A41646D696E496D672E4578747261546167506172616D7301
      010D0A4957526567696F6E342E4578747261546167506172616D7301010D0A50
      726F6D6F4C6E6B2E4578747261546167506172616D7301010D0A495752656769
      6F6E322E4578747261546167506172616D7301010D0A446973747269624C6E6B
      2E4578747261546167506172616D7301010D0A4957526567696F6E362E457874
      7261546167506172616D7301010D0A496E7374616C6C4C6E6B2E457874726154
      6167506172616D7301010D0A4957526567696F6E352E45787472615461675061
      72616D7301010D0A41646D696E4C6E6B2E4578747261546167506172616D7301
      010D0A5265706F72745265676E2E4578747261546167506172616D7301010D0A
      4957496D61676546696C65342E4578747261546167506172616D7301010D0A49
      57526567696F6E332E4578747261546167506172616D7301010D0A537461744C
      6E6B2E4578747261546167506172616D7301010D0A7374537472696E67730D0A
      73744F74686572537472696E67730D0A6C616E676C696E6B2E4C616E6746696C
      6501726F6C652E73696C010D0A495752656374616E676C65322E546578740101
      0D0A495752656374616E676C65312E5465787401010D0A7374436F6C6C656374
      696F6E730D0A50726F6D6F4C6E6B2E5363726970744576656E74735B305D2E45
      76656E74016F6E4D6F7573654F7574010D0A50726F6D6F4C6E6B2E5363726970
      744576656E74735B305D2E4576656E74436F646501746869732E7374796C652E
      636F6C6F723D227768697465223B191A010D0A50726F6D6F4C6E6B2E53637269
      70744576656E74735B315D2E4576656E74016F6E4D6F7573654F766572010D0A
      50726F6D6F4C6E6B2E5363726970744576656E74735B315D2E4576656E74436F
      646501746869732E7374796C652E636F6C6F723D2279656C6C6F77223B191A01
      0D0A446973747269624C6E6B2E5363726970744576656E74735B305D2E457665
      6E74016F6E4D6F7573654F7574010D0A446973747269624C6E6B2E5363726970
      744576656E74735B305D2E4576656E74436F646501746869732E7374796C652E
      636F6C6F723D227768697465223B191A010D0A446973747269624C6E6B2E5363
      726970744576656E74735B315D2E4576656E74016F6E4D6F7573654F76657201
      0D0A446973747269624C6E6B2E5363726970744576656E74735B315D2E457665
      6E74436F646501746869732E7374796C652E636F6C6F723D2279656C6C6F7722
      3B191A010D0A496E7374616C6C4C6E6B2E5363726970744576656E74735B305D
      2E4576656E74016F6E4D6F7573654F7574010D0A496E7374616C6C4C6E6B2E53
      63726970744576656E74735B305D2E4576656E74436F646501746869732E7374
      796C652E636F6C6F723D227768697465223B191A010D0A496E7374616C6C4C6E
      6B2E5363726970744576656E74735B315D2E4576656E74016F6E4D6F7573654F
      766572010D0A496E7374616C6C4C6E6B2E5363726970744576656E74735B315D
      2E4576656E74436F646501746869732E7374796C652E636F6C6F723D2279656C
      6C6F77223B191A010D0A41646D696E4C6E6B2E5363726970744576656E74735B
      305D2E4576656E74016F6E4D6F7573654F7574010D0A41646D696E4C6E6B2E53
      63726970744576656E74735B305D2E4576656E74436F646501746869732E7374
      796C652E636F6C6F723D227768697465223B191A010D0A41646D696E4C6E6B2E
      5363726970744576656E74735B315D2E4576656E74016F6E4D6F7573654F7665
      72010D0A41646D696E4C6E6B2E5363726970744576656E74735B315D2E457665
      6E74436F646501746869732E7374796C652E636F6C6F723D2279656C6C6F7722
      3B191A010D0A537461744C6E6B2E5363726970744576656E74735B305D2E4576
      656E74016F6E4D6F7573654F7574010D0A537461744C6E6B2E53637269707445
      76656E74735B305D2E4576656E74436F646501746869732E7374796C652E636F
      6C6F723D227768697465223B191A010D0A537461744C6E6B2E53637269707445
      76656E74735B315D2E4576656E74016F6E4D6F7573654F766572010D0A537461
      744C6E6B2E5363726970744576656E74735B315D2E4576656E74436F64650174
      6869732E7374796C652E636F6C6F723D2279656C6C6F77223B191A010D0A7374
      43686172536574730D0A}
  end
end
