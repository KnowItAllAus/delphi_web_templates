object su_FormRole: Tsu_FormRole
  Left = 0
  Top = 0
  Width = 1014
  Height = 698
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
  object IWRegion1: TIWRegion
    Left = 0
    Top = 118
    Width = 1014
    Height = 551
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
      TabOrder = 0
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
      FriendlyName = 'Login Language'
      OnClick = loginlanglinkClick
      TabOrder = 2
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
      RenderInvisibleControls = False
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
        Height = 410
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
      object LastLoginLabel: TIWLabel
        Left = 216
        Top = 51
        Width = 89
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
        AutoSize = False
        FriendlyName = 'LastLoginLabel'
        Caption = 'Last Login @ '
        RawText = False
      end
      object AccessLabel: TIWLabel
        Left = 312
        Top = 51
        Width = 153
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
        Alignment = taLeftJustify
        BGColor = clNone
        Font.Color = clNone
        Font.Size = 10
        Font.Style = []
        NoWrap = False
        ConvertSpaces = False
        HasTabOrder = False
        AutoSize = False
        FriendlyName = 'AccessLabel'
        Caption = 'AccessLabel'
        RawText = False
      end
      object CoBox: TIWComboBox
        Left = 190
        Top = 365
        Width = 251
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
        NoSelectionText = 'Select company...'
        Required = False
        RequireSelection = True
        ScriptEvents = <>
        OnChange = CoBoxChange
        UseSize = True
        Style = stNormal
        ButtonColor = clBtnFace
        DoSubmitValidation = True
        Editable = True
        NonEditableAsLabel = True
        SubmitOnAsyncEvent = True
        TabOrder = 9
        ItemIndex = -1
        Sorted = False
        FriendlyName = 'CoBox'
      end
      object CoLabel: TIWLabel
        Left = 10
        Top = 10
        Width = 581
        Height = 41
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
        Alignment = taCenter
        BGColor = clNone
        Font.Color = clNone
        Font.FontName = 'Arial'
        Font.FontFamily = 'Sans-Serif, Helvetica, Arial'
        Font.Size = 20
        Font.Style = [fsBold]
        NoWrap = False
        ConvertSpaces = False
        HasTabOrder = False
        AutoSize = False
        FriendlyName = 'CoLabel'
        Caption = 'CoLabel'
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
        RenderInvisibleControls = False
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
          StyleRenderOptions.RenderSize = True
          StyleRenderOptions.RenderPosition = True
          StyleRenderOptions.RenderFont = True
          StyleRenderOptions.RenderZIndex = True
          StyleRenderOptions.RenderVisibility = True
          StyleRenderOptions.RenderStatus = True
          StyleRenderOptions.RenderAbsolute = True
          BorderOptions.Color = clNone
          BorderOptions.Width = 0
          DoSubmitValidation = True
          ScriptEvents = <>
          TabOrder = -1
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
          RenderInvisibleControls = False
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
            StyleRenderOptions.RenderSize = False
            StyleRenderOptions.RenderPosition = True
            StyleRenderOptions.RenderFont = True
            StyleRenderOptions.RenderZIndex = True
            StyleRenderOptions.RenderVisibility = True
            StyleRenderOptions.RenderStatus = True
            StyleRenderOptions.RenderAbsolute = True
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
            TabOrder = 6
            RawText = False
            Caption = 'PROMOTIONS'
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
        RenderInvisibleControls = False
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
          StyleRenderOptions.RenderSize = True
          StyleRenderOptions.RenderPosition = True
          StyleRenderOptions.RenderFont = True
          StyleRenderOptions.RenderZIndex = True
          StyleRenderOptions.RenderVisibility = True
          StyleRenderOptions.RenderStatus = True
          StyleRenderOptions.RenderAbsolute = True
          BorderOptions.Color = clNone
          BorderOptions.Width = 0
          DoSubmitValidation = True
          ScriptEvents = <>
          TabOrder = -1
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
          RenderInvisibleControls = False
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
            StyleRenderOptions.RenderSize = False
            StyleRenderOptions.RenderPosition = True
            StyleRenderOptions.RenderFont = True
            StyleRenderOptions.RenderZIndex = True
            StyleRenderOptions.RenderVisibility = True
            StyleRenderOptions.RenderStatus = True
            StyleRenderOptions.RenderAbsolute = True
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
            TabOrder = 4
            RawText = False
            Caption = 'DISTRIBUTION'
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
        RenderInvisibleControls = False
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
        object TestImg: TIWImageFile
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
          StyleRenderOptions.RenderSize = True
          StyleRenderOptions.RenderPosition = True
          StyleRenderOptions.RenderFont = True
          StyleRenderOptions.RenderZIndex = True
          StyleRenderOptions.RenderVisibility = True
          StyleRenderOptions.RenderStatus = True
          StyleRenderOptions.RenderAbsolute = True
          BorderOptions.Color = clNone
          BorderOptions.Width = 0
          DoSubmitValidation = True
          ScriptEvents = <>
          TabOrder = -1
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
          RenderInvisibleControls = False
          BorderOptions.NumericWidth = 1
          BorderOptions.BorderWidth = cbwNumeric
          BorderOptions.Style = cbsNone
          BorderOptions.Color = clNone
          Color = clNone
          ParentShowHint = False
          ShowHint = True
          ZIndex = 1000
          Splitter = False
          object TestLnk: TIWLink
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
            StyleRenderOptions.RenderSize = False
            StyleRenderOptions.RenderPosition = True
            StyleRenderOptions.RenderFont = True
            StyleRenderOptions.RenderZIndex = True
            StyleRenderOptions.RenderVisibility = True
            StyleRenderOptions.RenderStatus = True
            StyleRenderOptions.RenderAbsolute = True
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
            OnClick = TestLnkClick
            TabOrder = 8
            RawText = False
            Caption = 'TEST'
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
        RenderInvisibleControls = False
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
          StyleRenderOptions.RenderSize = True
          StyleRenderOptions.RenderPosition = True
          StyleRenderOptions.RenderFont = True
          StyleRenderOptions.RenderZIndex = True
          StyleRenderOptions.RenderVisibility = True
          StyleRenderOptions.RenderStatus = True
          StyleRenderOptions.RenderAbsolute = True
          BorderOptions.Color = clNone
          BorderOptions.Width = 0
          DoSubmitValidation = True
          ScriptEvents = <>
          TabOrder = -1
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
          RenderInvisibleControls = False
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
            StyleRenderOptions.RenderSize = False
            StyleRenderOptions.RenderPosition = True
            StyleRenderOptions.RenderFont = True
            StyleRenderOptions.RenderZIndex = True
            StyleRenderOptions.RenderVisibility = True
            StyleRenderOptions.RenderStatus = True
            StyleRenderOptions.RenderAbsolute = True
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
            TabOrder = 7
            RawText = False
            Caption = 'ADMINISTRATION'
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
        RenderInvisibleControls = False
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
          StyleRenderOptions.RenderSize = True
          StyleRenderOptions.RenderPosition = True
          StyleRenderOptions.RenderFont = True
          StyleRenderOptions.RenderZIndex = True
          StyleRenderOptions.RenderVisibility = True
          StyleRenderOptions.RenderStatus = True
          StyleRenderOptions.RenderAbsolute = True
          BorderOptions.Color = clNone
          BorderOptions.Width = 0
          DoSubmitValidation = True
          ScriptEvents = <>
          TabOrder = -1
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
          RenderInvisibleControls = False
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
            StyleRenderOptions.RenderSize = False
            StyleRenderOptions.RenderPosition = True
            StyleRenderOptions.RenderFont = True
            StyleRenderOptions.RenderZIndex = True
            StyleRenderOptions.RenderVisibility = True
            StyleRenderOptions.RenderStatus = True
            StyleRenderOptions.RenderAbsolute = True
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
            TabOrder = 5
            RawText = False
            Caption = 'REPORTS'
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
    ExplicitWidth = 1014
    ExplicitHeight = 118
    inherited IWFrameRegion: TIWRegion
      Width = 1014
      Height = 118
      TabOrder = 3
      ExplicitWidth = 1014
      ExplicitHeight = 118
      inherited titleimage: TIWImageFile
        Width = 125
        ImageFile.Filename = 'E:\delphi\delphi_web\files\role.GIF'
        ExplicitWidth = 125
      end
      inherited IWRectangle1: TIWRectangle
        Top = 93
        Width = 2615
        ExplicitTop = 93
        ExplicitWidth = 2615
      end
      inherited IWRectangle3: TIWRectangle
        Top = 98
        Width = 1014
        ExplicitTop = 98
      end
      inherited IWImageFile3: TIWImageFile
        Left = 679
        ZIndex = 2
        ExplicitLeft = 679
      end
      inherited Smalltitle: TIWLabel
        Left = 900
        ExplicitLeft = 900
      end
      inherited HideBox: TIWImageFile
        Left = 1003
        Top = 100
        Width = 12
        Height = 14
        ExplicitLeft = 1003
        ExplicitTop = 100
        ExplicitWidth = 12
        ExplicitHeight = 14
      end
      inherited TitleLabel: TIWLabel
        Width = 129
        Caption = 'role'
        ExplicitWidth = 129
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
    ExplicitTop = 669
    ExplicitWidth = 1014
    ExplicitHeight = 29
    inherited IWRegion1: TIWRegion
      Width = 1014
      Height = 29
      TabOrder = 1
      ExplicitWidth = 1014
      ExplicitHeight = 29
      inherited IWRectangle1: TIWRectangle
        Left = 598
        Width = 417
        ExplicitLeft = 598
        ExplicitWidth = 417
      end
      inherited IWRectangle4: TIWRectangle
        Width = 1630
        ExplicitWidth = 1630
      end
      inherited IWRectangle6: TIWRectangle
        Width = 556
        ExplicitWidth = 556
      end
      inherited Cancel: TIWButton
        Left = 786
        Height = 20
        Caption = 'LOGOUT'
        OnClick = IWLogoutClick
        ExplicitLeft = 786
        ExplicitHeight = 20
      end
      inherited Extra1: TIWButton
        Left = 698
        Height = 20
        Visible = True
        Caption = 'Password'
        OnClick = PwdLinkClick
        ExplicitLeft = 698
        ExplicitHeight = 20
      end
      inherited Extra2: TIWButton
        Left = 610
        Height = 20
        ExplicitLeft = 610
        ExplicitHeight = 20
      end
      inherited fiwSiLink1: TIWSiLink
        Left = 874
        ExplicitLeft = 874
      end
    end
    inherited silink_footer: TsiLangLinked
      Left = 312
    end
  end
  object silink: TsiLangLinked
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
      'HelpKeyword'
      'Title'
      'Confirmation'
      'FriendlyName'
      'StatusText'
      'AltText')
    Top = 160
    TranslationData = {
      73007400430061007000740069006F006E0073005F0055006E00690063006F00
      640065000D000A006C006F00670069006E006C0061006E0067006C0069006E00
      6B0001004C006F00670069006E0020006C0061006E0067007500610067006500
      01000D000A004C006100730074004C006F00670069006E004C00610062006500
      6C0001004C0061007300740020004C006F00670069006E002000400020000100
      0D000A004100630063006500730073004C006100620065006C00010041006300
      63006500730073004C006100620065006C0001000D000A00500072006F006D00
      6F004C006E006B000100500052004F004D004F00540049004F004E0053000100
      0D000A0044006900730074007200690062004C006E006B000100440049005300
      54005200490042005500540049004F004E0001000D000A005400650073007400
      4C006E006B00010049004E005300540041004C004C004100540049004F004E00
      01000D000A00410064006D0069006E004C006E006B000100410044004D004900
      4E0049005300540052004100540049004F004E0001000D000A00530074006100
      74004C006E006B0001005200450050004F0052005400530001000D000A007300
      7400480069006E00740073005F0055006E00690063006F00640065000D000A00
      7300740044006900730070006C00610079004C006100620065006C0073005F00
      55006E00690063006F00640065000D000A007300740046006F006E0074007300
      5F0055006E00690063006F00640065000D000A00730074004D0075006C007400
      69004C0069006E00650073005F0055006E00690063006F00640065000D000A00
      4900570052006500670069006F006E0031002E00450078007400720061005400
      6100670050006100720061006D007300010001000D000A006C0061006E006700
      6C0069006E006B002E0045007800740072006100540061006700500061007200
      61006D007300010001000D000A006C006F00670069006E006C0061006E006700
      6C0069006E006B002E0045007800740072006100540061006700500061007200
      61006D007300010001000D000A0042006F006400790052006500670069006F00
      6E002E004500780074007200610054006100670050006100720061006D007300
      010001000D000A0049005700520065006300740061006E0067006C0065003200
      2E004500780074007200610054006100670050006100720061006D0073000100
      01000D000A0049005700520065006300740061006E0067006C00650031002E00
      4500780074007200610054006100670050006100720061006D00730001000100
      0D000A004C006100730074004C006F00670069006E004C006100620065006C00
      2E004500780074007200610054006100670050006100720061006D0073000100
      01000D000A004100630063006500730073004C006100620065006C002E004500
      780074007200610054006100670050006100720061006D007300010001000D00
      0A00500072006F006D006F005200650067006E002E0045007800740072006100
      54006100670050006100720061006D007300010001000D000A00490057004900
      6D00610067006500460069006C00650031002E00450078007400720061005400
      6100670050006100720061006D007300010001000D000A004400690073007400
      7200690062005200650067006E002E0045007800740072006100540061006700
      50006100720061006D007300010001000D000A004900570049006D0061006700
      6500460069006C00650032002E00450078007400720061005400610067005000
      6100720061006D007300010001000D000A0049006E007300740061006C006C00
      5200650067006E002E0045007800740072006100540061006700500061007200
      61006D007300010001000D000A00540065007300740049006D0067002E004500
      780074007200610054006100670050006100720061006D007300010001000D00
      0A00410064006D0069006E005200650067006E002E0045007800740072006100
      54006100670050006100720061006D007300010001000D000A00410064006D00
      69006E0049006D0067002E004500780074007200610054006100670050006100
      720061006D007300010001000D000A004900570052006500670069006F006E00
      34002E004500780074007200610054006100670050006100720061006D007300
      010001000D000A00500072006F006D006F004C006E006B002E00450078007400
      7200610054006100670050006100720061006D007300010001000D000A004900
      570052006500670069006F006E0032002E004500780074007200610054006100
      670050006100720061006D007300010001000D000A0044006900730074007200
      690062004C006E006B002E004500780074007200610054006100670050006100
      720061006D007300010001000D000A004900570052006500670069006F006E00
      36002E004500780074007200610054006100670050006100720061006D007300
      010001000D000A0054006500730074004C006E006B002E004500780074007200
      610054006100670050006100720061006D007300010001000D000A0049005700
      52006500670069006F006E0035002E0045007800740072006100540061006700
      50006100720061006D007300010001000D000A00410064006D0069006E004C00
      6E006B002E004500780074007200610054006100670050006100720061006D00
      7300010001000D000A005200650070006F00720074005200650067006E002E00
      4500780074007200610054006100670050006100720061006D00730001000100
      0D000A004900570049006D00610067006500460069006C00650034002E004500
      780074007200610054006100670050006100720061006D007300010001000D00
      0A004900570052006500670069006F006E0033002E0045007800740072006100
      54006100670050006100720061006D007300010001000D000A00530074006100
      74004C006E006B002E0045007800740072006100540061006700500061007200
      61006D007300010001000D000A007300740053007400720069006E0067007300
      5F0055006E00690063006F00640065000D000A00730074004F00740068006500
      720053007400720069006E00670073005F0055006E00690063006F0064006500
      0D000A006C0061006E0067006C0069006E006B002E004C0061006E0067004600
      69006C006500010072006F006C0065002E00730069006C0001000D000A004900
      5700520065006300740061006E0067006C00650032002E005400650078007400
      010001000D000A0049005700520065006300740061006E0067006C0065003100
      2E005400650078007400010001000D000A007300740043006F006C006C006500
      6300740069006F006E0073005F0055006E00690063006F00640065000D000A00
      500072006F006D006F004C006E006B002E005300630072006900700074004500
      760065006E00740073005B0030005D002E004500760065006E00740001006F00
      6E004D006F007500730065004F007500740001000D000A00500072006F006D00
      6F004C006E006B002E005300630072006900700074004500760065006E007400
      73005B0030005D002E004500760065006E00740043006F006400650001007400
      6800690073002E007300740079006C0065002E0063006F006C006F0072003D00
      22007700680069007400650022003B0019001A0001000D000A00500072006F00
      6D006F004C006E006B002E005300630072006900700074004500760065006E00
      740073005B0031005D002E004500760065006E00740001006F006E004D006F00
      7500730065004F0076006500720001000D000A00500072006F006D006F004C00
      6E006B002E005300630072006900700074004500760065006E00740073005B00
      31005D002E004500760065006E00740043006F00640065000100740068006900
      73002E007300740079006C0065002E0063006F006C006F0072003D0022007900
      65006C006C006F00770022003B0019001A0001000D000A004400690073007400
      7200690062004C006E006B002E00530063007200690070007400450076006500
      6E00740073005B0030005D002E004500760065006E00740001006F006E004D00
      6F007500730065004F007500740001000D000A00440069007300740072006900
      62004C006E006B002E005300630072006900700074004500760065006E007400
      73005B0030005D002E004500760065006E00740043006F006400650001007400
      6800690073002E007300740079006C0065002E0063006F006C006F0072003D00
      22007700680069007400650022003B0019001A0001000D000A00440069007300
      74007200690062004C006E006B002E0053006300720069007000740045007600
      65006E00740073005B0031005D002E004500760065006E00740001006F006E00
      4D006F007500730065004F0076006500720001000D000A004400690073007400
      7200690062004C006E006B002E00530063007200690070007400450076006500
      6E00740073005B0031005D002E004500760065006E00740043006F0064006500
      010074006800690073002E007300740079006C0065002E0063006F006C006F00
      72003D002200790065006C006C006F00770022003B0019001A0001000D000A00
      54006500730074004C006E006B002E0053006300720069007000740045007600
      65006E00740073005B0030005D002E004500760065006E00740001006F006E00
      4D006F007500730065004F007500740001000D000A0054006500730074004C00
      6E006B002E005300630072006900700074004500760065006E00740073005B00
      30005D002E004500760065006E00740043006F00640065000100740068006900
      73002E007300740079006C0065002E0063006F006C006F0072003D0022007700
      680069007400650022003B0019001A0001000D000A0054006500730074004C00
      6E006B002E005300630072006900700074004500760065006E00740073005B00
      31005D002E004500760065006E00740001006F006E004D006F00750073006500
      4F0076006500720001000D000A0054006500730074004C006E006B002E005300
      630072006900700074004500760065006E00740073005B0031005D002E004500
      760065006E00740043006F0064006500010074006800690073002E0073007400
      79006C0065002E0063006F006C006F0072003D002200790065006C006C006F00
      770022003B0019001A0001000D000A00410064006D0069006E004C006E006B00
      2E005300630072006900700074004500760065006E00740073005B0030005D00
      2E004500760065006E00740001006F006E004D006F007500730065004F007500
      740001000D000A00410064006D0069006E004C006E006B002E00530063007200
      6900700074004500760065006E00740073005B0030005D002E00450076006500
      6E00740043006F0064006500010074006800690073002E007300740079006C00
      65002E0063006F006C006F0072003D0022007700680069007400650022003B00
      19001A0001000D000A00410064006D0069006E004C006E006B002E0053006300
      72006900700074004500760065006E00740073005B0031005D002E0045007600
      65006E00740001006F006E004D006F007500730065004F007600650072000100
      0D000A00410064006D0069006E004C006E006B002E0053006300720069007000
      74004500760065006E00740073005B0031005D002E004500760065006E007400
      43006F0064006500010074006800690073002E007300740079006C0065002E00
      63006F006C006F0072003D002200790065006C006C006F00770022003B001900
      1A0001000D000A0053007400610074004C006E006B002E005300630072006900
      700074004500760065006E00740073005B0030005D002E004500760065006E00
      740001006F006E004D006F007500730065004F007500740001000D000A005300
      7400610074004C006E006B002E00530063007200690070007400450076006500
      6E00740073005B0030005D002E004500760065006E00740043006F0064006500
      010074006800690073002E007300740079006C0065002E0063006F006C006F00
      72003D0022007700680069007400650022003B0019001A0001000D000A005300
      7400610074004C006E006B002E00530063007200690070007400450076006500
      6E00740073005B0031005D002E004500760065006E00740001006F006E004D00
      6F007500730065004F0076006500720001000D000A0053007400610074004C00
      6E006B002E005300630072006900700074004500760065006E00740073005B00
      31005D002E004500760065006E00740043006F00640065000100740068006900
      73002E007300740079006C0065002E0063006F006C006F0072003D0022007900
      65006C006C006F00770022003B0019001A0001000D000A007300740043006800
      6100720053006500740073005F0055006E00690063006F00640065000D000A00}
  end
end
