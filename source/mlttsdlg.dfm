object FrmMultiTimeseries: TFrmMultiTimeseries
  Left = 304
  Top = 173
  Caption = 'Set caption programmatically...'
  ClientHeight = 416
  ClientWidth = 585
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  Menu = MainMenu
  OldCreateOrder = False
  Position = poDesktopCenter
  OnCloseQuery = LFormCloseQuery
  OnCreate = FormCreate
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object TimeseriesGrid: TTimeseriesGrid
    Left = 0
    Top = 40
    Width = 585
    Height = 376
    DisplayFormat = dfSimple
    FlagsVisible = False
    BgColorForStatistics = 13684944
    HighlightColor = clYellow
    HighlightMode = hlNone
    HydrologicalYear = True
    OwnsTimeseries = True
    UndoIDPointer = 0
    Align = alClient
    FixedColor = 14540253
    PopupMenu = PopupMenu
    ReadOnly = False
    TabOrder = 0
    OnClick = TimeseriesGridClick
    OnColumnMoved = TimeseriesGridColumnMoved
    OnContextPopup = TimeseriesGridContextPopup
  end
  object ToolBar: TToolBar
    Left = 0
    Top = 0
    Width = 585
    Height = 40
    ButtonHeight = 36
    ButtonWidth = 54
    Caption = 'ToolBar'
    Images = ImageList
    ShowCaptions = True
    TabOrder = 1
    Transparent = True
    object tbtnUndo: TToolButton
      Left = 0
      Top = 0
      Hint = 'Undo'
      Caption = 'Undo'
      ImageIndex = 5
      ParentShowHint = False
      ShowHint = True
      OnClick = mnuUndoClick
    end
    object tbtnRedo: TToolButton
      Left = 54
      Top = 0
      Hint = 'Redo'
      Caption = 'Redo'
      ImageIndex = 6
      ParentShowHint = False
      ShowHint = True
      OnClick = mnuRedoClick
    end
    object ToolButton5: TToolButton
      Left = 108
      Top = 0
      Width = 8
      Caption = 'ToolButton5'
      ImageIndex = 7
      Style = tbsSeparator
    end
    object tbtnCopy: TToolButton
      Left = 116
      Top = 0
      Hint = 'Copy with dates...'
      Caption = 'Copy'
      ImageIndex = 0
      ParentShowHint = False
      ShowHint = True
      OnClick = btnCopyDatesClick
    end
    object tbtnPaste: TToolButton
      Left = 170
      Top = 0
      Hint = 'Paste from clipboard...'
      Caption = 'Paste'
      ImageIndex = 1
      ParentShowHint = False
      ShowHint = True
      OnClick = btnPasteClipboardClick
    end
    object ToolButton3: TToolButton
      Left = 224
      Top = 0
      Width = 8
      Caption = 'ToolButton3'
      ImageIndex = 2
      Style = tbsSeparator
    end
    object tbtnGraph: TToolButton
      Left = 232
      Top = 0
      Hint = 'Graph on selected timeseries'
      Caption = 'Graph'
      ImageIndex = 2
      ParentShowHint = False
      ShowHint = True
      OnClick = mnuAddTimeseriesGraphClick
    end
    object tbtnStats: TToolButton
      Left = 286
      Top = 0
      Hint = 'Show section statistics'
      Caption = 'Statitstics'
      ImageIndex = 3
      ParentShowHint = False
      ShowHint = True
      Style = tbsCheck
      OnClick = mnuShowStatisticsClick
    end
    object ToolButton1: TToolButton
      Left = 340
      Top = 0
      Width = 8
      Caption = 'ToolButton1'
      ImageIndex = 4
      Style = tbsSeparator
    end
    object tbtnTableView: TToolButton
      Left = 348
      Top = 0
      Hint = 'Table view...'
      Caption = 'Table'
      ImageIndex = 4
      Style = tbsCheck
      OnClick = tbtnTableViewClick
    end
  end
  object PopupMenu: TPopupMenu
    OnPopup = PopupMenuPopup
    Left = 352
    Top = 40
    object pmnuCopy: TMenuItem
      Caption = 'Copy'
      OnClick = btnCopyClipboardClick
    end
    object pmnuCopyDates: TMenuItem
      Caption = 'Copy with dates'
      OnClick = btnCopyDatesClick
    end
    object pmnuPaste: TMenuItem
      Caption = 'Paste'
      OnClick = btnPasteClipboardClick
    end
    object N4: TMenuItem
      Caption = '-'
    end
    object pmnuAddRecordsStart: TMenuItem
      Caption = 'Add records before the start...'
      OnClick = btnAddRecordEndClick
    end
    object pmnuAddRecordsEnd: TMenuItem
      Tag = 1
      Caption = 'Add records after the end...'
      OnClick = btnAddRecordEndClick
    end
    object pmnuDeleteRecords: TMenuItem
      Caption = 'Delete selected records...'
      OnClick = btnDeleteRecordsClick
    end
    object N7: TMenuItem
      Caption = '-'
    end
    object pmnuAddSections: TMenuItem
      Caption = 'Add sections...'
      OnClick = btnInsertSectionClick
    end
    object pmnuInsertSections: TMenuItem
      Tag = 1
      Caption = 'Insert sections...'
      OnClick = btnInsertSectionClick
    end
    object pmnuRemoveSections: TMenuItem
      Caption = 'Remove sections...'
      OnClick = btnDeleteSectionsClick
    end
  end
  object MainMenu: TMainMenu
    Left = 384
    Top = 40
    object mnuSeries: TMenuItem
      Caption = 'Series'
      object mnuResetData: TMenuItem
        Caption = 'New...'
        OnClick = mnuResetDataClick
      end
      object N5: TMenuItem
        Caption = '-'
      end
      object mnuAddSection: TMenuItem
        Caption = 'Add sections...'
        ShortCut = 16462
        OnClick = btnInsertSectionClick
      end
      object mnuInsertSection: TMenuItem
        Tag = 1
        Caption = 'Insert sections...'
        ShortCut = 16429
        OnClick = btnInsertSectionClick
      end
      object mnuDeleteSection: TMenuItem
        Caption = 'Delete sections...'
        ShortCut = 16471
        OnClick = btnDeleteSectionsClick
      end
      object N3: TMenuItem
        Caption = '-'
      end
      object mnuSeriesProperties: TMenuItem
        Caption = 'Time series properties...'
        OnClick = mnuSeriesPropertiesClick
      end
      object N2: TMenuItem
        Caption = '-'
      end
      object mnuLoadFromFile: TMenuItem
        Caption = 'Load from file...'
        ShortCut = 16463
        OnClick = mnuLoadFromFileClick
      end
      object mnuWriteToFile: TMenuItem
        Caption = 'Write to file...'
        ShortCut = 16467
        OnClick = mnuWriteToFileClick
      end
      object mnuClose: TMenuItem
        Caption = 'Close...'
        ShortCut = 16499
        OnClick = mnuCloseClick
      end
    end
    object mnuEdit: TMenuItem
      Caption = 'Edit'
      OnClick = mnuEditClick
      object mnuUndo: TMenuItem
        Caption = 'Undo'
        ShortCut = 16474
        OnClick = mnuUndoClick
      end
      object mnuRedo: TMenuItem
        Caption = 'Redo'
        ShortCut = 16473
        OnClick = mnuRedoClick
      end
      object N8: TMenuItem
        Caption = '-'
      end
      object mnuCopyToClipboard: TMenuItem
        Caption = 'Copy to clipboard'
        ShortCut = 16451
        OnClick = btnCopyClipboardClick
      end
      object mnuCopyWithDates: TMenuItem
        Caption = 'Copy with dates'
        ShortCut = 24643
        OnClick = btnCopyDatesClick
      end
      object mnuPaste: TMenuItem
        Caption = 'Paste'
        ShortCut = 16470
        OnClick = btnPasteClipboardClick
      end
      object N6: TMenuItem
        Caption = '-'
      end
      object mnuSelectAll: TMenuItem
        Caption = 'Select entire timeseries'
        ShortCut = 16449
        OnClick = mnuSelectAllClick
      end
      object N1: TMenuItem
        Caption = '-'
      end
      object mnuAddRecordsBefore: TMenuItem
        Caption = 'Add records before the start...'
        ShortCut = 8228
        OnClick = btnAddRecordEndClick
      end
      object mnuAddRecordsEnd: TMenuItem
        Tag = 1
        Caption = 'Add records after the end...'
        ShortCut = 8227
        OnClick = btnAddRecordEndClick
      end
      object mnuDeleteRecords: TMenuItem
        Caption = 'Delete selected records...'
        ShortCut = 16452
        OnClick = btnDeleteRecordsClick
      end
    end
    object mnuView: TMenuItem
      Caption = 'View'
      object mnuShowStatistics: TMenuItem
        Caption = 'Show section statistics'
        ShortCut = 118
        OnClick = mnuShowStatisticsClick
      end
    end
    object mnuGraphs: TMenuItem
      Caption = 'Graphs'
      object mnuAddTimeseriesGraph: TMenuItem
        Caption = 'Add timeseries to graph'
        ShortCut = 16455
        OnClick = mnuAddTimeseriesGraphClick
      end
      object mnuRemoveTimeseriesFromGraph: TMenuItem
        Caption = 'Remove timeseries from graph'
        OnClick = mnuRemoveTimeseriesFromGraphClick
      end
      object mnuClearGraph: TMenuItem
        Caption = 'Clear graph'
        OnClick = mnuClearGraphClick
      end
    end
    object mnuTools: TMenuItem
      Caption = 'Tools'
      object mnuStatistics: TMenuItem
        Caption = 'Pythia - Timeseries statistics'
        OnClick = mnuStatisticsClick
      end
      object mnuRowStatistics: TMenuItem
        Caption = 'Pythia - Statistics on selected date'
        OnClick = mnuRowStatisticsClick
      end
    end
  end
  object OpenDialog: TOpenDialog
    Title = 'Open multi timeseries'
    Left = 416
    Top = 40
  end
  object SaveDialog: TSaveDialog
    Title = 'Write multitimeseries'
    Left = 448
    Top = 40
  end
  object TimeSeriesGraphForm: TTimeSeriesGraphForm
    AllowDifferentUnits = True
    Left = 480
    Top = 40
  end
  object StatisticsForm: TStatisticsForm
    Left = 512
    Top = 40
  end
  object ImageList: TImageList
    Left = 320
    Top = 72
    Bitmap = {
      494C010107000900040010001000FFFFFFFFFF10FFFFFFFFFFFFFFFF424D3600
      0000000000003600000028000000400000002000000001002000000000000020
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000008342230083422300834223008342230083422300834223000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000008543220085432200854322008543220085432200854322000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000C0600000C0600000C060
      0000C0600000C0600000C0600000C0600000C0600000C0600000C0600000C060
      0000C0600000C0600000C0600000C06000000000000000000000000000008342
      230083422300C9650000C9650000C9650000C9650000C9650000C96500008342
      2300834223000000000000000000000000000000000000000000000000008543
      220085432200C9660100C9660100C9660100C9660100C9660100C96601008543
      2200854322000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000C0600000FFFFFF000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000F0CAA600C060000000000000000000009D4F1700C361
      0300C9650000C9650000C9650000C9650000C9650000C9650000C9650000C965
      0000C663010083422300000000000000000000000000000000009A4E1800C662
      0100C9650000C9650000C9650000C9650000C9650000C9660100C9660100C966
      0100C76301008543220000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000C0600000FFFFFF000000
      0000A4A0A000A4A0A000A4A0A00000000000FFFFFF00FFFFFF0000000000FFFF
      FF00FFFFFF0000000000F0CAA600C060000000000000994D1900C3610300C964
      0000C6630100C6630100C6630100C6630100C9640000C9640000C9650000C965
      0000C9650000C66301008342230000000000000000009A4E1800C6620100C763
      0100C6620100C6620100C6620100C6620100C7630100C9640100C9660100C966
      0100C9660100C763010085432200000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000C0600000FFFFFF000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000F0CAA600C060000000000000BE5F0600C6630100C361
      0300C3610300BE5F0600D2883E00D8945100DB9B5C00D58E4700CC782300C965
      0000C9650000C9650000834223000000000000000000BD5F0800C6620100C360
      0200C3600200CB741D00D58D4500DB9B5A00DB9B5A00D2863A00C9640100C966
      0100C9660100C966010085432200000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000C0600000FFFFFF000000
      0000A4A0A000A4A0A000A4A0A00000000000FFFFFF00F0CAA60000000000F0CA
      A600F0CAA60000000000F0CAA600C0600000A8551200C7680800C7680800C768
      0800C7660600C3610300EAC49E00FBF7F400FBF7F400FBF7F400FBF7F400DB9B
      5C00C9650000C9650000C965000083422300A7541200C9680600C9680600C968
      0600DB9B5A00FBFAF900FBFAF900FBFAF900FBFAF900E9C39B00C6620100C964
      0100C9660100C9660100C9660100854322000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000C0600000FFFFFF000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000F0CAA600C0600000AB571100C96E1400C9711800C971
      1800C9711800C9711800C9711800C9711800C9711800CA741D00E6B98B00FBF7
      F400C9650000C9650000C965000083422300AC571100CB701500CB701500CB74
      1D00FBFAF900E9C09600CE7B2800CB741D00CB701500BD5F0800C3600200C763
      0100C9650000C9660100C9660100854322000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000C0600000FFFFFF000000
      0000A4A0A000A4A0A000A4A0A00000000000FFFFFF00FFFFFF0000000000FFFF
      FF00F0CAA60000000000F0CAA600C0600000AB571100D0823300CE7D2C00CE7D
      2C00CE7D2C00CE7D2C00EDCDAC00C9711800C76A0C00BE5F0600C96E1400FBF7
      F400C9650000C9650000C965000083422300AC571100D0813100D0813100CE7B
      2800FBFAF900D2863A00CE7B2800CB701500C9680600E9C39B00C15F0400C662
      0100C9650000C9660100C9660100854322000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000C0600000FFFFFF000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000F0CAA600C0600000AE5A1200DC9E6000D8945100D288
      3E00D58E4700EFD0B100FBF7F400CE7D2C00C9711800C7680800DB9B5C00FBF7
      F400C9650000C9650000C965000083422300AC571100DEA26500D9965200D58D
      4500FBFAF900E5B58300D2863A00CE7B2800CB701500FBFAF900E9C09600C360
      0200C9650000C9660100C9660100854322000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000C0600000FFFFFF000000
      0000A4A0A000A4A0A000A4A0A00000000000A4A0A000A4A0A00000000000A4A0
      A000A4A0A00000000000F0CAA600C0600000AB571100E5B58400E3AE7900D894
      5100F4DFC900FBF7F400FBF7F400F8EDE200F5E2CF00F4DFC900FBF7F400E6B9
      8B00C9650000C9650000C965000083422300AC571100E5B58300E4B17D00D996
      5200F1D5B900FBFAF900F6E5D300F6E5D300F7EADD00FBFAF900FBFAF900EECF
      AF00C9650000C9660100C9660100854322000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000C0600000FFFFFF000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000F0FBFF00C0600000A8551200E5B58400F0D3B500E3AE
      7900F5E2CF00FBF7F400FBF7F400F5E2CF00EDCDAC00EBC7A200DC9E6000C663
      0100C9650000C9650000C965000083422300AC571100E4B17D00F1D5B900E4B1
      7D00E0A76D00E9C39B00F1D5B900EECFAF00F4DFC900FBFAF900FBFAF900ECCA
      A700C9650000C9660100C9660100854322000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000C0600000FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00C060000000000000AE5A1200F2DAC200F2DA
      C200E7BB8E00F1D6BB00FBF7F400D58E4700D0823300CC782300C96E1400C865
      0400C9650000C9650000834223000000000000000000B25B1000F2D9C000F2D9
      C000E7B98A00E0A76D00DB9B5A00D58D4500D0813100FBFAF900E8BC8F00CA66
      0200C9650000C966010085432200000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000C0600000C0600000C060
      0000C0600000C0600000C0600000C0600000C0600000C0600000C0600000C060
      0000C0600000C0600000C0600000C060000000000000A8551200E5B58400F6E5
      D400F4DFC900E7BB8E00EFD0B100D58E4700D0823300CC782300C9711800C768
      0800C9650000C6630100834223000000000000000000AC571100E5B58300F6E5
      D300F4DFC900E7B98A00DC9E5F00D58D4500D0813100E8BC8F00CB741D00C968
      0600C9660100C763010085432200000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000C0600000C060
      0000C0600000C0600000C0600000C0600000C0600000C0600000C0600000C060
      0000C0600000C0600000C0600000000000000000000000000000AB571100E6B9
      8B00F4DFC900F6E5D400EFD0B100E6B98B00DFA66D00DC9E6000D58E4700C96E
      1400C66301008E481E0000000000000000000000000000000000AC571100E7B9
      8A00F4DFC900F6E5D300EECFAF00E7B98A00E2AD7700DC9E5F00D58D4500CB70
      1500C76301008E471E0000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000AB57
      1100B25C1100E7BB8E00ECC9A700ECC9A700E7BB8E00DC9E6000CE7D2C00B25C
      11008A462000000000000000000000000000000000000000000000000000AC57
      1100B25B1000E8BC8F00ECCAA700ECCAA700E8BC8F00DEA26500CE7B2800B25B
      1000884421000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000AE5A1200B25C1100B25C1100B25C1100AE5A12009D4F17000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000AC571100B25B1000B25B1000B25B1000B25B10009A4E18000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000A5787300A5787300A5787300A5787300A5787300A5787300A578
      7300A5787300A57873008C5D5C00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000001EA1CD002CAAD3001585B000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000A97B7500FCE3CA00FDE1C500FDDFC100FCDAB900FCDAB900F9D4
      B000F9D4B000F5CCA6008C5D5C00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000009E522C00954A2900934927009349
      2700934927009349270093492700934927009349270093492700934927009349
      27009349270093492700974C2A009E522C0000000000000000000000000027A5
      CF0023A4CE001585B0001E98C2002CABD3002CABD300178AB5001587B1002CAB
      D30029A7D1000000000000000000000000000000000000000000000000000000
      000000000000AD7E7500FAE6D400E5A55600E5A55600E5A55600E5A55600E5A5
      5600E5A55600F9D4B0008C5D5C00000000000000000000000000000000000000
      0000000000000000000000000000C0C0C000C0C0C000C0C0C000C0C0C000C0C0
      C000C0C0C000C0C0C000000000000000000085422200FEF6EE00FDF3E7008886
      8400FDECD900FEE9D30088868400FEE5CA00FEE5CA0088868400FDE2C400FDE2
      C40088868400FDE2C400FDE2C4009048260000000000000000000000000027A5
      CF002CABD3002CABD3001DA0CC0020D0F8004AD7F70027A5CF005EC1DC0064C1
      DA0027A5CF000000000000000000000000000000000000000000000000000000
      000000000000B5867A00FBEEE200F9E9D900FBE4CF00FCE3CA00FDE1C500FCDD
      BD00FCDAB900F9D4B0008C5D5C000000000000000000000000004FC2F2004FC2
      F2004FC2F2004FC2F20000000000C0C0C0000000000000000000000000000000
      000000000000C0C0C000000000000000000085422200FDF1E400888684008886
      8400888684008886840088868400888684008886840088868400888684008886
      84008886840088868400888684008E47230000000000178CB6001E98C2004FC2
      E1007FDFF5004FC2E1003ACBEF001DD1FA003CD5F8005DD9F60074C1D600AEE2
      ED0091E3F500178AB5000000000000000000A5787300A5787300A5787300A578
      7300A5787300BA8C7D00FBF1E700E5A55600E5A55600E5A55600E5A55600E5A5
      5600E5A55600FCDAB9008C5D5C0000000000000000000000000050C3F40050C3
      F40050C3F40050C3F40000000000C0C0C000C0C0C000C0C0C000C0C0C000C0C0
      C000C0C0C000C0C0C0000000000000000000854222008886840088868400FEF5
      EA00FEF6EE00FEF6EE00FDEFDE00FDEFDE00FDEFDE00FEE9D3001A4AAE00FDE3
      C600FDE4C800FDE2C4001A4AAE008E472300000000005EC1DC002CABD3004FC2
      E10096E4F5008BE2F5005DD9F60027D0F7001DD1FA0056D9F70076DEF5007FDF
      F5003ACBEF002CABD30027A5CF0000000000A97B7500FCE3CA00FDE1C500FDDF
      C100FCDAB900BD918400FDF5ED00FBF1E700FBEEE200F9E9D900FAE6D400FCE3
      CA00FDE1C500FDDFC1008C5D5C0000000000000000000000000053C6F60053C6
      F60053C6F60053C6F60000000000C0C0C000000000000000000000000000C0C0
      C0000000000000000000000000000000000085422200FEF6EE00888684001E80
      1B00FEF6EE00FEF6EE00FDEFDE00FDEFDE00FDEFDE001A4AAE00FDE3C6001A4A
      AE00FDE4C8001A4AAE00FDE2C4008E472300000000001B91BC0023A4CE004FC2
      E1007FDFF50091E3F50070DCF5005EC1DC004FC2E1002DCFF4001DD1FA001DD1
      FA001DD1FA0020D0F8002CABD30000000000AD7E7500FAE6D400E5A55600E5A5
      5600E5A55600BD918400FEF9F300E5A55600E5A55600E5A55600E5A55600E5A5
      5600E5A55600FCE3CA008C5D5C0000000000000000000000000056C9F70056C9
      F70056C9F70056C9F70000000000C0C0C000C0C0C000C0C0C000C0C0C000C0C0
      C00000000000FFFFFF000000000000000000854222008886840088868400FEF6
      EE001E801B001E801B00FDEFDE00FDEFDE001A4AAE00FEE9D300FDE3C600FDE3
      C6001A4AAE00FDE2C400FDE2C4008E472300000000001A8FBA002CABD30045C7
      E9006BDBF60089BECD00979696009796960097969600979696004FC2E1001DD1
      FA001DD1FA001DD1FA001D9EC90000000000B5867A00FBEEE200F9E9D900FBE4
      CF00FCE3CA00DEAB8400FEFBF900FEF9F500FDF7F000FCF4EA00FBF1E700FBEE
      E200F9E9D900FAE5D1008C5D5C000000000000000000000000005ECFF8005ECF
      F8005ECFF8005ECFF80000000000C0C0C000C0C0C000C0C0C000C0C0C000C0C0
      C0000000000000000000000000000000000085422200FEF6EE0088868400FEF6
      EE00FEF6EE00FEF6EE001E801B001A4AAE00FDEFDE00FEE9D300FDE3C600FDE3
      C600FDE4C800FDE2C400FDE2C4008E472300000000001B91BC002CABD3002CAB
      D3005DD9F60097969600E2DFE300B0B4B700ACA3A200BEB2B2009796960056D9
      F7009DE3F200AEE2ED001E98C20000000000BA8C7D00FBF1E700E5A55600E5A5
      5600E5A55600DEAB8400FEFBF900FEFBF900FEF9F500FEF9F300FDF5ED00F9E9
      D900ECC5A200BD9184008C5D5C000000000000000000000000006CDBFA0066D6
      F90066D6F90066D6F90000000000000000000000000000000000000000000000
      000000000000000000000000000000000000854222008886840088868400854B
      4600FEF6EE00854B46001A4AAE00854B46001E801B001E801B00FEE7CE00FEE5
      CA00FDE4C800FDE2C400FDE2C4008E47230000000000178CB6001EA1CD002CAB
      D30045C7E90097969600E2DFE300B0B4B700ACA3A200BEB2B200979696007FDF
      F500AEE2ED0089BECD0027A5CF0000000000BD918400FDF5ED00FBF1E700FBEE
      E200F9E9D900E2B18A00FEFBF900FEFBF900FEFBF900FEFBF800FEF9F300B281
      7600B2817600B2817600B07F750000000000000000000000000075E3FB006BD9
      F9006BD9F9006BD9F90067D6F90067D6F90067D6F90067D6F90067D6F90067D6
      F9000000000000000000000000000000000085422200FEF6EE0088868400FEF6
      EE00854B46001A4AAE00FDEFDE00FDEFDE00854B4600FDECD9001E801B001E80
      1B00FDE4C800FDE2C400FDE2C4008E47230000000000000000001585B00021A3
      CE003ACBEF0097969600E2DFE300B0B4B700ACA3A200BEB2B2009796960067DA
      F60064C1DA001585B0000000000000000000BD918400FEF9F300E5A55600E5A5
      5600E5A55600E5B68E00FEFBF900FEFBF900FEFBF900FEFBF900FEFBF800B281
      7600E5AE7000E4A353000000000000000000000000000000000080E1F9008080
      80000000000000000000000000000000000000000000000000008080800067D6
      F90000000000000000000000000000000000854223008886840088868400FEF6
      EE001A4AAE00FEF5EA00FDEFDE00FDEFDE00FDEFDE00854B4600FDECD900FEE9
      D3001E801B00FDE3C600FDE2C400954A29000000000000000000000000001589
      B4001A8FBA0097969600E2DFE300B0B4B700ACA3A200BEB2B200979696001E98
      C2001B91BC00000000000000000000000000DEAB8400FEFBF900FEF9F500FDF7
      F000FCF4EA00E5B68E00DEAB8400DEAB8400DEAB8400DEAB8400DEAB8400B281
      7600E8AB5E00000000000000000000000000000000000000000080E1F9008080
      8000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C0008080800067D6
      F90000000000000000000000000000000000BA6A3200D6A26200D5A36400D5A3
      6400D5A36400D5A36400D5A36400D5A36400D5A36400D5A36400D5A46600D6A2
      6200D5A46600D5A46600CCA06200BE6D34000000000000000000000000000000
      00000000000097969600E2DFE300BAAFAE00AAA1A100BEB2B200979696000000
      000000000000000000000000000000000000DEAB8400FEFBF900FEFBF900FEF9
      F500FEF9F300FDF5ED00F9E9D900ECC5A200BD9184008C5D5C00000000000000
      000000000000000000000000000000000000000000000000000080E1F90080E1
      F90000000000FFFFFF000000000000000000FFFFFF000000000067D6F90067D6
      F90000000000000000000000000000000000AC5C2C00D47F2F00D47F2F00D47F
      2F00D47F2F00D47F2F00D47F2F00D47F2F00D47F2F00D47F2F00D5A46600D47F
      2F00D5A46600B29956005377D500AF5E2D000000000000000000000000000000
      00000000000097969600B0B4B700A6A0A00098969600A8A0A000979696000000
      000000000000000000000000000000000000E2B18A00FEFBF900FEFBF900FEFB
      F900FEFBF800FEF9F300B2817600B2817600B2817600B07F7500000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000FFFFFF00FFFFFF000000000000000000000000000000
      00000000000000000000000000000000000000000000A95A2C00A95A2C00A95A
      2C00A95A2C00A95A2C00A95A2C00A95A2C00A95A2C00A95A2C00AF5E2D00A95A
      2C00B1612E00A2552C009E522C00000000000000000000000000000000000000
      00000000000097969600E0E0E300BEB2B200A6A0A000B0A5A400979696000000
      000000000000000000000000000000000000E5B68E00FEFBF900FEFBF900FEFB
      F900FEFBF900FEFBF800B2817600E5AE7000E4A3530000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000097969600E2DFE300E2DFE300B9B3B400A39E9E00979696000000
      000000000000000000000000000000000000E5B68E00DEAB8400DEAB8400DEAB
      8400DEAB8400DEAB8400B2817600E8AB5E000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000097969600979696009796960097969600000000000000
      000000000000000000000000000000000000424D3E000000000000003E000000
      2800000040000000200000000100010000000000000100000000000000000000
      000000000000000000000000FFFFFF00FFFFF81FF81F00008000E007E0070000
      8000C003C0030000800080018001000080008001800100008000000000000000
      8000000000000000800000000000000080000000000000008000000000000000
      800000000000000080008001800100008000800180010000C001C003C0030000
      FFFFE007E0070000FFFFF81FF81F0000F801FFFFFFFFFE3FF801FC010000E007
      F801C0010000E007F80180010000800300018001000080010001800100008001
      000180010000800100018003000080010001800300008001000180070000C003
      000380070000E007000780070000F81F003F80070000F81F003FC00F8001F81F
      007FF87FFFFFF81F00FFFFFFFFFFFC3F00000000000000000000000000000000
      000000000000}
  end
  object TimeseriesPropertiesDialog: TTimeseriesPropertiesDialog
    TimeStep = 4
    StrictTimeStep = True
    HydrologicalYear = True
    DateOffsetUnspecified = True
    VariableType = 1
    Title = 'Set title...'
    MUnit = 'mm'
    Precision = 2
    Left = 352
    Top = 72
  end
end
