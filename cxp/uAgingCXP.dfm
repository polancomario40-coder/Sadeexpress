inherited fAgingCXP: TfAgingCXP
  Left = 457
  Top = 399
  Width = 857
  Height = 580
  Anchors = [akTop, akRight]
  BorderIcons = [biSystemMenu, biMaximize]
  BorderStyle = bsSizeable
  Caption = 'Repore de antiguedad de saldos'
  OldCreateOrder = True
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel [0]
    Left = 46
    Top = 48
    Width = 31
    Height = 13
    Caption = 'Corte:'
  end
  inherited Gradient1: TGradient
    Width = 849
    ColorEnd = 4227327
    Reverse = True
  end
  inherited Gradient2: TGradient
    Width = 849
  end
  object Label2: TLabel [3]
    Left = 486
    Top = 2
    Width = 341
    Height = 23
    Anchors = [akTop, akRight]
    Caption = 'Antiguedad de saldos de Suplidores'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWhite
    Font.Height = -19
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
    Transparent = True
  end
  object Label3: TLabel [4]
    Left = 36
    Top = 78
    Width = 42
    Height = 13
    Caption = 'Suplidor:'
  end
  object cxGrid1: TcxGrid [5]
    Left = 6
    Top = 106
    Width = 840
    Height = 436
    Anchors = [akLeft, akTop, akRight, akBottom]
    TabOrder = 5
    LookAndFeel.NativeStyle = True
    object tvDocumentos: TcxGridDBTableView
      DataController.DataSource = ds
      DataController.DetailKeyFieldNames = 'idSuplidor;Moneda'
      DataController.KeyFieldNames = 'idSuplidor;Moneda'
      DataController.MasterKeyFieldNames = 'idSuplidor;Moneda'
      DataController.Summary.DefaultGroupSummaryItems = <>
      DataController.Summary.FooterSummaryItems = <>
      DataController.Summary.SummaryGroups = <>
      NavigatorButtons.ConfirmDelete = False
      OptionsBehavior.ImmediateEditor = False
      OptionsBehavior.IncSearch = True
      OptionsData.Deleting = False
      OptionsData.DeletingConfirmation = False
      OptionsData.Editing = False
      OptionsData.Inserting = False
      OptionsSelection.CellSelect = False
      OptionsView.CellAutoHeight = True
      OptionsView.ColumnAutoWidth = True
      OptionsView.HeaderAutoHeight = True
      object tvDocumentosDBColumn1: TcxGridDBColumn
        DataBinding.FieldName = 'Nombre'
        Options.Editing = False
        Width = 156
      end
      object tvDocumentosDBColumn2: TcxGridDBColumn
        DataBinding.FieldName = 'Moneda'
        Options.Editing = False
        Width = 63
      end
      object tvDocumentosFactura: TcxGridDBColumn
        DataBinding.FieldName = 'Factura'
        Options.Editing = False
        Options.Filtering = False
        Options.Moving = False
        Width = 71
      end
      object tvDocumentosFecha: TcxGridDBColumn
        DataBinding.FieldName = 'Fecha'
        Options.Editing = False
        Options.Filtering = False
        Options.Moving = False
        Width = 76
      end
      object tvDocumentosDBColumn3: TcxGridDBColumn
        DataBinding.FieldName = 'Vencimiento'
        Options.Editing = False
        Options.Filtering = False
        Options.Moving = False
        Width = 72
      end
      object tvDocumentosDias: TcxGridDBColumn
        DataBinding.FieldName = 'Dias'
        Options.Editing = False
        Options.Filtering = False
        Options.Moving = False
        Width = 40
      end
      object tvDocumentosNoVenc: TcxGridDBColumn
        Caption = 'No vencido'
        DataBinding.FieldName = 'NoVenc'
        Options.Editing = False
        Options.Filtering = False
        Options.Moving = False
        Width = 67
      end
      object tvDocumentosA30: TcxGridDBColumn
        Caption = 'A 30 dias'
        DataBinding.FieldName = 'A30'
        Options.Editing = False
        Options.Filtering = False
        Options.Moving = False
        Width = 69
      end
      object tvDocumentosA60: TcxGridDBColumn
        Caption = 'A 60 dias'
        DataBinding.FieldName = 'A60'
        Options.Editing = False
        Options.Filtering = False
        Options.Moving = False
        Width = 67
      end
      object tvDocumentosA90: TcxGridDBColumn
        Caption = 'A 90 dias'
        DataBinding.FieldName = 'A90'
        Options.Editing = False
        Options.Filtering = False
        Options.Moving = False
        Width = 68
      end
      object tvDocumentosPagado: TcxGridDBColumn
        DataBinding.FieldName = 'Pagado'
        Options.Editing = False
        Options.Filtering = False
        Options.Moving = False
        Width = 69
      end
    end
    object cxGrid1Level1: TcxGridLevel
      GridView = tvDocumentos
    end
  end
  object deCorte: TcxDateEdit [6]
    Left = 82
    Top = 44
    Width = 121
    Height = 21
    Properties.SaveTime = False
    Properties.ShowTime = False
    Style.LookAndFeel.NativeStyle = True
    TabOrder = 0
  end
  object cxButton1: TcxButton [7]
    Left = 601
    Top = 46
    Width = 84
    Height = 47
    Caption = 'Mostrar'
    TabOrder = 4
    OnClick = cxButton1Click
    Glyph.Data = {
      36030000424D3603000000000000360000002800000010000000100000000100
      18000000000000030000120B0000120B00000000000000000000FF00FFFF00FF
      A46769A46769A46769A46769A46769A46769A46769A46769A46769A46769A467
      69A46769A46769FF00FFFF00FFFF00FF485360FEE9C7F4DAB5F3D5AAF2D0A0EF
      CB96EFC68BEDC182EBC17FEBC180EBC180F2C782A46769FF00FFFF00FF4380B7
      1F6FC2656B86F3DABCF2D5B1F0D0A7EECB9EEDC793EDC28BE9BD81E9BD7FE9BD
      7FEFC481A46769FF00FFFF00FFFF00FF32A3FF1672D76B6A80F2DABCF2D5B2EF
      D0A9EECB9EEDC796EBC28CE9BD82E9BD7FEFC481A46769FF00FFFF00FFFF00FF
      A0675B34A1FF1572D45E6782F3DABBF2D5B1F0D0A6EECB9EEDC795EBC28AEABF
      81EFC480A46769FF00FFFF00FFFF00FFA7756BFFFBF033A6FF4078AD8E675EAC
      7F7597645EAC7D6FCAA083EDC695EBC28AEFC583A46769FF00FFFF00FFFF00FF
      A7756BFFFFFCFAF0E6AD8A88B78F84D8BAA5EED5B6D7B298B58877CBA083EBC7
      93F2C98CA46769FF00FFFF00FFFF00FFBC8268FFFFFFFEF7F2AF847FDAC0B4F7
      E3CFF6E0C5FFFFF4D7B198AC7D6FEECC9EF3CE97A46769FF00FFFF00FFFF00FF
      BC8268FFFFFFFFFEFC976560F6E9E0F7EADAF6E3CFFFFFEBEFD4B797645EF0D0
      A6F6D3A0A46769FF00FFFF00FFFF00FFD1926DFFFFFFFFFFFFB08884DECAC4FA
      EFE5F8EAD9FFFFD4D9B8A5AC7F74F4D8B1EBCFA4A46769FF00FFFF00FFFF00FF
      D1926DFFFFFFFFFFFFD5BFBCBA9793DECAC4F6E9DEDAC0B4B78F84B28C7BDECE
      B4B6AA93A46769FF00FFFF00FFFF00FFDA9D75FFFFFFFFFFFFFFFFFFD5BFBCB0
      8884976560AF867FCAA79DA56B5FA56B5FA56B5FA46769FF00FFFF00FFFF00FF
      DA9D75FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEFBFFFEF7DAC1BAA56B5FE19E
      55E68F31B56D4DFF00FFFF00FFFF00FFE7AB79FFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFDCC7C5A56B5FF8B55CBF7A5CFF00FFFF00FFFF00FFFF00FF
      E7AB79FBF4F0FBF4EFFAF3EFFAF3EFF8F2EFF7F2EFF7F2EFD8C2C0A56B5FC183
      6CFF00FFFF00FFFF00FFFF00FFFF00FFE7AB79D1926DD1926DD1926DD1926DD1
      926DD1926DD1926DD1926DA56B5FFF00FFFF00FFFF00FFFF00FF}
    LookAndFeel.NativeStyle = True
  end
  object fr: TcxRadioGroup [8]
    Left = 226
    Top = 38
    Width = 247
    Height = 63
    Caption = 'Formatos de Reporte'
    ItemIndex = 0
    ParentFont = False
    Properties.Columns = 2
    Properties.Items = <
      item
        Caption = 'Con Credito por Dist'
      end
      item
        Caption = 'Sin Credito por Dist'
      end
      item
        Caption = 'Resumido por Suplidor'
      end
      item
        Caption = 'Con NCF'
      end
      item
        Caption = 'Estado Suplidor Unico'
      end>
    Style.Font.Charset = DEFAULT_CHARSET
    Style.Font.Color = clWindowText
    Style.Font.Height = -9
    Style.Font.Name = 'Tahoma'
    Style.Font.Style = []
    Style.LookAndFeel.NativeStyle = True
    TabOrder = 2
  end
  object fv: TcxCheckBox [9]
    Left = 493
    Top = 62
    Width = 99
    Height = 21
    Caption = 'Por Vencimiento'
    Style.LookAndFeel.NativeStyle = True
    TabOrder = 3
  end
  object idEnt: TcxButtonEdit [10]
    Left = 83
    Top = 74
    Width = 121
    Height = 21
    Properties.Buttons = <
      item
        Default = True
        Kind = bkEllipsis
      end>
    Properties.OnButtonClick = cxButtonEdit1PropertiesButtonClick
    Style.LookAndFeel.Kind = lfUltraFlat
    Style.LookAndFeel.NativeStyle = True
    TabOrder = 1
  end
  object cxButton2: TcxButton [11]
    Left = 690
    Top = 46
    Width = 84
    Height = 47
    Caption = 'Imprimir'
    TabOrder = 6
    OnClick = cxButton2Click
    Glyph.Data = {
      36040000424D3604000000000000360000002800000010000000100000000100
      2000000000000004000000000000000000000000000000000000FF00FF00FF00
      FF00FF00FF00FF00FF006B6B6B006B6B6B00FF00FF00FF00FF006B6B6B006B6B
      6B00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
      FF00FF00FF006B6B6B00ADA5A500A59C9C006B6B6B006B6B6B006B6B6B00E7E7
      E7006B6B6B006B6B6B006B6B6B00FF00FF00FF00FF00FF00FF00FF00FF00FF00
      FF006B6B6B00DEDEDE00A59C9C00A59C9C00A59C9C0031313100313131006B6B
      6B00BDBDBD00E7E7E700B5B5B5006B6B6B006B6B6B006B6B6B00FF00FF006B6B
      6B00D6D6D600CECECE008C8C8C008C8C8C008C8C8C0039393900080808000000
      000008080800000000007B7B7B00BDBDBD006B6B6B00FF00FF006B6B6B00CECE
      CE00CECECE008C8C8C00D6D6D600CECECE00BDBDBD00B5ADAD00A5A5A5008C84
      84005A5A5A000000000008080800080808006B6B6B00737373006B6B6B00CECE
      CE008C8C8C00EFEFEF00FFFFFF00FFFFFF00E7E7E700DEDEDE00DEDEDE00CECE
      CE00BDBDBD00ADADAD008C8C8C005A5252007B7B7B00737373006B6B6B008C8C
      8C00FFFFFF00FFFFFF00FFFFFF00D6D6D6009C949400A59C9C00B5ADAD00C6C6
      C600D6D6D600DEDEDE00C6C6C600B5B5B500948C8C006B6B6B00FF00FF006B6B
      6B006B6B6B00EFEFEF00B5A5A5007B6B73008C848C0094949400949494009C94
      9C009C9494009C9C9C00BDBDBD00D6D6D600C6C6C6006B6B6B00FF00FF00FF00
      FF00FF00FF006B6B6B00BD8C7B00A5846B008C6B63007B6363006B6363007B73
      7B008C8C8C00ADA5A500CECECE00C6C6C6006B6B6B00FF00FF00FF00FF00FF00
      FF00FF00FF00FF00FF00BD848400FFE7B500FFD69C00EFB58400CE9C7300BD94
      6B00BD848400847B7B006B6B6B006B6B6B00FF00FF00FF00FF00FF00FF00FF00
      FF00FF00FF00FF00FF00BD848400FFE7BD00FFD6A500FFD69C00FFCE9400FFC6
      8C00BD848400FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
      FF00FF00FF00C6848400FFE7CE00FFE7C600FFDEB500FFD6A500FFD69C00BD84
      8400FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
      FF00FF00FF00BD848400FFEFDE00FFE7CE00FFDEBD00FFDEB500FFD6A500BD84
      8400FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
      FF00BD848400FFFFF700FFFFF700FFEFDE00FFE7CE00FFE7BD00F7C6A500BD84
      8400FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
      FF00BD848400BD848400BD848400FFEFE700FFE7CE00FFDEC600BD848400FF00
      FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
      FF00FF00FF00FF00FF00FF00FF00BD848400BD848400BD848400FF00FF00FF00
      FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00}
    LookAndFeel.NativeStyle = True
  end
  object cxButton3: TcxButton [12]
    Left = 779
    Top = 46
    Width = 65
    Height = 47
    Caption = 'Salir'
    TabOrder = 7
    OnClick = cxButton3Click
    Glyph.Data = {
      36040000424D3604000000000000360000002800000010000000100000000100
      2000000000000004000000000000000000000000000000000000FF00FF009CA5
      9400949CAD00737B9400737B9C00737B9C00737B9C00737B9C00737B9C00737B
      9C00737B9C00737B9C00737B9C00737B9C00ADADB500847B7B00ADB5A5009CA5
      D6001831C6000029B5000831BD001031BD000831BD000829BD000029BD000029
      C6000029C6000029C6000021C6000018BD004252C600ADADB500BDB5A5003952
      C6000831DE00214ADE003152DE00294ADE00214ADE00315AE7003963E7002152
      E7000839E7000842E7000039E7000031DE000018BD00737B9C00BDB5A500425A
      CE001842E700315AE7003152E7004A6BE700BDC6F700D6DEFF00D6DEFF00CEDE
      FF008CA5F700104AEF000042EF000039E7000021C600737B9C00BDB5A5004263
      CE00214AE700395AE700637BEF00EFEFFF00B5C6F7005273EF002152E7005A84
      EF00CEDEFF00BDCEFF000842EF000039E7000029C600737B9C00BDB5A5004A63
      CE002952EF004A63E700D6DEFF00A5B5F700315AE7005273EF008CA5F7001852
      E7002152EF00CEDEFF0084A5F7000039E7000029C600737B9C00B5B5A500526B
      CE003152EF007B94EF00DEE7FF004A6BE7004263E7006384EF00CED6FF00295A
      E700104AE700527BEF00CEDEFF00184AE7000029C600737B9C00B5B5A500526B
      CE00395AEF0094ADF700C6CEF700395AE7004263E700637BEF00C6CEF7002952
      E7002152E700184AE700D6DEFF00315AE7000829C6007B7B9C00B5B5A5005A73
      CE004263EF0094A5EF00CED6FF004A63E7004263E700637BEF00C6CEF7002952
      E700184AE700315AE700D6DEFF00315AE7000831C6007B849C00B5B5A5005A73
      CE005273EF007384EF00EFEFFF007B94EF003152E700637BE700BDC6F700214A
      E7001039DE009CB5F700B5C6F700184ADE001039C6007B849C00B5B5A5006373
      CE00637BF7006384EF009CADF700F7F7FF007B8CEF00395AE7002142DE003152
      E7008CA5EF00E7E7FF003963E700214ADE001839C6007B849C00B5ADA500637B
      CE00738CF7007B94EF006384EF009CADF700EFEFFF00CED6F700B5C6F700CED6
      FF00D6DEFF005273E700294AE7003152DE001839C6007B7B9C00B5ADA5006B7B
      CE008CA5F7009CADF7007B94EF006384EF00738CEF0094ADEF00A5B5F7008C9C
      EF005273E7004263E7004263E7003152E7000831BD00737B9C00ADB59C008C9C
      DE007B94FF00849CF7006B8CF700637BF7005A73EF004A6BEF004A6BEF004A6B
      EF00426BEF004263EF00315AEF001842E7001842CE009494AD00A56BA500ADBD
      AD008C9CDE00637BCE006373CE006373CE005A73CE005A73CE005A73CE005A6B
      CE00526BCE00526BCE004A63CE00425AC6009CA5D6009CA59400EF63EF00A56B
      A500ADB59C00B5ADA500B5B5A500B5B5A500B5B5A500B5B5A500B5B5A500B5B5
      A500B5B5A500B5B5A500B5B5A500BDB5A500ADB5A500B539B500}
    LookAndFeel.NativeStyle = True
  end
  inherited ds: TDataSource
    DataSet = mAging
    Left = 452
    Top = 175
  end
  object rsAging: TADODataSet
    Connection = dm.Coneccion
    CursorType = ctStatic
    LockType = ltReadOnly
    CommandText = 'cxpAgingVencimiento;1'
    CommandType = cmdStoredProc
    Parameters = <
      item
        Name = '@RETURN_VALUE'
        DataType = ftInteger
        Direction = pdReturnValue
        Precision = 10
        Value = 0
      end
      item
        Name = '@final'
        Attributes = [paNullable]
        DataType = ftDateTime
        Value = Null
      end
      item
        Name = '@ident'
        Attributes = [paNullable]
        DataType = ftInteger
        Precision = 10
        Value = Null
      end
      item
        Name = '@persize'
        Attributes = [paNullable]
        DataType = ftInteger
        Precision = 10
        Value = Null
      end
      item
        Name = '@Vencimiento'
        Attributes = [paNullable]
        DataType = ftBoolean
        Value = Null
      end>
    Left = 352
    Top = 176
    object rsAgingNombre: TStringField
      FieldName = 'Nombre'
      Size = 100
    end
    object rsAgingidTrans: TIntegerField
      FieldName = 'idTrans'
    end
    object rsAgingIdDocumento: TIntegerField
      FieldName = 'IdDocumento'
    end
    object rsAgingDias: TIntegerField
      FieldName = 'Dias'
    end
    object rsAgingNoVenc: TBCDField
      FieldName = 'NoVenc'
      ReadOnly = True
      currency = True
      Precision = 32
      Size = 2
    end
    object rsAgingA30: TBCDField
      FieldName = 'A30'
      ReadOnly = True
      currency = True
      Precision = 32
      Size = 2
    end
    object rsAgingA60: TBCDField
      FieldName = 'A60'
      ReadOnly = True
      currency = True
      Precision = 32
      Size = 2
    end
    object rsAgingA90: TBCDField
      FieldName = 'A90'
      ReadOnly = True
      currency = True
      Precision = 32
      Size = 2
    end
    object rsAgingFactura: TStringField
      FieldName = 'Factura'
    end
    object rsAgingIDRow: TIntegerField
      FieldName = 'IDRow'
    end
    object rsAgingFecha: TDateTimeField
      FieldName = 'Fecha'
    end
    object rsAgingTotal: TBCDField
      FieldName = 'Total'
      currency = True
      Precision = 22
      Size = 2
    end
    object rsAgingPagado: TBCDField
      FieldName = 'Pagado'
      currency = True
      Precision = 32
      Size = 2
    end
    object rsAgingidMoneda: TIntegerField
      FieldName = 'idMoneda'
    end
    object rsAgingMoneda: TStringField
      FieldName = 'Moneda'
      Size = 30
    end
    object rsAgingCreditos: TBCDField
      FieldName = 'Creditos'
      Precision = 19
      Size = 2
    end
    object rsAgingidSuplidor: TIntegerField
      FieldName = 'idSuplidor'
    end
    object rsAgingBalance: TBCDField
      FieldName = 'Balance'
      ReadOnly = True
      Precision = 32
      Size = 2
    end
    object rsAgingBalanceXMoneda: TBCDField
      FieldName = 'BalanceXMoneda'
      Precision = 19
      Size = 2
    end
    object rsAgingTipoSuplidor: TStringField
      FieldName = 'TipoSuplidor'
      Size = 100
    end
    object rsAgingBalanceXTipo: TBCDField
      FieldName = 'BalanceXTipo'
      Precision = 19
      Size = 2
    end
    object rsAgingFechaEmision: TDateTimeField
      FieldName = 'FechaEmision'
    end
    object rsAgingVencimiento: TDateTimeField
      FieldName = 'Vencimiento'
    end
    object rsAgingCompFiscal: TStringField
      FieldName = 'CompFiscal'
      Size = 19
    end
  end
  object plReporte: TppBDEPipeline
    DataSource = ds
    UserName = 'plReporte'
    Left = 498
    Top = 174
    object plReporteppField1: TppField
      FieldAlias = 'Nombre'
      FieldName = 'Nombre'
      FieldLength = 100
      DisplayWidth = 100
      Position = 0
    end
    object plReporteppField2: TppField
      Alignment = taRightJustify
      FieldAlias = 'idMoneda'
      FieldName = 'idMoneda'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 1
    end
    object plReporteppField3: TppField
      FieldAlias = 'Moneda'
      FieldName = 'Moneda'
      FieldLength = 30
      DisplayWidth = 30
      Position = 2
    end
    object plReporteppField4: TppField
      Alignment = taRightJustify
      FieldAlias = 'idTrans'
      FieldName = 'idTrans'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 3
    end
    object plReporteppField5: TppField
      Alignment = taRightJustify
      FieldAlias = 'IdDocumento'
      FieldName = 'IdDocumento'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 4
    end
    object plReporteppField6: TppField
      Alignment = taRightJustify
      FieldAlias = 'Dias'
      FieldName = 'Dias'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 5
    end
    object plReporteppField7: TppField
      Alignment = taRightJustify
      FieldAlias = 'NoVenc'
      FieldName = 'NoVenc'
      FieldLength = 2
      DataType = dtDouble
      DisplayWidth = 33
      Position = 6
    end
    object plReporteppField8: TppField
      Alignment = taRightJustify
      FieldAlias = 'A30'
      FieldName = 'A30'
      FieldLength = 2
      DataType = dtDouble
      DisplayWidth = 33
      Position = 7
    end
    object plReporteppField9: TppField
      Alignment = taRightJustify
      FieldAlias = 'A60'
      FieldName = 'A60'
      FieldLength = 2
      DataType = dtDouble
      DisplayWidth = 33
      Position = 8
    end
    object plReporteppField10: TppField
      Alignment = taRightJustify
      FieldAlias = 'A90'
      FieldName = 'A90'
      FieldLength = 2
      DataType = dtDouble
      DisplayWidth = 33
      Position = 9
    end
    object plReporteppField11: TppField
      FieldAlias = 'Factura'
      FieldName = 'Factura'
      FieldLength = 20
      DisplayWidth = 20
      Position = 10
    end
    object plReporteppField12: TppField
      Alignment = taRightJustify
      FieldAlias = 'IDRow'
      FieldName = 'IDRow'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 11
    end
    object plReporteppField13: TppField
      FieldAlias = 'Fecha'
      FieldName = 'Fecha'
      FieldLength = 0
      DataType = dtDateTime
      DisplayWidth = 18
      Position = 12
    end
    object plReporteppField14: TppField
      Alignment = taRightJustify
      FieldAlias = 'Total'
      FieldName = 'Total'
      FieldLength = 2
      DataType = dtDouble
      DisplayWidth = 23
      Position = 13
    end
    object plReporteppField15: TppField
      Alignment = taRightJustify
      FieldAlias = 'Pagado'
      FieldName = 'Pagado'
      FieldLength = 2
      DataType = dtDouble
      DisplayWidth = 33
      Position = 14
    end
    object plReporteppField16: TppField
      Alignment = taRightJustify
      FieldAlias = 'Creditos'
      FieldName = 'Creditos'
      FieldLength = 2
      DataType = dtDouble
      DisplayWidth = 20
      Position = 15
    end
    object plReporteppField17: TppField
      Alignment = taRightJustify
      FieldAlias = 'idSuplidor'
      FieldName = 'idSuplidor'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 16
    end
    object plReporteppField18: TppField
      FieldAlias = 'Sel'
      FieldName = 'Sel'
      FieldLength = 0
      DataType = dtBoolean
      DisplayWidth = 5
      Position = 17
    end
    object plReporteppField19: TppField
      FieldAlias = 'Balance'
      FieldName = 'Balance'
      FieldLength = 0
      DataType = dtCurrency
      DisplayWidth = 10
      Position = 18
    end
    object plReporteppField20: TppField
      FieldAlias = 'BalanceXMoneda'
      FieldName = 'BalanceXMoneda'
      FieldLength = 0
      DataType = dtCurrency
      DisplayWidth = 10
      Position = 19
    end
    object plReporteppField21: TppField
      FieldAlias = 'TipoSuplidor'
      FieldName = 'TipoSuplidor'
      FieldLength = 100
      DisplayWidth = 100
      Position = 20
    end
    object plReporteppField22: TppField
      FieldAlias = 'BalanceXTipo'
      FieldName = 'BalanceXTipo'
      FieldLength = 0
      DataType = dtCurrency
      DisplayWidth = 10
      Position = 21
    end
    object plReporteppField23: TppField
      FieldAlias = 'Vencimiento'
      FieldName = 'Vencimiento'
      FieldLength = 0
      DataType = dtDateTime
      DisplayWidth = 18
      Position = 22
    end
    object plReporteppField24: TppField
      FieldAlias = 'FechaEmision'
      FieldName = 'FechaEmision'
      FieldLength = 0
      DataType = dtDateTime
      DisplayWidth = 18
      Position = 23
    end
    object plReporteppField25: TppField
      FieldAlias = 'CompFiscal'
      FieldName = 'CompFiscal'
      FieldLength = 19
      DisplayWidth = 19
      Position = 24
    end
  end
  object Estado: TppReport
    AutoStop = False
    DataPipeline = plReporte
    PassSetting = psTwoPass
    PrinterSetup.BinName = 'Default'
    PrinterSetup.DocumentName = 'Report'
    PrinterSetup.PaperName = 'Letter'
    PrinterSetup.PrinterName = 'Default'
    PrinterSetup.SaveDeviceSettings = False
    PrinterSetup.mmMarginBottom = 13970
    PrinterSetup.mmMarginLeft = 3810
    PrinterSetup.mmMarginRight = 3810
    PrinterSetup.mmMarginTop = 6350
    PrinterSetup.mmPaperHeight = 279401
    PrinterSetup.mmPaperWidth = 215900
    PrinterSetup.PaperSize = 1
    Template.FileName = 'C:\Reporte de Sols.rtm'
    AllowPrintToArchive = True
    AllowPrintToFile = True
    ArchiveFileName = '($MyDocuments)\ReportArchive.raf'
    DeviceType = 'Screen'
    DefaultFileDeviceType = 'PDF'
    EmailSettings.ReportFormat = 'PDF'
    LanguageID = 'Default'
    OpenFile = False
    OutlineSettings.CreateNode = True
    OutlineSettings.CreatePageNodes = True
    OutlineSettings.Enabled = False
    OutlineSettings.Visible = False
    ThumbnailSettings.Enabled = False
    ThumbnailSettings.Visible = False
    ThumbnailSettings.DeadSpace = 30
    PDFSettings.EmbedFontOptions = [efUseSubset]
    PDFSettings.EncryptSettings.AllowCopy = True
    PDFSettings.EncryptSettings.AllowInteract = True
    PDFSettings.EncryptSettings.AllowModify = True
    PDFSettings.EncryptSettings.AllowPrint = True
    PDFSettings.EncryptSettings.Enabled = False
    PDFSettings.EncryptSettings.KeyLength = kl40Bit
    PDFSettings.FontEncoding = feAnsi
    PDFSettings.ImageCompressionLevel = 25
    RTFSettings.DefaultFont.Charset = DEFAULT_CHARSET
    RTFSettings.DefaultFont.Color = clWindowText
    RTFSettings.DefaultFont.Height = -13
    RTFSettings.DefaultFont.Name = 'Arial'
    RTFSettings.DefaultFont.Style = []
    TextFileName = '($MyDocuments)\Report.pdf'
    TextSearchSettings.DefaultString = '<FindText>'
    TextSearchSettings.Enabled = False
    XLSSettings.AppName = 'ReportBuilder'
    XLSSettings.Author = 'ReportBuilder'
    XLSSettings.Subject = 'Report'
    XLSSettings.Title = 'Report'
    Left = 450
    Top = 252
    Version = '15.02'
    mmColumnWidth = 0
    DataPipelineName = 'plReporte'
    object ppTitleBand1: TppTitleBand
      Background.Brush.Style = bsClear
      mmBottomOffset = 0
      mmHeight = 2117
      mmPrintPosition = 0
    end
    object ppHeaderBand5: TppHeaderBand
      Background.Brush.Style = bsClear
      mmBottomOffset = 0
      mmHeight = 56356
      mmPrintPosition = 0
      object ppLine17: TppLine
        UserName = 'Line17'
        Pen.Width = 2
        Weight = 1.500000000000000000
        mmHeight = 529
        mmLeft = 0
        mmTop = 55827
        mmWidth = 207963
        BandType = 0
      end
      object ppLabel17: TppLabel
        UserName = 'Label17'
        HyperlinkEnabled = False
        AutoSize = False
        Caption = 'Factura'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Verdana'
        Font.Size = 7
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 4233
        mmLeft = 6879
        mmTop = 51329
        mmWidth = 18256
        BandType = 0
      end
      object plFecha: TppLabel
        UserName = 'plFecha'
        HyperlinkEnabled = False
        AutoSize = False
        Caption = 'Fecha'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Verdana'
        Font.Size = 7
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 4233
        mmLeft = 46831
        mmTop = 51329
        mmWidth = 17992
        BandType = 0
      end
      object ppLabel61: TppLabel
        UserName = 'Label61'
        HyperlinkEnabled = False
        AutoSize = False
        Caption = 'Valor factura'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Verdana'
        Font.Size = 7
        Font.Style = [fsBold]
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 4233
        mmLeft = 65352
        mmTop = 51329
        mmWidth = 24606
        BandType = 0
      end
      object plTitulo: TppLabel
        UserName = 'plTitulo'
        HyperlinkEnabled = False
        AutoSize = False
        Caption = 'Estado de Cuentas por Pagar a Suplidor'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Tahoma'
        Font.Size = 14
        Font.Style = [fsBold, fsItalic]
        Transparent = True
        mmHeight = 6350
        mmLeft = 6615
        mmTop = 8996
        mmWidth = 125413
        BandType = 0
      end
      object ppSystemVariable11: TppSystemVariable
        UserName = 'SystemVariable11'
        HyperlinkEnabled = False
        VarType = vtPrintDateTime
        DisplayFormat = 'dd/mm/yyyy '#39'@'#39' hh:nn:ss AM/PM'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Verdana'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 4233
        mmLeft = 149754
        mmTop = 1058
        mmWidth = 56886
        BandType = 0
      end
      object ppSystemVariable12: TppSystemVariable
        UserName = 'SystemVariable12'
        HyperlinkEnabled = False
        VarType = vtPageSetDesc
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Verdana'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 4233
        mmLeft = 177536
        mmTop = 5821
        mmWidth = 29104
        BandType = 0
      end
      object ppVariable1: TppVariable
        UserName = 'Variable1'
        HyperlinkEnabled = False
        BlankWhenZero = False
        CalcOrder = 0
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Verdana'
        Font.Size = 10
        Font.Style = [fsBold, fsItalic]
        OnCalc = ppVariable1Calc
        Transparent = True
        mmHeight = 4233
        mmLeft = 6879
        mmTop = 15875
        mmWidth = 18785
        BandType = 0
      end
      object ppLabel2: TppLabel
        UserName = 'Label2'
        HyperlinkEnabled = False
        AutoSize = False
        Caption = '0 a 30'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Verdana'
        Font.Size = 7
        Font.Style = [fsBold]
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 4233
        mmLeft = 91281
        mmTop = 51329
        mmWidth = 23283
        BandType = 0
      end
      object ppLabel3: TppLabel
        UserName = 'Label3'
        HyperlinkEnabled = False
        AutoSize = False
        Caption = '31 a 60'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Verdana'
        Font.Size = 7
        Font.Style = [fsBold]
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 4233
        mmLeft = 116152
        mmTop = 51329
        mmWidth = 27517
        BandType = 0
      end
      object ppLabel4: TppLabel
        UserName = 'Label4'
        HyperlinkEnabled = False
        AutoSize = False
        Caption = '61 a 90'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Verdana'
        Font.Size = 7
        Font.Style = [fsBold]
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 4233
        mmLeft = 145521
        mmTop = 51329
        mmWidth = 27517
        BandType = 0
      end
      object ppLabel6: TppLabel
        UserName = 'Label6'
        HyperlinkEnabled = False
        AutoSize = False
        Caption = '91 dias o mas'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Verdana'
        Font.Size = 7
        Font.Style = [fsBold]
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 4233
        mmLeft = 174625
        mmTop = 51329
        mmWidth = 27517
        BandType = 0
      end
      object ppLabel7: TppLabel
        UserName = 'Label7'
        HyperlinkEnabled = False
        AutoSize = False
        Caption = 'PENDIENTE'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Verdana'
        Font.Size = 7
        Font.Style = [fsBold]
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 4233
        mmLeft = 91281
        mmTop = 46831
        mmWidth = 110861
        BandType = 0
      end
      object ppDBText34: TppDBText
        UserName = 'DBText34'
        HyperlinkEnabled = False
        DataField = 'Compania'
        DataPipeline = plConfig
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Verdana'
        Font.Size = 20
        Font.Style = [fsBold]
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'plConfig'
        mmHeight = 8467
        mmLeft = 6615
        mmTop = 265
        mmWidth = 137054
        BandType = 0
      end
      object ppDBText43: TppDBText
        UserName = 'DBText43'
        HyperlinkEnabled = False
        DataField = 'Nombre'
        DataPipeline = plReporte
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Verdana'
        Font.Size = 14
        Font.Style = [fsBold]
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'plReporte'
        mmHeight = 6879
        mmLeft = 36248
        mmTop = 33073
        mmWidth = 125942
        BandType = 0
      end
      object ppDBText32: TppDBText
        UserName = 'DBText32'
        HyperlinkEnabled = False
        DataField = 'idSuplidor'
        DataPipeline = plReporte
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Verdana'
        Font.Size = 14
        Font.Style = [fsBold]
        ParentDataPipeline = False
        TextAlignment = taCentered
        Transparent = True
        DataPipelineName = 'plReporte'
        mmHeight = 6879
        mmLeft = 163513
        mmTop = 33073
        mmWidth = 24077
        BandType = 0
      end
      object ppLabel78: TppLabel
        UserName = 'Label78'
        HyperlinkEnabled = False
        Caption = 'Suplidor :'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Verdana'
        Font.Size = 14
        Font.Style = [fsBold]
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 6085
        mmLeft = 0
        mmTop = 33073
        mmWidth = 33602
        BandType = 0
      end
      object ppLine28: TppLine
        UserName = 'Line28'
        Pen.Width = 2
        Weight = 1.500000000000000000
        mmHeight = 529
        mmLeft = 529
        mmTop = 41010
        mmWidth = 207963
        BandType = 0
      end
      object ppLine29: TppLine
        UserName = 'Line29'
        Pen.Width = 2
        Weight = 1.500000000000000000
        mmHeight = 529
        mmLeft = 529
        mmTop = 31221
        mmWidth = 207963
        BandType = 0
      end
    end
    object ppDetailBand5: TppDetailBand
      Background1.Brush.Style = bsClear
      Background2.Brush.Style = bsClear
      mmBottomOffset = 0
      mmHeight = 3704
      mmPrintPosition = 0
      object ppShape1: TppShape
        OnPrint = ppShape1Print
        UserName = 'Shape1'
        Brush.Color = 16053492
        Pen.Style = psClear
        mmHeight = 3704
        mmLeft = 0
        mmTop = 265
        mmWidth = 207963
        BandType = 4
      end
      object ppDBText41: TppDBText
        UserName = 'DBText41'
        HyperlinkEnabled = False
        DataField = 'Factura'
        DataPipeline = plReporte
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Verdana'
        Font.Size = 7
        Font.Style = []
        Transparent = True
        DataPipelineName = 'plReporte'
        mmHeight = 3175
        mmLeft = 6879
        mmTop = 0
        mmWidth = 38100
        BandType = 4
      end
      object ptFecha: TppDBText
        UserName = 'ptFecha'
        HyperlinkEnabled = False
        DataField = 'Fecha'
        DataPipeline = plReporte
        DisplayFormat = 'dd/mm/yyyy'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Verdana'
        Font.Size = 7
        Font.Style = []
        Transparent = True
        DataPipelineName = 'plReporte'
        mmHeight = 3175
        mmLeft = 46831
        mmTop = 0
        mmWidth = 17992
        BandType = 4
      end
      object ppDBText44: TppDBText
        UserName = 'DBText44'
        HyperlinkEnabled = False
        DataField = 'Total'
        DataPipeline = plReporte
        DisplayFormat = '$#,0.00;($#,0.00)'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Verdana'
        Font.Size = 7
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'plReporte'
        mmHeight = 3175
        mmLeft = 65352
        mmTop = 0
        mmWidth = 24606
        BandType = 4
      end
      object ppDBText1: TppDBText
        UserName = 'DBText1'
        HyperlinkEnabled = False
        DataField = 'NoVenc'
        DataPipeline = plReporte
        DisplayFormat = '$#,0.00;($#,0.00)'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Verdana'
        Font.Size = 7
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'plReporte'
        mmHeight = 3175
        mmLeft = 91281
        mmTop = 0
        mmWidth = 23283
        BandType = 4
      end
      object ppDBText2: TppDBText
        UserName = 'DBText2'
        HyperlinkEnabled = False
        DataField = 'A30'
        DataPipeline = plReporte
        DisplayFormat = '$#,0.00;($#,0.00)'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Verdana'
        Font.Size = 7
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'plReporte'
        mmHeight = 3175
        mmLeft = 116152
        mmTop = 0
        mmWidth = 27517
        BandType = 4
      end
      object ppDBText3: TppDBText
        UserName = 'DBText3'
        HyperlinkEnabled = False
        DataField = 'A60'
        DataPipeline = plReporte
        DisplayFormat = '$#,0.00;($#,0.00)'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Verdana'
        Font.Size = 7
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'plReporte'
        mmHeight = 3175
        mmLeft = 145521
        mmTop = 0
        mmWidth = 27517
        BandType = 4
      end
      object ppDBText4: TppDBText
        UserName = 'DBText4'
        HyperlinkEnabled = False
        DataField = 'A90'
        DataPipeline = plReporte
        DisplayFormat = '$#,0.00;($#,0.00)'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Verdana'
        Font.Size = 7
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'plReporte'
        mmHeight = 3175
        mmLeft = 174625
        mmTop = 0
        mmWidth = 27517
        BandType = 4
      end
    end
    object ppFooterBand5: TppFooterBand
      Background.Brush.Style = bsClear
      mmBottomOffset = 0
      mmHeight = 0
      mmPrintPosition = 0
    end
    object ppSummaryBand5: TppSummaryBand
      Background.Brush.Style = bsClear
      mmBottomOffset = 0
      mmHeight = 0
      mmPrintPosition = 0
    end
    object ppGroup1: TppGroup
      BreakName = 'Moneda'
      DataPipeline = plReporte
      GroupFileSettings.NewFile = False
      GroupFileSettings.EmailFile = False
      OutlineSettings.CreateNode = True
      NewPage = True
      StartOnOddPage = False
      UserName = 'Group1'
      mmNewColumnThreshold = 0
      mmNewPageThreshold = 0
      DataPipelineName = 'plReporte'
      NewFile = False
      object ppGroupHeaderBand1: TppGroupHeaderBand
        Background.Brush.Style = bsClear
        mmBottomOffset = 0
        mmHeight = 7408
        mmPrintPosition = 0
        object ppDBText7: TppDBText
          UserName = 'DBText7'
          HyperlinkEnabled = False
          DataField = 'Moneda'
          DataPipeline = plReporte
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Verdana'
          Font.Size = 8
          Font.Style = [fsBold]
          Transparent = True
          DataPipelineName = 'plReporte'
          mmHeight = 6615
          mmLeft = 5027
          mmTop = 0
          mmWidth = 43127
          BandType = 3
          GroupNo = 0
        end
      end
      object ppGroupFooterBand1: TppGroupFooterBand
        Background.Brush.Style = bsClear
        HideWhenOneDetail = False
        mmBottomOffset = 0
        mmHeight = 10583
        mmPrintPosition = 0
        object ppShape7: TppShape
          UserName = 'Shape3'
          Brush.Color = 15000804
          ParentHeight = True
          ParentWidth = True
          Pen.Style = psClear
          mmHeight = 10583
          mmLeft = 0
          mmTop = 0
          mmWidth = 208280
          BandType = 5
          GroupNo = 0
        end
        object ppDBCalc2: TppDBCalc
          UserName = 'DBCalc102'
          HyperlinkEnabled = False
          DataField = 'NoVenc'
          DataPipeline = plReporte
          DisplayFormat = '#,0.00;(#,0.00)'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Verdana'
          Font.Size = 7
          Font.Style = [fsBold]
          ResetGroup = ppGroup1
          TextAlignment = taRightJustified
          Transparent = True
          DataPipelineName = 'plReporte'
          mmHeight = 3175
          mmLeft = 91281
          mmTop = 1058
          mmWidth = 23283
          BandType = 5
          GroupNo = 0
        end
        object ppDBCalc4: TppDBCalc
          UserName = 'DBCalc4'
          HyperlinkEnabled = False
          DataField = 'A30'
          DataPipeline = plReporte
          DisplayFormat = '#,0.00;(#,0.00)'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Verdana'
          Font.Size = 7
          Font.Style = [fsBold]
          ResetGroup = ppGroup1
          TextAlignment = taRightJustified
          Transparent = True
          DataPipelineName = 'plReporte'
          mmHeight = 3175
          mmLeft = 116152
          mmTop = 1058
          mmWidth = 27517
          BandType = 5
          GroupNo = 0
        end
        object ppDBCalc7: TppDBCalc
          UserName = 'DBCalc7'
          HyperlinkEnabled = False
          DataField = 'A60'
          DataPipeline = plReporte
          DisplayFormat = '#,0.00;(#,0.00)'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Verdana'
          Font.Size = 7
          Font.Style = [fsBold]
          ResetGroup = ppGroup1
          TextAlignment = taRightJustified
          Transparent = True
          DataPipelineName = 'plReporte'
          mmHeight = 3175
          mmLeft = 145521
          mmTop = 1058
          mmWidth = 27517
          BandType = 5
          GroupNo = 0
        end
        object ppDBCalc8: TppDBCalc
          UserName = 'DBCalc8'
          HyperlinkEnabled = False
          DataField = 'A90'
          DataPipeline = plReporte
          DisplayFormat = '#,0.00;(#,0.00)'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Verdana'
          Font.Size = 7
          Font.Style = [fsBold]
          ResetGroup = ppGroup1
          TextAlignment = taRightJustified
          Transparent = True
          DataPipelineName = 'plReporte'
          mmHeight = 3175
          mmLeft = 174625
          mmTop = 1058
          mmWidth = 27517
          BandType = 5
          GroupNo = 0
        end
        object ppDBCalc12: TppDBCalc
          UserName = 'DBCalc12'
          HyperlinkEnabled = False
          DataField = 'Total'
          DataPipeline = plReporte
          DisplayFormat = '#,0.00;(#,0.00)'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Verdana'
          Font.Size = 7
          Font.Style = [fsBold]
          ResetGroup = ppGroup1
          TextAlignment = taRightJustified
          Transparent = True
          DataPipelineName = 'plReporte'
          mmHeight = 3175
          mmLeft = 57415
          mmTop = 1058
          mmWidth = 32544
          BandType = 5
          GroupNo = 0
        end
        object ppLabel10: TppLabel
          UserName = 'Label10'
          HyperlinkEnabled = False
          AutoSize = False
          Caption = 'Total general'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Verdana'
          Font.Size = 7
          Font.Style = [fsBold]
          Transparent = True
          mmHeight = 3440
          mmLeft = 6879
          mmTop = 1058
          mmWidth = 19579
          BandType = 5
          GroupNo = 0
        end
        object ppLine2: TppLine
          UserName = 'Line2'
          Pen.Width = 0
          ParentWidth = True
          Weight = 0.250000000000000000
          mmHeight = 1323
          mmLeft = 0
          mmTop = 529
          mmWidth = 208280
          BandType = 5
          GroupNo = 0
        end
        object ppLine3: TppLine
          UserName = 'Line3'
          Pen.Width = 0
          ParentWidth = True
          Style = lsDouble
          Weight = 0.250000000000000000
          mmHeight = 1058
          mmLeft = 0
          mmTop = 9525
          mmWidth = 208280
          BandType = 5
          GroupNo = 0
        end
        object ppLabel12: TppLabel
          UserName = 'Label12'
          HyperlinkEnabled = False
          Caption = 'Total general:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Verdana'
          Font.Size = 7
          Font.Style = [fsBold]
          TextAlignment = taRightJustified
          Transparent = True
          mmHeight = 2822
          mmLeft = 153565
          mmTop = 5027
          mmWidth = 19473
          BandType = 5
          GroupNo = 0
        end
        object ppDBText6: TppDBText
          UserName = 'DBText101'
          HyperlinkEnabled = False
          DataField = 'BalanceXMoneda'
          DataPipeline = plReporte
          DisplayFormat = '#,0.00;(#,0.00)'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Verdana'
          Font.Size = 7
          Font.Style = [fsBold]
          ParentDataPipeline = False
          TextAlignment = taRightJustified
          Transparent = True
          DataPipelineName = 'plReporte'
          mmHeight = 3440
          mmLeft = 174890
          mmTop = 5027
          mmWidth = 27252
          BandType = 5
          GroupNo = 0
        end
        object ppLabel11: TppLabel
          UserName = 'Label11'
          HyperlinkEnabled = False
          Caption = 'Creditos no aplicados:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Verdana'
          Font.Size = 7
          Font.Style = [fsBold]
          TextAlignment = taRightJustified
          Transparent = True
          mmHeight = 3440
          mmLeft = 6615
          mmTop = 5556
          mmWidth = 33073
          BandType = 5
          GroupNo = 0
        end
        object ppDBText9: TppDBText
          UserName = 'DBText9'
          HyperlinkEnabled = False
          DataField = 'Creditos'
          DataPipeline = plReporte
          DisplayFormat = '#,0.00;(#,0.00)'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Verdana'
          Font.Size = 7
          Font.Style = [fsBold]
          ParentDataPipeline = False
          Transparent = True
          DataPipelineName = 'plReporte'
          mmHeight = 3440
          mmLeft = 62442
          mmTop = 5027
          mmWidth = 27252
          BandType = 5
          GroupNo = 0
        end
        object ppLabel8: TppLabel
          UserName = 'Label8'
          HyperlinkEnabled = False
          Caption = 'Total aplicado:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Verdana'
          Font.Size = 7
          Font.Style = [fsBold]
          TextAlignment = taRightJustified
          Transparent = True
          mmHeight = 3440
          mmLeft = 89959
          mmTop = 5027
          mmWidth = 24342
          BandType = 5
          GroupNo = 0
        end
        object ppDBCalc13: TppDBCalc
          UserName = 'DBCalc13'
          HyperlinkEnabled = False
          DataField = 'Pagado'
          DataPipeline = plReporte
          DisplayFormat = '#,0.00;(#,0.00)'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Verdana'
          Font.Size = 7
          Font.Style = [fsBold]
          ResetGroup = ppGroup1
          Transparent = True
          DataPipelineName = 'plReporte'
          mmHeight = 3175
          mmLeft = 115888
          mmTop = 5027
          mmWidth = 27517
          BandType = 5
          GroupNo = 0
        end
      end
    end
    object ppParameterList1: TppParameterList
    end
  end
  object mAging: TkbmMemTable
    Active = True
    DesignActivation = True
    AttachedAutoRefresh = True
    AttachMaxCount = 1
    FieldDefs = <
      item
        Name = 'Nombre'
        DataType = ftString
        Size = 100
      end
      item
        Name = 'idMoneda'
        DataType = ftInteger
      end
      item
        Name = 'Moneda'
        DataType = ftString
        Size = 30
      end
      item
        Name = 'idTrans'
        DataType = ftInteger
      end
      item
        Name = 'IdDocumento'
        DataType = ftInteger
      end
      item
        Name = 'Dias'
        DataType = ftInteger
      end
      item
        Name = 'NoVenc'
        DataType = ftBCD
        Size = 2
      end
      item
        Name = 'A30'
        DataType = ftBCD
        Size = 2
      end
      item
        Name = 'A60'
        DataType = ftBCD
        Size = 2
      end
      item
        Name = 'A90'
        DataType = ftBCD
        Size = 2
      end
      item
        Name = 'Factura'
        DataType = ftString
        Size = 20
      end
      item
        Name = 'IDRow'
        DataType = ftInteger
      end
      item
        Name = 'Fecha'
        DataType = ftDateTime
      end
      item
        Name = 'Total'
        DataType = ftBCD
        Size = 2
      end
      item
        Name = 'Pagado'
        DataType = ftBCD
        Size = 2
      end
      item
        Name = 'Creditos'
        DataType = ftBCD
        Size = 2
      end
      item
        Name = 'idSuplidor'
        DataType = ftInteger
      end
      item
        Name = 'Sel'
        DataType = ftBoolean
      end
      item
        Name = 'Balance'
        DataType = ftCurrency
      end
      item
        Name = 'BalanceXMoneda'
        DataType = ftCurrency
      end
      item
        Name = 'TipoSuplidor'
        DataType = ftString
        Size = 100
      end
      item
        Name = 'BalanceXTipo'
        DataType = ftCurrency
      end
      item
        Name = 'Vencimiento'
        DataType = ftDateTime
      end
      item
        Name = 'FechaEmision'
        DataType = ftDateTime
      end
      item
        Name = 'CompFiscal'
        DataType = ftString
        Size = 19
      end>
    IndexDefs = <>
    SortOptions = []
    PersistentBackup = False
    ProgressFlags = [mtpcLoad, mtpcSave, mtpcCopy]
    FilterOptions = []
    Version = '4.08b'
    LanguageID = 0
    SortID = 0
    SubLanguageID = 1
    LocaleID = 1024
    Left = 404
    Top = 174
    object mAgingNombre: TStringField
      FieldName = 'Nombre'
      Size = 100
    end
    object mAgingidMoneda: TIntegerField
      FieldName = 'idMoneda'
    end
    object mAgingMoneda: TStringField
      FieldName = 'Moneda'
      Size = 30
    end
    object mAgingidTrans: TIntegerField
      FieldName = 'idTrans'
    end
    object mAgingIdDocumento: TIntegerField
      FieldName = 'IdDocumento'
    end
    object mAgingDias: TIntegerField
      FieldName = 'Dias'
    end
    object mAgingNoVenc: TBCDField
      FieldName = 'NoVenc'
      ReadOnly = True
      Precision = 32
      Size = 2
    end
    object mAgingA30: TBCDField
      FieldName = 'A30'
      ReadOnly = True
      Precision = 32
      Size = 2
    end
    object mAgingA60: TBCDField
      FieldName = 'A60'
      ReadOnly = True
      Precision = 32
      Size = 2
    end
    object mAgingA90: TBCDField
      FieldName = 'A90'
      ReadOnly = True
      Precision = 32
      Size = 2
    end
    object mAgingFactura: TStringField
      FieldName = 'Factura'
    end
    object mAgingIDRow: TIntegerField
      FieldName = 'IDRow'
    end
    object mAgingFecha: TDateTimeField
      FieldName = 'Fecha'
    end
    object mAgingTotal: TBCDField
      FieldName = 'Total'
      Precision = 22
      Size = 2
    end
    object mAgingPagado: TBCDField
      FieldName = 'Pagado'
      Precision = 32
      Size = 2
    end
    object mAgingCreditos: TBCDField
      FieldName = 'Creditos'
      Precision = 19
      Size = 2
    end
    object mAgingidSuplidor: TIntegerField
      FieldName = 'idSuplidor'
    end
    object mAgingSel: TBooleanField
      DefaultExpression = 'True'
      FieldName = 'Sel'
    end
    object mAgingBalance: TCurrencyField
      FieldName = 'Balance'
    end
    object mAgingBalanceXMoneda: TCurrencyField
      FieldName = 'BalanceXMoneda'
    end
    object mAgingTipoSuplidor: TStringField
      FieldName = 'TipoSuplidor'
      Size = 100
    end
    object mAgingBalanceXTipo: TCurrencyField
      FieldName = 'BalanceXTipo'
    end
    object mAgingVencimiento: TDateTimeField
      FieldName = 'Vencimiento'
    end
    object mAgingFechaEmision: TDateTimeField
      FieldName = 'FechaEmision'
    end
    object mAgingCompFiscal: TStringField
      FieldName = 'CompFiscal'
      Size = 19
    end
  end
  object CxPResumen: TppReport
    AutoStop = False
    DataPipeline = plReporte
    PassSetting = psTwoPass
    PrinterSetup.BinName = 'Default'
    PrinterSetup.DocumentName = 'Report'
    PrinterSetup.Orientation = poLandscape
    PrinterSetup.PaperName = 'Letter'
    PrinterSetup.PrinterName = 'Default'
    PrinterSetup.SaveDeviceSettings = False
    PrinterSetup.mmMarginBottom = 13970
    PrinterSetup.mmMarginLeft = 8890
    PrinterSetup.mmMarginRight = 8890
    PrinterSetup.mmMarginTop = 6350
    PrinterSetup.mmPaperHeight = 215900
    PrinterSetup.mmPaperWidth = 279401
    PrinterSetup.PaperSize = 1
    Template.FileName = 'E:\Sheresade\CuentasXPagar\Reporte de Sols.rtm'
    AllowPrintToArchive = True
    AllowPrintToFile = True
    ArchiveFileName = '($MyDocuments)\ReportArchive.raf'
    DeviceType = 'Screen'
    DefaultFileDeviceType = 'PDF'
    EmailSettings.ReportFormat = 'PDF'
    LanguageID = 'Default'
    OpenFile = False
    OutlineSettings.CreateNode = True
    OutlineSettings.CreatePageNodes = True
    OutlineSettings.Enabled = False
    OutlineSettings.Visible = False
    ThumbnailSettings.Enabled = False
    ThumbnailSettings.Visible = False
    ThumbnailSettings.DeadSpace = 30
    PDFSettings.EmbedFontOptions = [efUseSubset]
    PDFSettings.EncryptSettings.AllowCopy = True
    PDFSettings.EncryptSettings.AllowInteract = True
    PDFSettings.EncryptSettings.AllowModify = True
    PDFSettings.EncryptSettings.AllowPrint = True
    PDFSettings.EncryptSettings.Enabled = False
    PDFSettings.EncryptSettings.KeyLength = kl40Bit
    PDFSettings.FontEncoding = feAnsi
    PDFSettings.ImageCompressionLevel = 25
    RTFSettings.DefaultFont.Charset = DEFAULT_CHARSET
    RTFSettings.DefaultFont.Color = clWindowText
    RTFSettings.DefaultFont.Height = -13
    RTFSettings.DefaultFont.Name = 'Arial'
    RTFSettings.DefaultFont.Style = []
    TextFileName = '($MyDocuments)\Report.pdf'
    TextSearchSettings.DefaultString = '<FindText>'
    TextSearchSettings.Enabled = False
    XLSSettings.AppName = 'ReportBuilder'
    XLSSettings.Author = 'ReportBuilder'
    XLSSettings.Subject = 'Report'
    XLSSettings.Title = 'Report'
    Left = 554
    Top = 238
    Version = '15.02'
    mmColumnWidth = 0
    DataPipelineName = 'plReporte'
    object ppTitleBand2: TppTitleBand
      Background.Brush.Style = bsClear
      mmBottomOffset = 0
      mmHeight = 2117
      mmPrintPosition = 0
    end
    object ppHeaderBand1: TppHeaderBand
      Background.Brush.Style = bsClear
      PrintHeight = phDynamic
      mmBottomOffset = 0
      mmHeight = 36513
      mmPrintPosition = 0
      object ppLine5: TppLine
        UserName = 'Line17'
        Pen.Width = 2
        Weight = 1.500000000000000000
        mmHeight = 529
        mmLeft = 0
        mmTop = 35983
        mmWidth = 261673
        BandType = 0
      end
      object ppLabel18: TppLabel
        UserName = 'Label1'
        HyperlinkEnabled = False
        AutoSize = False
        Caption = 'Antiguedad de Saldos en CxP Resumido'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Tahoma'
        Font.Size = 14
        Font.Style = [fsBold, fsItalic]
        Transparent = True
        mmHeight = 5821
        mmLeft = 265
        mmTop = 12171
        mmWidth = 125413
        BandType = 0
      end
      object ppSystemVariable1: TppSystemVariable
        UserName = 'SystemVariable11'
        HyperlinkEnabled = False
        VarType = vtPrintDateTime
        DisplayFormat = 'dd/mm/yyyy '#39'@'#39' hh:nn:ss AM/PM'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Verdana'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 4233
        mmLeft = 171186
        mmTop = 794
        mmWidth = 71173
        BandType = 0
      end
      object ppSystemVariable2: TppSystemVariable
        UserName = 'SystemVariable12'
        HyperlinkEnabled = False
        VarType = vtPageSetDesc
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Verdana'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 4233
        mmLeft = 198967
        mmTop = 5556
        mmWidth = 43392
        BandType = 0
      end
      object ppVariable2: TppVariable
        UserName = 'Variable1'
        HyperlinkEnabled = False
        BlankWhenZero = False
        CalcOrder = 0
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Verdana'
        Font.Size = 10
        Font.Style = [fsBold, fsItalic]
        OnCalc = ppVariable1Calc
        Transparent = True
        mmHeight = 4233
        mmLeft = 265
        mmTop = 18256
        mmWidth = 18785
        BandType = 0
      end
      object ppLabel19: TppLabel
        UserName = 'Label2'
        HyperlinkEnabled = False
        AutoSize = False
        Caption = '1 a 30 dias'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Verdana'
        Font.Size = 7
        Font.Style = [fsBold]
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 3006
        mmLeft = 137319
        mmTop = 32808
        mmWidth = 24077
        BandType = 0
      end
      object ppLabel20: TppLabel
        UserName = 'Label3'
        HyperlinkEnabled = False
        AutoSize = False
        Caption = '30 a 60 dias'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Verdana'
        Font.Size = 7
        Font.Style = [fsBold]
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 3006
        mmLeft = 162190
        mmTop = 32808
        mmWidth = 24077
        BandType = 0
      end
      object ppLabel21: TppLabel
        UserName = 'Label4'
        HyperlinkEnabled = False
        AutoSize = False
        Caption = '61 a 90 dias'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Verdana'
        Font.Size = 7
        Font.Style = [fsBold]
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 3006
        mmLeft = 186796
        mmTop = 32808
        mmWidth = 24077
        BandType = 0
      end
      object ppLabel23: TppLabel
        UserName = 'Label6'
        HyperlinkEnabled = False
        AutoSize = False
        Caption = 'Mas de 90 dias'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Verdana'
        Font.Size = 7
        Font.Style = [fsBold]
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 3006
        mmLeft = 211403
        mmTop = 32808
        mmWidth = 24077
        BandType = 0
      end
      object ppLabel24: TppLabel
        UserName = 'Label7'
        HyperlinkEnabled = False
        AutoSize = False
        Caption = 'PENDIENTE'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Verdana'
        Font.Size = 7
        Font.Style = [fsBold]
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 4233
        mmLeft = 189707
        mmTop = 28310
        mmWidth = 28310
        BandType = 0
      end
      object ppDBText8: TppDBText
        UserName = 'DBText7'
        HyperlinkEnabled = False
        DataField = 'Moneda'
        DataPipeline = plReporte
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Verdana'
        Font.Size = 8
        Font.Style = [fsBold]
        Transparent = True
        DataPipelineName = 'plReporte'
        mmHeight = 3440
        mmLeft = 265
        mmTop = 23019
        mmWidth = 127265
        BandType = 0
      end
      object ppLabel14: TppLabel
        UserName = 'Label14'
        HyperlinkEnabled = False
        AutoSize = False
        Caption = 'Facturacion'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Verdana'
        Font.Size = 7
        Font.Style = [fsBold]
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 3006
        mmLeft = 113771
        mmTop = 32808
        mmWidth = 22754
        BandType = 0
      end
      object ppLabel29: TppLabel
        OnPrint = ppLabel29Print
        UserName = 'Label11'
        HyperlinkEnabled = False
        AutoSize = False
        Caption = 'No aplicado'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Verdana'
        Font.Size = 7
        Font.Style = [fsBold]
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 3006
        mmLeft = 59796
        mmTop = 32808
        mmWidth = 29104
        BandType = 0
      end
      object ppLabel30: TppLabel
        UserName = 'Label13'
        HyperlinkEnabled = False
        AutoSize = False
        Caption = 'Balance'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Verdana'
        Font.Size = 7
        Font.Style = [fsBold]
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 3006
        mmLeft = 237332
        mmTop = 32808
        mmWidth = 24077
        BandType = 0
      end
      object ppLabel31: TppLabel
        OnPrint = ppLabel29Print
        UserName = 'Label8'
        HyperlinkEnabled = False
        AutoSize = False
        Caption = 'Aplicado:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Verdana'
        Font.Size = 7
        Font.Style = [fsBold]
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 3006
        mmLeft = 89165
        mmTop = 32808
        mmWidth = 23813
        BandType = 0
      end
      object ppDBText35: TppDBText
        UserName = 'DBText35'
        HyperlinkEnabled = False
        DataField = 'Compania'
        DataPipeline = plConfig
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Verdana'
        Font.Size = 20
        Font.Style = [fsBold]
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'plConfig'
        mmHeight = 8467
        mmLeft = 0
        mmTop = 2646
        mmWidth = 137054
        BandType = 0
      end
      object ppDBMemo1: TppDBMemo
        UserName = 'DBMemo1'
        CharWrap = False
        DataField = 'Nombre'
        DataPipeline = plReporte
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Verdana'
        Font.Size = 8
        Font.Style = []
        RemoveEmptyLines = False
        Stretch = True
        Transparent = True
        Visible = False
        DataPipelineName = 'plReporte'
        mmHeight = 3175
        mmLeft = 140494
        mmTop = 16404
        mmWidth = 56886
        BandType = 0
        mmBottomOffset = 0
        mmOverFlowOffset = 0
        mmStopPosition = 0
        mmMinHeight = 0
        mmLeading = 0
      end
    end
    object ppDetailBand1: TppDetailBand
      Visible = False
      Background1.Brush.Style = bsClear
      Background2.Brush.Style = bsClear
      mmBottomOffset = 0
      mmHeight = 0
      mmPrintPosition = 0
    end
    object ppFooterBand1: TppFooterBand
      Background.Brush.Style = bsClear
      mmBottomOffset = 0
      mmHeight = 0
      mmPrintPosition = 0
    end
    object ppSummaryBand1: TppSummaryBand
      Background.Brush.Style = bsClear
      mmBottomOffset = 0
      mmHeight = 0
      mmPrintPosition = 0
    end
    object ppGroup2: TppGroup
      BreakName = 'Moneda'
      DataPipeline = plReporte
      GroupFileSettings.NewFile = False
      GroupFileSettings.EmailFile = False
      OutlineSettings.CreateNode = True
      NewPage = True
      StartOnOddPage = False
      UserName = 'Group1'
      mmNewColumnThreshold = 0
      mmNewPageThreshold = 0
      DataPipelineName = 'plReporte'
      NewFile = False
      object ppGroupHeaderBand2: TppGroupHeaderBand
        Background.Brush.Style = bsClear
        mmBottomOffset = 0
        mmHeight = 0
        mmPrintPosition = 0
      end
      object ppGroupFooterBand2: TppGroupFooterBand
        Background.Brush.Style = bsClear
        HideWhenOneDetail = False
        mmBottomOffset = 0
        mmHeight = 16140
        mmPrintPosition = 0
        object ppDBCalc14: TppDBCalc
          UserName = 'DBCalc102'
          HyperlinkEnabled = False
          DataField = 'NoVenc'
          DataPipeline = plReporte
          DisplayFormat = '#,0.00;(#,0.00)'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Verdana'
          Font.Size = 7
          Font.Style = [fsBold]
          ResetGroup = ppGroup2
          TextAlignment = taRightJustified
          Transparent = True
          DataPipelineName = 'plReporte'
          mmHeight = 3175
          mmLeft = 138642
          mmTop = 3969
          mmWidth = 22754
          BandType = 5
          GroupNo = 0
        end
        object ppDBCalc15: TppDBCalc
          UserName = 'DBCalc4'
          HyperlinkEnabled = False
          DataField = 'A30'
          DataPipeline = plReporte
          DisplayFormat = '#,0.00;(#,0.00)'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Verdana'
          Font.Size = 7
          Font.Style = [fsBold]
          ResetGroup = ppGroup2
          TextAlignment = taRightJustified
          Transparent = True
          DataPipelineName = 'plReporte'
          mmHeight = 3175
          mmLeft = 163513
          mmTop = 3969
          mmWidth = 22754
          BandType = 5
          GroupNo = 0
        end
        object ppDBCalc16: TppDBCalc
          UserName = 'DBCalc7'
          HyperlinkEnabled = False
          DataField = 'A60'
          DataPipeline = plReporte
          DisplayFormat = '#,0.00;(#,0.00)'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Verdana'
          Font.Size = 7
          Font.Style = [fsBold]
          ResetGroup = ppGroup2
          TextAlignment = taRightJustified
          Transparent = True
          DataPipelineName = 'plReporte'
          mmHeight = 3175
          mmLeft = 188119
          mmTop = 3969
          mmWidth = 22754
          BandType = 5
          GroupNo = 0
        end
        object ppDBCalc17: TppDBCalc
          UserName = 'DBCalc8'
          HyperlinkEnabled = False
          DataField = 'A90'
          DataPipeline = plReporte
          DisplayFormat = '#,0.00;(#,0.00)'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Verdana'
          Font.Size = 7
          Font.Style = [fsBold]
          ResetGroup = ppGroup2
          TextAlignment = taRightJustified
          Transparent = True
          DataPipelineName = 'plReporte'
          mmHeight = 3175
          mmLeft = 212725
          mmTop = 3969
          mmWidth = 22754
          BandType = 5
          GroupNo = 0
        end
        object ppDBCalc19: TppDBCalc
          UserName = 'DBCalc12'
          HyperlinkEnabled = False
          DataField = 'Total'
          DataPipeline = plReporte
          DisplayFormat = '#,0.00;(#,0.00)'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Verdana'
          Font.Size = 7
          Font.Style = [fsBold]
          ResetGroup = ppGroup2
          TextAlignment = taRightJustified
          Transparent = True
          DataPipelineName = 'plReporte'
          mmHeight = 3175
          mmLeft = 113771
          mmTop = 3969
          mmWidth = 22754
          BandType = 5
          GroupNo = 0
        end
        object ppLabel25: TppLabel
          UserName = 'Label10'
          HyperlinkEnabled = False
          AutoSize = False
          Caption = 'Total general'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Verdana'
          Font.Size = 7
          Font.Style = [fsBold]
          TextAlignment = taRightJustified
          Transparent = True
          mmHeight = 3440
          mmLeft = 79904
          mmTop = 3969
          mmWidth = 29898
          BandType = 5
          GroupNo = 0
        end
        object ppLine6: TppLine
          UserName = 'Line2'
          Pen.Width = 0
          ParentWidth = True
          Weight = 0.250000000000000000
          mmHeight = 1323
          mmLeft = 0
          mmTop = 3440
          mmWidth = 261621
          BandType = 5
          GroupNo = 0
        end
        object ppLine7: TppLine
          UserName = 'Line3'
          Pen.Width = 0
          ParentWidth = True
          Style = lsDouble
          Weight = 0.250000000000000000
          mmHeight = 1058
          mmLeft = 0
          mmTop = 15081
          mmWidth = 261621
          BandType = 5
          GroupNo = 0
        end
        object ppLabel27: TppLabel
          UserName = 'Label12'
          HyperlinkEnabled = False
          Caption = 'Balance general:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Verdana'
          Font.Size = 10
          Font.Style = [fsBold]
          TextAlignment = taRightJustified
          Transparent = True
          mmHeight = 4233
          mmLeft = 169334
          mmTop = 10583
          mmWidth = 51594
          BandType = 5
          GroupNo = 0
        end
        object ppDBText19: TppDBText
          UserName = 'DBText101'
          HyperlinkEnabled = False
          DataField = 'BalanceXMoneda'
          DataPipeline = plReporte
          DisplayFormat = '#,0.00;(#,0.00)'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Verdana'
          Font.Size = 10
          Font.Style = [fsBold]
          ParentDataPipeline = False
          TextAlignment = taRightJustified
          Transparent = True
          DataPipelineName = 'plReporte'
          mmHeight = 4233
          mmLeft = 221721
          mmTop = 10583
          mmWidth = 38894
          BandType = 5
          GroupNo = 0
        end
      end
    end
    object ppGroup8: TppGroup
      BreakName = 'TipoSuplidor'
      DataPipeline = plReporte
      GroupFileSettings.NewFile = False
      GroupFileSettings.EmailFile = False
      OutlineSettings.CreateNode = True
      StartOnOddPage = False
      UserName = 'Group8'
      mmNewColumnThreshold = 0
      mmNewPageThreshold = 0
      DataPipelineName = 'plReporte'
      NewFile = False
      object ppGroupHeaderBand8: TppGroupHeaderBand
        Background.Brush.Style = bsClear
        mmBottomOffset = 0
        mmHeight = 5821
        mmPrintPosition = 0
        object ppDBText39: TppDBText
          UserName = 'DBText39'
          HyperlinkEnabled = False
          AutoSize = True
          DataField = 'TipoSuplidor'
          DataPipeline = plReporte
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 12
          Font.Style = [fsBold]
          Transparent = True
          DataPipelineName = 'plReporte'
          mmHeight = 4995
          mmLeft = 13758
          mmTop = 265
          mmWidth = 26120
          BandType = 3
          GroupNo = 1
        end
      end
      object ppGroupFooterBand8: TppGroupFooterBand
        Background.Brush.Style = bsClear
        HideWhenOneDetail = False
        mmBottomOffset = 0
        mmHeight = 11642
        mmPrintPosition = 0
        object ppDBCalc39: TppDBCalc
          UserName = 'DBCalc39'
          HyperlinkEnabled = False
          DataField = 'NoVenc'
          DataPipeline = plReporte
          DisplayFormat = '#,0.00;(#,0.00)'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Verdana'
          Font.Size = 7
          Font.Style = [fsBold]
          ResetGroup = ppGroup8
          TextAlignment = taRightJustified
          Transparent = True
          DataPipelineName = 'plReporte'
          mmHeight = 3175
          mmLeft = 140759
          mmTop = 1588
          mmWidth = 22754
          BandType = 5
          GroupNo = 1
        end
        object ppDBCalc40: TppDBCalc
          UserName = 'DBCalc40'
          HyperlinkEnabled = False
          DataField = 'A30'
          DataPipeline = plReporte
          DisplayFormat = '#,0.00;(#,0.00)'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Verdana'
          Font.Size = 7
          Font.Style = [fsBold]
          ResetGroup = ppGroup8
          TextAlignment = taRightJustified
          Transparent = True
          DataPipelineName = 'plReporte'
          mmHeight = 3175
          mmLeft = 165629
          mmTop = 1588
          mmWidth = 22754
          BandType = 5
          GroupNo = 1
        end
        object ppDBCalc41: TppDBCalc
          UserName = 'DBCalc41'
          HyperlinkEnabled = False
          DataField = 'A60'
          DataPipeline = plReporte
          DisplayFormat = '#,0.00;(#,0.00)'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Verdana'
          Font.Size = 7
          Font.Style = [fsBold]
          ResetGroup = ppGroup8
          TextAlignment = taRightJustified
          Transparent = True
          DataPipelineName = 'plReporte'
          mmHeight = 3175
          mmLeft = 190236
          mmTop = 1588
          mmWidth = 22754
          BandType = 5
          GroupNo = 1
        end
        object ppDBCalc42: TppDBCalc
          UserName = 'DBCalc42'
          HyperlinkEnabled = False
          DataField = 'A90'
          DataPipeline = plReporte
          DisplayFormat = '#,0.00;(#,0.00)'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Verdana'
          Font.Size = 7
          Font.Style = [fsBold]
          ResetGroup = ppGroup8
          TextAlignment = taRightJustified
          Transparent = True
          DataPipelineName = 'plReporte'
          mmHeight = 3175
          mmLeft = 214842
          mmTop = 1588
          mmWidth = 22754
          BandType = 5
          GroupNo = 1
        end
        object ppDBCalc43: TppDBCalc
          UserName = 'DBCalc43'
          HyperlinkEnabled = False
          DataField = 'Total'
          DataPipeline = plReporte
          DisplayFormat = '#,0.00;(#,0.00)'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Verdana'
          Font.Size = 7
          Font.Style = [fsBold]
          ResetGroup = ppGroup8
          TextAlignment = taRightJustified
          Transparent = True
          DataPipelineName = 'plReporte'
          mmHeight = 3175
          mmLeft = 115888
          mmTop = 1588
          mmWidth = 22754
          BandType = 5
          GroupNo = 1
        end
        object ppLabel43: TppLabel
          UserName = 'Label102'
          HyperlinkEnabled = False
          AutoSize = False
          Caption = 'Total general'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Verdana'
          Font.Size = 7
          Font.Style = [fsBold]
          TextAlignment = taRightJustified
          Transparent = True
          mmHeight = 3440
          mmLeft = 82021
          mmTop = 1588
          mmWidth = 29898
          BandType = 5
          GroupNo = 1
        end
        object ppLine14: TppLine
          UserName = 'Line14'
          Pen.Width = 0
          ParentWidth = True
          Weight = 0.250000000000000000
          mmHeight = 1323
          mmLeft = 0
          mmTop = 1058
          mmWidth = 261621
          BandType = 5
          GroupNo = 1
        end
        object ppLine15: TppLine
          UserName = 'Line15'
          Pen.Width = 0
          ParentWidth = True
          Weight = 0.250000000000000000
          mmHeight = 1058
          mmLeft = 0
          mmTop = 11113
          mmWidth = 261621
          BandType = 5
          GroupNo = 1
        end
        object ppLabel44: TppLabel
          UserName = 'Label44'
          HyperlinkEnabled = False
          Caption = 'Balance por tipo suplidor:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Verdana'
          Font.Size = 10
          Font.Style = [fsBold]
          TextAlignment = taRightJustified
          Transparent = True
          mmHeight = 4233
          mmLeft = 171715
          mmTop = 6615
          mmWidth = 50631
          BandType = 5
          GroupNo = 1
        end
        object ppDBText38: TppDBText
          UserName = 'DBText38'
          HyperlinkEnabled = False
          DataField = 'BalanceXTipo'
          DataPipeline = plReporte
          DisplayFormat = '#,0.00;(#,0.00)'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Verdana'
          Font.Size = 10
          Font.Style = [fsBold]
          ParentDataPipeline = False
          TextAlignment = taRightJustified
          Transparent = True
          DataPipelineName = 'plReporte'
          mmHeight = 4233
          mmLeft = 223044
          mmTop = 6615
          mmWidth = 38894
          BandType = 5
          GroupNo = 1
        end
      end
    end
    object ppGroup3: TppGroup
      BreakName = 'Nombre'
      DataPipeline = plReporte
      GroupFileSettings.NewFile = False
      GroupFileSettings.EmailFile = False
      OutlineSettings.CreateNode = True
      StartOnOddPage = False
      UserName = 'Group5'
      mmNewColumnThreshold = 0
      mmNewPageThreshold = 0
      DataPipelineName = 'plReporte'
      NewFile = False
      object ppGroupHeaderBand3: TppGroupHeaderBand
        Background.Brush.Style = bsClear
        mmBottomOffset = 0
        mmHeight = 0
        mmPrintPosition = 0
      end
      object ppGroupFooterBand3: TppGroupFooterBand
        Background.Brush.Style = bsClear
        PrintHeight = phDynamic
        HideWhenOneDetail = False
        mmBottomOffset = 0
        mmHeight = 4498
        mmPrintPosition = 0
        object ppShape4: TppShape
          OnPrint = ppShape4Print
          UserName = 'Shape2'
          Brush.Color = 15329769
          ParentWidth = True
          Pen.Style = psClear
          StretchWithParent = True
          mmHeight = 5027
          mmLeft = 0
          mmTop = 0
          mmWidth = 261621
          BandType = 5
          GroupNo = 1
        end
        object ppDBCalc20: TppDBCalc
          UserName = 'DBCalc10'
          HyperlinkEnabled = False
          BlankWhenZero = True
          DataField = 'NoVenc'
          DataPipeline = plReporte
          DisplayFormat = '#,0.00;(#,0.00)'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Verdana'
          Font.Size = 7
          Font.Style = []
          ResetGroup = ppGroup3
          TextAlignment = taRightJustified
          Transparent = True
          DataPipelineName = 'plReporte'
          mmHeight = 3175
          mmLeft = 137319
          mmTop = 529
          mmWidth = 24077
          BandType = 5
          GroupNo = 0
        end
        object ppDBCalc21: TppDBCalc
          UserName = 'DBCalc101'
          HyperlinkEnabled = False
          BlankWhenZero = True
          DataField = 'A30'
          DataPipeline = plReporte
          DisplayFormat = '#,0.00;(#,0.00)'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Verdana'
          Font.Size = 7
          Font.Style = []
          ResetGroup = ppGroup3
          TextAlignment = taRightJustified
          Transparent = True
          DataPipelineName = 'plReporte'
          mmHeight = 3175
          mmLeft = 162190
          mmTop = 529
          mmWidth = 24077
          BandType = 5
          GroupNo = 0
        end
        object ppDBCalc22: TppDBCalc
          UserName = 'DBCalc3'
          HyperlinkEnabled = False
          BlankWhenZero = True
          DataField = 'A60'
          DataPipeline = plReporte
          DisplayFormat = '#,0.00;(#,0.00)'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Verdana'
          Font.Size = 7
          Font.Style = []
          ResetGroup = ppGroup3
          TextAlignment = taRightJustified
          Transparent = True
          DataPipelineName = 'plReporte'
          mmHeight = 3175
          mmLeft = 186796
          mmTop = 529
          mmWidth = 24077
          BandType = 5
          GroupNo = 0
        end
        object ppDBCalc23: TppDBCalc
          UserName = 'DBCalc5'
          HyperlinkEnabled = False
          BlankWhenZero = True
          DataField = 'A90'
          DataPipeline = plReporte
          DisplayFormat = '#,0.00;(#,0.00)'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Verdana'
          Font.Size = 7
          Font.Style = []
          ResetGroup = ppGroup3
          TextAlignment = taRightJustified
          Transparent = True
          DataPipelineName = 'plReporte'
          mmHeight = 3175
          mmLeft = 211403
          mmTop = 529
          mmWidth = 24077
          BandType = 5
          GroupNo = 0
        end
        object ppDBCalc25: TppDBCalc
          UserName = 'DBCalc103'
          HyperlinkEnabled = False
          BlankWhenZero = True
          DataField = 'Total'
          DataPipeline = plReporte
          DisplayFormat = '#,0.00;(#,0.00)'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Verdana'
          Font.Size = 7
          Font.Style = []
          ResetGroup = ppGroup3
          TextAlignment = taRightJustified
          Transparent = True
          DataPipelineName = 'plReporte'
          mmHeight = 3175
          mmLeft = 113771
          mmTop = 529
          mmWidth = 22754
          BandType = 5
          GroupNo = 0
        end
        object ppDBText21: TppDBText
          OnPrint = ppLabel29Print
          UserName = 'DBText9'
          HyperlinkEnabled = False
          BlankWhenZero = True
          DataField = 'Creditos'
          DataPipeline = plReporte
          DisplayFormat = '#,0.00;(#,0.00)'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Verdana'
          Font.Size = 7
          Font.Style = []
          ParentDataPipeline = False
          TextAlignment = taRightJustified
          Transparent = True
          DataPipelineName = 'plReporte'
          mmHeight = 3175
          mmLeft = 72761
          mmTop = 529
          mmWidth = 16140
          BandType = 5
          GroupNo = 1
        end
        object ppDBText22: TppDBText
          UserName = 'DBText10'
          HyperlinkEnabled = False
          DataField = 'Balance'
          DataPipeline = plReporte
          DisplayFormat = '#,0.00;(#,0.00)'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Verdana'
          Font.Size = 7
          Font.Style = [fsBold]
          ParentDataPipeline = False
          TextAlignment = taRightJustified
          Transparent = True
          DataPipelineName = 'plReporte'
          mmHeight = 3175
          mmLeft = 236009
          mmTop = 529
          mmWidth = 25400
          BandType = 5
          GroupNo = 1
        end
        object ppDBCalc26: TppDBCalc
          OnPrint = ppLabel29Print
          UserName = 'DBCalc13'
          HyperlinkEnabled = False
          BlankWhenZero = True
          DataField = 'Pagado'
          DataPipeline = plReporte
          DisplayFormat = '#,0.00;(#,0.00)'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Verdana'
          Font.Size = 7
          Font.Style = []
          ResetGroup = ppGroup3
          TextAlignment = taRightJustified
          Transparent = True
          DataPipelineName = 'plReporte'
          mmHeight = 3175
          mmLeft = 90223
          mmTop = 529
          mmWidth = 22754
          BandType = 5
          GroupNo = 1
        end
        object ppDBText20: TppDBText
          UserName = 'DBText43'
          HyperlinkEnabled = False
          DataField = 'idSuplidor'
          DataPipeline = plReporte
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Verdana'
          Font.Size = 8
          Font.Style = []
          ParentDataPipeline = False
          Transparent = True
          DataPipelineName = 'plReporte'
          mmHeight = 3175
          mmLeft = 529
          mmTop = 529
          mmWidth = 12700
          BandType = 5
          GroupNo = 1
        end
        object ppDBText11: TppDBText
          UserName = 'DBText11'
          HyperlinkEnabled = False
          DataField = 'Nombre'
          DataPipeline = plReporte
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Verdana'
          Font.Size = 8
          Font.Style = []
          Transparent = True
          DataPipelineName = 'plReporte'
          mmHeight = 3175
          mmLeft = 13758
          mmTop = 529
          mmWidth = 57944
          BandType = 5
          GroupNo = 2
        end
      end
    end
    object ppParameterList2: TppParameterList
    end
  end
  object ReportNCR: TppReport
    AutoStop = False
    DataPipeline = plReporte
    PassSetting = psTwoPass
    PrinterSetup.BinName = 'Default'
    PrinterSetup.DocumentName = 'Report'
    PrinterSetup.PaperName = 'Letter'
    PrinterSetup.PrinterName = 'Default'
    PrinterSetup.SaveDeviceSettings = False
    PrinterSetup.mmMarginBottom = 13970
    PrinterSetup.mmMarginLeft = 3810
    PrinterSetup.mmMarginRight = 3810
    PrinterSetup.mmMarginTop = 6350
    PrinterSetup.mmPaperHeight = 279401
    PrinterSetup.mmPaperWidth = 215900
    PrinterSetup.PaperSize = 1
    Template.FileName = 'E:\Sheresade\CuentasXPagar\Reporte de Sols.rtm'
    AllowPrintToArchive = True
    AllowPrintToFile = True
    ArchiveFileName = '($MyDocuments)\ReportArchive.raf'
    DeviceType = 'Screen'
    DefaultFileDeviceType = 'PDF'
    EmailSettings.ReportFormat = 'PDF'
    LanguageID = 'Default'
    OpenFile = False
    OutlineSettings.CreateNode = True
    OutlineSettings.CreatePageNodes = True
    OutlineSettings.Enabled = False
    OutlineSettings.Visible = False
    ThumbnailSettings.Enabled = False
    ThumbnailSettings.Visible = False
    ThumbnailSettings.DeadSpace = 30
    PDFSettings.EmbedFontOptions = [efUseSubset]
    PDFSettings.EncryptSettings.AllowCopy = True
    PDFSettings.EncryptSettings.AllowInteract = True
    PDFSettings.EncryptSettings.AllowModify = True
    PDFSettings.EncryptSettings.AllowPrint = True
    PDFSettings.EncryptSettings.Enabled = False
    PDFSettings.EncryptSettings.KeyLength = kl40Bit
    PDFSettings.FontEncoding = feAnsi
    PDFSettings.ImageCompressionLevel = 25
    RTFSettings.DefaultFont.Charset = DEFAULT_CHARSET
    RTFSettings.DefaultFont.Color = clWindowText
    RTFSettings.DefaultFont.Height = -13
    RTFSettings.DefaultFont.Name = 'Arial'
    RTFSettings.DefaultFont.Style = []
    TextFileName = '($MyDocuments)\Report.pdf'
    TextSearchSettings.DefaultString = '<FindText>'
    TextSearchSettings.Enabled = False
    XLSSettings.AppName = 'ReportBuilder'
    XLSSettings.Author = 'ReportBuilder'
    XLSSettings.Subject = 'Report'
    XLSSettings.Title = 'Report'
    Left = 626
    Top = 174
    Version = '15.02'
    mmColumnWidth = 0
    DataPipelineName = 'plReporte'
    object ppTitleBand3: TppTitleBand
      Background.Brush.Style = bsClear
      mmBottomOffset = 0
      mmHeight = 2117
      mmPrintPosition = 0
    end
    object ppHeaderBand2: TppHeaderBand
      Background.Brush.Style = bsClear
      mmBottomOffset = 0
      mmHeight = 30427
      mmPrintPosition = 0
      object ppLine8: TppLine
        UserName = 'Line17'
        Pen.Width = 2
        Weight = 1.500000000000000000
        mmHeight = 529
        mmLeft = 12435
        mmTop = 29898
        mmWidth = 207963
        BandType = 0
      end
      object ppLabel5: TppLabel
        UserName = 'Label17'
        HyperlinkEnabled = False
        AutoSize = False
        Caption = 'Factura'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Verdana'
        Font.Size = 7
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 4233
        mmLeft = 2910
        mmTop = 26458
        mmWidth = 15875
        BandType = 0
      end
      object ppLabel15: TppLabel
        UserName = 'Label26'
        HyperlinkEnabled = False
        AutoSize = False
        Caption = 'Fecha'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Verdana'
        Font.Size = 7
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 4233
        mmLeft = 32544
        mmTop = 26458
        mmWidth = 18785
        BandType = 0
      end
      object ppLabel16: TppLabel
        UserName = 'Label61'
        HyperlinkEnabled = False
        AutoSize = False
        Caption = 'Valor factura'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Verdana'
        Font.Size = 7
        Font.Style = [fsBold]
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 4233
        mmLeft = 51594
        mmTop = 26458
        mmWidth = 24606
        BandType = 0
      end
      object ppLabel22: TppLabel
        UserName = 'Label1'
        HyperlinkEnabled = False
        AutoSize = False
        Caption = 'Antiguedad de Saldos en CxP'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Tahoma'
        Font.Size = 14
        Font.Style = [fsBold, fsItalic]
        Transparent = True
        mmHeight = 5821
        mmLeft = 1058
        mmTop = 1058
        mmWidth = 125413
        BandType = 0
      end
      object ppSystemVariable3: TppSystemVariable
        UserName = 'SystemVariable11'
        HyperlinkEnabled = False
        VarType = vtPrintDateTime
        DisplayFormat = 'dd/mm/yyyy '#39'@'#39' hh:nn:ss AM/PM'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Verdana'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 4233
        mmLeft = 143828
        mmTop = 794
        mmWidth = 60960
        BandType = 0
      end
      object ppSystemVariable4: TppSystemVariable
        UserName = 'SystemVariable12'
        HyperlinkEnabled = False
        VarType = vtPageSetDesc
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Verdana'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 4233
        mmLeft = 171768
        mmTop = 5556
        mmWidth = 33020
        BandType = 0
      end
      object ppVariable3: TppVariable
        UserName = 'Variable1'
        HyperlinkEnabled = False
        BlankWhenZero = False
        CalcOrder = 0
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Verdana'
        Font.Size = 10
        Font.Style = [fsBold, fsItalic]
        OnCalc = ppVariable1Calc
        Transparent = True
        mmHeight = 4233
        mmLeft = 1058
        mmTop = 8467
        mmWidth = 18785
        BandType = 0
      end
      object ppLabel28: TppLabel
        UserName = 'Label2'
        HyperlinkEnabled = False
        AutoSize = False
        Caption = '0 a 30'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Verdana'
        Font.Size = 7
        Font.Style = [fsBold]
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 4233
        mmLeft = 77523
        mmTop = 26458
        mmWidth = 23283
        BandType = 0
      end
      object ppLabel32: TppLabel
        UserName = 'Label3'
        HyperlinkEnabled = False
        AutoSize = False
        Caption = '31 a 60'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Verdana'
        Font.Size = 7
        Font.Style = [fsBold]
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 4233
        mmLeft = 102394
        mmTop = 26458
        mmWidth = 27517
        BandType = 0
      end
      object ppLabel33: TppLabel
        UserName = 'Label4'
        HyperlinkEnabled = False
        AutoSize = False
        Caption = '61 a 90'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Verdana'
        Font.Size = 7
        Font.Style = [fsBold]
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 4233
        mmLeft = 131763
        mmTop = 26458
        mmWidth = 27517
        BandType = 0
      end
      object ppLabel34: TppLabel
        UserName = 'Label6'
        HyperlinkEnabled = False
        AutoSize = False
        Caption = '91 dias o mas'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Verdana'
        Font.Size = 7
        Font.Style = [fsBold]
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 4233
        mmLeft = 160867
        mmTop = 26458
        mmWidth = 27517
        BandType = 0
      end
      object ppLabel35: TppLabel
        UserName = 'Label7'
        HyperlinkEnabled = False
        AutoSize = False
        Caption = 'PENDIENTE'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Verdana'
        Font.Size = 7
        Font.Style = [fsBold]
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 4233
        mmLeft = 77523
        mmTop = 22490
        mmWidth = 110861
        BandType = 0
      end
      object ppDBText5: TppDBText
        UserName = 'DBText7'
        HyperlinkEnabled = False
        DataField = 'Moneda'
        DataPipeline = plReporte
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Verdana'
        Font.Size = 8
        Font.Style = [fsBold]
        Transparent = True
        DataPipelineName = 'plReporte'
        mmHeight = 3440
        mmLeft = 2117
        mmTop = 16669
        mmWidth = 125413
        BandType = 0
      end
    end
    object ppDetailBand2: TppDetailBand
      Background1.Brush.Style = bsClear
      Background2.Brush.Style = bsClear
      mmBottomOffset = 0
      mmHeight = 3704
      mmPrintPosition = 0
      object ppShape5: TppShape
        OnPrint = ppShape1Print
        UserName = 'Shape1'
        Brush.Color = 16053492
        Pen.Style = psClear
        mmHeight = 3704
        mmLeft = 0
        mmTop = 0
        mmWidth = 207963
        BandType = 4
      end
      object ppDBText23: TppDBText
        UserName = 'DBText41'
        HyperlinkEnabled = False
        DataField = 'Factura'
        DataPipeline = plReporte
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Verdana'
        Font.Size = 7
        Font.Style = []
        Transparent = True
        DataPipelineName = 'plReporte'
        mmHeight = 3175
        mmLeft = 2910
        mmTop = 265
        mmWidth = 27781
        BandType = 4
      end
      object ppDBText24: TppDBText
        UserName = 'DBText42'
        HyperlinkEnabled = False
        DataField = 'Fecha'
        DataPipeline = plReporte
        DisplayFormat = 'dd/mm/yyyy'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Verdana'
        Font.Size = 7
        Font.Style = []
        Transparent = True
        DataPipelineName = 'plReporte'
        mmHeight = 3175
        mmLeft = 32544
        mmTop = 265
        mmWidth = 18785
        BandType = 4
      end
      object ppDBText25: TppDBText
        UserName = 'DBText44'
        HyperlinkEnabled = False
        DataField = 'Total'
        DataPipeline = plReporte
        DisplayFormat = '$#,0.00;($#,0.00)'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Verdana'
        Font.Size = 7
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'plReporte'
        mmHeight = 3104
        mmLeft = 51594
        mmTop = 265
        mmWidth = 24606
        BandType = 4
      end
      object ppDBText26: TppDBText
        UserName = 'DBText1'
        HyperlinkEnabled = False
        DataField = 'NoVenc'
        DataPipeline = plReporte
        DisplayFormat = '$#,0.00;($#,0.00)'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Verdana'
        Font.Size = 7
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'plReporte'
        mmHeight = 3104
        mmLeft = 77523
        mmTop = 265
        mmWidth = 23283
        BandType = 4
      end
      object ppDBText27: TppDBText
        UserName = 'DBText2'
        HyperlinkEnabled = False
        DataField = 'A30'
        DataPipeline = plReporte
        DisplayFormat = '$#,0.00;($#,0.00)'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Verdana'
        Font.Size = 7
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'plReporte'
        mmHeight = 3104
        mmLeft = 102394
        mmTop = 265
        mmWidth = 27517
        BandType = 4
      end
      object ppDBText28: TppDBText
        UserName = 'DBText3'
        HyperlinkEnabled = False
        DataField = 'A60'
        DataPipeline = plReporte
        DisplayFormat = '$#,0.00;($#,0.00)'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Verdana'
        Font.Size = 7
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'plReporte'
        mmHeight = 3104
        mmLeft = 131763
        mmTop = 265
        mmWidth = 27517
        BandType = 4
      end
      object ppDBText29: TppDBText
        UserName = 'DBText4'
        HyperlinkEnabled = False
        DataField = 'A90'
        DataPipeline = plReporte
        DisplayFormat = '$#,0.00;($#,0.00)'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Verdana'
        Font.Size = 7
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'plReporte'
        mmHeight = 3104
        mmLeft = 160867
        mmTop = 265
        mmWidth = 27517
        BandType = 4
      end
    end
    object ppFooterBand2: TppFooterBand
      Background.Brush.Style = bsClear
      mmBottomOffset = 0
      mmHeight = 0
      mmPrintPosition = 0
    end
    object ppSummaryBand2: TppSummaryBand
      Background.Brush.Style = bsClear
      mmBottomOffset = 0
      mmHeight = 0
      mmPrintPosition = 0
    end
    object ppGroup4: TppGroup
      BreakName = 'Moneda'
      DataPipeline = plReporte
      GroupFileSettings.NewFile = False
      GroupFileSettings.EmailFile = False
      OutlineSettings.CreateNode = True
      NewPage = True
      StartOnOddPage = False
      UserName = 'Group1'
      mmNewColumnThreshold = 0
      mmNewPageThreshold = 0
      DataPipelineName = 'plReporte'
      NewFile = False
      object ppGroupHeaderBand4: TppGroupHeaderBand
        Background.Brush.Style = bsClear
        mmBottomOffset = 0
        mmHeight = 0
        mmPrintPosition = 0
      end
      object ppGroupFooterBand4: TppGroupFooterBand
        Background.Brush.Style = bsClear
        HideWhenOneDetail = False
        mmBottomOffset = 0
        mmHeight = 10583
        mmPrintPosition = 0
        object ppDBCalc6: TppDBCalc
          UserName = 'DBCalc102'
          HyperlinkEnabled = False
          DataField = 'NoVenc'
          DataPipeline = plReporte
          DisplayFormat = '#,0.00;(#,0.00)'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Verdana'
          Font.Size = 7
          Font.Style = [fsBold]
          ResetGroup = ppGroup4
          TextAlignment = taRightJustified
          Transparent = True
          DataPipelineName = 'plReporte'
          mmHeight = 3175
          mmLeft = 77523
          mmTop = 1058
          mmWidth = 23283
          BandType = 5
          GroupNo = 0
        end
        object ppDBCalc9: TppDBCalc
          UserName = 'DBCalc4'
          HyperlinkEnabled = False
          DataField = 'A30'
          DataPipeline = plReporte
          DisplayFormat = '#,0.00;(#,0.00)'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Verdana'
          Font.Size = 7
          Font.Style = [fsBold]
          ResetGroup = ppGroup4
          TextAlignment = taRightJustified
          Transparent = True
          DataPipelineName = 'plReporte'
          mmHeight = 3175
          mmLeft = 102394
          mmTop = 1058
          mmWidth = 27517
          BandType = 5
          GroupNo = 0
        end
        object ppDBCalc18: TppDBCalc
          UserName = 'DBCalc7'
          HyperlinkEnabled = False
          DataField = 'A60'
          DataPipeline = plReporte
          DisplayFormat = '#,0.00;(#,0.00)'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Verdana'
          Font.Size = 7
          Font.Style = [fsBold]
          ResetGroup = ppGroup4
          TextAlignment = taRightJustified
          Transparent = True
          DataPipelineName = 'plReporte'
          mmHeight = 3175
          mmLeft = 131763
          mmTop = 1058
          mmWidth = 27517
          BandType = 5
          GroupNo = 0
        end
        object ppDBCalc24: TppDBCalc
          UserName = 'DBCalc8'
          HyperlinkEnabled = False
          DataField = 'A90'
          DataPipeline = plReporte
          DisplayFormat = '#,0.00;(#,0.00)'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Verdana'
          Font.Size = 7
          Font.Style = [fsBold]
          ResetGroup = ppGroup4
          TextAlignment = taRightJustified
          Transparent = True
          DataPipelineName = 'plReporte'
          mmHeight = 3175
          mmLeft = 160867
          mmTop = 1058
          mmWidth = 27517
          BandType = 5
          GroupNo = 0
        end
        object ppDBCalc27: TppDBCalc
          UserName = 'DBCalc12'
          HyperlinkEnabled = False
          DataField = 'Total'
          DataPipeline = plReporte
          DisplayFormat = '#,0.00;(#,0.00)'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Verdana'
          Font.Size = 7
          Font.Style = [fsBold]
          ResetGroup = ppGroup4
          TextAlignment = taRightJustified
          Transparent = True
          DataPipelineName = 'plReporte'
          mmHeight = 3175
          mmLeft = 43656
          mmTop = 1058
          mmWidth = 32544
          BandType = 5
          GroupNo = 0
        end
        object ppLabel36: TppLabel
          UserName = 'Label10'
          HyperlinkEnabled = False
          AutoSize = False
          Caption = 'Total general'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Verdana'
          Font.Size = 7
          Font.Style = [fsBold]
          Transparent = True
          mmHeight = 3440
          mmLeft = 2910
          mmTop = 1058
          mmWidth = 19579
          BandType = 5
          GroupNo = 0
        end
        object ppLine9: TppLine
          UserName = 'Line2'
          Pen.Width = 0
          ParentWidth = True
          Weight = 0.250000000000000000
          mmHeight = 1323
          mmLeft = 0
          mmTop = 529
          mmWidth = 208280
          BandType = 5
          GroupNo = 0
        end
        object ppLine10: TppLine
          UserName = 'Line3'
          Pen.Width = 0
          ParentWidth = True
          Style = lsDouble
          Weight = 0.250000000000000000
          mmHeight = 1058
          mmLeft = 0
          mmTop = 9525
          mmWidth = 208280
          BandType = 5
          GroupNo = 0
        end
        object ppLabel37: TppLabel
          UserName = 'Label12'
          HyperlinkEnabled = False
          Caption = 'Balance general:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Verdana'
          Font.Size = 7
          Font.Style = [fsBold]
          TextAlignment = taRightJustified
          Transparent = True
          mmHeight = 3175
          mmLeft = 140494
          mmTop = 5027
          mmWidth = 23548
          BandType = 5
          GroupNo = 0
        end
        object ppDBText30: TppDBText
          UserName = 'DBText101'
          HyperlinkEnabled = False
          DataField = 'BalanceXMoneda'
          DataPipeline = plReporte
          DisplayFormat = '#,0.00;(#,0.00)'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Verdana'
          Font.Size = 7
          Font.Style = [fsBold]
          ParentDataPipeline = False
          Transparent = True
          DataPipelineName = 'plReporte'
          mmHeight = 3440
          mmLeft = 165894
          mmTop = 5027
          mmWidth = 27252
          BandType = 5
          GroupNo = 0
        end
      end
    end
    object ppGroup6: TppGroup
      BreakName = 'Nombre'
      DataPipeline = plReporte
      GroupFileSettings.NewFile = False
      GroupFileSettings.EmailFile = False
      OutlineSettings.CreateNode = True
      StartOnOddPage = False
      UserName = 'Group5'
      mmNewColumnThreshold = 0
      mmNewPageThreshold = 0
      DataPipelineName = 'plReporte'
      NewFile = False
      object ppGroupHeaderBand6: TppGroupHeaderBand
        Background.Brush.Style = bsClear
        mmBottomOffset = 0
        mmHeight = 6085
        mmPrintPosition = 0
        object ppDBText31: TppDBText
          UserName = 'DBText43'
          HyperlinkEnabled = False
          DataField = 'Nombre'
          DataPipeline = plReporte
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Verdana'
          Font.Size = 8
          Font.Style = [fsBold]
          ParentDataPipeline = False
          Transparent = True
          DataPipelineName = 'plReporte'
          mmHeight = 3440
          mmLeft = 2646
          mmTop = 794
          mmWidth = 125413
          BandType = 3
          GroupNo = 1
        end
      end
      object ppGroupFooterBand6: TppGroupFooterBand
        Background.Brush.Style = bsClear
        HideWhenOneDetail = False
        mmBottomOffset = 0
        mmHeight = 8996
        mmPrintPosition = 0
        object ppShape6: TppShape
          UserName = 'Shape2'
          Brush.Color = 16053492
          ParentWidth = True
          Pen.Style = psClear
          mmHeight = 4233
          mmLeft = 0
          mmTop = 4498
          mmWidth = 208280
          BandType = 5
          GroupNo = 1
        end
        object ppDBCalc28: TppDBCalc
          UserName = 'DBCalc10'
          HyperlinkEnabled = False
          DataField = 'NoVenc'
          DataPipeline = plReporte
          DisplayFormat = '#,0.00;(#,0.00)'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Verdana'
          Font.Size = 7
          Font.Style = [fsBold]
          ResetGroup = ppGroup6
          TextAlignment = taRightJustified
          Transparent = True
          DataPipelineName = 'plReporte'
          mmHeight = 3104
          mmLeft = 77523
          mmTop = 529
          mmWidth = 23283
          BandType = 5
          GroupNo = 0
        end
        object ppDBCalc29: TppDBCalc
          UserName = 'DBCalc101'
          HyperlinkEnabled = False
          DataField = 'A30'
          DataPipeline = plReporte
          DisplayFormat = '#,0.00;(#,0.00)'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Verdana'
          Font.Size = 7
          Font.Style = [fsBold]
          ResetGroup = ppGroup6
          TextAlignment = taRightJustified
          Transparent = True
          DataPipelineName = 'plReporte'
          mmHeight = 3104
          mmLeft = 102394
          mmTop = 529
          mmWidth = 27517
          BandType = 5
          GroupNo = 0
        end
        object ppDBCalc30: TppDBCalc
          UserName = 'DBCalc3'
          HyperlinkEnabled = False
          DataField = 'A60'
          DataPipeline = plReporte
          DisplayFormat = '#,0.00;(#,0.00)'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Verdana'
          Font.Size = 7
          Font.Style = [fsBold]
          ResetGroup = ppGroup6
          TextAlignment = taRightJustified
          Transparent = True
          DataPipelineName = 'plReporte'
          mmHeight = 3104
          mmLeft = 131763
          mmTop = 529
          mmWidth = 27517
          BandType = 5
          GroupNo = 0
        end
        object ppDBCalc31: TppDBCalc
          UserName = 'DBCalc5'
          HyperlinkEnabled = False
          DataField = 'A90'
          DataPipeline = plReporte
          DisplayFormat = '#,0.00;(#,0.00)'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Verdana'
          Font.Size = 7
          Font.Style = [fsBold]
          ResetGroup = ppGroup6
          TextAlignment = taRightJustified
          Transparent = True
          DataPipelineName = 'plReporte'
          mmHeight = 3104
          mmLeft = 160867
          mmTop = 529
          mmWidth = 27517
          BandType = 5
          GroupNo = 0
        end
        object ppDBCalc32: TppDBCalc
          UserName = 'DBCalc103'
          HyperlinkEnabled = False
          DataField = 'Total'
          DataPipeline = plReporte
          DisplayFormat = '#,0.00;(#,0.00)'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Verdana'
          Font.Size = 7
          Font.Style = [fsBold]
          ResetGroup = ppGroup6
          TextAlignment = taRightJustified
          Transparent = True
          DataPipelineName = 'plReporte'
          mmHeight = 3104
          mmLeft = 43656
          mmTop = 529
          mmWidth = 32544
          BandType = 5
          GroupNo = 0
        end
        object ppLabel38: TppLabel
          UserName = 'Label9'
          HyperlinkEnabled = False
          AutoSize = False
          Caption = 'Sub total'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Verdana'
          Font.Size = 7
          Font.Style = [fsBold]
          Transparent = True
          mmHeight = 4233
          mmLeft = 2381
          mmTop = 529
          mmWidth = 15875
          BandType = 5
          GroupNo = 0
        end
        object ppLine11: TppLine
          UserName = 'Line1'
          Pen.Width = 0
          ParentWidth = True
          Weight = 0.250000000000000000
          mmHeight = 529
          mmLeft = 0
          mmTop = 0
          mmWidth = 208280
          BandType = 5
          GroupNo = 0
        end
        object ppLabel40: TppLabel
          UserName = 'Label13'
          HyperlinkEnabled = False
          Caption = 'Balance:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Verdana'
          Font.Size = 7
          Font.Style = [fsBold]
          TextAlignment = taRightJustified
          Transparent = True
          mmHeight = 3440
          mmLeft = 152400
          mmTop = 5027
          mmWidth = 11642
          BandType = 5
          GroupNo = 1
        end
        object ppDBText33: TppDBText
          UserName = 'DBText10'
          HyperlinkEnabled = False
          DataField = 'Balance'
          DataPipeline = plReporte
          DisplayFormat = '#,0.00;(#,0.00)'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Verdana'
          Font.Size = 7
          Font.Style = [fsBold]
          ParentDataPipeline = False
          Transparent = True
          DataPipelineName = 'plReporte'
          mmHeight = 3440
          mmLeft = 165365
          mmTop = 5027
          mmWidth = 27252
          BandType = 5
          GroupNo = 1
        end
        object ppLabel41: TppLabel
          UserName = 'Label8'
          HyperlinkEnabled = False
          Caption = 'Total aplicado:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Verdana'
          Font.Size = 7
          Font.Style = [fsBold]
          TextAlignment = taRightJustified
          Transparent = True
          Visible = False
          mmHeight = 3440
          mmLeft = 86519
          mmTop = 5027
          mmWidth = 25135
          BandType = 5
          GroupNo = 1
        end
        object ppDBCalc33: TppDBCalc
          UserName = 'DBCalc13'
          HyperlinkEnabled = False
          DataField = 'Pagado'
          DataPipeline = plReporte
          DisplayFormat = '#,0.00;(#,0.00)'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Verdana'
          Font.Size = 7
          Font.Style = [fsBold]
          ResetGroup = ppGroup6
          Transparent = True
          Visible = False
          DataPipelineName = 'plReporte'
          mmHeight = 3175
          mmLeft = 112448
          mmTop = 5027
          mmWidth = 27517
          BandType = 5
          GroupNo = 1
        end
        object ppLine12: TppLine
          UserName = 'Line4'
          ParentWidth = True
          Weight = 0.750000000000000000
          mmHeight = 265
          mmLeft = 0
          mmTop = 8731
          mmWidth = 208280
          BandType = 5
          GroupNo = 1
        end
      end
    end
    object ppParameterList3: TppParameterList
    end
  end
  object plConfig: TppDBPipeline
    DataSource = dsConfig
    UserName = 'plConfig'
    Left = 218
    Top = 198
    object plConfigppField1: TppField
      FieldAlias = 'Compania'
      FieldName = 'Compania'
      FieldLength = 50
      DisplayWidth = 50
      Position = 0
    end
    object plConfigppField2: TppField
      FieldAlias = 'Telefono'
      FieldName = 'Telefono'
      FieldLength = 15
      DisplayWidth = 15
      Position = 1
    end
    object plConfigppField3: TppField
      FieldAlias = 'Fax'
      FieldName = 'Fax'
      FieldLength = 15
      DisplayWidth = 15
      Position = 2
    end
    object plConfigppField4: TppField
      FieldAlias = 'RNC'
      FieldName = 'RNC'
      FieldLength = 20
      DisplayWidth = 20
      Position = 3
    end
    object plConfigppField5: TppField
      FieldAlias = 'Direccion'
      FieldName = 'Direccion'
      FieldLength = 120
      DisplayWidth = 120
      Position = 4
    end
    object plConfigppField6: TppField
      FieldAlias = 'CompaniaCorto'
      FieldName = 'CompaniaCorto'
      FieldLength = 16
      DisplayWidth = 16
      Position = 5
    end
    object plConfigppField7: TppField
      FieldAlias = 'TituloApp'
      FieldName = 'TituloApp'
      FieldLength = 50
      DisplayWidth = 50
      Position = 6
    end
    object plConfigppField8: TppField
      Alignment = taRightJustify
      FieldAlias = 'idCompania'
      FieldName = 'idCompania'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 7
    end
    object plConfigppField9: TppField
      FieldAlias = 'Prefijo'
      FieldName = 'Prefijo'
      FieldLength = 4
      DisplayWidth = 4
      Position = 8
    end
    object plConfigppField10: TppField
      FieldAlias = 'idOficina'
      FieldName = 'idOficina'
      FieldLength = 16
      DisplayWidth = 16
      Position = 9
    end
    object plConfigppField11: TppField
      FieldAlias = 'AgenteAWB'
      FieldName = 'AgenteAWB'
      FieldLength = 50
      DisplayWidth = 50
      Position = 10
    end
  end
  object dsConfig: TDataSource
    DataSet = dm.Configuracion
    Left = 130
    Top = 241
  end
  object RPTVencimiento: TppReport
    AutoStop = False
    DataPipeline = plReporte
    PassSetting = psTwoPass
    PrinterSetup.BinName = 'Default'
    PrinterSetup.DocumentName = 'Report'
    PrinterSetup.Orientation = poLandscape
    PrinterSetup.PaperName = 'Letter'
    PrinterSetup.PrinterName = 'Default'
    PrinterSetup.SaveDeviceSettings = False
    PrinterSetup.mmMarginBottom = 13970
    PrinterSetup.mmMarginLeft = 3810
    PrinterSetup.mmMarginRight = 3810
    PrinterSetup.mmMarginTop = 6350
    PrinterSetup.mmPaperHeight = 215900
    PrinterSetup.mmPaperWidth = 279401
    PrinterSetup.PaperSize = 1
    Template.FileName = 'E:\Sheresade\CuentasXPagar\Reporte de Sols.rtm'
    AllowPrintToArchive = True
    AllowPrintToFile = True
    ArchiveFileName = '($MyDocuments)\ReportArchive.raf'
    DeviceType = 'Screen'
    DefaultFileDeviceType = 'PDF'
    EmailSettings.ReportFormat = 'PDF'
    LanguageID = 'Default'
    OpenFile = False
    OutlineSettings.CreateNode = True
    OutlineSettings.CreatePageNodes = True
    OutlineSettings.Enabled = False
    OutlineSettings.Visible = False
    ThumbnailSettings.Enabled = False
    ThumbnailSettings.Visible = False
    ThumbnailSettings.DeadSpace = 30
    PDFSettings.EmbedFontOptions = [efUseSubset]
    PDFSettings.EncryptSettings.AllowCopy = True
    PDFSettings.EncryptSettings.AllowInteract = True
    PDFSettings.EncryptSettings.AllowModify = True
    PDFSettings.EncryptSettings.AllowPrint = True
    PDFSettings.EncryptSettings.Enabled = False
    PDFSettings.EncryptSettings.KeyLength = kl40Bit
    PDFSettings.FontEncoding = feAnsi
    PDFSettings.ImageCompressionLevel = 25
    RTFSettings.DefaultFont.Charset = DEFAULT_CHARSET
    RTFSettings.DefaultFont.Color = clWindowText
    RTFSettings.DefaultFont.Height = -13
    RTFSettings.DefaultFont.Name = 'Arial'
    RTFSettings.DefaultFont.Style = []
    TextFileName = '($MyDocuments)\Report.pdf'
    TextSearchSettings.DefaultString = '<FindText>'
    TextSearchSettings.Enabled = False
    XLSSettings.AppName = 'ReportBuilder'
    XLSSettings.Author = 'ReportBuilder'
    XLSSettings.Subject = 'Report'
    XLSSettings.Title = 'Report'
    Left = 650
    Top = 244
    Version = '15.02'
    mmColumnWidth = 0
    DataPipelineName = 'plReporte'
    object ppTitleBand4: TppTitleBand
      Background.Brush.Style = bsClear
      mmBottomOffset = 0
      mmHeight = 2117
      mmPrintPosition = 0
    end
    object ppHeaderBand3: TppHeaderBand
      Background.Brush.Style = bsClear
      mmBottomOffset = 0
      mmHeight = 34925
      mmPrintPosition = 0
      object ppLine16: TppLine
        UserName = 'Line17'
        Pen.Width = 2
        ParentWidth = True
        Weight = 1.500000000000000000
        mmHeight = 529
        mmLeft = 0
        mmTop = 33867
        mmWidth = 271781
        BandType = 0
      end
      object ppLabel1: TppLabel
        UserName = 'Label17'
        HyperlinkEnabled = False
        AutoSize = False
        Caption = 'Factura'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Verdana'
        Font.Size = 7
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 4233
        mmLeft = 6879
        mmTop = 29369
        mmWidth = 18256
        BandType = 0
      end
      object ppLabel26: TppLabel
        UserName = 'plFecha'
        HyperlinkEnabled = False
        AutoSize = False
        Caption = 'Fecha'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Verdana'
        Font.Size = 7
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 4233
        mmLeft = 88371
        mmTop = 29369
        mmWidth = 20108
        BandType = 0
      end
      object ppLabel45: TppLabel
        UserName = 'Label61'
        HyperlinkEnabled = False
        AutoSize = False
        Caption = 'Valor factura'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Verdana'
        Font.Size = 7
        Font.Style = [fsBold]
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 4233
        mmLeft = 131234
        mmTop = 29369
        mmWidth = 24606
        BandType = 0
      end
      object ppLabel46: TppLabel
        UserName = 'plTitulo'
        HyperlinkEnabled = False
        AutoSize = False
        Caption = 'Antiguedad de Saldos por vencimiento'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Tahoma'
        Font.Size = 14
        Font.Style = [fsBold, fsItalic]
        Transparent = True
        mmHeight = 6350
        mmLeft = 6615
        mmTop = 8996
        mmWidth = 125413
        BandType = 0
      end
      object ppSystemVariable5: TppSystemVariable
        UserName = 'SystemVariable11'
        HyperlinkEnabled = False
        VarType = vtPrintDateTime
        DisplayFormat = 'dd/mm/yyyy '#39'@'#39' hh:nn:ss AM/PM'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Verdana'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 4233
        mmLeft = 214313
        mmTop = 265
        mmWidth = 56886
        BandType = 0
      end
      object ppSystemVariable6: TppSystemVariable
        UserName = 'SystemVariable12'
        HyperlinkEnabled = False
        VarType = vtPageSetDesc
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Verdana'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 4233
        mmLeft = 242094
        mmTop = 5027
        mmWidth = 29104
        BandType = 0
      end
      object ppVariable4: TppVariable
        UserName = 'Variable1'
        HyperlinkEnabled = False
        BlankWhenZero = False
        CalcOrder = 0
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Verdana'
        Font.Size = 10
        Font.Style = [fsBold, fsItalic]
        OnCalc = ppVariable1Calc
        Transparent = True
        mmHeight = 4233
        mmLeft = 6879
        mmTop = 15875
        mmWidth = 18785
        BandType = 0
      end
      object ppLabel47: TppLabel
        UserName = 'Label2'
        HyperlinkEnabled = False
        AutoSize = False
        Caption = '0 a 30'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Verdana'
        Font.Size = 7
        Font.Style = [fsBold]
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 4233
        mmLeft = 157163
        mmTop = 29369
        mmWidth = 23283
        BandType = 0
      end
      object ppLabel48: TppLabel
        UserName = 'Label3'
        HyperlinkEnabled = False
        AutoSize = False
        Caption = '31 a 60'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Verdana'
        Font.Size = 7
        Font.Style = [fsBold]
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 4233
        mmLeft = 182034
        mmTop = 29369
        mmWidth = 27517
        BandType = 0
      end
      object ppLabel49: TppLabel
        UserName = 'Label4'
        HyperlinkEnabled = False
        AutoSize = False
        Caption = '61 a 90'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Verdana'
        Font.Size = 7
        Font.Style = [fsBold]
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 4233
        mmLeft = 211403
        mmTop = 29369
        mmWidth = 27517
        BandType = 0
      end
      object ppLabel50: TppLabel
        UserName = 'Label6'
        HyperlinkEnabled = False
        AutoSize = False
        Caption = '91 dias o mas'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Verdana'
        Font.Size = 7
        Font.Style = [fsBold]
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 4233
        mmLeft = 240507
        mmTop = 29369
        mmWidth = 27517
        BandType = 0
      end
      object ppLabel51: TppLabel
        UserName = 'Label7'
        HyperlinkEnabled = False
        AutoSize = False
        Caption = 'PENDIENTE'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Verdana'
        Font.Size = 7
        Font.Style = [fsBold]
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 4233
        mmLeft = 157163
        mmTop = 24871
        mmWidth = 110861
        BandType = 0
      end
      object ppDBText12: TppDBText
        UserName = 'DBText7'
        HyperlinkEnabled = False
        DataField = 'Moneda'
        DataPipeline = plReporte
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Verdana'
        Font.Size = 8
        Font.Style = [fsBold]
        Transparent = True
        DataPipelineName = 'plReporte'
        mmHeight = 3440
        mmLeft = 6879
        mmTop = 20638
        mmWidth = 125413
        BandType = 0
      end
      object ppDBText13: TppDBText
        UserName = 'DBText34'
        HyperlinkEnabled = False
        DataField = 'Compania'
        DataPipeline = plConfig
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Verdana'
        Font.Size = 20
        Font.Style = [fsBold]
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'plConfig'
        mmHeight = 8467
        mmLeft = 6615
        mmTop = 265
        mmWidth = 137054
        BandType = 0
      end
      object ppLabel60: TppLabel
        UserName = 'plFecha1'
        HyperlinkEnabled = False
        AutoSize = False
        Caption = 'Vencimiento'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Verdana'
        Font.Size = 7
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 4233
        mmLeft = 109802
        mmTop = 29369
        mmWidth = 20108
        BandType = 0
      end
      object ppLabel62: TppLabel
        UserName = 'Label62'
        HyperlinkEnabled = False
        AutoSize = False
        Caption = 'NCF'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Verdana'
        Font.Size = 7
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 4233
        mmLeft = 46038
        mmTop = 29369
        mmWidth = 21960
        BandType = 0
      end
    end
    object ppDetailBand3: TppDetailBand
      Background1.Brush.Style = bsClear
      Background2.Brush.Style = bsClear
      mmBottomOffset = 0
      mmHeight = 3704
      mmPrintPosition = 0
      object ppShape3: TppShape
        OnPrint = ppShape1Print
        UserName = 'Shape1'
        Brush.Color = 16053492
        Pen.Style = psClear
        mmHeight = 3704
        mmLeft = 0
        mmTop = 265
        mmWidth = 207963
        BandType = 4
      end
      object ppDBText14: TppDBText
        UserName = 'DBText41'
        HyperlinkEnabled = False
        DataField = 'Factura'
        DataPipeline = plReporte
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Verdana'
        Font.Size = 7
        Font.Style = []
        Transparent = True
        DataPipelineName = 'plReporte'
        mmHeight = 3175
        mmLeft = 6879
        mmTop = 0
        mmWidth = 38100
        BandType = 4
      end
      object ppDBText15: TppDBText
        UserName = 'ptFecha'
        HyperlinkEnabled = False
        DataField = 'Fecha'
        DataPipeline = plReporte
        DisplayFormat = 'dd/mm/yyyy'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Verdana'
        Font.Size = 7
        Font.Style = []
        Transparent = True
        DataPipelineName = 'plReporte'
        mmHeight = 3175
        mmLeft = 88371
        mmTop = 0
        mmWidth = 20108
        BandType = 4
      end
      object ppDBText16: TppDBText
        UserName = 'DBText44'
        HyperlinkEnabled = False
        DataField = 'Total'
        DataPipeline = plReporte
        DisplayFormat = '$#,0.00;($#,0.00)'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Verdana'
        Font.Size = 7
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'plReporte'
        mmHeight = 3175
        mmLeft = 131234
        mmTop = 0
        mmWidth = 24606
        BandType = 4
      end
      object ppDBText17: TppDBText
        UserName = 'DBText1'
        HyperlinkEnabled = False
        DataField = 'NoVenc'
        DataPipeline = plReporte
        DisplayFormat = '$#,0.00;($#,0.00)'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Verdana'
        Font.Size = 7
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'plReporte'
        mmHeight = 3175
        mmLeft = 157163
        mmTop = 0
        mmWidth = 23283
        BandType = 4
      end
      object ppDBText18: TppDBText
        UserName = 'DBText2'
        HyperlinkEnabled = False
        DataField = 'A30'
        DataPipeline = plReporte
        DisplayFormat = '$#,0.00;($#,0.00)'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Verdana'
        Font.Size = 7
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'plReporte'
        mmHeight = 3175
        mmLeft = 182034
        mmTop = 0
        mmWidth = 27517
        BandType = 4
      end
      object ppDBText40: TppDBText
        UserName = 'DBText3'
        HyperlinkEnabled = False
        DataField = 'A60'
        DataPipeline = plReporte
        DisplayFormat = '$#,0.00;($#,0.00)'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Verdana'
        Font.Size = 7
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'plReporte'
        mmHeight = 3175
        mmLeft = 211403
        mmTop = 0
        mmWidth = 27517
        BandType = 4
      end
      object ppDBText42: TppDBText
        UserName = 'DBText4'
        HyperlinkEnabled = False
        DataField = 'A90'
        DataPipeline = plReporte
        DisplayFormat = '$#,0.00;($#,0.00)'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Verdana'
        Font.Size = 7
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'plReporte'
        mmHeight = 3175
        mmLeft = 240507
        mmTop = 0
        mmWidth = 27517
        BandType = 4
      end
      object ppDBText52: TppDBText
        UserName = 'ptFecha1'
        HyperlinkEnabled = False
        DataField = 'Vencimiento'
        DataPipeline = plReporte
        DisplayFormat = 'dd/mm/yyyy'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Verdana'
        Font.Size = 7
        Font.Style = []
        Transparent = True
        DataPipelineName = 'plReporte'
        mmHeight = 3175
        mmLeft = 109802
        mmTop = 0
        mmWidth = 20108
        BandType = 4
      end
      object ppDBText53: TppDBText
        UserName = 'DBText53'
        HyperlinkEnabled = False
        DataField = 'CompFiscal'
        DataPipeline = plReporte
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Verdana'
        Font.Size = 7
        Font.Style = []
        Transparent = True
        DataPipelineName = 'plReporte'
        mmHeight = 3175
        mmLeft = 46038
        mmTop = 0
        mmWidth = 41804
        BandType = 4
      end
    end
    object ppFooterBand3: TppFooterBand
      Background.Brush.Style = bsClear
      mmBottomOffset = 0
      mmHeight = 0
      mmPrintPosition = 0
    end
    object ppSummaryBand3: TppSummaryBand
      Background.Brush.Style = bsClear
      mmBottomOffset = 0
      mmHeight = 0
      mmPrintPosition = 0
    end
    object ppGroup9: TppGroup
      BreakName = 'Moneda'
      DataPipeline = plReporte
      GroupFileSettings.NewFile = False
      GroupFileSettings.EmailFile = False
      OutlineSettings.CreateNode = True
      NewPage = True
      StartOnOddPage = False
      UserName = 'Group1'
      mmNewColumnThreshold = 0
      mmNewPageThreshold = 0
      DataPipelineName = 'plReporte'
      NewFile = False
      object ppGroupHeaderBand9: TppGroupHeaderBand
        Background.Brush.Style = bsClear
        mmBottomOffset = 0
        mmHeight = 0
        mmPrintPosition = 0
      end
      object ppGroupFooterBand9: TppGroupFooterBand
        Background.Brush.Style = bsClear
        HideWhenOneDetail = False
        mmBottomOffset = 0
        mmHeight = 10583
        mmPrintPosition = 0
        object ppShape8: TppShape
          UserName = 'Shape3'
          Brush.Color = 15000804
          ParentHeight = True
          ParentWidth = True
          Pen.Style = psClear
          mmHeight = 10583
          mmLeft = 0
          mmTop = 0
          mmWidth = 271781
          BandType = 5
          GroupNo = 0
        end
        object ppDBCalc44: TppDBCalc
          UserName = 'DBCalc102'
          HyperlinkEnabled = False
          DataField = 'NoVenc'
          DataPipeline = plReporte
          DisplayFormat = '#,0.00;(#,0.00)'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Verdana'
          Font.Size = 7
          Font.Style = [fsBold]
          ResetGroup = ppGroup9
          TextAlignment = taRightJustified
          Transparent = True
          DataPipelineName = 'plReporte'
          mmHeight = 3175
          mmLeft = 157163
          mmTop = 1058
          mmWidth = 23283
          BandType = 5
          GroupNo = 0
        end
        object ppDBCalc45: TppDBCalc
          UserName = 'DBCalc4'
          HyperlinkEnabled = False
          DataField = 'A30'
          DataPipeline = plReporte
          DisplayFormat = '#,0.00;(#,0.00)'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Verdana'
          Font.Size = 7
          Font.Style = [fsBold]
          ResetGroup = ppGroup9
          TextAlignment = taRightJustified
          Transparent = True
          DataPipelineName = 'plReporte'
          mmHeight = 3175
          mmLeft = 182034
          mmTop = 1058
          mmWidth = 27517
          BandType = 5
          GroupNo = 0
        end
        object ppDBCalc46: TppDBCalc
          UserName = 'DBCalc7'
          HyperlinkEnabled = False
          DataField = 'A60'
          DataPipeline = plReporte
          DisplayFormat = '#,0.00;(#,0.00)'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Verdana'
          Font.Size = 7
          Font.Style = [fsBold]
          ResetGroup = ppGroup9
          TextAlignment = taRightJustified
          Transparent = True
          DataPipelineName = 'plReporte'
          mmHeight = 3175
          mmLeft = 211403
          mmTop = 1058
          mmWidth = 27517
          BandType = 5
          GroupNo = 0
        end
        object ppDBCalc47: TppDBCalc
          UserName = 'DBCalc8'
          HyperlinkEnabled = False
          DataField = 'A90'
          DataPipeline = plReporte
          DisplayFormat = '#,0.00;(#,0.00)'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Verdana'
          Font.Size = 7
          Font.Style = [fsBold]
          ResetGroup = ppGroup9
          TextAlignment = taRightJustified
          Transparent = True
          DataPipelineName = 'plReporte'
          mmHeight = 3175
          mmLeft = 240507
          mmTop = 1058
          mmWidth = 27517
          BandType = 5
          GroupNo = 0
        end
        object ppDBCalc48: TppDBCalc
          UserName = 'DBCalc12'
          HyperlinkEnabled = False
          DataField = 'Total'
          DataPipeline = plReporte
          DisplayFormat = '#,0.00;(#,0.00)'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Verdana'
          Font.Size = 7
          Font.Style = [fsBold]
          ResetGroup = ppGroup9
          TextAlignment = taRightJustified
          Transparent = True
          DataPipelineName = 'plReporte'
          mmHeight = 3175
          mmLeft = 123296
          mmTop = 1058
          mmWidth = 32544
          BandType = 5
          GroupNo = 0
        end
        object ppLabel52: TppLabel
          UserName = 'Label10'
          HyperlinkEnabled = False
          AutoSize = False
          Caption = 'Total general'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Verdana'
          Font.Size = 7
          Font.Style = [fsBold]
          Transparent = True
          mmHeight = 3440
          mmLeft = 6879
          mmTop = 1058
          mmWidth = 19579
          BandType = 5
          GroupNo = 0
        end
        object ppLine18: TppLine
          UserName = 'Line2'
          Pen.Width = 0
          ParentWidth = True
          Weight = 0.250000000000000000
          mmHeight = 1323
          mmLeft = 0
          mmTop = 529
          mmWidth = 271781
          BandType = 5
          GroupNo = 0
        end
        object ppLine19: TppLine
          UserName = 'Line3'
          Pen.Width = 0
          ParentWidth = True
          Style = lsDouble
          Weight = 0.250000000000000000
          mmHeight = 1058
          mmLeft = 0
          mmTop = 9525
          mmWidth = 271781
          BandType = 5
          GroupNo = 0
        end
        object ppLabel53: TppLabel
          UserName = 'Label12'
          HyperlinkEnabled = False
          Caption = 'Total general:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Verdana'
          Font.Size = 7
          Font.Style = [fsBold]
          TextAlignment = taRightJustified
          Transparent = True
          mmHeight = 2910
          mmLeft = 219340
          mmTop = 5027
          mmWidth = 19579
          BandType = 5
          GroupNo = 0
        end
        object ppDBText45: TppDBText
          UserName = 'DBText101'
          HyperlinkEnabled = False
          DataField = 'BalanceXMoneda'
          DataPipeline = plReporte
          DisplayFormat = '#,0.00;(#,0.00)'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Verdana'
          Font.Size = 7
          Font.Style = [fsBold]
          ParentDataPipeline = False
          TextAlignment = taRightJustified
          Transparent = True
          DataPipelineName = 'plReporte'
          mmHeight = 3440
          mmLeft = 240771
          mmTop = 5027
          mmWidth = 27252
          BandType = 5
          GroupNo = 0
        end
      end
    end
    object ppGroup10: TppGroup
      BreakName = 'TipoSuplidor'
      DataPipeline = plReporte
      GroupFileSettings.NewFile = False
      GroupFileSettings.EmailFile = False
      OutlineSettings.CreateNode = True
      StartOnOddPage = False
      UserName = 'Group7'
      mmNewColumnThreshold = 0
      mmNewPageThreshold = 0
      DataPipelineName = 'plReporte'
      NewFile = False
      object ppGroupHeaderBand10: TppGroupHeaderBand
        Background.Brush.Style = bsClear
        mmBottomOffset = 0
        mmHeight = 6085
        mmPrintPosition = 0
        object ppDBText46: TppDBText
          UserName = 'DBText36'
          HyperlinkEnabled = False
          DataField = 'TipoSuplidor'
          DataPipeline = plReporte
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 12
          Font.Style = [fsBold]
          Transparent = True
          DataPipelineName = 'plReporte'
          mmHeight = 4586
          mmLeft = 6615
          mmTop = 529
          mmWidth = 132557
          BandType = 3
          GroupNo = 1
        end
      end
      object ppGroupFooterBand10: TppGroupFooterBand
        Background.Brush.Style = bsClear
        HideWhenOneDetail = False
        mmBottomOffset = 0
        mmHeight = 7673
        mmPrintPosition = 0
        object ppDBCalc49: TppDBCalc
          UserName = 'DBCalc34'
          HyperlinkEnabled = False
          DataField = 'NoVenc'
          DataPipeline = plReporte
          DisplayFormat = '#,0.00;(#,0.00)'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Verdana'
          Font.Size = 7
          Font.Style = [fsBold]
          ResetGroup = ppGroup10
          TextAlignment = taRightJustified
          Transparent = True
          DataPipelineName = 'plReporte'
          mmHeight = 3175
          mmLeft = 159279
          mmTop = 265
          mmWidth = 23283
          BandType = 5
          GroupNo = 1
        end
        object ppDBCalc50: TppDBCalc
          UserName = 'DBCalc35'
          HyperlinkEnabled = False
          DataField = 'A30'
          DataPipeline = plReporte
          DisplayFormat = '#,0.00;(#,0.00)'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Verdana'
          Font.Size = 7
          Font.Style = [fsBold]
          ResetGroup = ppGroup10
          TextAlignment = taRightJustified
          Transparent = True
          DataPipelineName = 'plReporte'
          mmHeight = 3175
          mmLeft = 184150
          mmTop = 265
          mmWidth = 27517
          BandType = 5
          GroupNo = 1
        end
        object ppDBCalc51: TppDBCalc
          UserName = 'DBCalc36'
          HyperlinkEnabled = False
          DataField = 'A60'
          DataPipeline = plReporte
          DisplayFormat = '#,0.00;(#,0.00)'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Verdana'
          Font.Size = 7
          Font.Style = [fsBold]
          ResetGroup = ppGroup10
          TextAlignment = taRightJustified
          Transparent = True
          DataPipelineName = 'plReporte'
          mmHeight = 3175
          mmLeft = 213519
          mmTop = 265
          mmWidth = 27517
          BandType = 5
          GroupNo = 1
        end
        object ppDBCalc52: TppDBCalc
          UserName = 'DBCalc37'
          HyperlinkEnabled = False
          DataField = 'A90'
          DataPipeline = plReporte
          DisplayFormat = '#,0.00;(#,0.00)'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Verdana'
          Font.Size = 7
          Font.Style = [fsBold]
          ResetGroup = ppGroup10
          TextAlignment = taRightJustified
          Transparent = True
          DataPipelineName = 'plReporte'
          mmHeight = 3175
          mmLeft = 242623
          mmTop = 265
          mmWidth = 27517
          BandType = 5
          GroupNo = 1
        end
        object ppDBCalc53: TppDBCalc
          UserName = 'DBCalc38'
          HyperlinkEnabled = False
          DataField = 'Total'
          DataPipeline = plReporte
          DisplayFormat = '#,0.00;(#,0.00)'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Verdana'
          Font.Size = 7
          Font.Style = [fsBold]
          ResetGroup = ppGroup10
          TextAlignment = taRightJustified
          Transparent = True
          DataPipelineName = 'plReporte'
          mmHeight = 3175
          mmLeft = 123296
          mmTop = 265
          mmWidth = 32544
          BandType = 5
          GroupNo = 1
        end
        object ppLabel54: TppLabel
          UserName = 'Label101'
          HyperlinkEnabled = False
          AutoSize = False
          Caption = 'Total por tipo de suplidor'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Verdana'
          Font.Size = 7
          Font.Style = [fsBold]
          Transparent = True
          mmHeight = 3440
          mmLeft = 8996
          mmTop = 265
          mmWidth = 39158
          BandType = 5
          GroupNo = 1
        end
        object ppLine20: TppLine
          UserName = 'Line13'
          Pen.Width = 0
          ParentWidth = True
          Weight = 0.250000000000000000
          mmHeight = 1323
          mmLeft = 0
          mmTop = 0
          mmWidth = 271781
          BandType = 5
          GroupNo = 1
        end
        object ppLabel55: TppLabel
          UserName = 'Label42'
          HyperlinkEnabled = False
          Caption = 'Balance:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Verdana'
          Font.Size = 7
          Font.Style = [fsBold]
          TextAlignment = taRightJustified
          Transparent = True
          mmHeight = 2910
          mmLeft = 229130
          mmTop = 4233
          mmWidth = 11906
          BandType = 5
          GroupNo = 1
        end
        object ppDBText47: TppDBText
          UserName = 'DBText37'
          HyperlinkEnabled = False
          DataField = 'BalanceXTipo'
          DataPipeline = plReporte
          DisplayFormat = '#,0.00;(#,0.00)'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Verdana'
          Font.Size = 7
          Font.Style = [fsBold]
          ParentDataPipeline = False
          TextAlignment = taRightJustified
          Transparent = True
          DataPipelineName = 'plReporte'
          mmHeight = 3440
          mmLeft = 242888
          mmTop = 4233
          mmWidth = 27252
          BandType = 5
          GroupNo = 1
        end
      end
    end
    object ppGroup11: TppGroup
      BreakName = 'Nombre'
      DataPipeline = plReporte
      GroupFileSettings.NewFile = False
      GroupFileSettings.EmailFile = False
      OutlineSettings.CreateNode = True
      StartOnOddPage = False
      UserName = 'Group5'
      mmNewColumnThreshold = 0
      mmNewPageThreshold = 0
      DataPipelineName = 'plReporte'
      NewFile = False
      object ppGroupHeaderBand11: TppGroupHeaderBand
        Background.Brush.Style = bsClear
        mmBottomOffset = 0
        mmHeight = 6085
        mmPrintPosition = 0
        object ppDBText48: TppDBText
          UserName = 'DBText43'
          HyperlinkEnabled = False
          DataField = 'Nombre'
          DataPipeline = plReporte
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Verdana'
          Font.Size = 8
          Font.Style = [fsBold]
          ParentDataPipeline = False
          Transparent = True
          DataPipelineName = 'plReporte'
          mmHeight = 3440
          mmLeft = 32015
          mmTop = 794
          mmWidth = 125942
          BandType = 3
          GroupNo = 1
        end
        object ppDBText49: TppDBText
          UserName = 'DBText32'
          HyperlinkEnabled = False
          DataField = 'idSuplidor'
          DataPipeline = plReporte
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Verdana'
          Font.Size = 8
          Font.Style = [fsBold]
          ParentDataPipeline = False
          Transparent = True
          DataPipelineName = 'plReporte'
          mmHeight = 3440
          mmLeft = 5292
          mmTop = 794
          mmWidth = 24077
          BandType = 3
          GroupNo = 1
        end
      end
      object ppGroupFooterBand11: TppGroupFooterBand
        Background.Brush.Style = bsClear
        HideWhenOneDetail = False
        mmBottomOffset = 0
        mmHeight = 8996
        mmPrintPosition = 0
        object ppShape9: TppShape
          UserName = 'Shape2'
          Brush.Color = 16053492
          ParentWidth = True
          Pen.Style = psClear
          mmHeight = 4233
          mmLeft = 0
          mmTop = 4498
          mmWidth = 271781
          BandType = 5
          GroupNo = 1
        end
        object ppDBCalc54: TppDBCalc
          UserName = 'DBCalc10'
          HyperlinkEnabled = False
          DataField = 'NoVenc'
          DataPipeline = plReporte
          DisplayFormat = '#,0.00;(#,0.00)'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Verdana'
          Font.Size = 7
          Font.Style = [fsBold]
          ResetGroup = ppGroup11
          TextAlignment = taRightJustified
          Transparent = True
          DataPipelineName = 'plReporte'
          mmHeight = 3175
          mmLeft = 157163
          mmTop = 529
          mmWidth = 23283
          BandType = 5
          GroupNo = 0
        end
        object ppDBCalc55: TppDBCalc
          UserName = 'DBCalc101'
          HyperlinkEnabled = False
          DataField = 'A30'
          DataPipeline = plReporte
          DisplayFormat = '#,0.00;(#,0.00)'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Verdana'
          Font.Size = 7
          Font.Style = [fsBold]
          ResetGroup = ppGroup11
          TextAlignment = taRightJustified
          Transparent = True
          DataPipelineName = 'plReporte'
          mmHeight = 3175
          mmLeft = 182034
          mmTop = 529
          mmWidth = 27517
          BandType = 5
          GroupNo = 0
        end
        object ppDBCalc56: TppDBCalc
          UserName = 'DBCalc3'
          HyperlinkEnabled = False
          DataField = 'A60'
          DataPipeline = plReporte
          DisplayFormat = '#,0.00;(#,0.00)'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Verdana'
          Font.Size = 7
          Font.Style = [fsBold]
          ResetGroup = ppGroup11
          TextAlignment = taRightJustified
          Transparent = True
          DataPipelineName = 'plReporte'
          mmHeight = 3175
          mmLeft = 211403
          mmTop = 529
          mmWidth = 27517
          BandType = 5
          GroupNo = 0
        end
        object ppDBCalc57: TppDBCalc
          UserName = 'DBCalc5'
          HyperlinkEnabled = False
          DataField = 'A90'
          DataPipeline = plReporte
          DisplayFormat = '#,0.00;(#,0.00)'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Verdana'
          Font.Size = 7
          Font.Style = [fsBold]
          ResetGroup = ppGroup11
          TextAlignment = taRightJustified
          Transparent = True
          DataPipelineName = 'plReporte'
          mmHeight = 3175
          mmLeft = 240507
          mmTop = 529
          mmWidth = 27517
          BandType = 5
          GroupNo = 0
        end
        object ppDBCalc58: TppDBCalc
          UserName = 'DBCalc103'
          HyperlinkEnabled = False
          DataField = 'Total'
          DataPipeline = plReporte
          DisplayFormat = '#,0.00;(#,0.00)'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Verdana'
          Font.Size = 7
          Font.Style = [fsBold]
          ResetGroup = ppGroup11
          TextAlignment = taRightJustified
          Transparent = True
          DataPipelineName = 'plReporte'
          mmHeight = 3175
          mmLeft = 123296
          mmTop = 529
          mmWidth = 32544
          BandType = 5
          GroupNo = 0
        end
        object ppLabel56: TppLabel
          UserName = 'Label9'
          HyperlinkEnabled = False
          AutoSize = False
          Caption = 'Sub total'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Verdana'
          Font.Size = 7
          Font.Style = [fsBold]
          Transparent = True
          mmHeight = 4233
          mmLeft = 6879
          mmTop = 529
          mmWidth = 18256
          BandType = 5
          GroupNo = 0
        end
        object ppLine21: TppLine
          UserName = 'Line1'
          Pen.Width = 0
          ParentWidth = True
          Weight = 0.250000000000000000
          mmHeight = 529
          mmLeft = 0
          mmTop = 0
          mmWidth = 271781
          BandType = 5
          GroupNo = 0
        end
        object ppLabel57: TppLabel
          UserName = 'Label11'
          HyperlinkEnabled = False
          Caption = 'Creditos no aplicados:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Verdana'
          Font.Size = 7
          Font.Style = [fsBold]
          TextAlignment = taRightJustified
          Transparent = True
          mmHeight = 3440
          mmLeft = 6879
          mmTop = 5027
          mmWidth = 33073
          BandType = 5
          GroupNo = 1
        end
        object ppDBText50: TppDBText
          UserName = 'DBText9'
          HyperlinkEnabled = False
          DataField = 'Creditos'
          DataPipeline = plReporte
          DisplayFormat = '#,0.00;(#,0.00)'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Verdana'
          Font.Size = 7
          Font.Style = [fsBold]
          ParentDataPipeline = False
          Transparent = True
          DataPipelineName = 'plReporte'
          mmHeight = 3440
          mmLeft = 128588
          mmTop = 4498
          mmWidth = 27252
          BandType = 5
          GroupNo = 1
        end
        object ppLabel58: TppLabel
          UserName = 'Label13'
          HyperlinkEnabled = False
          Caption = 'Balance:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Verdana'
          Font.Size = 7
          Font.Style = [fsBold]
          TextAlignment = taRightJustified
          Transparent = True
          mmHeight = 3440
          mmLeft = 216430
          mmTop = 4498
          mmWidth = 22490
          BandType = 5
          GroupNo = 1
        end
        object ppDBText51: TppDBText
          UserName = 'DBText10'
          HyperlinkEnabled = False
          DataField = 'Balance'
          DataPipeline = plReporte
          DisplayFormat = '#,0.00;(#,0.00)'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Verdana'
          Font.Size = 7
          Font.Style = [fsBold]
          ParentDataPipeline = False
          TextAlignment = taRightJustified
          Transparent = True
          DataPipelineName = 'plReporte'
          mmHeight = 3440
          mmLeft = 240771
          mmTop = 4498
          mmWidth = 27252
          BandType = 5
          GroupNo = 1
        end
        object ppLabel59: TppLabel
          UserName = 'Label8'
          HyperlinkEnabled = False
          Caption = 'Total aplicado:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Verdana'
          Font.Size = 7
          Font.Style = [fsBold]
          TextAlignment = taRightJustified
          Transparent = True
          mmHeight = 3440
          mmLeft = 156104
          mmTop = 4498
          mmWidth = 24342
          BandType = 5
          GroupNo = 1
        end
        object ppDBCalc59: TppDBCalc
          UserName = 'DBCalc13'
          HyperlinkEnabled = False
          DataField = 'Pagado'
          DataPipeline = plReporte
          DisplayFormat = '#,0.00;(#,0.00)'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Verdana'
          Font.Size = 7
          Font.Style = [fsBold]
          ResetGroup = ppGroup11
          Transparent = True
          DataPipelineName = 'plReporte'
          mmHeight = 3175
          mmLeft = 182034
          mmTop = 4498
          mmWidth = 27517
          BandType = 5
          GroupNo = 1
        end
        object ppLine22: TppLine
          UserName = 'Line4'
          ParentWidth = True
          Weight = 0.750000000000000000
          mmHeight = 265
          mmLeft = 0
          mmTop = 8731
          mmWidth = 271781
          BandType = 5
          GroupNo = 1
        end
      end
    end
    object ppParameterList4: TppParameterList
    end
  end
  object Reporte: TppReport
    AutoStop = False
    DataPipeline = plReporte
    PassSetting = psTwoPass
    PrinterSetup.BinName = 'Default'
    PrinterSetup.DocumentName = 'Report'
    PrinterSetup.PaperName = 'Letter'
    PrinterSetup.PrinterName = 'Default'
    PrinterSetup.SaveDeviceSettings = False
    PrinterSetup.mmMarginBottom = 13970
    PrinterSetup.mmMarginLeft = 3810
    PrinterSetup.mmMarginRight = 3810
    PrinterSetup.mmMarginTop = 6350
    PrinterSetup.mmPaperHeight = 279401
    PrinterSetup.mmPaperWidth = 215900
    PrinterSetup.PaperSize = 1
    Template.FileName = 'E:\Sheresade\CuentasXPagar\Reporte de Sols.rtm'
    AllowPrintToArchive = True
    AllowPrintToFile = True
    ArchiveFileName = '($MyDocuments)\ReportArchive.raf'
    DeviceType = 'Screen'
    DefaultFileDeviceType = 'PDF'
    EmailSettings.ReportFormat = 'PDF'
    LanguageID = 'Default'
    OpenFile = False
    OutlineSettings.CreateNode = True
    OutlineSettings.CreatePageNodes = True
    OutlineSettings.Enabled = False
    OutlineSettings.Visible = False
    ThumbnailSettings.Enabled = False
    ThumbnailSettings.Visible = False
    ThumbnailSettings.DeadSpace = 30
    PDFSettings.EmbedFontOptions = [efUseSubset]
    PDFSettings.EncryptSettings.AllowCopy = True
    PDFSettings.EncryptSettings.AllowInteract = True
    PDFSettings.EncryptSettings.AllowModify = True
    PDFSettings.EncryptSettings.AllowPrint = True
    PDFSettings.EncryptSettings.Enabled = False
    PDFSettings.EncryptSettings.KeyLength = kl40Bit
    PDFSettings.FontEncoding = feAnsi
    PDFSettings.ImageCompressionLevel = 25
    RTFSettings.DefaultFont.Charset = DEFAULT_CHARSET
    RTFSettings.DefaultFont.Color = clWindowText
    RTFSettings.DefaultFont.Height = -13
    RTFSettings.DefaultFont.Name = 'Arial'
    RTFSettings.DefaultFont.Style = []
    TextFileName = '($MyDocuments)\Report.pdf'
    TextSearchSettings.DefaultString = '<FindText>'
    TextSearchSettings.Enabled = False
    XLSSettings.AppName = 'ReportBuilder'
    XLSSettings.Author = 'ReportBuilder'
    XLSSettings.Subject = 'Report'
    XLSSettings.Title = 'Report'
    Left = 562
    Top = 172
    Version = '15.02'
    mmColumnWidth = 0
    DataPipelineName = 'plReporte'
    object ppTitleBand5: TppTitleBand
      Background.Brush.Style = bsClear
      mmBottomOffset = 0
      mmHeight = 2117
      mmPrintPosition = 0
    end
    object ppHeaderBand4: TppHeaderBand
      Background.Brush.Style = bsClear
      mmBottomOffset = 0
      mmHeight = 34925
      mmPrintPosition = 0
      object ppLine13: TppLine
        UserName = 'Line17'
        Pen.Width = 2
        Weight = 1.500000000000000000
        mmHeight = 529
        mmLeft = 0
        mmTop = 33867
        mmWidth = 207963
        BandType = 0
      end
      object ppLabel39: TppLabel
        UserName = 'Label17'
        HyperlinkEnabled = False
        AutoSize = False
        Caption = 'Factura'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Verdana'
        Font.Size = 7
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 4233
        mmLeft = 6879
        mmTop = 29369
        mmWidth = 18256
        BandType = 0
      end
      object ppLabel42: TppLabel
        UserName = 'plFecha'
        HyperlinkEnabled = False
        AutoSize = False
        Caption = 'Fecha'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Verdana'
        Font.Size = 7
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 4233
        mmLeft = 46831
        mmTop = 29369
        mmWidth = 17992
        BandType = 0
      end
      object ppLabel63: TppLabel
        UserName = 'Label61'
        HyperlinkEnabled = False
        AutoSize = False
        Caption = 'Valor factura'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Verdana'
        Font.Size = 7
        Font.Style = [fsBold]
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 4233
        mmLeft = 65352
        mmTop = 29369
        mmWidth = 24606
        BandType = 0
      end
      object ppLabel64: TppLabel
        UserName = 'plTitulo'
        HyperlinkEnabled = False
        AutoSize = False
        Caption = 'Antiguedad de Saldos en CxP'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Tahoma'
        Font.Size = 14
        Font.Style = [fsBold, fsItalic]
        Transparent = True
        mmHeight = 6350
        mmLeft = 6615
        mmTop = 8996
        mmWidth = 125413
        BandType = 0
      end
      object ppSystemVariable7: TppSystemVariable
        UserName = 'SystemVariable11'
        HyperlinkEnabled = False
        VarType = vtPrintDateTime
        DisplayFormat = 'dd/mm/yyyy '#39'@'#39' hh:nn:ss AM/PM'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Verdana'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 4233
        mmLeft = 149754
        mmTop = 1058
        mmWidth = 56886
        BandType = 0
      end
      object ppSystemVariable8: TppSystemVariable
        UserName = 'SystemVariable12'
        HyperlinkEnabled = False
        VarType = vtPageSetDesc
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Verdana'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 4233
        mmLeft = 177536
        mmTop = 5821
        mmWidth = 29104
        BandType = 0
      end
      object ppVariable5: TppVariable
        UserName = 'Variable1'
        HyperlinkEnabled = False
        BlankWhenZero = False
        CalcOrder = 0
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Verdana'
        Font.Size = 10
        Font.Style = [fsBold, fsItalic]
        OnCalc = ppVariable1Calc
        Transparent = True
        mmHeight = 4233
        mmLeft = 6879
        mmTop = 15875
        mmWidth = 18785
        BandType = 0
      end
      object ppLabel65: TppLabel
        UserName = 'Label2'
        HyperlinkEnabled = False
        AutoSize = False
        Caption = '0 a 30'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Verdana'
        Font.Size = 7
        Font.Style = [fsBold]
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 4233
        mmLeft = 91281
        mmTop = 29369
        mmWidth = 23283
        BandType = 0
      end
      object ppLabel66: TppLabel
        UserName = 'Label3'
        HyperlinkEnabled = False
        AutoSize = False
        Caption = '31 a 60'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Verdana'
        Font.Size = 7
        Font.Style = [fsBold]
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 4233
        mmLeft = 116152
        mmTop = 29369
        mmWidth = 27517
        BandType = 0
      end
      object ppLabel67: TppLabel
        UserName = 'Label4'
        HyperlinkEnabled = False
        AutoSize = False
        Caption = '61 a 90'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Verdana'
        Font.Size = 7
        Font.Style = [fsBold]
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 4233
        mmLeft = 145521
        mmTop = 29369
        mmWidth = 27517
        BandType = 0
      end
      object ppLabel68: TppLabel
        UserName = 'Label6'
        HyperlinkEnabled = False
        AutoSize = False
        Caption = '91 dias o mas'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Verdana'
        Font.Size = 7
        Font.Style = [fsBold]
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 4233
        mmLeft = 174625
        mmTop = 29369
        mmWidth = 27517
        BandType = 0
      end
      object ppLabel69: TppLabel
        UserName = 'Label7'
        HyperlinkEnabled = False
        AutoSize = False
        Caption = 'PENDIENTE'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Verdana'
        Font.Size = 7
        Font.Style = [fsBold]
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 4233
        mmLeft = 91281
        mmTop = 24871
        mmWidth = 110861
        BandType = 0
      end
      object ppDBText36: TppDBText
        UserName = 'DBText7'
        HyperlinkEnabled = False
        DataField = 'Moneda'
        DataPipeline = plReporte
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Verdana'
        Font.Size = 8
        Font.Style = [fsBold]
        Transparent = True
        DataPipelineName = 'plReporte'
        mmHeight = 3440
        mmLeft = 6879
        mmTop = 20638
        mmWidth = 125413
        BandType = 0
      end
      object ppDBText37: TppDBText
        UserName = 'DBText34'
        HyperlinkEnabled = False
        DataField = 'Compania'
        DataPipeline = plConfig
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Verdana'
        Font.Size = 20
        Font.Style = [fsBold]
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'plConfig'
        mmHeight = 8467
        mmLeft = 6615
        mmTop = 265
        mmWidth = 137054
        BandType = 0
      end
    end
    object ppDetailBand4: TppDetailBand
      Background1.Brush.Style = bsClear
      Background2.Brush.Style = bsClear
      mmBottomOffset = 0
      mmHeight = 3704
      mmPrintPosition = 0
      object ppShape10: TppShape
        OnPrint = ppShape1Print
        UserName = 'Shape1'
        Brush.Color = 16053492
        Pen.Style = psClear
        mmHeight = 3704
        mmLeft = 0
        mmTop = 265
        mmWidth = 207963
        BandType = 4
      end
      object ppDBText54: TppDBText
        UserName = 'DBText41'
        HyperlinkEnabled = False
        DataField = 'Factura'
        DataPipeline = plReporte
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Verdana'
        Font.Size = 7
        Font.Style = []
        Transparent = True
        DataPipelineName = 'plReporte'
        mmHeight = 3175
        mmLeft = 6879
        mmTop = 0
        mmWidth = 38100
        BandType = 4
      end
      object ppDBText55: TppDBText
        UserName = 'ptFecha'
        HyperlinkEnabled = False
        DataField = 'Fecha'
        DataPipeline = plReporte
        DisplayFormat = 'dd/mm/yyyy'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Verdana'
        Font.Size = 7
        Font.Style = []
        Transparent = True
        DataPipelineName = 'plReporte'
        mmHeight = 3175
        mmLeft = 46831
        mmTop = 0
        mmWidth = 17992
        BandType = 4
      end
      object ppDBText56: TppDBText
        UserName = 'DBText44'
        HyperlinkEnabled = False
        DataField = 'Total'
        DataPipeline = plReporte
        DisplayFormat = '$#,0.00;($#,0.00)'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Verdana'
        Font.Size = 7
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'plReporte'
        mmHeight = 3175
        mmLeft = 65352
        mmTop = 0
        mmWidth = 24606
        BandType = 4
      end
      object ppDBText57: TppDBText
        UserName = 'DBText1'
        HyperlinkEnabled = False
        DataField = 'NoVenc'
        DataPipeline = plReporte
        DisplayFormat = '$#,0.00;($#,0.00)'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Verdana'
        Font.Size = 7
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'plReporte'
        mmHeight = 3175
        mmLeft = 91281
        mmTop = 0
        mmWidth = 23283
        BandType = 4
      end
      object ppDBText58: TppDBText
        UserName = 'DBText2'
        HyperlinkEnabled = False
        DataField = 'A30'
        DataPipeline = plReporte
        DisplayFormat = '$#,0.00;($#,0.00)'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Verdana'
        Font.Size = 7
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'plReporte'
        mmHeight = 3175
        mmLeft = 116152
        mmTop = 0
        mmWidth = 27517
        BandType = 4
      end
      object ppDBText59: TppDBText
        UserName = 'DBText3'
        HyperlinkEnabled = False
        DataField = 'A60'
        DataPipeline = plReporte
        DisplayFormat = '$#,0.00;($#,0.00)'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Verdana'
        Font.Size = 7
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'plReporte'
        mmHeight = 3175
        mmLeft = 145521
        mmTop = 0
        mmWidth = 27517
        BandType = 4
      end
      object ppDBText60: TppDBText
        UserName = 'DBText4'
        HyperlinkEnabled = False
        DataField = 'A90'
        DataPipeline = plReporte
        DisplayFormat = '$#,0.00;($#,0.00)'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Verdana'
        Font.Size = 7
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'plReporte'
        mmHeight = 3175
        mmLeft = 174625
        mmTop = 0
        mmWidth = 27517
        BandType = 4
      end
    end
    object ppFooterBand4: TppFooterBand
      Background.Brush.Style = bsClear
      mmBottomOffset = 0
      mmHeight = 0
      mmPrintPosition = 0
    end
    object ppSummaryBand4: TppSummaryBand
      Background.Brush.Style = bsClear
      mmBottomOffset = 0
      mmHeight = 0
      mmPrintPosition = 0
    end
    object ppGroup7: TppGroup
      BreakName = 'Moneda'
      DataPipeline = plReporte
      GroupFileSettings.NewFile = False
      GroupFileSettings.EmailFile = False
      OutlineSettings.CreateNode = True
      NewPage = True
      StartOnOddPage = False
      UserName = 'Group1'
      mmNewColumnThreshold = 0
      mmNewPageThreshold = 0
      DataPipelineName = 'plReporte'
      NewFile = False
      object ppGroupHeaderBand7: TppGroupHeaderBand
        Background.Brush.Style = bsClear
        mmBottomOffset = 0
        mmHeight = 0
        mmPrintPosition = 0
      end
      object ppGroupFooterBand7: TppGroupFooterBand
        Background.Brush.Style = bsClear
        HideWhenOneDetail = False
        mmBottomOffset = 0
        mmHeight = 10583
        mmPrintPosition = 0
        object ppShape11: TppShape
          UserName = 'Shape3'
          Brush.Color = 15000804
          ParentHeight = True
          ParentWidth = True
          Pen.Style = psClear
          mmHeight = 10583
          mmLeft = 0
          mmTop = 0
          mmWidth = 208280
          BandType = 5
          GroupNo = 0
        end
        object ppDBCalc34: TppDBCalc
          UserName = 'DBCalc102'
          HyperlinkEnabled = False
          DataField = 'NoVenc'
          DataPipeline = plReporte
          DisplayFormat = '#,0.00;(#,0.00)'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Verdana'
          Font.Size = 7
          Font.Style = [fsBold]
          ResetGroup = ppGroup7
          TextAlignment = taRightJustified
          Transparent = True
          DataPipelineName = 'plReporte'
          mmHeight = 3175
          mmLeft = 91281
          mmTop = 1058
          mmWidth = 23283
          BandType = 5
          GroupNo = 0
        end
        object ppDBCalc35: TppDBCalc
          UserName = 'DBCalc4'
          HyperlinkEnabled = False
          DataField = 'A30'
          DataPipeline = plReporte
          DisplayFormat = '#,0.00;(#,0.00)'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Verdana'
          Font.Size = 7
          Font.Style = [fsBold]
          ResetGroup = ppGroup7
          TextAlignment = taRightJustified
          Transparent = True
          DataPipelineName = 'plReporte'
          mmHeight = 3175
          mmLeft = 116152
          mmTop = 1058
          mmWidth = 27517
          BandType = 5
          GroupNo = 0
        end
        object ppDBCalc36: TppDBCalc
          UserName = 'DBCalc7'
          HyperlinkEnabled = False
          DataField = 'A60'
          DataPipeline = plReporte
          DisplayFormat = '#,0.00;(#,0.00)'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Verdana'
          Font.Size = 7
          Font.Style = [fsBold]
          ResetGroup = ppGroup7
          TextAlignment = taRightJustified
          Transparent = True
          DataPipelineName = 'plReporte'
          mmHeight = 3175
          mmLeft = 145521
          mmTop = 1058
          mmWidth = 27517
          BandType = 5
          GroupNo = 0
        end
        object ppDBCalc37: TppDBCalc
          UserName = 'DBCalc8'
          HyperlinkEnabled = False
          DataField = 'A90'
          DataPipeline = plReporte
          DisplayFormat = '#,0.00;(#,0.00)'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Verdana'
          Font.Size = 7
          Font.Style = [fsBold]
          ResetGroup = ppGroup7
          TextAlignment = taRightJustified
          Transparent = True
          DataPipelineName = 'plReporte'
          mmHeight = 3175
          mmLeft = 174625
          mmTop = 1058
          mmWidth = 27517
          BandType = 5
          GroupNo = 0
        end
        object ppDBCalc38: TppDBCalc
          UserName = 'DBCalc12'
          HyperlinkEnabled = False
          DataField = 'Total'
          DataPipeline = plReporte
          DisplayFormat = '#,0.00;(#,0.00)'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Verdana'
          Font.Size = 7
          Font.Style = [fsBold]
          ResetGroup = ppGroup7
          TextAlignment = taRightJustified
          Transparent = True
          DataPipelineName = 'plReporte'
          mmHeight = 3175
          mmLeft = 57415
          mmTop = 1058
          mmWidth = 32544
          BandType = 5
          GroupNo = 0
        end
        object ppLabel70: TppLabel
          UserName = 'Label10'
          HyperlinkEnabled = False
          AutoSize = False
          Caption = 'Total general'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Verdana'
          Font.Size = 7
          Font.Style = [fsBold]
          Transparent = True
          mmHeight = 3440
          mmLeft = 6879
          mmTop = 1058
          mmWidth = 19579
          BandType = 5
          GroupNo = 0
        end
        object ppLine23: TppLine
          UserName = 'Line2'
          Pen.Width = 0
          ParentWidth = True
          Weight = 0.250000000000000000
          mmHeight = 1323
          mmLeft = 0
          mmTop = 529
          mmWidth = 208280
          BandType = 5
          GroupNo = 0
        end
        object ppLine24: TppLine
          UserName = 'Line3'
          Pen.Width = 0
          ParentWidth = True
          Style = lsDouble
          Weight = 0.250000000000000000
          mmHeight = 1058
          mmLeft = 0
          mmTop = 9525
          mmWidth = 208280
          BandType = 5
          GroupNo = 0
        end
        object ppLabel71: TppLabel
          UserName = 'Label12'
          HyperlinkEnabled = False
          Caption = 'Total general:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Verdana'
          Font.Size = 7
          Font.Style = [fsBold]
          TextAlignment = taRightJustified
          Transparent = True
          mmHeight = 2822
          mmLeft = 153565
          mmTop = 5027
          mmWidth = 19473
          BandType = 5
          GroupNo = 0
        end
        object ppDBText61: TppDBText
          UserName = 'DBText101'
          HyperlinkEnabled = False
          DataField = 'BalanceXMoneda'
          DataPipeline = plReporte
          DisplayFormat = '#,0.00;(#,0.00)'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Verdana'
          Font.Size = 7
          Font.Style = [fsBold]
          ParentDataPipeline = False
          TextAlignment = taRightJustified
          Transparent = True
          DataPipelineName = 'plReporte'
          mmHeight = 3440
          mmLeft = 174890
          mmTop = 5027
          mmWidth = 27252
          BandType = 5
          GroupNo = 0
        end
      end
    end
    object ppGroup12: TppGroup
      BreakName = 'TipoSuplidor'
      DataPipeline = plReporte
      GroupFileSettings.NewFile = False
      GroupFileSettings.EmailFile = False
      OutlineSettings.CreateNode = True
      StartOnOddPage = False
      UserName = 'Group7'
      mmNewColumnThreshold = 0
      mmNewPageThreshold = 0
      DataPipelineName = 'plReporte'
      NewFile = False
      object ppGroupHeaderBand12: TppGroupHeaderBand
        Background.Brush.Style = bsClear
        mmBottomOffset = 0
        mmHeight = 6085
        mmPrintPosition = 0
        object ppDBText62: TppDBText
          UserName = 'DBText36'
          HyperlinkEnabled = False
          DataField = 'TipoSuplidor'
          DataPipeline = plReporte
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 12
          Font.Style = [fsBold]
          Transparent = True
          DataPipelineName = 'plReporte'
          mmHeight = 4586
          mmLeft = 5821
          mmTop = 529
          mmWidth = 132557
          BandType = 3
          GroupNo = 1
        end
      end
      object ppGroupFooterBand12: TppGroupFooterBand
        Background.Brush.Style = bsClear
        HideWhenOneDetail = False
        mmBottomOffset = 0
        mmHeight = 7673
        mmPrintPosition = 0
        object ppDBCalc60: TppDBCalc
          UserName = 'DBCalc34'
          HyperlinkEnabled = False
          DataField = 'NoVenc'
          DataPipeline = plReporte
          DisplayFormat = '#,0.00;(#,0.00)'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Verdana'
          Font.Size = 7
          Font.Style = [fsBold]
          ResetGroup = ppGroup12
          TextAlignment = taRightJustified
          Transparent = True
          DataPipelineName = 'plReporte'
          mmHeight = 3175
          mmLeft = 93398
          mmTop = 265
          mmWidth = 23283
          BandType = 5
          GroupNo = 1
        end
        object ppDBCalc61: TppDBCalc
          UserName = 'DBCalc35'
          HyperlinkEnabled = False
          DataField = 'A30'
          DataPipeline = plReporte
          DisplayFormat = '#,0.00;(#,0.00)'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Verdana'
          Font.Size = 7
          Font.Style = [fsBold]
          ResetGroup = ppGroup12
          TextAlignment = taRightJustified
          Transparent = True
          DataPipelineName = 'plReporte'
          mmHeight = 3175
          mmLeft = 118269
          mmTop = 265
          mmWidth = 27517
          BandType = 5
          GroupNo = 1
        end
        object ppDBCalc62: TppDBCalc
          UserName = 'DBCalc36'
          HyperlinkEnabled = False
          DataField = 'A60'
          DataPipeline = plReporte
          DisplayFormat = '#,0.00;(#,0.00)'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Verdana'
          Font.Size = 7
          Font.Style = [fsBold]
          ResetGroup = ppGroup12
          TextAlignment = taRightJustified
          Transparent = True
          DataPipelineName = 'plReporte'
          mmHeight = 3175
          mmLeft = 147638
          mmTop = 265
          mmWidth = 27517
          BandType = 5
          GroupNo = 1
        end
        object ppDBCalc63: TppDBCalc
          UserName = 'DBCalc37'
          HyperlinkEnabled = False
          DataField = 'A90'
          DataPipeline = plReporte
          DisplayFormat = '#,0.00;(#,0.00)'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Verdana'
          Font.Size = 7
          Font.Style = [fsBold]
          ResetGroup = ppGroup12
          TextAlignment = taRightJustified
          Transparent = True
          DataPipelineName = 'plReporte'
          mmHeight = 3175
          mmLeft = 176742
          mmTop = 265
          mmWidth = 27517
          BandType = 5
          GroupNo = 1
        end
        object ppDBCalc64: TppDBCalc
          UserName = 'DBCalc38'
          HyperlinkEnabled = False
          DataField = 'Total'
          DataPipeline = plReporte
          DisplayFormat = '#,0.00;(#,0.00)'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Verdana'
          Font.Size = 7
          Font.Style = [fsBold]
          ResetGroup = ppGroup12
          TextAlignment = taRightJustified
          Transparent = True
          DataPipelineName = 'plReporte'
          mmHeight = 3175
          mmLeft = 59531
          mmTop = 265
          mmWidth = 32544
          BandType = 5
          GroupNo = 1
        end
        object ppLabel72: TppLabel
          UserName = 'Label101'
          HyperlinkEnabled = False
          AutoSize = False
          Caption = 'Total por tipo de suplidor'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Verdana'
          Font.Size = 7
          Font.Style = [fsBold]
          Transparent = True
          mmHeight = 3440
          mmLeft = 8996
          mmTop = 265
          mmWidth = 39158
          BandType = 5
          GroupNo = 1
        end
        object ppLine25: TppLine
          UserName = 'Line13'
          Pen.Width = 0
          ParentWidth = True
          Weight = 0.250000000000000000
          mmHeight = 1323
          mmLeft = 0
          mmTop = 0
          mmWidth = 208280
          BandType = 5
          GroupNo = 1
        end
        object ppLabel73: TppLabel
          UserName = 'Label42'
          HyperlinkEnabled = False
          Caption = 'Balance:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Verdana'
          Font.Size = 7
          Font.Style = [fsBold]
          TextAlignment = taRightJustified
          Transparent = True
          mmHeight = 3006
          mmLeft = 163344
          mmTop = 4233
          mmWidth = 11811
          BandType = 5
          GroupNo = 1
        end
        object ppDBText63: TppDBText
          UserName = 'DBText37'
          HyperlinkEnabled = False
          DataField = 'BalanceXTipo'
          DataPipeline = plReporte
          DisplayFormat = '#,0.00;(#,0.00)'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Verdana'
          Font.Size = 7
          Font.Style = [fsBold]
          ParentDataPipeline = False
          TextAlignment = taRightJustified
          Transparent = True
          DataPipelineName = 'plReporte'
          mmHeight = 3440
          mmLeft = 177007
          mmTop = 4233
          mmWidth = 27252
          BandType = 5
          GroupNo = 1
        end
      end
    end
    object ppGroup13: TppGroup
      BreakName = 'Nombre'
      DataPipeline = plReporte
      GroupFileSettings.NewFile = False
      GroupFileSettings.EmailFile = False
      OutlineSettings.CreateNode = True
      StartOnOddPage = False
      UserName = 'Group5'
      mmNewColumnThreshold = 0
      mmNewPageThreshold = 0
      DataPipelineName = 'plReporte'
      NewFile = False
      object ppGroupHeaderBand13: TppGroupHeaderBand
        Background.Brush.Style = bsClear
        mmBottomOffset = 0
        mmHeight = 6085
        mmPrintPosition = 0
        object ppDBText64: TppDBText
          UserName = 'DBText43'
          HyperlinkEnabled = False
          DataField = 'Nombre'
          DataPipeline = plReporte
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Verdana'
          Font.Size = 8
          Font.Style = [fsBold]
          ParentDataPipeline = False
          Transparent = True
          DataPipelineName = 'plReporte'
          mmHeight = 3440
          mmLeft = 31221
          mmTop = 794
          mmWidth = 125942
          BandType = 3
          GroupNo = 1
        end
        object ppDBText65: TppDBText
          UserName = 'DBText32'
          HyperlinkEnabled = False
          DataField = 'idSuplidor'
          DataPipeline = plReporte
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Verdana'
          Font.Size = 8
          Font.Style = [fsBold]
          ParentDataPipeline = False
          Transparent = True
          DataPipelineName = 'plReporte'
          mmHeight = 3440
          mmLeft = 5292
          mmTop = 794
          mmWidth = 24077
          BandType = 3
          GroupNo = 1
        end
      end
      object ppGroupFooterBand13: TppGroupFooterBand
        Background.Brush.Style = bsClear
        HideWhenOneDetail = False
        mmBottomOffset = 0
        mmHeight = 8996
        mmPrintPosition = 0
        object ppShape12: TppShape
          UserName = 'Shape2'
          Brush.Color = 16053492
          ParentWidth = True
          Pen.Style = psClear
          mmHeight = 4233
          mmLeft = 0
          mmTop = 4498
          mmWidth = 208280
          BandType = 5
          GroupNo = 1
        end
        object ppDBCalc65: TppDBCalc
          UserName = 'DBCalc10'
          HyperlinkEnabled = False
          DataField = 'NoVenc'
          DataPipeline = plReporte
          DisplayFormat = '#,0.00;(#,0.00)'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Verdana'
          Font.Size = 7
          Font.Style = [fsBold]
          ResetGroup = ppGroup13
          TextAlignment = taRightJustified
          Transparent = True
          DataPipelineName = 'plReporte'
          mmHeight = 3175
          mmLeft = 91281
          mmTop = 529
          mmWidth = 23283
          BandType = 5
          GroupNo = 0
        end
        object ppDBCalc66: TppDBCalc
          UserName = 'DBCalc101'
          HyperlinkEnabled = False
          DataField = 'A30'
          DataPipeline = plReporte
          DisplayFormat = '#,0.00;(#,0.00)'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Verdana'
          Font.Size = 7
          Font.Style = [fsBold]
          ResetGroup = ppGroup13
          TextAlignment = taRightJustified
          Transparent = True
          DataPipelineName = 'plReporte'
          mmHeight = 3175
          mmLeft = 116152
          mmTop = 529
          mmWidth = 27517
          BandType = 5
          GroupNo = 0
        end
        object ppDBCalc67: TppDBCalc
          UserName = 'DBCalc3'
          HyperlinkEnabled = False
          DataField = 'A60'
          DataPipeline = plReporte
          DisplayFormat = '#,0.00;(#,0.00)'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Verdana'
          Font.Size = 7
          Font.Style = [fsBold]
          ResetGroup = ppGroup13
          TextAlignment = taRightJustified
          Transparent = True
          DataPipelineName = 'plReporte'
          mmHeight = 3175
          mmLeft = 145521
          mmTop = 529
          mmWidth = 27517
          BandType = 5
          GroupNo = 0
        end
        object ppDBCalc68: TppDBCalc
          UserName = 'DBCalc5'
          HyperlinkEnabled = False
          DataField = 'A90'
          DataPipeline = plReporte
          DisplayFormat = '#,0.00;(#,0.00)'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Verdana'
          Font.Size = 7
          Font.Style = [fsBold]
          ResetGroup = ppGroup13
          TextAlignment = taRightJustified
          Transparent = True
          DataPipelineName = 'plReporte'
          mmHeight = 3175
          mmLeft = 174625
          mmTop = 529
          mmWidth = 27517
          BandType = 5
          GroupNo = 0
        end
        object ppDBCalc69: TppDBCalc
          UserName = 'DBCalc103'
          HyperlinkEnabled = False
          DataField = 'Total'
          DataPipeline = plReporte
          DisplayFormat = '#,0.00;(#,0.00)'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Verdana'
          Font.Size = 7
          Font.Style = [fsBold]
          ResetGroup = ppGroup13
          TextAlignment = taRightJustified
          Transparent = True
          DataPipelineName = 'plReporte'
          mmHeight = 3175
          mmLeft = 57415
          mmTop = 529
          mmWidth = 32544
          BandType = 5
          GroupNo = 0
        end
        object ppLabel74: TppLabel
          UserName = 'Label9'
          HyperlinkEnabled = False
          AutoSize = False
          Caption = 'Sub total'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Verdana'
          Font.Size = 7
          Font.Style = [fsBold]
          Transparent = True
          mmHeight = 4233
          mmLeft = 6879
          mmTop = 529
          mmWidth = 18256
          BandType = 5
          GroupNo = 0
        end
        object ppLine26: TppLine
          UserName = 'Line1'
          Pen.Width = 0
          ParentWidth = True
          Weight = 0.250000000000000000
          mmHeight = 529
          mmLeft = 0
          mmTop = 0
          mmWidth = 208280
          BandType = 5
          GroupNo = 0
        end
        object ppLabel75: TppLabel
          UserName = 'Label11'
          HyperlinkEnabled = False
          Caption = 'Creditos no aplicados:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Verdana'
          Font.Size = 7
          Font.Style = [fsBold]
          TextAlignment = taRightJustified
          Transparent = True
          mmHeight = 3440
          mmLeft = 6879
          mmTop = 5027
          mmWidth = 33073
          BandType = 5
          GroupNo = 1
        end
        object ppDBText66: TppDBText
          UserName = 'DBText9'
          HyperlinkEnabled = False
          DataField = 'Creditos'
          DataPipeline = plReporte
          DisplayFormat = '#,0.00;(#,0.00)'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Verdana'
          Font.Size = 7
          Font.Style = [fsBold]
          ParentDataPipeline = False
          Transparent = True
          DataPipelineName = 'plReporte'
          mmHeight = 3440
          mmLeft = 62706
          mmTop = 4498
          mmWidth = 27252
          BandType = 5
          GroupNo = 1
        end
        object ppLabel76: TppLabel
          UserName = 'Label13'
          HyperlinkEnabled = False
          Caption = 'Balance:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Verdana'
          Font.Size = 7
          Font.Style = [fsBold]
          TextAlignment = taRightJustified
          Transparent = True
          mmHeight = 3440
          mmLeft = 150548
          mmTop = 4498
          mmWidth = 22490
          BandType = 5
          GroupNo = 1
        end
        object ppDBText67: TppDBText
          UserName = 'DBText10'
          HyperlinkEnabled = False
          DataField = 'Balance'
          DataPipeline = plReporte
          DisplayFormat = '#,0.00;(#,0.00)'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Verdana'
          Font.Size = 7
          Font.Style = [fsBold]
          ParentDataPipeline = False
          TextAlignment = taRightJustified
          Transparent = True
          DataPipelineName = 'plReporte'
          mmHeight = 3440
          mmLeft = 174890
          mmTop = 4498
          mmWidth = 27252
          BandType = 5
          GroupNo = 1
        end
        object ppLabel77: TppLabel
          UserName = 'Label8'
          HyperlinkEnabled = False
          Caption = 'Total aplicado:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Verdana'
          Font.Size = 7
          Font.Style = [fsBold]
          TextAlignment = taRightJustified
          Transparent = True
          mmHeight = 3440
          mmLeft = 90223
          mmTop = 4498
          mmWidth = 24342
          BandType = 5
          GroupNo = 1
        end
        object ppDBCalc70: TppDBCalc
          UserName = 'DBCalc13'
          HyperlinkEnabled = False
          DataField = 'Pagado'
          DataPipeline = plReporte
          DisplayFormat = '#,0.00;(#,0.00)'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Verdana'
          Font.Size = 7
          Font.Style = [fsBold]
          ResetGroup = ppGroup13
          Transparent = True
          DataPipelineName = 'plReporte'
          mmHeight = 3175
          mmLeft = 116152
          mmTop = 4498
          mmWidth = 27517
          BandType = 5
          GroupNo = 1
        end
        object ppLine27: TppLine
          UserName = 'Line4'
          ParentWidth = True
          Weight = 0.750000000000000000
          mmHeight = 265
          mmLeft = 0
          mmTop = 8731
          mmWidth = 208280
          BandType = 5
          GroupNo = 1
        end
      end
    end
    object ppParameterList5: TppParameterList
    end
  end
end
