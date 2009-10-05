object FormVoucherEdit: TFormVoucherEdit
  Left = 0
  Top = 0
  Width = 1000
  Height = 738
  ConnectionMode = cmAny
  Title = 'Recast Control'
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
  OnDefaultAction = IWAppFormDefaultAction
  XPTheme = True
  UpdateMode = umPartial
  DesignLeft = 181
  DesignTop = 52
  inline FrameBareTitle1: TFrameBareTitle
    Left = 0
    Top = 0
    Width = 1000
    Height = 117
    HorzScrollBar.Visible = False
    VertScrollBar.Visible = False
    Align = alTop
    TabOrder = 0
    inherited IWFrameRegion: TIWRegion
      Width = 1000
      Height = 117
      TabOrder = 34
      DesignSize = (
        1000
        117)
      inherited titleimage: TIWImageFile
        ImageFile.Filename = 'E:\delphi\delphi_web\files\promotions.GIF'
      end
      inherited IWRectangle1: TIWRectangle
        Top = 92
        Width = 1000
      end
      inherited IWRectangle3: TIWRectangle
        Top = 97
      end
      inherited IWImageFile3: TIWImageFile
        Left = 665
      end
      inherited TitleLabel: TIWLabel
        Width = 387
        Caption = 'promotions'
      end
      inherited langlink: TIWSiLink
        Left = 567
      end
      inherited Smalltitle: TIWLabel
        Left = 928
        Top = 101
        Width = 52
      end
      inherited HideBox: TIWImageFile
        Left = 986
        Top = 99
      end
    end
  end
  inline userfooter1: Tuserfooter
    Left = 0
    Top = 709
    Width = 1000
    Height = 29
    HorzScrollBar.Visible = False
    Align = alBottom
    TabOrder = 1
    inherited IWRegion1: TIWRegion
      Width = 1000
      Height = 29
      TabOrder = 33
      DesignSize = (
        1000
        29)
      inherited IWRectangle1: TIWRectangle
        Left = 584
        Width = 417
      end
      inherited IWRectangle4: TIWRectangle
        Width = 1616
      end
      inherited IWRectangle6: TIWRectangle
        Width = 542
      end
      inherited Cancel: TIWButton
        Left = 914
        OnClick = CancelBtnClick
      end
      inherited Extra1: TIWButton
        Left = 826
        Visible = True
        Caption = 'Delete'
        Confirmation = 'Delete this record?'
        OnClick = DelBtnClick
      end
      inherited Extra2: TIWButton
        Left = 738
        Visible = True
        Caption = 'Save'
        OnClick = PostButtonClick
      end
      inherited fiwSiLink1: TIWSiLink
        Left = 614
      end
      inherited navcombo: TIWComboBox
        Width = 167
        Visible = False
        Anchors = [akLeft, akTop, akRight]
      end
    end
    inherited silink_footer: TsiLangLinked
      TranslationData = {
        737443617074696F6E730D0A737448696E74730D0A7374446973706C61794C61
        62656C730D0A7374466F6E74730D0A5475736572666F6F746572014D53205361
        6E73205365726966010D0A73744D756C74694C696E65730D0A7374537472696E
        67730D0A557365720155534552010D0A4C6F676F6666014C4F474F4646010D0A
        41636365707401414343455054010D0A43616E63656C0143414E43454C010D0A
        44656C6574650144454C455445010D0A50617373776F72640150617373776F72
        64010D0A536176650153415645010D0A73744F74686572537472696E67730D0A
        7374436F6C6C656374696F6E730D0A737443686172536574730D0A5475736572
        666F6F7465720144454641554C545F43484152534554010D0A}
    end
  end
  object IWRegion1: TIWRegion
    Left = 0
    Top = 117
    Width = 1000
    Height = 592
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
      1000
      592)
    object Formatbox: TIWCheckBox
      Left = 5
      Top = 5
      Width = 61
      Height = 21
      Cursor = crAuto
      Visible = False
      IW50Hint = False
      ParentShowHint = False
      ShowHint = True
      ZIndex = 0
      RenderSize = False
      Caption = 'New'
      Editable = True
      Font.Color = clNone
      Font.Size = 10
      Font.Style = []
      ScriptEvents = <>
      DoSubmitValidation = True
      Style = stNormal
      TabOrder = 35
      OnClick = FormatboxChange
      OnChange = FormatboxChange
      Checked = False
      FriendlyName = 'Formatbox'
    end
    object IWRegion2: TIWRegion
      Left = 111
      Top = 8
      Width = 825
      Height = 577
      Cursor = crAuto
      Anchors = [akLeft, akTop, akBottom]
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
        825
        577)
      object IWLabel8: TIWLabel
        Left = 50
        Top = 57
        Width = 28
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
        FriendlyName = 'IWLabel8'
        Caption = 'Text'
        RawText = False
      end
      object NewTrigEdit: TIWEdit
        Left = 96
        Top = 56
        Width = 177
        Height = 20
        Cursor = crAuto
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
        FriendlyName = 'NewIDEdit'
        MaxLength = 0
        ReadOnly = False
        Required = False
        ScriptEvents = <>
        TabOrder = 1
        PasswordPrompt = False
        Text = 'NewTrigEdit'
      end
      object NewNameEdit: TIWEdit
        Left = 96
        Top = 32
        Width = 225
        Height = 20
        Cursor = crAuto
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
        FriendlyName = 'NewNameEdit'
        MaxLength = 0
        ReadOnly = False
        Required = False
        ScriptEvents = <>
        TabOrder = 0
        PasswordPrompt = False
        Text = 'NewNameEdit'
      end
      object IWLabel1: TIWLabel
        Left = 48
        Top = 33
        Width = 40
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
        FriendlyName = 'IWLabel1'
        Caption = 'Name'
        RawText = False
      end
      object VoucherLabel: TIWLabel
        Left = 256
        Top = 8
        Width = 225
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
        FriendlyName = 'VoucherLabel'
        Caption = 'Rules - Events and Actions'
        RawText = False
      end
      object IWLabel3: TIWLabel
        Left = 464
        Top = 33
        Width = 27
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
        FriendlyName = 'IWLabel3'
        Caption = 'Tag'
        RawText = False
      end
      object NewVendLabel: TIWLabel
        Left = 488
        Top = 58
        Width = 33
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
        FriendlyName = 'IWLabel3'
        Caption = 'Vend.'
        RawText = False
      end
      object NewVendEdit: TIWEdit
        Left = 528
        Top = 57
        Width = 57
        Height = 20
        Cursor = crAuto
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
        FriendlyName = 'NewIDEdit'
        MaxLength = 0
        ReadOnly = False
        Required = False
        ScriptEvents = <>
        TabOrder = 4
        PasswordPrompt = False
        Text = 'NewVendEdit'
      end
      object NewProdLabel: TIWLabel
        Left = 600
        Top = 58
        Width = 33
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
        FriendlyName = 'IWLabel3'
        Caption = 'Prod.'
        RawText = False
      end
      object NewTagEdit: TIWEdit
        Left = 504
        Top = 32
        Width = 81
        Height = 20
        Cursor = crAuto
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
        FriendlyName = 'NewIDEdit'
        MaxLength = 0
        ReadOnly = False
        Required = False
        ScriptEvents = <>
        TabOrder = 2
        PasswordPrompt = False
        Text = 'NewTagEdit'
      end
      object IWLabel2: TIWLabel
        Left = 608
        Top = 31
        Width = 14
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
        FriendlyName = 'IWLabel2'
        Caption = 'ID'
        RawText = False
      end
      object NewIDEdit: TIWEdit
        Left = 632
        Top = 30
        Width = 73
        Height = 20
        Cursor = crAuto
        IW50Hint = False
        ParentShowHint = False
        ShowHint = True
        ZIndex = 0
        RenderSize = True
        Alignment = taLeftJustify
        BGColor = clBtnFace
        FocusColor = clNone
        DoSubmitValidation = True
        Editable = True
        NonEditableAsLabel = True
        Font.Color = clNone
        Font.Size = 10
        Font.Style = []
        FriendlyName = 'NewIDEdit'
        MaxLength = 0
        ReadOnly = True
        Required = False
        ScriptEvents = <>
        TabOrder = 3
        PasswordPrompt = False
        Text = 'NewIDEdit'
      end
      object NewProdEdit: TIWEdit
        Left = 640
        Top = 57
        Width = 57
        Height = 20
        Cursor = crAuto
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
        FriendlyName = 'NewIDEdit'
        MaxLength = 0
        ReadOnly = False
        Required = False
        ScriptEvents = <>
        TabOrder = 5
        PasswordPrompt = False
        Text = 'NewProdEdit'
      end
      object IWSiLink1: TIWSiLink
        Left = 8
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
        TabOrder = 32
        RawText = False
        SiLangLinked = siLangLinked1
        LangFile = 'ruleedit.sil'
        LangControl = RcDataMod.LangEditControl1
      end
      object IWRectangle1: TIWRectangle
        Left = 0
        Top = 3
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
      object IWRectangle2: TIWRectangle
        Left = 0
        Top = 0
        Width = 825
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
      object IWRegion3: TIWRegion
        Left = 48
        Top = 80
        Width = 705
        Height = 89
        Cursor = crAuto
        TabOrder = 9
        BorderOptions.NumericWidth = 0
        BorderOptions.BorderWidth = cbwNumeric
        BorderOptions.Style = cbsSolid
        BorderOptions.Color = clNone
        Color = clWebSILVER
        ParentShowHint = False
        ShowHint = True
        ZIndex = -1
        Splitter = False
        object PurposeCombo: TIWComboBox
          Left = 80
          Top = 8
          Width = 233
          Height = 21
          Cursor = crAuto
          IW50Hint = False
          ParentShowHint = False
          ShowHint = True
          ZIndex = 0
          RenderSize = False
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
          OnChange = PurposeComboChange
          UseSize = False
          Style = stNormal
          ButtonColor = clBtnFace
          DoSubmitValidation = True
          Editable = True
          NonEditableAsLabel = True
          TabOrder = 6
          ItemIndex = -1
          Items.Strings = (
            'General Text'
            'Identifies Product'
            'Identifies Transaction'
            'Identifies Stock'
            'Loyalty Scan'
            'Voucher Scan'
            'Random 0 =< Qty < 100'
            'Loyalty Kbd'
            'Voucher Kbd'
            'Loyalty Mag'
            'General Scan'
            'General Mag'
            'General Kbd'
            'Identifies Customer'
            'Event'
            'Mandatory')
          Sorted = False
          FriendlyName = 'PurposeCombo'
        end
        object IWLabel27: TIWLabel
          Left = 8
          Top = 8
          Width = 63
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
          Font.Style = [fsBold]
          NoWrap = False
          ConvertSpaces = False
          AutoSize = False
          FriendlyName = 'IWLabel9'
          Caption = 'Purpose'
          RawText = False
        end
        object OutputCombo: TIWComboBox
          Left = 80
          Top = 37
          Width = 393
          Height = 21
          Cursor = crAuto
          IW50Hint = False
          ParentShowHint = False
          ShowHint = True
          ZIndex = 0
          RenderSize = False
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
          TabOrder = 8
          ItemIndex = -1
          Items.Strings = (
            'No action'
            'Voucher (bottom of page, one copy only)'
            'Multi-Voucher (bottom of page, one copy per item)'
            'Logo (top of page)'
            'Inline/Insert (after the trigger line)'
            'Inline/Overwrite (instead of the trigger line)'
            'Inline/Before (before the trigger line)'
            'Loyalty (bottom of page, one copy, loyalty data input)'
            'End Of Page (all docs)'
            'Top Of Page Voucher'
            'End Of Page Voucher (all docs)'
            'Mandatory Inline')
          Sorted = False
          FriendlyName = 'OutputCombo'
        end
        object IWLabel28: TIWLabel
          Left = 8
          Top = 38
          Width = 47
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
          Font.Style = [fsBold]
          NoWrap = False
          ConvertSpaces = False
          AutoSize = False
          FriendlyName = 'IWLabel6'
          Caption = 'Action'
          RawText = False
        end
        object vlabelfrom: TIWLabel
          Left = 80
          Top = 65
          Width = 73
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
          FriendlyName = 'IWLabel3'
          Caption = 'Value from'
          RawText = False
        end
        object VStartedit: TIWEdit
          Left = 160
          Top = 64
          Width = 81
          Height = 20
          Cursor = crAuto
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
          FriendlyName = 'NewIDEdit'
          MaxLength = 0
          ReadOnly = False
          Required = False
          ScriptEvents = <>
          TabOrder = 11
          PasswordPrompt = False
          Text = 'VStartEdit'
        end
        object VEndEdit: TIWEdit
          Left = 296
          Top = 64
          Width = 81
          Height = 20
          Cursor = crAuto
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
          FriendlyName = 'NewIDEdit'
          MaxLength = 0
          ReadOnly = False
          Required = False
          ScriptEvents = <>
          TabOrder = 12
          PasswordPrompt = False
          Text = 'VEndEdit'
        end
        object vLabelTo: TIWLabel
          Left = 264
          Top = 65
          Width = 14
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
          FriendlyName = 'IWLabel2'
          Caption = 'to'
          RawText = False
        end
        object DupBox: TIWCheckBox
          Left = 552
          Top = 40
          Width = 129
          Height = 21
          Cursor = crAuto
          IW50Hint = False
          ParentShowHint = False
          ShowHint = True
          ZIndex = 0
          RenderSize = False
          Caption = 'Inhibit Duplicates'
          Editable = True
          Font.Color = clNone
          Font.Size = 10
          Font.Style = []
          ScriptEvents = <>
          DoSubmitValidation = True
          Style = stNormal
          TabOrder = 10
          Checked = False
          FriendlyName = 'DupBox'
        end
        object PassthroughBox: TIWCheckBox
          Left = 552
          Top = 11
          Width = 97
          Height = 21
          Cursor = crAuto
          IW50Hint = False
          ParentShowHint = False
          ShowHint = True
          ZIndex = 0
          RenderSize = False
          Caption = 'Passthrough'
          Editable = True
          Font.Color = clNone
          Font.Size = 10
          Font.Style = []
          ScriptEvents = <>
          DoSubmitValidation = True
          Style = stNormal
          TabOrder = 9
          Checked = False
          FriendlyName = 'DupBox'
        end
        object IWLabel6: TIWLabel
          Left = 320
          Top = 8
          Width = 63
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
          Font.Style = [fsBold]
          NoWrap = False
          ConvertSpaces = False
          AutoSize = False
          FriendlyName = 'IWLabel9'
          Caption = 'Priority'
          RawText = False
        end
        object PriorityCombo: TIWComboBox
          Left = 392
          Top = 8
          Width = 137
          Height = 21
          Cursor = crAuto
          IW50Hint = False
          ParentShowHint = False
          ShowHint = True
          ZIndex = 0
          RenderSize = False
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
          TabOrder = 7
          ItemIndex = -1
          Items.Strings = (
            'First'
            'High'
            'Normal'
            'Low 1'
            'Low 2'
            'Low 3'
            'Low 4'
            'Low 5'
            'Last')
          Sorted = False
          FriendlyName = 'PurposeCombo'
        end
      end
      object IWRegion5: TIWRegion
        Left = 416
        Top = 172
        Width = 337
        Height = 313
        Cursor = crAuto
        HorzScrollBar.Visible = False
        VertScrollBar.Visible = False
        TabOrder = 18
        Anchors = [akLeft, akTop, akBottom]
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
          337
          313)
        object IWLabel11: TIWLabel
          Left = 8
          Top = 4
          Width = 57
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
          FriendlyName = 'IWLabel11'
          Caption = 'Rule'
          RawText = False
        end
        object DepGrid: TIWGrid
          Left = 2
          Top = 72
          Width = 335
          Height = 239
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
          OnRenderCell = ImageGridRenderCell
          UseFrame = True
          UseSize = True
          FriendlyName = 'DepGrid'
          ColumnCount = 4
          OnCellClick = DepGridCellClick
          RowCount = 1
          TabOrder = -1
          ShowEmptyCells = True
          ScrollToCurrentRow = False
        end
        object AddDepBtn: TIWButton
          Left = 208
          Top = 24
          Width = 41
          Height = 25
          Cursor = crAuto
          IW50Hint = False
          ParentShowHint = False
          ShowHint = True
          ZIndex = 0
          RenderSize = True
          Caption = 'Add'
          DoSubmitValidation = True
          Color = clBtnFace
          Font.Color = clWebBLACK
          Font.Size = 10
          Font.Style = []
          FriendlyName = 'AddDepBtn'
          ScriptEvents = <>
          TabOrder = 19
          OnClick = AddDepBtnClick
        end
        object TrigCombo: TIWComboBox
          Left = 72
          Top = 3
          Width = 177
          Height = 21
          Cursor = crAuto
          IW50Hint = False
          ParentShowHint = False
          ShowHint = True
          ZIndex = 0
          RenderSize = False
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
          TabOrder = 17
          ItemIndex = -1
          Sorted = False
          FriendlyName = 'TrigCombo'
        end
        object IWLabel10: TIWLabel
          Left = 8
          Top = 31
          Width = 42
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
          FriendlyName = 'IWLabel10'
          Caption = 'Sense'
          RawText = False
        end
        object SenseCombo: TIWComboBox
          Left = 72
          Top = 27
          Width = 121
          Height = 21
          Cursor = crAuto
          IW50Hint = False
          ParentShowHint = False
          ShowHint = True
          ZIndex = 0
          RenderSize = False
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
          TabOrder = 18
          ItemIndex = -1
          Items.Strings = (
            'Require'
            'Exclude'
            'Credit')
          Sorted = False
          FriendlyName = 'SenseCombo'
        end
        object IWLabel22: TIWLabel
          Left = 6
          Top = 51
          Width = 52
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
          FriendlyName = 'IWLabel22'
          Caption = 'Quantity'
          RawText = False
        end
        object QtyEdit: TIWEdit
          Left = 72
          Top = 50
          Width = 41
          Height = 20
          Cursor = crAuto
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
          FriendlyName = 'NewIDEdit'
          MaxLength = 0
          ReadOnly = False
          Required = False
          ScriptEvents = <>
          TabOrder = 20
          PasswordPrompt = False
          Text = 'QtyEdit'
        end
      end
      object ImageRegion: TIWRegion
        Left = 48
        Top = 172
        Width = 365
        Height = 313
        Cursor = crAuto
        HorzScrollBar.Visible = False
        VertScrollBar.Visible = False
        TabOrder = 14
        Anchors = [akLeft, akTop, akBottom]
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
          365
          313)
        object IWLabel7: TIWLabel
          Left = 8
          Top = 9
          Width = 49
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
          FriendlyName = 'IWLabel7'
          Caption = 'Outputs'
          RawText = False
        end
        object SelGrid: TIWGrid
          Left = 2
          Top = 56
          Width = 359
          Height = 255
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
          OnRenderCell = ImageGridRenderCell
          UseFrame = True
          UseSize = True
          FriendlyName = 'SelGrid'
          ColumnCount = 5
          OnCellClick = SelGridCellClick
          RowCount = 1
          TabOrder = -1
          ShowEmptyCells = True
          ScrollToCurrentRow = False
        end
        object DataCombo: TIWComboBox
          Left = 72
          Top = 5
          Width = 289
          Height = 21
          Cursor = crAuto
          IW50Hint = False
          ParentShowHint = False
          ShowHint = True
          ZIndex = 0
          RenderSize = False
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
          TabOrder = 13
          ItemIndex = -1
          Sorted = False
          FriendlyName = 'DataCombo'
        end
        object AddOutputBtn: TIWButton
          Left = 264
          Top = 27
          Width = 41
          Height = 25
          Cursor = crAuto
          IW50Hint = False
          ParentShowHint = False
          ShowHint = True
          ZIndex = 0
          RenderSize = True
          Caption = 'Add'
          DoSubmitValidation = True
          Color = clBtnFace
          Font.Color = clWebBLACK
          Font.Size = 10
          Font.Style = []
          FriendlyName = 'AddOutputBtn'
          ScriptEvents = <>
          TabOrder = 15
          OnClick = AddOutputBtnClick
        end
        object IWLabel4: TIWLabel
          Left = 8
          Top = 31
          Width = 40
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
          FriendlyName = 'IWLabel4'
          Caption = 'Status'
          RawText = False
        end
        object StatCombo: TIWComboBox
          Left = 72
          Top = 27
          Width = 177
          Height = 21
          Cursor = crAuto
          IW50Hint = False
          ParentShowHint = False
          ShowHint = True
          ZIndex = 0
          RenderSize = False
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
          TabOrder = 14
          ItemIndex = -1
          Items.Strings = (
            'Always'
            'Stock Ok'
            'Stock Fail'
            'Out Of Stock'
            'Stock Declined'
            'Loyalty Fail'
            'Loyalty Ok'
            'Loyalty Invalid'
            'Voucher Ok'
            'Voucher Invalid'
            'Voucher Used'
            'Voucher Fail'
            'Stock Reissue'
            'Stock Not Found'
            'Script Ok'
            'Script Fail'
            'Redeem Ok'
            'Redeem Fail'
            'Redeem Points Reqd'
            'Redeem Invalid'
            'Random 1'
            'Random 2'
            'Random 3'
            'Random 4'
            'Random 5')
          Sorted = False
          FriendlyName = 'StatCombo'
        end
        object NewBtn: TIWButton
          Left = 312
          Top = 27
          Width = 41
          Height = 25
          Cursor = crAuto
          Visible = False
          IW50Hint = False
          ParentShowHint = False
          ShowHint = True
          ZIndex = 0
          RenderSize = True
          Caption = 'New'
          DoSubmitValidation = True
          Color = clBtnFace
          Font.Color = clWebBLACK
          Font.Size = 10
          Font.Style = []
          FriendlyName = 'IWButton1'
          ScriptEvents = <>
          TabOrder = 16
          OnClick = NewBtnClick
        end
      end
      object AvailRegion: TIWRegion
        Left = 49
        Top = 488
        Width = 704
        Height = 84
        Cursor = crAuto
        TabOrder = 23
        Anchors = [akLeft, akBottom]
        BorderOptions.NumericWidth = 0
        BorderOptions.BorderWidth = cbwNumeric
        BorderOptions.Style = cbsSolid
        BorderOptions.Color = clNone
        Color = clWebSILVER
        ParentShowHint = False
        ShowHint = True
        ZIndex = -1
        Splitter = False
        object IWLabel5: TIWLabel
          Left = 8
          Top = 4
          Width = 99
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
          Font.Style = [fsBold]
          NoWrap = False
          ConvertSpaces = False
          AutoSize = False
          FriendlyName = 'IWLabel5'
          Caption = 'Active Hours'
          RawText = False
        end
        object IWLabel13: TIWLabel
          Left = 22
          Top = 22
          Width = 34
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
          FriendlyName = 'IWLabel13'
          Caption = 'From'
          RawText = False
        end
        object FromEdit: TIWEdit
          Left = 72
          Top = 21
          Width = 49
          Height = 20
          Cursor = crAuto
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
          FriendlyName = 'NewIDEdit'
          MaxLength = 0
          ReadOnly = False
          Required = False
          ScriptEvents = <>
          TabOrder = 21
          PasswordPrompt = False
          Text = 'FromEdit'
        end
        object ToEdit: TIWEdit
          Left = 72
          Top = 45
          Width = 49
          Height = 20
          Cursor = crAuto
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
          FriendlyName = 'NewIDEdit'
          MaxLength = 0
          ReadOnly = False
          Required = False
          ScriptEvents = <>
          TabOrder = 22
          PasswordPrompt = False
          Text = 'ToEdit'
        end
        object IWLabel14: TIWLabel
          Left = 22
          Top = 46
          Width = 18
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
          FriendlyName = 'IWLabel14'
          Caption = 'To'
          RawText = False
        end
        object IWLabel16: TIWLabel
          Left = 72
          Top = 68
          Width = 58
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
          FriendlyName = 'IWLabel16'
          Caption = '(HH:MM)'
          RawText = False
        end
        object IWLabel17: TIWLabel
          Left = 224
          Top = 4
          Width = 102
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
          Font.Style = [fsBold]
          NoWrap = False
          ConvertSpaces = False
          AutoSize = False
          FriendlyName = 'IWLabel17'
          Caption = 'Active Period'
          RawText = False
        end
        object IWLabel18: TIWLabel
          Left = 238
          Top = 23
          Width = 29
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
          FriendlyName = 'IWLabel18'
          Caption = 'Start'
          RawText = False
        end
        object IWLabel19: TIWLabel
          Left = 238
          Top = 47
          Width = 38
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
          FriendlyName = 'IWLabel19'
          Caption = 'Finish'
          RawText = False
        end
        object PeriodEndEdit: TIWEdit
          Left = 288
          Top = 46
          Width = 137
          Height = 20
          Cursor = crAuto
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
          FriendlyName = 'NewIDEdit'
          MaxLength = 0
          ReadOnly = False
          Required = False
          ScriptEvents = <>
          TabOrder = 24
          PasswordPrompt = False
          Text = 'PeriodEndEdit'
        end
        object PeriodStartEdit: TIWEdit
          Left = 288
          Top = 22
          Width = 137
          Height = 20
          Cursor = crAuto
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
          FriendlyName = 'NewIDEdit'
          MaxLength = 0
          ReadOnly = False
          Required = False
          ScriptEvents = <>
          TabOrder = 23
          PasswordPrompt = False
          Text = 'PeriodStartEdit'
        end
        object IWLabel21: TIWLabel
          Left = 288
          Top = 68
          Width = 145
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
          FriendlyName = 'IWLabel21'
          Caption = '(DD/MM/YY HH:MM)'
          RawText = False
        end
        object monbox: TIWCheckBox
          Left = 472
          Top = 12
          Width = 49
          Height = 21
          Cursor = crAuto
          IW50Hint = False
          ParentShowHint = False
          ShowHint = True
          ZIndex = 0
          RenderSize = False
          Caption = 'Mon'
          Editable = True
          Font.Color = clNone
          Font.Size = 10
          Font.Style = []
          ScriptEvents = <>
          DoSubmitValidation = True
          Style = stNormal
          TabOrder = 25
          Checked = False
          FriendlyName = 'monbox'
        end
        object tuebox: TIWCheckBox
          Left = 535
          Top = 12
          Width = 49
          Height = 21
          Cursor = crAuto
          IW50Hint = False
          ParentShowHint = False
          ShowHint = True
          ZIndex = 0
          RenderSize = False
          Caption = 'Tue'
          Editable = True
          Font.Color = clNone
          Font.Size = 10
          Font.Style = []
          ScriptEvents = <>
          DoSubmitValidation = True
          Style = stNormal
          TabOrder = 26
          Checked = False
          FriendlyName = 'tuebox'
        end
        object wedbox: TIWCheckBox
          Left = 597
          Top = 12
          Width = 49
          Height = 21
          Cursor = crAuto
          IW50Hint = False
          ParentShowHint = False
          ShowHint = True
          ZIndex = 0
          RenderSize = False
          Caption = 'Wed'
          Editable = True
          Font.Color = clNone
          Font.Size = 10
          Font.Style = []
          ScriptEvents = <>
          DoSubmitValidation = True
          Style = stNormal
          TabOrder = 27
          Checked = False
          FriendlyName = 'wedbox'
        end
        object thubox: TIWCheckBox
          Left = 471
          Top = 36
          Width = 49
          Height = 21
          Cursor = crAuto
          IW50Hint = False
          ParentShowHint = False
          ShowHint = True
          ZIndex = 0
          RenderSize = False
          Caption = 'Thu'
          Editable = True
          Font.Color = clNone
          Font.Size = 10
          Font.Style = []
          ScriptEvents = <>
          DoSubmitValidation = True
          Style = stNormal
          TabOrder = 28
          Checked = False
          FriendlyName = 'thubox'
        end
        object fribox: TIWCheckBox
          Left = 534
          Top = 36
          Width = 49
          Height = 21
          Cursor = crAuto
          IW50Hint = False
          ParentShowHint = False
          ShowHint = True
          ZIndex = 0
          RenderSize = False
          Caption = 'Fri'
          Editable = True
          Font.Color = clNone
          Font.Size = 10
          Font.Style = []
          ScriptEvents = <>
          DoSubmitValidation = True
          Style = stNormal
          TabOrder = 29
          Checked = False
          FriendlyName = 'fribox'
        end
        object satbox: TIWCheckBox
          Left = 596
          Top = 36
          Width = 49
          Height = 21
          Cursor = crAuto
          IW50Hint = False
          ParentShowHint = False
          ShowHint = True
          ZIndex = 0
          RenderSize = False
          Caption = 'Sat'
          Editable = True
          Font.Color = clNone
          Font.Size = 10
          Font.Style = []
          ScriptEvents = <>
          DoSubmitValidation = True
          Style = stNormal
          TabOrder = 30
          Checked = False
          FriendlyName = 'satbox'
        end
        object sunbox: TIWCheckBox
          Left = 470
          Top = 60
          Width = 49
          Height = 21
          Cursor = crAuto
          IW50Hint = False
          ParentShowHint = False
          ShowHint = True
          ZIndex = 0
          RenderSize = False
          Caption = 'Sun'
          Editable = True
          Font.Color = clNone
          Font.Size = 10
          Font.Style = []
          ScriptEvents = <>
          DoSubmitValidation = True
          Style = stNormal
          TabOrder = 31
          Checked = False
          FriendlyName = 'sunbox'
        end
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
    DoNotTranslate.Strings = (
      'TFormVoucherEdit')
    LangNames.Strings = (
      'English')
    Language = 'English'
    CommonContainer = RcDataMod.siLang1
    ExcludedProperties.Strings = (
      'Text'
      'StatusText'
      'FriendlyName'
      'Confirmation'
      'HotKey'
      'HelpKeyword'
      'Hint'
      'ExtraTagParams'
      'LangFile')
    Left = 8
    Top = 120
    TranslationData = {
      737443617074696F6E730D0A49574C6162656C380154657874010D0A49574C61
      62656C31014E616D65010D0A566F75636865724C6162656C0152756C6573202D
      204576656E747320616E6420416374696F6E73010D0A49574C6162656C330154
      6167010D0A4E657756656E644C6162656C0156656E642E010D0A4E657750726F
      644C6162656C0150726F642E010D0A49574C6162656C32014944010D0A49574C
      6162656C323701507572706F7365010D0A49574C6162656C323801416374696F
      6E010D0A766C6162656C66726F6D0156616C75652066726F6D010D0A764C6162
      656C546F01746F010D0A49574C6162656C31310152756C65010D0A4465704772
      696401010D0A41646444657042746E01416464010D0A49574C6162656C313001
      53656E7365010D0A49574C6162656C3232015175616E74697479010D0A49574C
      6162656C37014F757470757473010D0A53656C4772696401010D0A4164644F75
      7470757442746E01416464010D0A49574C6162656C3401537461747573010D0A
      4E657742746E014E6577010D0A49574C6162656C350141637469766520486F75
      7273010D0A49574C6162656C31330146726F6D010D0A49574C6162656C313401
      546F010D0A49574C6162656C3136012848483A4D4D29010D0A49574C6162656C
      31370141637469766520506572696F64010D0A49574C6162656C313801537461
      7274010D0A49574C6162656C31390146696E697368010D0A49574C6162656C32
      31012844442F4D4D2F59592048483A4D4D29010D0A6D6F6E626F78014D6F6E01
      0D0A747565626F7801547565010D0A776564626F7801576564010D0A74687562
      6F7801546875010D0A667269626F7801467269010D0A736174626F7801536174
      010D0A73756E626F780153756E010D0A447570426F7801496E68696269742044
      75706C696361746573010D0A506173737468726F756768426F78015061737374
      68726F756768010D0A49574C6162656C36015072696F72697479010D0A466F72
      6D6174626F78014E6577010D0A737448696E74730D0A7374446973706C61794C
      6162656C730D0A7374466F6E74730D0A73744D756C74694C696E65730D0A5075
      72706F7365436F6D626F2E4974656D73012247656E6572616C2054657874222C
      224964656E7469666965732050726F64756374222C224964656E746966696573
      205472616E73616374696F6E222C224964656E7469666965732053746F636B22
      2C224C6F79616C7479205363616E222C22566F7563686572205363616E222C22
      52616E646F6D2030203D3C20517479203C20313030222C224C6F79616C747920
      4B6264222C22566F7563686572204B6264222C224C6F79616C7479204D616722
      2C2247656E6572616C205363616E222C2247656E6572616C204D6167222C2247
      656E6572616C204B6264222C224964656E74696669657320437573746F6D6572
      222C4576656E742C4D616E6461746F72792C5072652D566F7563686572010D0A
      4F7574707574436F6D626F2E4974656D7301224E6F20616374696F6E222C2256
      6F75636865722028626F74746F6D206F6620706167652C206F6E6520636F7079
      206F6E6C7929222C224D756C74692D566F75636865722028626F74746F6D206F
      6620706167652C206F6E6520636F707920706572206974656D29222C224C6F67
      6F2028746F70206F66207061676529222C22496E6C696E652F496E7365727420
      286166746572207468652074726967676572206C696E6529222C22496E6C696E
      652F4F76657277726974652028696E7374656164206F66207468652074726967
      676572206C696E6529222C22496E6C696E652F4265666F726520286265666F72
      65207468652074726967676572206C696E6529222C224C6F79616C7479202862
      6F74746F6D206F6620706167652C206F6E6520636F70792C206C6F79616C7479
      206461746120696E70757429222C22456E64204F6620506167652028616C6C20
      646F637329222C22546F70204F66205061676520566F7563686572222C22456E
      64204F66205061676520566F75636865722028616C6C20646F637329222C224D
      616E6461746F727920496E6C696E6522010D0A54726967436F6D626F2E497465
      6D7301010D0A53656E7365436F6D626F2E4974656D7301526571756972652C45
      78636C7564652C437265646974010D0A44617461436F6D626F2E4974656D7301
      010D0A53746174436F6D626F2E4974656D7301416C776179732C2253746F636B
      204F6B222C2253746F636B204661696C222C224F7574204F662053746F636B22
      2C2253746F636B204465636C696E6564222C224C6F79616C7479204661696C22
      2C224C6F79616C7479204F6B222C224C6F79616C747920496E76616C6964222C
      22566F7563686572204F6B222C22566F756368657220496E76616C6964222C22
      566F75636865722055736564222C22566F7563686572204661696C222C225374
      6F636B2052656973737565222C2253746F636B204E6F7420466F756E64222C22
      536372697074204F6B222C22536372697074204661696C222C2252656465656D
      204F6B222C2252656465656D204661696C222C2252656465656D20506F696E74
      732052657164222C2252656465656D20496E76616C6964222C2252616E646F6D
      2031222C2252616E646F6D2032222C2252616E646F6D2033222C2252616E646F
      6D2034222C2252616E646F6D203522010D0A5072696F72697479436F6D626F2E
      4974656D730146697273742C486967682C4E6F726D616C2C224C6F772031222C
      224C6F772032222C224C6F772033222C224C6F772034222C224C6F772035222C
      4C617374010D0A7374537472696E67730D0A507572706F7365436F6D626F2E30
      0147656E6572616C2054657874010D0A507572706F7365436F6D626F2E310149
      6E64656E7469666965732050726F64756374010D0A507572706F7365436F6D62
      6F2E31300147656E6572616C205363616E010D0A507572706F7365436F6D626F
      2E31310147656E6572616C204D6167010D0A507572706F7365436F6D626F2E31
      320147656E6572616C204B6264010D0A507572706F7365436F6D626F2E320149
      64656E746966696573205472616E73616374696F6E010D0A507572706F736543
      6F6D626F2E33014964656E7469666965732053746F636B010D0A507572706F73
      65436F6D626F2E34014C6F79616C7479205363616E010D0A507572706F736543
      6F6D626F2E3501566F7563686572205363616E010D0A507572706F7365436F6D
      626F2E360152616E646F6D2030203D3C20517479203C20313030010D0A507572
      706F7365436F6D626F2E37014C6F79616C7479204B6264010D0A507572706F73
      65436F6D626F2E3801566F7563686572204B6264010D0A507572706F7365436F
      6D626F2E39014C6F79616C7479204D6167010D0A53656E7365436F6D626F2E30
      0152657175697265010D0A53656E7365436F6D626F2E31014578636C75646501
      0D0A53656E7365436F6D626F2E3201437265646974010D0A53746174436F6D62
      6F2E3001416C77617973010D0A53746174436F6D626F2E310153746F636B204F
      6B010D0A53746174436F6D626F2E320153746F636B204661696C010D0A537461
      74436F6D626F2E33014F7574204F662053746F636B010D0A53746174436F6D62
      6F2E340153746F636B204465636C696E6564010D0A53746174436F6D626F2E35
      014C6F79616C7479204661696C010D0A53746174436F6D626F2E36014C6F7961
      6C7479204F6B010D0A53746174436F6D626F2E37014C6F79616C747920496E76
      616C6964010D0A53746174436F6D626F2E3801566F7563686572204F6B010D0A
      53746174436F6D626F2E3901566F756368657220496E76616C6964010D0A5374
      6174436F6D626F2E313001566F75636865722055736564010D0A53746174436F
      6D626F2E313101566F7563686572204661696C010D0A53746174436F6D626F2E
      31320153746F636B2052656973737565010D0A53746174436F6D626F2E313301
      53746F636B204E6F7420466F756E64010D0A4F7574707574436F6D626F2E3001
      4E6F20416374696F6E010D0A4F7574707574436F6D626F2E3101566F75636865
      722028626F74746F6D206F6620706167652C206F6E6520636F7079206F6E6C79
      29010D0A4F7574707574436F6D626F2E32014D756C74692D566F756368657220
      28626F74746F6D206F6620706167652C206F6E6520636F707920706572206974
      656D29010D0A4F7574707574436F6D626F2E33014C6F676F2028746F70206F66
      207061676529010D0A4F7574707574436F6D626F2E3401496E6C696E652F496E
      7365727420286166746572207468652074726967676572206C696E6529010D0A
      4F7574707574436F6D626F2E3501496E6C696E652F4F76657277726974652028
      696E7374656164206F66207468652074726967676572206C696E6529010D0A4F
      7574707574436F6D626F2E3601496E6C696E652F4265666F726520286265666F
      7265207468652074726967676572206C696E6529010D0A4F7574707574436F6D
      626F2E37014C6F79616C74792028626F74746F6D206F6620706167652C206F6E
      6520636F70792C206C6F79616C7479206461746120696E70757429010D0A4F75
      74707574436F6D626F2E3801456E64204F6620506167652028616C6C20646F63
      7329010D0A477269642E4E616D65014E616D65010D0A477269642E5374617475
      7301537461747573010D0A477269642E51747901517479010D0A477269642E53
      656E73650153656E7365010D0A477269642E5570015570010D0A477269642E44
      6F776E01446F776E010D0A477269642E44656C0144656C010D0A44656C436F6E
      660144656C6574652074686973207265636F72643F010D0A53746174436F6D62
      6F2E31360152656465656D204F6B010D0A53746174436F6D626F2E3137015265
      6465656D204661696C010D0A53746174436F6D626F2E31380152656465656D20
      5074732052657164010D0A53746174436F6D626F2E313401536372697074204F
      6B010D0A53746174436F6D626F2E313501536372697074204661696C010D0A50
      7572706F7365436F6D626F2E3133014964656E74696669657320437573746F6D
      6572010D0A53746174436F6D626F2E31390152656465656D20496E76616C6964
      010D0A5072696F72697479436F6D626F2E30014669727374010D0A5072696F72
      697479436F6D626F2E310148696768010D0A5072696F72697479436F6D626F2E
      32014E6F726D616C010D0A5072696F72697479436F6D626F2E33014C6F772031
      010D0A5072696F72697479436F6D626F2E34014C6F772032010D0A5072696F72
      697479436F6D626F2E35014C6F772033010D0A5072696F72697479436F6D626F
      2E36014C6F772034010D0A5072696F72697479436F6D626F2E37014C61737401
      0D0A53746174436F6D626F2E32300152616E646F6D2031010D0A53746174436F
      6D626F2E32310152616E646F6D2032010D0A53746174436F6D626F2E32320152
      616E646F6D2033010D0A53746174436F6D626F2E32330152616E646F6D203401
      0D0A53746174436F6D626F2E32340152616E646F6D2035010D0A4F7574707574
      436F6D626F2E3901546F70204F66205061676520566F7563686572010D0A5075
      72706F7365436F6D626F2E3134014576656E74010D0A4F7574707574436F6D62
      6F2E313001456E64204F66205061676520566F75636865722028616C6C20646F
      637329010D0A4F7574707574436F6D626F2E3131014D616E6461746F72792049
      6E6C696E65010D0A4F7574707574436F6D626F2E3132015072652D566F756368
      6572010D0A507572706F7365436F6D626F2E3135015265736F6C766564205363
      616E010D0A73744F74686572537472696E67730D0A507572706F7365436F6D62
      6F2E4E6F53656C656374696F6E54657874012D2D204E6F2053656C656374696F
      6E202D2D010D0A4F7574707574436F6D626F2E4E6F53656C656374696F6E5465
      7874012D2D204E6F2053656C656374696F6E202D2D010D0A446570477269642E
      53756D6D61727901010D0A54726967436F6D626F2E4E6F53656C656374696F6E
      54657874012D2D204E6F2053656C656374696F6E202D2D010D0A53656E736543
      6F6D626F2E4E6F53656C656374696F6E54657874012D2D204E6F2053656C6563
      74696F6E202D2D010D0A53656C477269642E53756D6D61727901010D0A446174
      61436F6D626F2E4E6F53656C656374696F6E54657874012D2D204E6F2053656C
      656374696F6E202D2D010D0A53746174436F6D626F2E4E6F53656C656374696F
      6E54657874012D2D204E6F2053656C656374696F6E202D2D010D0A5072696F72
      697479436F6D626F2E4E6F53656C656374696F6E54657874012D2D204E6F2053
      656C656374696F6E202D2D010D0A7374436F6C6C656374696F6E730D0A737443
      686172536574730D0A}
  end
end
