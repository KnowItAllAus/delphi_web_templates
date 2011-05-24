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
  DesignLeft = 154
  DesignTop = 61
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
            TabOrder = 8
            RawText = False
            Caption = 'INSTALLATION'
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
    inherited IWFrameRegion: TIWRegion
      Width = 1014
      Height = 118
      TabOrder = 3
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
        ZIndex = 2
      end
      inherited Smalltitle: TIWLabel
        Left = 900
      end
      inherited HideBox: TIWImageFile
        Left = 1003
        Top = 100
        Width = 12
        Height = 14
      end
      inherited TitleLabel: TIWLabel
        Width = 129
        Caption = 'role'
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
      TabOrder = 1
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
      6C616E6775616765010D0A4C6173744C6F67696E4C6162656C014C617374204C
      6F67696E204020010D0A4163636573734C6162656C014163636573734C616265
      6C010D0A50726F6D6F4C6E6B0150524F4D4F54494F4E53010D0A446973747269
      624C6E6B01444953545249425554494F4E010D0A496E7374616C6C4C6E6B0149
      4E5354414C4C4154494F4E010D0A41646D696E4C6E6B0141444D494E49535452
      4154494F4E010D0A537461744C6E6B015245504F525453010D0A737448696E74
      730D0A7374446973706C61794C6162656C730D0A7374466F6E74730D0A73744D
      756C74694C696E65730D0A4957526567696F6E312E4578747261546167506172
      616D7301010D0A6C616E676C696E6B2E4578747261546167506172616D730101
      0D0A6C6F67696E6C616E676C696E6B2E4578747261546167506172616D730101
      0D0A426F6479526567696F6E2E4578747261546167506172616D7301010D0A49
      5752656374616E676C65322E4578747261546167506172616D7301010D0A4957
      52656374616E676C65312E4578747261546167506172616D7301010D0A4C6173
      744C6F67696E4C6162656C2E4578747261546167506172616D7301010D0A4163
      636573734C6162656C2E4578747261546167506172616D7301010D0A50726F6D
      6F5265676E2E4578747261546167506172616D7301010D0A4957496D61676546
      696C65312E4578747261546167506172616D7301010D0A446973747269625265
      676E2E4578747261546167506172616D7301010D0A4957496D61676546696C65
      322E4578747261546167506172616D7301010D0A496E7374616C6C5265676E2E
      4578747261546167506172616D7301010D0A4957496D61676546696C65332E45
      78747261546167506172616D7301010D0A41646D696E5265676E2E4578747261
      546167506172616D7301010D0A41646D696E496D672E45787472615461675061
      72616D7301010D0A4957526567696F6E342E4578747261546167506172616D73
      01010D0A50726F6D6F4C6E6B2E4578747261546167506172616D7301010D0A49
      57526567696F6E322E4578747261546167506172616D7301010D0A4469737472
      69624C6E6B2E4578747261546167506172616D7301010D0A4957526567696F6E
      362E4578747261546167506172616D7301010D0A496E7374616C6C4C6E6B2E45
      78747261546167506172616D7301010D0A4957526567696F6E352E4578747261
      546167506172616D7301010D0A41646D696E4C6E6B2E45787472615461675061
      72616D7301010D0A5265706F72745265676E2E4578747261546167506172616D
      7301010D0A4957496D61676546696C65342E4578747261546167506172616D73
      01010D0A4957526567696F6E332E4578747261546167506172616D7301010D0A
      537461744C6E6B2E4578747261546167506172616D7301010D0A737453747269
      6E67730D0A73744F74686572537472696E67730D0A6C616E676C696E6B2E4C61
      6E6746696C6501726F6C652E73696C010D0A495752656374616E676C65322E54
      65787401010D0A495752656374616E676C65312E5465787401010D0A7374436F
      6C6C656374696F6E730D0A50726F6D6F4C6E6B2E5363726970744576656E7473
      5B305D2E4576656E74016F6E4D6F7573654F7574010D0A50726F6D6F4C6E6B2E
      5363726970744576656E74735B305D2E4576656E74436F646501746869732E73
      74796C652E636F6C6F723D227768697465223B191A010D0A50726F6D6F4C6E6B
      2E5363726970744576656E74735B315D2E4576656E74016F6E4D6F7573654F76
      6572010D0A50726F6D6F4C6E6B2E5363726970744576656E74735B315D2E4576
      656E74436F646501746869732E7374796C652E636F6C6F723D2279656C6C6F77
      223B191A010D0A446973747269624C6E6B2E5363726970744576656E74735B30
      5D2E4576656E74016F6E4D6F7573654F7574010D0A446973747269624C6E6B2E
      5363726970744576656E74735B305D2E4576656E74436F646501746869732E73
      74796C652E636F6C6F723D227768697465223B191A010D0A446973747269624C
      6E6B2E5363726970744576656E74735B315D2E4576656E74016F6E4D6F757365
      4F766572010D0A446973747269624C6E6B2E5363726970744576656E74735B31
      5D2E4576656E74436F646501746869732E7374796C652E636F6C6F723D227965
      6C6C6F77223B191A010D0A496E7374616C6C4C6E6B2E5363726970744576656E
      74735B305D2E4576656E74016F6E4D6F7573654F7574010D0A496E7374616C6C
      4C6E6B2E5363726970744576656E74735B305D2E4576656E74436F6465017468
      69732E7374796C652E636F6C6F723D227768697465223B191A010D0A496E7374
      616C6C4C6E6B2E5363726970744576656E74735B315D2E4576656E74016F6E4D
      6F7573654F766572010D0A496E7374616C6C4C6E6B2E5363726970744576656E
      74735B315D2E4576656E74436F646501746869732E7374796C652E636F6C6F72
      3D2279656C6C6F77223B191A010D0A41646D696E4C6E6B2E5363726970744576
      656E74735B305D2E4576656E74016F6E4D6F7573654F7574010D0A41646D696E
      4C6E6B2E5363726970744576656E74735B305D2E4576656E74436F6465017468
      69732E7374796C652E636F6C6F723D227768697465223B191A010D0A41646D69
      6E4C6E6B2E5363726970744576656E74735B315D2E4576656E74016F6E4D6F75
      73654F766572010D0A41646D696E4C6E6B2E5363726970744576656E74735B31
      5D2E4576656E74436F646501746869732E7374796C652E636F6C6F723D227965
      6C6C6F77223B191A010D0A537461744C6E6B2E5363726970744576656E74735B
      305D2E4576656E74016F6E4D6F7573654F7574010D0A537461744C6E6B2E5363
      726970744576656E74735B305D2E4576656E74436F646501746869732E737479
      6C652E636F6C6F723D227768697465223B191A010D0A537461744C6E6B2E5363
      726970744576656E74735B315D2E4576656E74016F6E4D6F7573654F76657201
      0D0A537461744C6E6B2E5363726970744576656E74735B315D2E4576656E7443
      6F646501746869732E7374796C652E636F6C6F723D2279656C6C6F77223B191A
      010D0A737443686172536574730D0A}
  end
end
