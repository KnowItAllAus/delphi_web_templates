object formTextBlockEdit: TformTextBlockEdit
  Left = 0
  Top = 0
  Width = 1023
  Height = 675
  RenderInvisibleControls = False
  AllowPageAccess = True
  ConnectionMode = cmAny
  ExtraHeader.Strings = (
    '')
  SupportedBrowsers = []
  OnCreate = IWAppFormCreate
  ActiveControl = textedit
  Background.Fixed = False
  HandleTabs = False
  LeftToRight = True
  LockUntilLoaded = True
  LockOnSubmit = True
  ShowHint = True
  XPTheme = True
  DesignLeft = 85
  DesignTop = 115
  inline FrameBareTitle1: TFrameBareTitle
    Left = 0
    Top = 0
    Width = 1023
    Height = 116
    HorzScrollBar.Visible = False
    VertScrollBar.Visible = False
    Align = alTop
    TabOrder = 0
    inherited IWFrameRegion: TIWRegion
      Width = 1023
      Height = 116
      TabOrder = 2
      DesignSize = (
        1023
        116)
      inherited titleimage: TIWImageFile
        ImageFile.Filename = 'E:\delphi\delphi_web\files\promotions.GIF'
      end
      inherited IWRectangle1: TIWRectangle
        Top = 91
        Width = 1536
      end
      inherited IWRectangle3: TIWRectangle
        Top = 96
      end
      inherited IWImageFile3: TIWImageFile
        Left = 688
      end
      inherited langlink: TIWSiLink
        Left = 617
      end
      inherited Smalltitle: TIWLabel
        Left = 903
        Top = 100
      end
      inherited HideBox: TIWImageFile
        Left = 1006
        Top = 97
      end
      inherited TitleLabel: TIWLabel
        Width = 387
        Caption = 'promotions'
      end
    end
  end
  inline userfooter1: Tuserfooter
    Left = 0
    Top = 646
    Width = 1023
    Height = 29
    HorzScrollBar.Visible = False
    Align = alBottom
    TabOrder = 1
    inherited IWRegion1: TIWRegion
      Width = 1023
      Height = 29
      TabOrder = 3
      inherited IWRectangle1: TIWRectangle
        Left = 647
        Width = 416
      end
      inherited IWRectangle4: TIWRectangle
        Width = 1639
      end
      inherited IWRectangle6: TIWRectangle
        Width = 605
      end
      inherited Cancel: TIWButton
        Left = 937
      end
      inherited Extra1: TIWButton
        Left = 849
        Visible = True
        Caption = 'Delete'
        Confirmation = 'Delete this record?'
      end
      inherited Extra2: TIWButton
        Left = 761
        Visible = True
        Caption = 'Save'
      end
      inherited fiwSiLink1: TIWSiLink
        Left = 393
      end
      inherited navcombo: TIWComboBox
        Visible = False
      end
    end
  end
  object IWRegion1: TIWRegion
    Left = 0
    Top = 116
    Width = 1023
    Height = 530
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
      1023
      530)
    object IWRegion2: TIWRegion
      Left = 136
      Top = 16
      Width = 728
      Height = 499
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
        728
        499)
      object VoucherLabel: TIWLabel
        Left = 16
        Top = 16
        Width = 577
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
        FriendlyName = 'VoucherLabel'
        Caption = 'Template Content - Text'
        RawText = False
      end
      object IWSiLink1: TIWSiLink
        Left = 8
        Top = 0
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
        LangFile = 'textblock.sil'
        LangControl = RcDataMod.LangEditControl1
      end
      object IWRectangle2: TIWRectangle
        Left = 0
        Top = 0
        Width = 728
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
        Height = 496
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
      object PreviewGrid: TIWGrid
        Left = 97
        Top = 112
        Width = 480
        Height = 371
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
        BGColor = clWebGRAY
        BorderSize = 0
        BorderStyle = tfDefault
        CellPadding = 1
        CellSpacing = 1
        Font.Color = clNone
        Font.FontName = 'Arial'
        Font.Size = 10
        Font.Style = []
        FrameBuffer = 40
        Lines = tlNone
        UseFrame = True
        UseSize = True
        FriendlyName = 'PreviewGrid'
        ColumnCount = 4
        RowCount = 0
        ShowEmptyCells = True
        ShowInvisibleRows = True
        ScrollToCurrentRow = False
      end
      object textedit: TIWEdit
        Left = 96
        Top = 48
        Width = 449
        Height = 21
        Cursor = crAuto
        ExtraTagParams.Strings = (
          'AUTOCOMPLETE=OFF')
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
        FriendlyName = 'textedit'
        MaxLength = 0
        ReadOnly = False
        Required = False
        ScriptEvents = <
          item
            EventCode.Strings = (
              '//var f = document.getElementById('#39'TEXTEDIT'#39');'
              '//f.setAttribute("autocomplete", "off");'
              '')
            Event = 'onFocus'
          end>
        SubmitOnAsyncEvent = True
        TabOrder = 1
        OnSubmit = texteditSubmit
        OnAsyncKeyPress = texteditAsyncKeyPress
        PasswordPrompt = False
      end
      object IWLabel1: TIWLabel
        Left = 16
        Top = 50
        Width = 49
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
        Font.FontName = 'Arial'
        Font.Size = 10
        Font.Style = [fsBold]
        NoWrap = False
        ConvertSpaces = False
        HasTabOrder = False
        AutoSize = False
        FriendlyName = 'IWLabel2'
        Caption = 'Text'
        RawText = False
      end
      object IWLabel3: TIWLabel
        Left = 16
        Top = 114
        Width = 73
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
        Font.FontName = 'Arial'
        Font.Size = 10
        Font.Style = [fsBold]
        NoWrap = False
        ConvertSpaces = False
        HasTabOrder = False
        AutoSize = False
        FriendlyName = 'IWLabel2'
        Caption = 'Preview'
        RawText = False
      end
      object YesBtn: TIWImage
        Left = 515
        Top = 72
        Width = 30
        Height = 30
        Cursor = crAuto
        Hint = 'Ok'
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
        BorderOptions.Color = clNone
        BorderOptions.Width = 0
        DoSubmitValidation = True
        ScriptEvents = <>
        TabOrder = -1
        UseSize = False
        OnClick = YesBtnClick
        Picture.Data = {
          07544269746D6170FE0A0000424DFE0A00000000000036000000280000001E00
          00001E0000000100180000000000C80A00000000000000000000000000000000
          0000FFFFFF000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          00000000000000000000000000000000000000000000000000FFFFFF00000000
          00FFFFFFC1C1C1C1C1C1C1C1C1C1C1C1C1C1C1C1C1C1C1C1C1C1C1C1C1C1C1C1
          C1C1C1C1C1C1C1C1C1C1C1C1C1C1C1C1C1C1C1C1C1C1C1C1C1C1C1C1C1C1C1C1
          C1C1C1C1C1C1C1C1C1C1C1C1C1C1C1C1C1C1C1C1C10000000000000000FFFFFF
          E1E1E1E0E0E0DEDEDEDDDDDDDCDCDCDBDBDBDADADAD9D9D9D8D8D8D7D7D7D6D6
          D6D4D4D4D3D3D3D2D2D2D1D1D1D1D1D1D0D0D0D0D0D0D0D0D0D0D0D0CFCFCFCF
          CFCFCFCFCFCFCFCFCFCFCFCFCFCFC1C1C10000000000000000FFFFFFE2E2E2E1
          E1E1E0E0E0DEDEDEDDDDDDDCDCDCDBDBDBDADADAD9D9D9D8D8D8D7D7D7D5D5D5
          D4D4D4D3D3D3D2D2D2D1D1D1D1D1D1D0D0D0D1D1D1D0D0D0D0D0D0CFCFCFCFCF
          CFCFCFCFCFCFCFCFCFCFC1C1C10000000000000000FFFFFFE3E3E3E2E2E2E1E1
          E1E0E0E0DEDEDEDDDDDDDCDCDCDBDBDBDADADAD9D9D9D8D8D8D6D6D6D5D5D5D4
          D4D4D3D3D3D2D2D2D1D1D1D1D1D1D1D1D1D1D1D1D0D0D0D0D0D0CFCFCFCFCFCF
          CFCFCFCFCFCFC1C1C10000000000000000FFFFFFE4E4E4E3E3E3E2E2E2E1E1E1
          DFDFDFDEDEDEDDDDDDDCDCDCDBDBDB7F7F7F7F7F7FD7D7D7D6D6D6D5D5D5D4D4
          D4D3D3D3D2D2D2D1D1D1D2D2D2D1D1D1D1D1D1D0D0D0D0D0D0CFCFCFCFCFCFCF
          CFCFC1C1C10000000000000000FFFFFFE6E6E6E4E4E4E3E3E3E2E2E2E1E1E1DF
          DFDFDEDEDEDDDDDD7F7F7F00FF0000FF007F7F7FD7D7D7D6D6D6D5D5D5D4D4D4
          D3D3D3D2D2D2D3D3D3D2D2D2D1D1D1D1D1D1D0D0D0CFCFCFCFCFCFCFCFCFC1C1
          C10000000000000000FFFFFFE7E7E7E5E5E5E4E4E4E3E3E3E2E2E2E1E1E1DFDF
          DF7F7F7F00FF0000FF0000FF0000FF007F7F7FD7D7D7D6D6D6D5D5D5D4D4D4D3
          D3D3D4D4D4D3D3D3D2D2D2D1D1D1D1D1D1D0D0D0CFCFCFCFCFCFC1C1C1000000
          0000000000FFFFFFE8E8E8E7E7E7E5E5E5E4E4E4E3E3E3E2E2E27F7F7F00FF00
          00FF0000FF0000FF0000FF0000FF007F7F7FD7D7D7D6D6D6D5D5D5D4D4D4D5D5
          D5D4D4D4D3D3D3D2D2D2D1D1D1D1D1D1D0D0D0CFCFCFC1C1C100000000000000
          00FFFFFFE9E9E9E8E8E8E7E7E7E5E5E5E4E4E47F7F7F00FF0000FF0000FF0000
          FF0000FF0000FF0000FF0000FF007F7F7FD7D7D7D5D5D5D5D5D5D5D5D5D5D5D5
          D4D4D4D3D3D3D2D2D2D1D1D1D1D1D1D0D0D0C1C1C10000000000000000FFFFFF
          EAEAEAE9E9E9E8E8E8E7E7E77F7F7F00FF0000FF0000FF0000FF0000FF0000FF
          0000FF0000FF0000FF0000FF007F7F7FD7D7D7D6D6D6D6D6D6D5D5D5D4D4D4D4
          D4D4D3D3D3D2D2D2D1D1D1D1D1D1C1C1C10000000000000000FFFFFFECECECEA
          EAEAE9E9E97F7F7F00FF0000FF0000FF0000FF0000FF0000FF0000FF0000FF00
          00FF0000FF0000FF0000FF007F7F7FD7D7D7D6D6D6D5D5D5D4D4D4D4D4D4D3D3
          D3D2D2D2D1D1D1D1D1D1C1C1C10000000000000000FFFFFFEDEDEDEBEBEB7F7F
          7F00FF0000FF0000FF0000FF0000FF0000FF0000FF0000FF0000FF0000FF0000
          FF0000FF0000FF0000FF007F7F7FD7D7D7D6D6D6D5D5D5D4D4D4D4D4D4D3D3D3
          D2D2D2D1D1D1C1C1C10000000000000000FFFFFFEEEEEE7F7F7F00FF0000FF00
          00FF0000FF0000FF0000FF0000FF0000FF0000FF0000FF0000FF0000FF0000FF
          0000FF0000FF0000FF007F7F7FD7D7D7D6D6D6D5D5D5D4D4D4D4D4D4D3D3D3D2
          D2D2C1C1C10000000000000000FFFFFF7F7F7F00FF0000FF0000FF0000FF0000
          FF0000FF0000FF0000FF0000FF0000FF0000FF0000FF0000FF0000FF0000FF00
          00FF0000FF0000FF007F7F7FD7D7D7D6D6D6D5D5D5D4D4D4D4D4D4D3D3D3C1C1
          C10000000000000000FFFFFFF0F0F07F7F7F00FF0000FF0000FF0000FF0000FF
          0000FF0000FF007F7F7F00FF0000FF0000FF0000FF0000FF0000FF0000FF0000
          FF0000FF0000FF007F7F7FD7D7D7D6D6D6D5D5D5D4D4D4D4D4D4C1C1C1000000
          0000000000FFFFFFF1F1F1F0F0F07F7F7F00FF0000FF0000FF0000FF0000FF00
          7F7F7FE6E6E67F7F7F00FF0000FF0000FF0000FF0000FF0000FF0000FF0000FF
          0000FF0000FF007F7F7FD7D7D7D6D6D6D5D5D5D4D4D4C1C1C100000000000000
          00FFFFFFF2F2F2F1F1F1F0F0F07F7F7F00FF0000FF0000FF007F7F7FE9E9E9E7
          E7E7E6E6E67F7F7F00FF0000FF0000FF0000FF0000FF0000FF0000FF0000FF00
          00FF0000FF007F7F7FD7D7D7D6D6D6D5D5D5C1C1C10000000000000000FFFFFF
          F4F4F4F2F2F2F1F1F1F0F0F07F7F7F00FF007F7F7FEBEBEBEAEAEAE9E9E9E7E7
          E7E6E6E67F7F7F00FF0000FF0000FF0000FF0000FF0000FF0000FF0000FF0000
          FF0000FF007F7F7FD7D7D7D6D6D6C1C1C10000000000000000FFFFFFF4F4F4F4
          F4F4F2F2F2F1F1F1F0F0F07F7F7FEEEEEEECECECEBEBEBEAEAEAE9E9E9E7E7E7
          E6E6E67F7F7F00FF0000FF0000FF0000FF0000FF0000FF0000FF0000FF0000FF
          0000FF007F7F7FD7D7D7C1C1C10000000000000000FFFFFFF7F7F7F4F4F4F3F3
          F3F2F2F2F1F1F1F0F0F0EFEFEFEDEDEDECECECEBEBEBEAEAEAE9E9E9E7E7E7E6
          E6E67F7F7F00FF0000FF0000FF0000FF0000FF0000FF0000FF0000FF007F7F7F
          D9D9D9D8D8D8C1C1C10000000000000000FFFFFFF7F7F7F7F7F7F4F4F4F3F3F3
          F2F2F2F1F1F1F0F0F0EFEFEFEDEDEDECECECEBEBEBEAEAEAE9E9E9E7E7E7E6E6
          E67F7F7F00FF0000FF0000FF0000FF0000FF0000FF007F7F7FDBDBDBDADADAD9
          D9D9C1C1C10000000000000000FFFFFFF7F7F7F7F7F7F4F4F4F4F4F4F3F3F3F2
          F2F2F1F1F1F0F0F0EFEFEFEDEDEDECECECEBEBEBEAEAEAE9E9E9E7E7E7E6E6E6
          7F7F7F00FF0000FF0000FF0000FF007F7F7FDDDDDDDCDCDCDBDBDBDADADAC1C1
          C10000000000000000FFFFFFF9F9F9F7F7F7F7F7F7F4F4F4F4F4F4F3F3F3F2F2
          F2F1F1F1F0F0F0EFEFEFEDEDEDECECECEBEBEBEAEAEAE8E8E8E7E7E7E6E6E67F
          7F7F00FF0000FF007F7F7FE0E0E0DFDFDFDDDDDDDCDCDCDBDBDBC1C1C1000000
          0000000000FFFFFFF9F9F9F9F9F9F7F7F7F7F7F7F4F4F4F4F4F4F3F3F3F2F2F2
          F1F1F1F0F0F0EFEFEFEDEDEDECECECEBEBEBEAEAEAE8E8E8E7E7E7E6E6E67F7F
          7F7F7F7FE2E2E2E1E1E1E0E0E0DFDFDFDDDDDDDCDCDCC1C1C100000000000000
          00FFFFFFF9F9F9F9F9F9F9F9F9F7F7F7F7F7F7F4F4F4F4F4F4F3F3F3F2F2F2F1
          F1F1F0F0F0EEEEEEEDEDEDECECECEBEBEBEAEAEAE8E8E8E7E7E7E6E6E6E5E5E5
          E3E3E3E2E2E2E1E1E1E0E0E0DEDEDEDDDDDDC1C1C10000000000000000FFFFFF
          F9F9F9F9F9F9F9F9F9F9F9F9F7F7F7F7F7F7F4F4F4F4F4F4F3F3F3F2F2F2F1F1
          F1F0F0F0EEEEEEEDEDEDECECECEBEBEBEAEAEAE8E8E8E7E7E7E6E6E6E5E5E5E3
          E3E3E2E2E2E1E1E1E0E0E0DEDEDEC1C1C10000000000000000FFFFFFF9F9F9F9
          F9F9F9F9F9F9F9F9F9F9F9F7F7F7F7F7F7F4F4F4F4F4F4F3F3F3F2F2F2F1F1F1
          F0F0F0EEEEEEEDEDEDECECECEBEBEBEAEAEAE8E8E8E7E7E7E6E6E6E4E4E4E3E3
          E3E2E2E2E1E1E1E1E1E1C1C1C10000000000000000FFFFFFFDFDFDFDFDFDF9F9
          F9F9F9F9F9F9F9F9F9F9F7F7F7F7F7F7F4F4F4F4F4F4F3F3F3F2F2F2F1F1F1F0
          F0F0EEEEEEEDEDEDECECECEBEBEBEAEAEAE8E8E8E7E7E7E6E6E6E4E4E4E3E3E3
          E2E2E2E1E1E1C1C1C10000000000FFFFFF000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000FFFFFF0000}
        FriendlyName = 'YesBtn'
        TransparentColor = clNone
        JpegOptions.CompressionQuality = 90
        JpegOptions.Performance = jpBestSpeed
        JpegOptions.ProgressiveEncoding = False
        JpegOptions.Smoothing = True
        OutputType = ioJPEG
      end
      object NoBtn: TIWImage
        Left = 475
        Top = 72
        Width = 30
        Height = 30
        Cursor = crAuto
        Hint = 'Delete'
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
        BorderOptions.Color = clNone
        BorderOptions.Width = 0
        DoSubmitValidation = True
        ScriptEvents = <>
        TabOrder = -1
        UseSize = False
        OnAsyncClick = NoBtnAsyncClick
        Picture.Data = {
          07544269746D6170FE0A0000424DFE0A00000000000036000000280000001E00
          00001E0000000100180000000000C80A00000000000000000000000000000000
          0000FFFFFF000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          00000000000000000000000000000000000000000000000000FFFFFF00000000
          00FFFFFFC1C1C1C1C1C1C1C1C1C1C1C1C1C1C1C1C1C1C1C1C1C1C1C1C1C1C1C1
          C1C1C1C1C1C1C1C1C1C1C1C1C1C1C1C1C1C1C1C1C1C1C1C1C1C1C1C1C1C1C1C1
          C1C1C1C1C1C1C1C1C1C1C1C1C1C1C1C1C1C1C1C1C10000000000000000FFFFFF
          E1E1E1E0E0E0DEDEDEDDDDDDDCDCDCDBDBDBDADADAD9D9D9D8D8D8D7D7D7D6D6
          D6D4D4D4D3D3D3D2D2D2D1D1D1D1D1D1D0D0D0D0D0D0D0D0D0D0D0D0CFCFCFCF
          CFCFCFCFCFCFCFCFCFCFCFCFCFCFC1C1C10000000000000000FFFFFFE2E2E2E1
          E1E1E0E0E0DEDEDEDDDDDDDCDCDCDBDBDBDADADAD9D9D9D8D8D8D7D7D7D5D5D5
          D4D4D4D3D3D3D2D2D2D1D1D1D2D2D2D1D1D1D1D1D1D0D0D0D0D0D0CFCFCFCFCF
          CFCFCFCFCFCFCFCFCFCFC1C1C10000000000000000FFFFFFE3E3E3E3E3E3E2E2
          E2E1E1E1E0E0E0DEDEDEDDDDDDF3F3F3DBDBDBDADADAD9D9D9D8D8D8D7D7D7D6
          D6D6D5D5D5D4D4D4D3D3D3D2D2D2D1D1D1F3F3F3D0D0D0D0D0D0CFCFCFCFCFCF
          CFCFCFCFCFCFC1C1C10000000000000000FFFFFFE4E4E4E4E4E4E3E3E3E2E2E2
          E1E1E1E0E0E0F3F3F30000FFF3F3F3DBDBDBDADADAD9D9D9D8D8D8D7D7D7D6D6
          D6D5D5D5D4D4D4D3D3D3F3F3F30000FFF3F3F3D0D0D0D0D0D0CFCFCFCFCFCFCF
          CFCFC1C1C10000000000000000FFFFFFE6E6E6E6E6E6E4E4E4E3E3E3E2E2E2F3
          F3F30000FF0000FF0000FFF3F3F3DBDBDBDADADAD9D9D9D8D8D8D7D7D7D6D6D6
          D5D5D5F3F3F30000FF0000FF0000FFF3F3F3D0D0D0CFCFCFCFCFCFCFCFCFC1C1
          C10000000000000000FFFFFFE7E7E7E7E7E7E6E6E6E4E4E4F3F3F30000FF0000
          FF0000FF0000FF0000FFF3F3F3DBDBDBDADADAD9D9D9D7D7D7D7D7D7F3F3F300
          00FF0000FF0000FF0000FF0000FFF3F3F3D0D0D0CFCFCFCFCFCFC1C1C1000000
          0000000000FFFFFFE8E8E8E8E8E8E7E7E7F3F3F30000FF0000FF0000FF0000FF
          0000FF0000FF0000FFF3F3F3DBDBDBDADADAD9D9D9F3F3F30000FF0000FF0000
          FF0000FF0000FF0000FF0000FFF3F3F3D0D0D0CFCFCFC1C1C100000000000000
          00FFFFFFE9E9E9E9E9E9E8E8E87F7F7F0000FF0000FF0000FF0000FF0000FF00
          00FF0000FF0000FFF3F3F3DBDBDBF3F3F30000FF0000FF0000FF0000FF0000FF
          0000FF0000FF0000FF0000FFF3F3F3D0D0D0C1C1C10000000000000000FFFFFF
          EAEAEAEAEAEAE9E9E9E8E8E87F7F7F0000FF0000FF0000FF0000FF0000FF0000
          FF0000FF0000FFF3F3F30000FF0000FF0000FF0000FF0000FF0000FF0000FF00
          00FF0000FFF3F3F3D1D1D1D1D1D1C1C1C10000000000000000FFFFFFECECECEC
          ECECEAEAEAE9E9E9E8E8E87F7F7F0000FF0000FF0000FF0000FF0000FF0000FF
          0000FF0000FF0000FF0000FF0000FF0000FF0000FF0000FF0000FF0000FFF3F3
          F3D3D3D3D2D2D2D1D1D1C1C1C10000000000000000FFFFFFEDEDEDEDEDEDEBEB
          EBEAEAEAE9E9E9E8E8E87F7F7F0000FF0000FF0000FF0000FF0000FF0000FF00
          00FF0000FF0000FF0000FF0000FF0000FF0000FF0000FFF3F3F3D4D4D4D4D4D4
          D3D3D3D2D2D2C1C1C10000000000000000FFFFFFEEEEEEEEEEEEEDEDEDEBEBEB
          EAEAEAE9E9E9E8E8E87F7F7F0000FF0000FF0000FF0000FF0000FF0000FF0000
          FF0000FF0000FF0000FF0000FF0000FFF3F3F3D6D6D6D5D5D5D4D4D4D4D4D4D3
          D3D3C1C1C10000000000000000FFFFFFEFEFEFEFEFEFEEEEEEEDEDEDEBEBEBEA
          EAEAE9E9E9E8E8E87F7F7F0000FF0000FF0000FF0000FF0000FF0000FF0000FF
          0000FF0000FF0000FFF3F3F3D8D8D8D7D7D7D6D6D6D5D5D5D4D4D4D4D4D4C1C1
          C10000000000000000FFFFFFF0F0F0F0F0F0EFEFEFEEEEEEEDEDEDEBEBEBEAEA
          EAE9E9E9E8E8E87F7F7F0000FF0000FF0000FF0000FF0000FF0000FF0000FF00
          00FFF3F3F3DADADAD9D9D9D8D8D8D7D7D7D6D6D6D5D5D5D4D4D4C1C1C1000000
          0000000000FFFFFFF1F1F1F1F1F1F0F0F0EFEFEFEEEEEEEDEDEDEBEBEBEAEAEA
          7F7F7F0000FF0000FF0000FF0000FF0000FF0000FF0000FF0000FF0000FF0000
          FFF3F3F3DADADAD9D9D9D8D8D8D7D7D7D6D6D6D5D5D5C1C1C100000000000000
          00FFFFFFF2F2F2F2F2F2F1F1F1F0F0F0EFEFEFEEEEEEEDEDED7F7F7F0000FF00
          00FF0000FF0000FF0000FF0000FF0000FF0000FF0000FF0000FF0000FF0000FF
          F3F3F3DADADAD9D9D9D8D8D8D7D7D7D6D6D6C1C1C10000000000000000FFFFFF
          F4F4F4F4F4F4F2F2F2F1F1F1F0F0F0EFEFEF7F7F7F0000FF0000FF0000FF0000
          FF0000FF0000FF0000FF0000FF0000FF0000FF0000FF0000FF0000FF0000FFF3
          F3F3DADADAD9D9D9D8D8D8D7D7D7C1C1C10000000000000000FFFFFFF4F4F4F4
          F4F4F4F4F4F2F2F2F1F1F17F7F7F0000FF0000FF0000FF0000FF0000FF0000FF
          0000FF7F7F7F0000FF0000FF0000FF0000FF0000FF0000FF0000FF0000FFF3F3
          F3DADADAD9D9D9D8D8D8C1C1C10000000000000000FFFFFFF7F7F7F7F7F7F4F4
          F4F3F3F37F7F7F0000FF0000FF0000FF0000FF0000FF0000FF0000FF7F7F7FE7
          E7E77F7F7F0000FF0000FF0000FF0000FF0000FF0000FF0000FF0000FFF3F3F3
          DADADAD9D9D9C1C1C10000000000000000FFFFFFF7F7F7F7F7F7F7F7F77F7F7F
          0000FF0000FF0000FF0000FF0000FF0000FF0000FF7F7F7FEAEAEAE9E9E9E7E7
          E77F7F7F0000FF0000FF0000FF0000FF0000FF0000FF0000FF7F7F7FDBDBDBDA
          DADAC1C1C10000000000000000FFFFFFF7F7F7F7F7F7F7F7F7F4F4F47F7F7F00
          00FF0000FF0000FF0000FF0000FF7F7F7FECECECEBEBEBEAEAEAE9E9E9E7E7E7
          7F7F7F0000FF0000FF0000FF0000FF0000FF7F7F7FDDDDDDDCDCDCDBDBDBC1C1
          C10000000000000000FFFFFFF9F9F9F9F9F9F7F7F7F7F7F7F4F4F47F7F7F0000
          FF0000FF0000FF7F7F7FEFEFEFEDEDEDECECECEBEBEBEAEAEAE8E8E8E7E7E77F
          7F7F0000FF0000FF0000FF7F7F7FE0E0E0DFDFDFDDDDDDDCDCDCC1C1C1000000
          0000000000FFFFFFF9F9F9F9F9F9F9F9F9F7F7F7F7F7F7F4F4F47F7F7F0000FF
          7F7F7FF1F1F1F0F0F0EFEFEFEDEDEDECECECEBEBEBEAEAEAE8E8E8E7E7E77F7F
          7F0000FF7F7F7FE2E2E2E1E1E1E0E0E0DFDFDFDDDDDDC1C1C100000000000000
          00FFFFFFF9F9F9F9F9F9F9F9F9F9F9F9F7F7F7F7F7F7F4F4F47F7F7FF3F3F3F2
          F2F2F1F1F1F0F0F0EEEEEEEDEDEDECECECEBEBEBEAEAEAE8E8E8E7E7E77F7F7F
          E5E5E5E3E3E3E2E2E2E1E1E1E0E0E0DEDEDEC1C1C10000000000000000FFFFFF
          F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F7F7F7F7F7F7F4F4F4F4F4F4F3F3F3F2F2
          F2F1F1F1F0F0F0EEEEEEEDEDEDECECECEBEBEBEAEAEAE8E8E8E7E7E7E6E6E6E5
          E5E5E3E3E3E2E2E2E1E1E1E0E0E0C1C1C10000000000000000FFFFFFF9F9F9F9
          F9F9F9F9F9F9F9F9F9F9F9F7F7F7F7F7F7F4F4F4F4F4F4F3F3F3F2F2F2F1F1F1
          F0F0F0EEEEEEEDEDEDECECECEBEBEBEAEAEAE8E8E8E7E7E7E6E6E6E4E4E4E3E3
          E3E2E2E2E1E1E1E1E1E1C1C1C10000000000000000FFFFFFFDFDFDFDFDFDF9F9
          F9F9F9F9F9F9F9F9F9F9F7F7F7F7F7F7F4F4F4F4F4F4F3F3F3F2F2F2F1F1F1F0
          F0F0EEEEEEEDEDEDECECECEBEBEBEAEAEAE8E8E8E7E7E7E6E6E6E4E4E4E3E3E3
          E2E2E2E1E1E1C1C1C10000000000FFFFFF000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000FFFFFF0000}
        FriendlyName = 'IWImage1'
        TransparentColor = clNone
        JpegOptions.CompressionQuality = 90
        JpegOptions.Performance = jpBestSpeed
        JpegOptions.ProgressiveEncoding = False
        JpegOptions.Smoothing = True
        OutputType = ioJPEG
      end
      object FontBtn: TIWImageFile
        Left = 552
        Top = 48
        Width = 24
        Height = 23
        Cursor = crAuto
        Hint = 'Font Size'
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
        BorderOptions.Color = clNone
        BorderOptions.Width = 0
        DoSubmitValidation = True
        ScriptEvents = <>
        TabOrder = -1
        UseSize = False
        OnAsyncClick = FontBtnAsyncClick
        Cacheable = True
        FriendlyName = 'FontBtn'
        ImageFile.Filename = 'C:\delphi\delphi_web_templates\Files\small_font.bmp'
      end
      object boldbtn: TIWImageFile
        Left = 578
        Top = 48
        Width = 24
        Height = 23
        Cursor = crAuto
        Hint = 'Bold'
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
        BorderOptions.Color = clNone
        BorderOptions.Width = 0
        DoSubmitValidation = True
        ScriptEvents = <>
        TabOrder = -1
        UseSize = False
        OnAsyncClick = BoldFontBtnAsyncClick
        Cacheable = True
        FriendlyName = 'boldbtn'
        ImageFile.Filename = 'C:\delphi\delphi_web_templates\Files\bold.bmp'
      end
      object heightbtn: TIWImageFile
        Left = 604
        Top = 48
        Width = 24
        Height = 23
        Cursor = crAuto
        Hint = 'Double Height'
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
        BorderOptions.Color = clNone
        BorderOptions.Width = 0
        DoSubmitValidation = True
        ScriptEvents = <>
        TabOrder = -1
        UseSize = False
        OnAsyncClick = HeightBtnAsyncClick
        Cacheable = True
        FriendlyName = 'heightBtn'
        ImageFile.Filename = 'C:\delphi\delphi_web_templates\Files\x2_height.bmp'
      end
      object WidthBtn: TIWImageFile
        Left = 630
        Top = 48
        Width = 24
        Height = 23
        Cursor = crAuto
        Hint = 'Double Width'
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
        BorderOptions.Color = clNone
        BorderOptions.Width = 0
        DoSubmitValidation = True
        ScriptEvents = <>
        TabOrder = -1
        UseSize = False
        OnAsyncClick = WidthBtnAsyncClick
        Cacheable = True
        FriendlyName = 'WidthBtn'
        ImageFile.Filename = 'C:\delphi\delphi_web_templates\Files\x2_width.bmp'
      end
      object underlinebtn: TIWImageFile
        Left = 656
        Top = 48
        Width = 24
        Height = 23
        Cursor = crAuto
        Hint = 'Underline'
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
        BorderOptions.Color = clNone
        BorderOptions.Width = 0
        DoSubmitValidation = True
        ScriptEvents = <>
        TabOrder = -1
        UseSize = False
        OnAsyncClick = UnderlineBtnAsyncClick
        Cacheable = True
        FriendlyName = 'ulBtn'
        ImageFile.Filename = 'C:\delphi\delphi_web_templates\Files\underline.bmp'
      end
      object positionBtn: TIWImageFile
        Left = 688
        Top = 48
        Width = 24
        Height = 23
        Cursor = crAuto
        Hint = 'Position'
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
        BorderOptions.Color = clNone
        BorderOptions.Width = 0
        DoSubmitValidation = True
        ScriptEvents = <>
        TabOrder = -1
        UseSize = False
        OnAsyncClick = PositionBtnAsyncClick
        Cacheable = True
        FriendlyName = 'posBtn'
        ImageFile.Filename = 'C:\delphi\delphi_web_templates\Files\left_justify.bmp'
      end
    end
  end
end
