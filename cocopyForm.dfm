object Copyform: TCopyform
  Left = 0
  Top = 0
  Width = 1024
  Height = 587
  ConnectionMode = cmAny
  SupportedBrowsers = [brIE, brNetscape7, brOpera, brSafari, brNetscape6]
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
  DesignLeft = 110
  DesignTop = 232
  inline FrameBareTitle1: TFrameBareTitle
    Left = 0
    Top = 0
    Width = 1024
    Height = 115
    HorzScrollBar.Visible = False
    VertScrollBar.Visible = False
    Align = alTop
    TabOrder = 0
    inherited IWFrameRegion: TIWRegion
      Width = 1024
      Height = 115
      inherited titleimage: TIWImageFile
        Width = 453
        ImageFile.Filename = 'E:\delphi\delphi_web\files\admin.GIF'
      end
      inherited IWRectangle1: TIWRectangle
        Top = 90
        Width = 1024
      end
      inherited IWRectangle3: TIWRectangle
        Top = 95
      end
      inherited IWImageFile3: TIWImageFile
        Left = 689
      end
      inherited TitleLabel: TIWLabel
        Width = 486
        Caption = 'administration'
      end
      inherited langlink: TIWSiLink
        Left = 625
      end
    end
  end
  object IWRegion1: TIWRegion
    Left = 0
    Top = 115
    Width = 1024
    Height = 435
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
      1024
      435)
    object IWRegion2: TIWRegion
      Left = 214
      Top = 89
      Width = 579
      Height = 260
      Cursor = crAuto
      Anchors = []
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
        579
        260)
      object IWLabel1: TIWLabel
        Left = 8
        Top = 24
        Width = 561
        Height = 41
        Cursor = crAuto
        Anchors = [akTop]
        IW50Hint = False
        ParentShowHint = False
        ShowHint = True
        ZIndex = 0
        RenderSize = True
        Alignment = taCenter
        BGColor = clNone
        Font.Color = clNone
        Font.FontName = 'arial'
        Font.Size = 20
        Font.Style = [fsBold]
        NoWrap = False
        ConvertSpaces = False
        AutoSize = False
        FriendlyName = 'IWLabel1'
        Caption = 'Company Copy'
        RawText = False
      end
      object IWSiLink1: TIWSiLink
        Left = 9
        Top = 8
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
        TabOrder = 1
        RawText = False
        SiLangLinked = userfooter1.silink_footer
        LangFile = 'coadmin.sil'
        LangControl = RcDataMod.LangEditControl1
      end
      object IWRectangle2: TIWRectangle
        Left = 0
        Top = 0
        Width = 579
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
        Left = 0
        Top = 3
        Width = 3
        Height = 257
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
      object CompanyCombo: TIWComboBox
        Left = 176
        Top = 144
        Width = 222
        Height = 21
        Cursor = crAuto
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
        ItemIndex = -1
        Sorted = False
        FriendlyName = 'CompanyCombo'
      end
      object IWLabel3: TIWLabel
        Left = 88
        Top = 146
        Width = 78
        Height = 16
        Cursor = crAuto
        Anchors = []
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
        FriendlyName = 'IWLabel2'
        Caption = 'To Company'
        RawText = False
      end
      object IWLabel2: TIWLabel
        Left = 72
        Top = 98
        Width = 92
        Height = 16
        Cursor = crAuto
        Anchors = []
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
        FriendlyName = 'IWLabel2'
        Caption = 'From Company'
        RawText = False
      end
      object Cancel: TIWButton
        Left = 248
        Top = 178
        Width = 83
        Height = 21
        Cursor = crAuto
        Anchors = [akTop, akRight]
        IW50Hint = False
        ParentShowHint = False
        ShowHint = True
        ZIndex = 1
        RenderSize = True
        Caption = 'Copy'
        DoSubmitValidation = True
        Color = clBtnFace
        Font.Color = clNone
        Font.Size = 10
        Font.Style = []
        FriendlyName = 'Cancel'
        ScriptEvents = <>
        TabOrder = 4
        OnClick = CpyBtnClick
      end
      object IWRegion3: TIWRegion
        Left = 176
        Top = 96
        Width = 225
        Height = 25
        Cursor = crAuto
        BorderOptions.NumericWidth = 0
        BorderOptions.BorderWidth = cbwNumeric
        BorderOptions.Style = cbsNone
        BorderOptions.Color = clNone
        Color = 11100191
        ParentShowHint = False
        ShowHint = True
        ZIndex = 1000
        Splitter = False
        object FromLabel: TIWLabel
          Left = 6
          Top = 3
          Width = 75
          Height = 16
          Cursor = crAuto
          IW50Hint = False
          ParentShowHint = False
          ShowHint = True
          ZIndex = 0
          RenderSize = False
          Alignment = taLeftJustify
          BGColor = clNone
          Font.Color = clWebWHITE
          Font.FontName = 'Arial'
          Font.Size = 10
          Font.Style = [fsBold]
          NoWrap = False
          ConvertSpaces = False
          FriendlyName = 'FromLabel'
          Caption = 'FromLabel'
          RawText = False
        end
      end
    end
  end
  inline userfooter1: Tuserfooter
    Left = 0
    Top = 550
    Width = 1024
    Height = 37
    HorzScrollBar.Visible = False
    Align = alBottom
    TabOrder = 2
    inherited IWRegion1: TIWRegion
      Width = 1024
      Height = 37
      TabOrder = 3
      inherited navcombo: TIWComboBox
        Visible = False
      end
    end
  end
end
