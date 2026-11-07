inherited CuadreCaja: TCuadreCaja
  Left = 672
  Top = 434
  Caption = 'Cuadre por usuario'
  ClientHeight = 566
  ClientWidth = 1119
  Color = 16710650
  Font.Name = 'Tahoma'
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel [0]
    Left = 10
    Top = 11
    Width = 34
    Height = 13
    Caption = 'Desde:'
  end
  object Label2: TLabel [1]
    Left = 218
    Top = 11
    Width = 32
    Height = 13
    Caption = 'Hasta:'
  end
  object Label3: TLabel [2]
    Left = 429
    Top = 11
    Width = 36
    Height = 13
    Caption = 'Cajero:'
  end
  object Label4: TLabel [3]
    Left = 639
    Top = 11
    Width = 44
    Height = 13
    Caption = 'Sucursal:'
  end
  object deDesde: TcxDateEdit [4]
    Left = 46
    Top = 7
    Width = 150
    Height = 21
    Properties.Kind = ckDateTime
    Style.LookAndFeel.NativeStyle = True
    TabOrder = 0
  end
  object dehasta: TcxDateEdit [5]
    Left = 260
    Top = 7
    Width = 150
    Height = 21
    Properties.Kind = ckDateTime
    Style.LookAndFeel.NativeStyle = True
    TabOrder = 1
  end
  object luUsuario: TcxLookupComboBox [6]
    Left = 473
    Top = 7
    Width = 145
    Height = 21
    Properties.ImmediatePost = True
    Properties.KeyFieldNames = 'idSegUsergrp'
    Properties.ListColumns = <
      item
        FieldName = 'Nombre'
      end>
    Properties.ListOptions.CaseInsensitive = True
    Properties.ListOptions.GridLines = glNone
    Properties.ListOptions.ShowHeader = False
    Properties.ListSource = dsUsuarios
    Style.LookAndFeel.NativeStyle = True
    TabOrder = 2
  end
  object cxButton1: TcxButton [7]
    Left = 934
    Top = 0
    Width = 129
    Height = 31
    Caption = 'Mostrar'
    TabOrder = 3
    OnClick = cxButton1Click
    Glyph.Data = {
      36040000424D3604000000000000360000002800000010000000100000000100
      2000000000000004000000000000000000000000000000000000FF00FF00314A
      6300AD7B7B00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
      FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF005284B500086B
      E700315A8C00BD7B7B00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
      FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF0031A5FF0031A5
      FF00106BE700315A8C00B57B7B00FF00FF00FF00FF00FF00FF00FF00FF00FF00
      FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF0031A5
      FF00319CFF00086BDE00315A8C00BD7B7B00FF00FF00FF00FF00FF00FF00FF00
      FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
      FF0031A5FF00319CFF00086BDE0031638C00A57B7B00FF00FF00FF00FF00FF00
      FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
      FF00FF00FF0039A5FF00319CFF00106BCE00424A5A00FF00FF009C6B6300AD8C
      7B00AD8C7B00AD847300FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
      FF00FF00FF00FF00FF0039ADFF00A5CEE700AD847B00AD847300E7CEB500FFFF
      DE00FFFFDE00FFFFCE00CEB59C00A5736B00FF00FF00FF00FF00FF00FF00FF00
      FF00FF00FF00FF00FF00FF00FF00FF00FF00C6947B00FFEFAD00FFFFCE00FFFF
      CE00FFFFD600FFFFDE00FFFFFF00E7D6D6009C6B6300FF00FF00FF00FF00FF00
      FF00FF00FF00FF00FF00FF00FF00FF00FF00B58C7B00FFD69400FFF7C600FFFF
      D600FFFFDE00FFFFF700FFFFFF00FFFFFF00B5948400FF00FF00FF00FF00FF00
      FF00FF00FF00FF00FF00FF00FF00B58C7B00FFDE9400EFB57B00FFEFBD00FFFF
      D600FFFFDE00FFFFF700FFFFF700FFFFE700EFDEBD00A57B7300FF00FF00FF00
      FF00FF00FF00FF00FF00FF00FF00B58C7B00FFDE9C00EFA56300F7D69C00FFFF
      CE00FFFFD600FFFFDE00FFFFDE00FFFFD600EFE7C600AD7B7300FF00FF00FF00
      FF00FF00FF00FF00FF00FF00FF00AD7B7300FFE7A500F7B57B00EFBD7B00F7DE
      A500FFFFCE00FFFFD600FFFFD600FFFFD600DEC6A500A5736B00FF00FF00FF00
      FF00FF00FF00FF00FF00FF00FF00FF00FF00CEB59400FFFFDE00F7D6A500EFBD
      7B00F7C68C00FFE7AD00FFF7BD00FFFFCE00A5736B00FF00FF00FF00FF00FF00
      FF00FF00FF00FF00FF00FF00FF00FF00FF00A5736B00E7D6D600FFFFEF00F7CE
      8C00F7B57300F7C68C00FFE7A500C6A58C00A5736B00FF00FF00FF00FF00FF00
      FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF009C6B6300BD948400EFD6
      A500EFD69C00E7C69400A5736B00A5736B00FF00FF00FF00FF00FF00FF00FF00
      FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00A57B
      7300AD847300A57B6B00FF00FF00FF00FF00FF00FF00FF00FF00}
    LookAndFeel.NativeStyle = True
  end
  object cxGrid1: TcxGrid [8]
    Left = 4
    Top = 36
    Width = 1111
    Height = 492
    Anchors = [akLeft, akTop, akRight, akBottom]
    TabOrder = 4
    LookAndFeel.NativeStyle = True
    object cxGrid1DBTableView1: TcxGridDBTableView
      OnDblClick = cxGrid1DBTableView1DblClick
      DataController.DataSource = DS
      DataController.Filter.AutoDataSetFilter = True
      DataController.KeyFieldNames = 'idfactura'
      DataController.Summary.DefaultGroupSummaryItems = <
        item
          Format = '##,###,##0.00'
          Kind = skSum
          Position = spFooter
          Column = cxGrid1DBTableView1Efectivo
        end
        item
          Format = '##,###,##0.00'
          Kind = skSum
          Position = spFooter
          Column = cxGrid1DBTableView1Tarjeta
        end
        item
          Format = '##,###,##0.00'
          Kind = skSum
          Position = spFooter
          Column = cxGrid1DBTableView1Cheque
        end
        item
          Format = '##,###,##0.00'
          Kind = skSum
          Position = spFooter
          Column = cxGrid1DBTableView1Gastos
        end>
      DataController.Summary.FooterSummaryItems = <
        item
          Format = '##,###,##0.00'
          Kind = skSum
          FieldName = 'Efectivo'
          Column = cxGrid1DBTableView1Efectivo
        end
        item
          Format = '##,###,##0.00'
          Kind = skSum
          FieldName = 'Tarjeta'
          Column = cxGrid1DBTableView1Tarjeta
        end
        item
          Format = '##,###,##0.00'
          Kind = skSum
          FieldName = 'Cheque'
          Column = cxGrid1DBTableView1Cheque
        end
        item
          Format = '##,###,##0.00'
          Kind = skSum
          FieldName = 'Otros'
          Column = cxGrid1DBTableView1Gastos
        end
        item
          Format = '##,###,##0.00'
          Kind = skSum
          Column = cxGrid1DBTableView1DBColumn2
        end
        item
          Format = '###,###,##0.00'
          Kind = skSum
          Column = cxGrid1DBTableView1DBColumn3
        end>
      DataController.Summary.SummaryGroups = <>
      NavigatorButtons.ConfirmDelete = False
      NavigatorButtons.Edit.Enabled = False
      OptionsData.CancelOnExit = False
      OptionsData.Editing = False
      OptionsData.Inserting = False
      OptionsView.CellAutoHeight = True
      OptionsView.ColumnAutoWidth = True
      OptionsView.Footer = True
      OptionsView.GridLines = glVertical
      OptionsView.GroupFooters = gfVisibleWhenExpanded
      object cxGrid1DBTableView1fecha: TcxGridDBColumn
        Caption = 'Fecha'
        DataBinding.FieldName = 'fecha'
        Options.Filtering = False
        SortIndex = 0
        SortOrder = soAscending
        Width = 75
      end
      object cxGrid1DBTableView1Registro: TcxGridDBColumn
        DataBinding.FieldName = 'Registro'
        SortIndex = 1
        SortOrder = soAscending
        Width = 76
      end
      object cxGrid1DBTableView1DBColumn4: TcxGridDBColumn
        DataBinding.FieldName = 'Numero'
        Width = 83
      end
      object cxGrid1DBTableView1DBColumn1: TcxGridDBColumn
        DataBinding.FieldName = 'Moneda'
        Width = 118
      end
      object cxGrid1DBTableView1Usuario: TcxGridDBColumn
        Caption = 'Cajero'
        DataBinding.FieldName = 'usuario'
        Width = 96
      end
      object cxGrid1DBTableView1Efectivo: TcxGridDBColumn
        DataBinding.FieldName = 'Efectivo'
        Options.Filtering = False
        Width = 89
      end
      object cxGrid1DBTableView1Cheque: TcxGridDBColumn
        DataBinding.FieldName = 'Cheque'
        Options.Filtering = False
        Width = 90
      end
      object cxGrid1DBTableView1Tarjeta: TcxGridDBColumn
        DataBinding.FieldName = 'Tarjeta'
        Options.Filtering = False
        Width = 82
      end
      object cxGrid1DBTableView1DBColumn5: TcxGridDBColumn
        DataBinding.FieldName = 'Otros'
      end
      object cxGrid1DBTableView1DBColumn2: TcxGridDBColumn
        DataBinding.FieldName = 'Credito'
        Options.Filtering = False
        Width = 117
      end
      object cxGrid1DBTableView1DBColumn3: TcxGridDBColumn
        DataBinding.FieldName = 'Recibos'
        Visible = False
        Options.Filtering = False
      end
      object cxGrid1DBTableView1Gastos: TcxGridDBColumn
        DataBinding.FieldName = 'Gastos'
        Options.Filtering = False
        Width = 84
      end
      object cxGrid1DBTableView1Cliente: TcxGridDBColumn
        DataBinding.FieldName = 'Cliente'
        Options.Filtering = False
        Width = 199
      end
    end
    object cxGrid1Level1: TcxGridLevel
      GridView = cxGrid1DBTableView1
    end
  end
  object cxButton2: TcxButton [9]
    Left = 4
    Top = 532
    Width = 151
    Height = 31
    Anchors = [akLeft, akBottom]
    Caption = 'Imprimir cinta'
    TabOrder = 5
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
  object cxButton3: TcxButton [10]
    Left = 964
    Top = 532
    Width = 151
    Height = 31
    Anchors = [akRight, akBottom]
    Caption = 'Salir'
    TabOrder = 6
    OnClick = SalirClick
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
  object cxButton4: TcxButton [11]
    Left = 180
    Top = 532
    Width = 151
    Height = 31
    Anchors = [akLeft, akBottom]
    Caption = 'Imprimir'
    TabOrder = 7
    OnClick = cxButton4Click
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
  object btnExcel: TcxButton [12]
    Left = 351
    Top = 532
    Width = 151
    Height = 31
    Anchors = [akLeft, akBottom]
    Caption = 'Excel'
    TabOrder = 8
    OnClick = btnExcelClick
    Glyph.Data = {
      26040000424D2604000000000000360000002800000012000000120000000100
      180000000000F003000000000000000000000000000000000000FF00FFF802F4
      E909DBEB07DDF011E8F116EEF115ECF014ECEF13EAEF12EAF013EAF013EBF217
      EEEE09DFEC0ADEF006E6FF00FFFF00FF0000F802F4B04266A65D3BA5553AA071
      58C2C8B1C3CEB7C6CCB4CFD5BCCCD1BAC5CCB5C6D6BEAA816988371C994F31A6
      4F4CE80CD6FF00FF0000EA09DBA0613ED36B6AD46969AF4F50E3DDDD973839AF
      5A5AF5E0DDFFFFFFF5F8F6F8FFFFB35D5C8E2323B74F4FB66551C32195FF00FF
      0000EC08DEA15D42D16968CF6767AE4F4FE5DFDE840C0EA63E3CE0C7C5FEFFFC
      FFFEFBFFFFFFB15D5C8E2424B44F4FB66251C61F9BFF00FF0000EC08DEA25D42
      D16968CE6767AF504FE5DFDF861113AA4443CCB1B0EFF0EEFDFAF9FFFFFFB15D
      5C8E2323B44F4FB66251C61F9BFF00FF0000EC08DEA25D42D16968CE6566AF50
      50E6E3E27B0000A63735A48C8AC2CECCF3F7F4FFFFFFAF5C5B891D1DB24C4CB6
      6251C61F9BFF00FF0000EC08DEA15E42D06968CE6666BA5354D9B6B8F3F0F0EE
      E8E8EEDCDDE9D4D5E4D0D0E6D6D7B76160A23737BE5656B46150C61F9BFF00FF
      0000EB08DEA65C41D36868C65C5CC9605FC76060D07070CF6F6FCE6A6BCC6767
      CB6666C86161CA6260CC6767D16868B05C4DC71F9BFF00FF0000EB08DEAA5A3F
      D36161CF9593CF8E8CD08F8ECF8C8ACF8C8ACF8D8BCF8D8BCF8D8CD08E8DD193
      91D49B99D17A79BC5F4FC51F9BFF00FF0000EB08DEAA5A40D05959EBE3E1FFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF7F4F3C97576BF
      604FC51E9BFF00FF0000EB08DEAA5A40D05959E9DEDCFFFFFFE6E6E6E0E0E0E0
      E0E0E0E0E0E0E0E0E0E0E0DDDDDDFFFFFFF5ECECC87473BF604FC51E9BFF00FF
      0000EB08DEAA5A40D05959E9DCDBFFFFFFF5F5F5F2F2F2F3F3F3F3F3F3F3F3F3
      F3F3F3F1F1F1FFFFFFF5ECEBC87473BF604FC51E9BFF00FF0000EB08DEAA5A40
      D05959E9DCDBFFFFFFF5F5F5F2F2F2F3F3F3F3F3F3F3F3F3F3F3F3F1F1F1FFFF
      FFF5ECEBC87473BF604FC51E9BFF00FF0000EB08DEAA5A40D05959E9DCDBFFFF
      FFE6E6E6E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0DDDDDDFFFFFFF5ECEBC87473BF
      604FC51E9BFF00FF0000EB08DEAA5A40D05959E9DCDBFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF5ECEBC87473BF604FC51E9BFF00FF
      0000E909DBA85D3BD45B5CE9DDDBFFFFFFD8D8D8CECECED0D0D0D0D0D0D0D0D0
      D0D0D0CBCBCBFFFFFFF4ECEBCE7776C0624EC22195FF00FF0000F802F4B54166
      A24E2CDEE7CDFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFF6FFEAB37152AB4D49E70CD6FF00FF0000FF00FFF802F4E705D7F920F7FF29
      FFFE27FEFE27FEFE27FEFE27FEFE27FEFE27FEFE27FEFF28FFFF26FDEC0BE0EF
      05E5FF00FFFF00FF0000}
    LookAndFeel.NativeStyle = True
  end
  object luSucursal: TcxLookupComboBox [13]
    Left = 687
    Top = 7
    Width = 194
    Height = 21
    Properties.ImmediatePost = True
    Properties.KeyFieldNames = 'CentroCosto'
    Properties.ListColumns = <
      item
        FieldName = 'CentroCosto'
      end>
    Properties.ListOptions.CaseInsensitive = True
    Properties.ListOptions.GridLines = glNone
    Properties.ListOptions.ShowHeader = False
    Properties.ListSource = dsSucursal
    Style.LookAndFeel.NativeStyle = True
    TabOrder = 9
  end
  inherited DS: TwwDataSource
    DataSet = rs
    Left = 313
  end
  object rsUsuarios: TADODataSet
    Connection = dmRepository.repConx
    CursorType = ctStatic
    CommandText = 
      'select idSegUsergrp, idSegUserGrp as Nombre '#13#10'from segUserGrp'#13#10'w' +
      'here Activo = 1  and esGrupo=0'#13#10'union'#13#10'select null as idSegUserG' +
      'rp, '#39'(todos)'#39' as Nombre '#13#10'order by 2'
    Parameters = <>
    Left = 164
    Top = 104
    object rsUsuariosidSegUsergrp: TStringField
      FieldName = 'idSegUsergrp'
      Size = 30
    end
    object rsUsuariosNombre: TStringField
      FieldName = 'Nombre'
      Size = 30
    end
  end
  object rs: TADODataSet
    Active = True
    Connection = dm.Coneccion
    CursorType = ctStatic
    OnCalcFields = rsCalcFields
    CommandText = 'svCuadreUsuario;1'
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
        Name = '@desde'
        Attributes = [paNullable]
        DataType = ftDateTime
        Value = Null
      end
      item
        Name = '@hasta'
        Attributes = [paNullable]
        DataType = ftDateTime
        Value = Null
      end
      item
        Name = '@usuario'
        Attributes = [paNullable]
        DataType = ftString
        Size = 30
        Value = Null
      end
      item
        Name = '@Sucursal'
        Attributes = [paNullable]
        DataType = ftString
        Size = 30
        Value = Null
      end>
    Left = 36
    Top = 110
    object rsidfactura: TGuidField
      FieldName = 'idfactura'
      FixedChar = True
      Size = 38
    end
    object rsRegistro: TStringField
      FieldName = 'Registro'
      ReadOnly = True
      Size = 7
    end
    object rsNumero: TStringField
      FieldName = 'Numero'
      ReadOnly = True
      Size = 200
    end
    object rsCliente: TStringField
      FieldName = 'Cliente'
      Size = 50
    end
    object rsfecha: TDateTimeField
      FieldName = 'fecha'
    end
    object rsEfectivo: TBCDField
      FieldName = 'Efectivo'
      ReadOnly = True
      currency = True
      Precision = 18
      Size = 0
    end
    object rsTarjeta: TBCDField
      FieldName = 'Tarjeta'
      ReadOnly = True
      currency = True
      Precision = 18
      Size = 0
    end
    object rsCheque: TBCDField
      FieldName = 'Cheque'
      ReadOnly = True
      currency = True
      Precision = 18
      Size = 0
    end
    object rsOtros: TBCDField
      FieldName = 'Otros'
      ReadOnly = True
      currency = True
      Precision = 18
      Size = 0
    end
    object rsusuario: TStringField
      FieldName = 'usuario'
      Size = 30
    end
    object rsMoneda: TStringField
      FieldName = 'Moneda'
    end
    object rsCredito: TBCDField
      FieldName = 'Credito'
      ReadOnly = True
      Precision = 19
      Size = 2
    end
    object rsRecibos: TBCDField
      FieldName = 'Recibos'
      ReadOnly = True
      Precision = 19
      Size = 2
    end
    object rsTotalDeposito: TCurrencyField
      FieldKind = fkCalculated
      FieldName = 'TotalDeposito'
      Calculated = True
    end
    object rsFactura: TBCDField
      FieldName = 'Factura'
      ReadOnly = True
      Precision = 19
      Size = 2
    end
    object rsGastos: TBCDField
      FieldName = 'Gastos'
      ReadOnly = True
      Precision = 19
      Size = 2
    end
    object rsSucursal2: TStringField
      FieldName = 'Sucursal'
      ReadOnly = True
      Size = 16
    end
  end
  object dsUsuarios: TwwDataSource
    AutoEdit = False
    DataSet = rsUsuarios
    OnUpdateData = DSUpdateData
    Left = 197
    Top = 209
  end
  object ppDBPipeline1: TppDBPipeline
    DataSource = DS
    UserName = 'DBPipeline1'
    Left = 40
    Top = 244
    object ppDBPipeline1ppField1: TppField
      FieldAlias = 'idfactura'
      FieldName = 'idfactura'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 0
      Searchable = False
      Sortable = False
    end
    object ppDBPipeline1ppField2: TppField
      FieldAlias = 'Registro'
      FieldName = 'Registro'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 1
      Searchable = False
      Sortable = False
    end
    object ppDBPipeline1ppField3: TppField
      FieldAlias = 'Numero'
      FieldName = 'Numero'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 2
      Searchable = False
      Sortable = False
    end
    object ppDBPipeline1ppField4: TppField
      FieldAlias = 'Cliente'
      FieldName = 'Cliente'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 3
      Searchable = False
      Sortable = False
    end
    object ppDBPipeline1ppField5: TppField
      FieldAlias = 'fecha'
      FieldName = 'fecha'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 4
      Searchable = False
      Sortable = False
    end
    object ppDBPipeline1ppField6: TppField
      FieldAlias = 'Efectivo'
      FieldName = 'Efectivo'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 5
      Searchable = False
      Sortable = False
    end
    object ppDBPipeline1ppField7: TppField
      FieldAlias = 'Tarjeta'
      FieldName = 'Tarjeta'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 6
      Searchable = False
      Sortable = False
    end
    object ppDBPipeline1ppField8: TppField
      FieldAlias = 'Cheque'
      FieldName = 'Cheque'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 7
      Searchable = False
      Sortable = False
    end
    object ppDBPipeline1ppField9: TppField
      FieldAlias = 'Otros'
      FieldName = 'Otros'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 8
      Searchable = False
      Sortable = False
    end
    object ppDBPipeline1ppField10: TppField
      FieldAlias = 'usuario'
      FieldName = 'usuario'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 9
      Searchable = False
      Sortable = False
    end
    object ppDBPipeline1ppField11: TppField
      FieldAlias = 'Moneda'
      FieldName = 'Moneda'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 10
      Searchable = False
      Sortable = False
    end
    object ppDBPipeline1ppField12: TppField
      FieldAlias = 'Credito'
      FieldName = 'Credito'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 11
      Searchable = False
      Sortable = False
    end
    object ppDBPipeline1ppField13: TppField
      FieldAlias = 'Recibos'
      FieldName = 'Recibos'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 12
      Searchable = False
      Sortable = False
    end
    object ppDBPipeline1ppField14: TppField
      FieldAlias = 'TotalDeposito'
      FieldName = 'TotalDeposito'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 13
      Searchable = False
      Sortable = False
    end
    object ppDBPipeline1ppField15: TppField
      FieldAlias = 'Factura'
      FieldName = 'Factura'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 14
      Searchable = False
      Sortable = False
    end
    object ppDBPipeline1ppField16: TppField
      FieldAlias = 'Gastos'
      FieldName = 'Gastos'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 15
      Searchable = False
      Sortable = False
    end
    object ppDBPipeline1ppField17: TppField
      FieldAlias = 'Sucursal'
      FieldName = 'Sucursal'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 16
      Searchable = False
      Sortable = False
    end
  end
  object Report: TppReport
    AutoStop = False
    DataPipeline = ppDBPipeline1
    PassSetting = psTwoPass
    PrinterSetup.BinName = 'Default'
    PrinterSetup.DocumentName = 'Report'
    PrinterSetup.Orientation = poLandscape
    PrinterSetup.PaperName = 'Letter'
    PrinterSetup.PrinterName = 'Default'
    PrinterSetup.SaveDeviceSettings = False
    PrinterSetup.mmMarginBottom = 6350
    PrinterSetup.mmMarginLeft = 6350
    PrinterSetup.mmMarginRight = 6350
    PrinterSetup.mmMarginTop = 6350
    PrinterSetup.mmPaperHeight = 215900
    PrinterSetup.mmPaperWidth = 279401
    PrinterSetup.PaperSize = 1
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
    ThumbnailSettings.Enabled = True
    ThumbnailSettings.Visible = True
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
    TextSearchSettings.Enabled = True
    XLSSettings.AppName = 'ReportBuilder'
    XLSSettings.Author = 'ReportBuilder'
    XLSSettings.Subject = 'Report'
    XLSSettings.Title = 'Report'
    Left = 454
    Top = 190
    Version = '15.02'
    mmColumnWidth = 0
    DataPipelineName = 'ppDBPipeline1'
    object ppTitleBand1: TppTitleBand
      Background.Brush.Style = bsClear
      mmBottomOffset = 0
      mmHeight = 0
      mmPrintPosition = 0
    end
    object ppHeaderBand1: TppHeaderBand
      Background.Brush.Style = bsClear
      mmBottomOffset = 0
      mmHeight = 17727
      mmPrintPosition = 0
      object ppLabel1: TppLabel
        UserName = 'Label1'
        HyperlinkEnabled = False
        AutoSize = False
        Caption = 'Cuadre de caja'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clNavy
        Font.Name = 'TIMES NEW ROMAN'
        Font.Size = 16
        Font.Style = [fsBold, fsItalic]
        Transparent = True
        mmHeight = 6615
        mmLeft = 0
        mmTop = 9790
        mmWidth = 59796
        BandType = 0
        LayerName = Foreground
      end
      object ppDBText9: TppDBText
        UserName = 'DBText9'
        HyperlinkEnabled = False
        DataField = 'Sucursal'
        DataPipeline = ppDBPipeline1
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clNavy
        Font.Name = 'Tahoma'
        Font.Size = 20
        Font.Style = [fsBold]
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 8467
        mmLeft = 0
        mmTop = 1058
        mmWidth = 142875
        BandType = 0
        LayerName = Foreground
      end
      object ppLine2: TppLine
        UserName = 'Line2'
        Pen.Color = clNavy
        ParentWidth = True
        Weight = 0.500000000000000000
        mmHeight = 794
        mmLeft = 0
        mmTop = 16933
        mmWidth = 266701
        BandType = 0
        LayerName = Foreground
      end
      object ppSystemVariable3: TppSystemVariable
        UserName = 'SystemVariable3'
        HyperlinkEnabled = False
        AutoSize = False
        VarType = vtPrintDateTime
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clNavy
        Font.Name = 'Verdana'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 3440
        mmLeft = 220134
        mmTop = 1058
        mmWidth = 44186
        BandType = 0
        LayerName = Foreground
      end
      object ppSystemVariable4: TppSystemVariable
        UserName = 'SystemVariable4'
        HyperlinkEnabled = False
        AutoSize = False
        VarType = vtPageSetDesc
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clNavy
        Font.Name = 'Verdana'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 3440
        mmLeft = 220134
        mmTop = 5821
        mmWidth = 44186
        BandType = 0
        LayerName = Foreground
      end
    end
    object ppDetailBand1: TppDetailBand
      Background1.Brush.Style = bsClear
      Background2.Brush.Style = bsClear
      mmBottomOffset = 0
      mmHeight = 3969
      mmPrintPosition = 0
      object ppDBText2: TppDBText
        UserName = 'DBText2'
        HyperlinkEnabled = False
        DataField = 'Registro'
        DataPipeline = ppDBPipeline1
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Verdana'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 3260
        mmLeft = 1323
        mmTop = 529
        mmWidth = 19315
        BandType = 4
        LayerName = Foreground
      end
      object ppDBText3: TppDBText
        UserName = 'DBText3'
        HyperlinkEnabled = False
        DataField = 'Cliente'
        DataPipeline = ppDBPipeline1
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Verdana'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 3175
        mmLeft = 41921
        mmTop = 529
        mmWidth = 52652
        BandType = 4
        LayerName = Foreground
      end
      object ppDBText4: TppDBText
        UserName = 'DBText4'
        HyperlinkEnabled = False
        DataField = 'fecha'
        DataPipeline = ppDBPipeline1
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Verdana'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 3175
        mmLeft = 95861
        mmTop = 529
        mmWidth = 21696
        BandType = 4
        LayerName = Foreground
      end
      object ppDBText5: TppDBText
        UserName = 'DBText5'
        HyperlinkEnabled = False
        DataField = 'Efectivo'
        DataPipeline = ppDBPipeline1
        DisplayFormat = '#,0.00;(#,0.00)'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Verdana'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 3175
        mmLeft = 119214
        mmTop = 529
        mmWidth = 23019
        BandType = 4
        LayerName = Foreground
      end
      object ppDBText6: TppDBText
        UserName = 'DBText6'
        HyperlinkEnabled = False
        DataField = 'Tarjeta'
        DataPipeline = ppDBPipeline1
        DisplayFormat = '#,0.00;(#,0.00)'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Verdana'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 3175
        mmLeft = 143555
        mmTop = 529
        mmWidth = 23019
        BandType = 4
        LayerName = Foreground
      end
      object ppDBText7: TppDBText
        UserName = 'DBText7'
        HyperlinkEnabled = False
        DataField = 'Cheque'
        DataPipeline = ppDBPipeline1
        DisplayFormat = '#,0.00;(#,0.00)'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Verdana'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 3175
        mmLeft = 167563
        mmTop = 529
        mmWidth = 23019
        BandType = 4
        LayerName = Foreground
      end
      object ppDBText8: TppDBText
        UserName = 'DBText8'
        HyperlinkEnabled = False
        DataField = 'Otros'
        DataPipeline = ppDBPipeline1
        DisplayFormat = '#,0.00;(#,0.00)'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Verdana'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 3175
        mmLeft = 191571
        mmTop = 529
        mmWidth = 23019
        BandType = 4
        LayerName = Foreground
      end
      object ppDBText15: TppDBText
        UserName = 'DBText15'
        HyperlinkEnabled = False
        DataField = 'Credito'
        DataPipeline = ppDBPipeline1
        DisplayFormat = '#,0.00;(#,0.00)'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Verdana'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 3175
        mmLeft = 239488
        mmTop = 529
        mmWidth = 24342
        BandType = 4
        LayerName = Foreground
      end
      object ppDBText16: TppDBText
        UserName = 'DBText16'
        HyperlinkEnabled = False
        DataField = 'Numero'
        DataPipeline = ppDBPipeline1
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Verdana'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 3175
        mmLeft = 21696
        mmTop = 390
        mmWidth = 19050
        BandType = 4
        LayerName = Foreground
      end
      object ppDBText17: TppDBText
        UserName = 'DBText17'
        HyperlinkEnabled = False
        DataField = 'Gastos'
        DataPipeline = ppDBPipeline1
        DisplayFormat = '#,0.00;(#,0.00)'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Verdana'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 3175
        mmLeft = 215550
        mmTop = 460
        mmWidth = 23019
        BandType = 4
        LayerName = Foreground
      end
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
    object ppGroup1: TppGroup
      BreakName = 'Moneda'
      DataPipeline = ppDBPipeline1
      GroupFileSettings.NewFile = False
      GroupFileSettings.EmailFile = False
      OutlineSettings.CreateNode = True
      StartOnOddPage = False
      UserName = 'Group1'
      mmNewColumnThreshold = 0
      mmNewPageThreshold = 0
      DataPipelineName = 'ppDBPipeline1'
      NewFile = False
      object ppGroupHeaderBand1: TppGroupHeaderBand
        Background.Brush.Style = bsClear
        mmBottomOffset = 0
        mmHeight = 5821
        mmPrintPosition = 0
        object ppDBText19: TppDBText
          UserName = 'DBText19'
          HyperlinkEnabled = False
          DataField = 'Moneda'
          DataPipeline = ppDBPipeline1
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clNavy
          Font.Name = 'Verdana'
          Font.Size = 10
          Font.Style = [fsBold]
          Transparent = True
          DataPipelineName = 'ppDBPipeline1'
          mmHeight = 4233
          mmLeft = 1449
          mmTop = 1002
          mmWidth = 48683
          BandType = 3
          GroupNo = 0
          LayerName = Foreground
        end
      end
      object ppGroupFooterBand1: TppGroupFooterBand
        Background.Brush.Style = bsClear
        HideWhenOneDetail = False
        mmBottomOffset = 0
        mmHeight = 46831
        mmPrintPosition = 0
        object ppShape3: TppShape
          UserName = 'Shape3'
          Brush.Color = 15000804
          ParentHeight = True
          ParentWidth = True
          Pen.Color = clSilver
          mmHeight = 46831
          mmLeft = 0
          mmTop = 0
          mmWidth = 266701
          BandType = 5
          GroupNo = 0
          LayerName = Foreground
        end
        object ppDBCalc5: TppDBCalc
          UserName = 'DBCalc5'
          HyperlinkEnabled = False
          DataField = 'Efectivo'
          DataPipeline = ppDBPipeline1
          DisplayFormat = '#,0.00;(#,0.00)'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Verdana'
          Font.Size = 8
          Font.Style = [fsBold]
          ResetGroup = ppGroup1
          TextAlignment = taRightJustified
          Transparent = True
          DataPipelineName = 'ppDBPipeline1'
          mmHeight = 3175
          mmLeft = 120403
          mmTop = 4055
          mmWidth = 21696
          BandType = 5
          GroupNo = 0
          LayerName = Foreground
        end
        object ppDBCalc6: TppDBCalc
          UserName = 'DBCalc6'
          HyperlinkEnabled = False
          DataField = 'Tarjeta'
          DataPipeline = ppDBPipeline1
          DisplayFormat = '#,0.00;(#,0.00)'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Verdana'
          Font.Size = 8
          Font.Style = [fsBold]
          ResetGroup = ppGroup1
          TextAlignment = taRightJustified
          Transparent = True
          DataPipelineName = 'ppDBPipeline1'
          mmHeight = 3175
          mmLeft = 144744
          mmTop = 4055
          mmWidth = 21696
          BandType = 5
          GroupNo = 0
          LayerName = Foreground
        end
        object ppDBCalc7: TppDBCalc
          UserName = 'DBCalc7'
          HyperlinkEnabled = False
          DataField = 'Gastos'
          DataPipeline = ppDBPipeline1
          DisplayFormat = '#,0.00;(#,0.00)'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Verdana'
          Font.Size = 8
          Font.Style = [fsBold]
          ResetGroup = ppGroup1
          TextAlignment = taRightJustified
          Transparent = True
          DataPipelineName = 'ppDBPipeline1'
          mmHeight = 3175
          mmLeft = 216642
          mmTop = 4055
          mmWidth = 21696
          BandType = 5
          GroupNo = 0
          LayerName = Foreground
        end
        object ppDBCalc8: TppDBCalc
          UserName = 'DBCalc8'
          HyperlinkEnabled = False
          DataField = 'Cheque'
          DataPipeline = ppDBPipeline1
          DisplayFormat = '#,0.00;(#,0.00)'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Verdana'
          Font.Size = 8
          Font.Style = [fsBold]
          ResetGroup = ppGroup1
          TextAlignment = taRightJustified
          Transparent = True
          DataPipelineName = 'ppDBPipeline1'
          mmHeight = 3175
          mmLeft = 168752
          mmTop = 4055
          mmWidth = 21696
          BandType = 5
          GroupNo = 0
          LayerName = Foreground
        end
        object ppLabel9: TppLabel
          UserName = 'Label9'
          HyperlinkEnabled = False
          AutoSize = False
          Caption = 'TOTALES'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Verdana'
          Font.Size = 8
          Font.Style = [fsBold]
          Transparent = True
          mmHeight = 3175
          mmLeft = 1336
          mmTop = 1453
          mmWidth = 39158
          BandType = 5
          GroupNo = 0
          LayerName = Foreground
        end
        object ppDBCalc20: TppDBCalc
          UserName = 'DBCalc20'
          HyperlinkEnabled = False
          DataField = 'Credito'
          DataPipeline = ppDBPipeline1
          DisplayFormat = '#,0.00;(#,0.00)'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Verdana'
          Font.Size = 8
          Font.Style = [fsBold]
          ResetGroup = ppGroup1
          TextAlignment = taRightJustified
          Transparent = True
          DataPipelineName = 'ppDBPipeline1'
          mmHeight = 3175
          mmLeft = 240385
          mmTop = 4055
          mmWidth = 23283
          BandType = 5
          GroupNo = 0
          LayerName = Foreground
        end
        object ppLabel27: TppLabel
          UserName = 'Label27'
          HyperlinkEnabled = False
          AutoSize = False
          Caption = 'Total a depositar:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Verdana'
          Font.Size = 10
          Font.Style = [fsBold]
          Transparent = True
          mmHeight = 4233
          mmLeft = 1336
          mmTop = 41019
          mmWidth = 39158
          BandType = 5
          GroupNo = 0
          LayerName = Foreground
        end
        object ppDBCalc23: TppDBCalc
          UserName = 'DBCalc23'
          HyperlinkEnabled = False
          DataField = 'TotalDeposito'
          DataPipeline = ppDBPipeline1
          DisplayFormat = '#,0.00;(#,0.00)'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Verdana'
          Font.Size = 10
          Font.Style = [fsBold]
          ResetGroup = ppGroup1
          TextAlignment = taRightJustified
          Transparent = True
          DataPipelineName = 'ppDBPipeline1'
          mmHeight = 5027
          mmLeft = 40806
          mmTop = 41019
          mmWidth = 48948
          BandType = 5
          GroupNo = 0
          LayerName = Foreground
        end
        object ppDBCalc21: TppDBCalc
          UserName = 'DBCalc21'
          HyperlinkEnabled = False
          DataField = 'Factura'
          DataPipeline = ppDBPipeline1
          DisplayFormat = '#,0.00;(#,0.00)'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Verdana'
          Font.Size = 10
          Font.Style = [fsBold]
          ResetGroup = ppGroup1
          TextAlignment = taRightJustified
          Transparent = True
          DataPipelineName = 'ppDBPipeline1'
          mmHeight = 3969
          mmLeft = 42394
          mmTop = 6744
          mmWidth = 47625
          BandType = 5
          GroupNo = 0
          LayerName = Foreground
        end
        object ppLabel26: TppLabel
          UserName = 'Label26'
          HyperlinkEnabled = False
          AutoSize = False
          Caption = 'Total Facturado:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Verdana'
          Font.Size = 10
          Font.Style = [fsBold]
          Transparent = True
          mmHeight = 4233
          mmLeft = 1336
          mmTop = 6480
          mmWidth = 39158
          BandType = 5
          GroupNo = 0
          LayerName = Foreground
        end
        object ppDBCalc22: TppDBCalc
          UserName = 'DBCalc22'
          HyperlinkEnabled = False
          DataField = 'Recibos'
          DataPipeline = ppDBPipeline1
          DisplayFormat = '#,0.00;(#,0.00)'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Verdana'
          Font.Size = 10
          Font.Style = [fsBold]
          ResetGroup = ppGroup1
          TextAlignment = taRightJustified
          Transparent = True
          DataPipelineName = 'ppDBPipeline1'
          mmHeight = 3969
          mmLeft = 40806
          mmTop = 11507
          mmWidth = 48948
          BandType = 5
          GroupNo = 0
          LayerName = Foreground
        end
        object ppLabel28: TppLabel
          UserName = 'Label28'
          HyperlinkEnabled = False
          AutoSize = False
          Caption = 'Abonos:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Verdana'
          Font.Size = 10
          Font.Style = [fsBold]
          Transparent = True
          mmHeight = 4233
          mmLeft = 1336
          mmTop = 11507
          mmWidth = 39158
          BandType = 5
          GroupNo = 0
          LayerName = Foreground
        end
        object ppDBCalc24: TppDBCalc
          UserName = 'DBCalc24'
          HyperlinkEnabled = False
          DataField = 'Credito'
          DataPipeline = ppDBPipeline1
          DisplayFormat = '#,0.00;(#,0.00)'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Verdana'
          Font.Size = 10
          Font.Style = [fsBold]
          ResetGroup = ppGroup1
          TextAlignment = taRightJustified
          Transparent = True
          DataPipelineName = 'ppDBPipeline1'
          mmHeight = 3969
          mmLeft = 40806
          mmTop = 29234
          mmWidth = 48948
          BandType = 5
          GroupNo = 0
          LayerName = Foreground
        end
        object ppLabel29: TppLabel
          UserName = 'Label29'
          HyperlinkEnabled = False
          AutoSize = False
          Caption = 'Creditos:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Verdana'
          Font.Size = 10
          Font.Style = [fsBold]
          Transparent = True
          mmHeight = 4233
          mmLeft = 1336
          mmTop = 29234
          mmWidth = 39158
          BandType = 5
          GroupNo = 0
          LayerName = Foreground
        end
        object ppDBCalc25: TppDBCalc
          UserName = 'DBCalc25'
          HyperlinkEnabled = False
          DataField = 'Gastos'
          DataPipeline = ppDBPipeline1
          DisplayFormat = '#,0.00;(#,0.00)'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Verdana'
          Font.Size = 10
          Font.Style = [fsBold]
          ResetGroup = ppGroup1
          TextAlignment = taRightJustified
          Transparent = True
          DataPipelineName = 'ppDBPipeline1'
          mmHeight = 3969
          mmLeft = 40806
          mmTop = 34261
          mmWidth = 48948
          BandType = 5
          GroupNo = 0
          LayerName = Foreground
        end
        object ppLabel30: TppLabel
          UserName = 'Label30'
          HyperlinkEnabled = False
          AutoSize = False
          Caption = 'Gastos Menores:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Verdana'
          Font.Size = 10
          Font.Style = [fsBold]
          Transparent = True
          mmHeight = 4233
          mmLeft = 1336
          mmTop = 34261
          mmWidth = 39158
          BandType = 5
          GroupNo = 0
          LayerName = Foreground
        end
        object ppLabel31: TppLabel
          UserName = 'Label31'
          HyperlinkEnabled = False
          AutoSize = False
          Caption = 'Tarjeta :'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Verdana'
          Font.Size = 10
          Font.Style = [fsBold]
          Transparent = True
          mmHeight = 5027
          mmLeft = 1336
          mmTop = 18651
          mmWidth = 39158
          BandType = 5
          GroupNo = 0
          LayerName = Foreground
        end
        object ppDBCalc26: TppDBCalc
          UserName = 'DBCalc26'
          HyperlinkEnabled = False
          DataField = 'Tarjeta'
          DataPipeline = ppDBPipeline1
          DisplayFormat = '#,0.00;(#,0.00)'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Verdana'
          Font.Size = 10
          Font.Style = [fsBold]
          ResetGroup = ppGroup1
          TextAlignment = taRightJustified
          Transparent = True
          DataPipelineName = 'ppDBPipeline1'
          mmHeight = 4763
          mmLeft = 40806
          mmTop = 18915
          mmWidth = 48948
          BandType = 5
          GroupNo = 0
          LayerName = Foreground
        end
        object ppDBCalc28: TppDBCalc
          UserName = 'DBCalc28'
          HyperlinkEnabled = False
          DataField = 'Otros'
          DataPipeline = ppDBPipeline1
          DisplayFormat = '#,0.00;(#,0.00)'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Verdana'
          Font.Size = 8
          Font.Style = [fsBold]
          ResetGroup = ppGroup1
          TextAlignment = taRightJustified
          Transparent = True
          DataPipelineName = 'ppDBPipeline1'
          mmHeight = 3175
          mmLeft = 192829
          mmTop = 3791
          mmWidth = 21696
          BandType = 5
          GroupNo = 0
          LayerName = Foreground
        end
        object ppDBCalc29: TppDBCalc
          UserName = 'DBCalc29'
          HyperlinkEnabled = False
          DataField = 'Otros'
          DataPipeline = ppDBPipeline1
          DisplayFormat = '#,0.00;(#,0.00)'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Verdana'
          Font.Size = 10
          Font.Style = [fsBold]
          ResetGroup = ppGroup1
          TextAlignment = taRightJustified
          Transparent = True
          DataPipelineName = 'ppDBPipeline1'
          mmHeight = 3969
          mmLeft = 40806
          mmTop = 24207
          mmWidth = 48948
          BandType = 5
          GroupNo = 0
          LayerName = Foreground
        end
        object ppLabel33: TppLabel
          UserName = 'Label33'
          HyperlinkEnabled = False
          AutoSize = False
          Caption = 'Otros :'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Verdana'
          Font.Size = 10
          Font.Style = [fsBold]
          Transparent = True
          mmHeight = 4233
          mmLeft = 1336
          mmTop = 24207
          mmWidth = 39158
          BandType = 5
          GroupNo = 0
          LayerName = Foreground
        end
      end
    end
    object ppGroup3: TppGroup
      BreakName = 'Registro'
      DataPipeline = ppDBPipeline1
      GroupFileSettings.NewFile = False
      GroupFileSettings.EmailFile = False
      OutlineSettings.CreateNode = True
      StartOnOddPage = False
      UserName = 'Group3'
      mmNewColumnThreshold = 0
      mmNewPageThreshold = 0
      DataPipelineName = 'ppDBPipeline1'
      NewFile = False
      object ppGroupHeaderBand3: TppGroupHeaderBand
        Background.Brush.Style = bsClear
        mmBottomOffset = 0
        mmHeight = 9790
        mmPrintPosition = 0
        object ppLabel2: TppLabel
          UserName = 'Label2'
          HyperlinkEnabled = False
          AutoSize = False
          Caption = 'Registro'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clNavy
          Font.Name = 'Verdana'
          Font.Size = 8
          Font.Style = [fsBold]
          Transparent = True
          mmHeight = 3440
          mmLeft = 1323
          mmTop = 5035
          mmWidth = 19315
          BandType = 3
          GroupNo = 1
          LayerName = Foreground
        end
        object ppLabel3: TppLabel
          UserName = 'Label3'
          HyperlinkEnabled = False
          AutoSize = False
          Caption = 'Cliente'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clNavy
          Font.Name = 'Verdana'
          Font.Size = 8
          Font.Style = [fsBold]
          Transparent = True
          mmHeight = 3175
          mmLeft = 41921
          mmTop = 5027
          mmWidth = 52917
          BandType = 3
          GroupNo = 1
          LayerName = Foreground
        end
        object ppLabel4: TppLabel
          UserName = 'Label4'
          HyperlinkEnabled = False
          AutoSize = False
          Caption = 'Fecha'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clNavy
          Font.Name = 'Verdana'
          Font.Size = 8
          Font.Style = [fsBold]
          Transparent = True
          mmHeight = 3440
          mmLeft = 95861
          mmTop = 5035
          mmWidth = 21696
          BandType = 3
          GroupNo = 1
          LayerName = Foreground
        end
        object ppLabel5: TppLabel
          UserName = 'Label5'
          HyperlinkEnabled = False
          AutoSize = False
          Caption = 'Efectivo'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clNavy
          Font.Name = 'Verdana'
          Font.Size = 8
          Font.Style = [fsBold]
          TextAlignment = taRightJustified
          Transparent = True
          mmHeight = 3440
          mmLeft = 119214
          mmTop = 5035
          mmWidth = 23019
          BandType = 3
          GroupNo = 1
          LayerName = Foreground
        end
        object ppLabel6: TppLabel
          UserName = 'Label6'
          HyperlinkEnabled = False
          AutoSize = False
          Caption = 'Tarjeta'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clNavy
          Font.Name = 'Verdana'
          Font.Size = 8
          Font.Style = [fsBold]
          TextAlignment = taRightJustified
          Transparent = True
          mmHeight = 3440
          mmLeft = 143555
          mmTop = 5035
          mmWidth = 23019
          BandType = 3
          GroupNo = 1
          LayerName = Foreground
        end
        object ppLabel7: TppLabel
          UserName = 'Label7'
          HyperlinkEnabled = False
          AutoSize = False
          Caption = 'Cheque'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clNavy
          Font.Name = 'Verdana'
          Font.Size = 8
          Font.Style = [fsBold]
          TextAlignment = taRightJustified
          Transparent = True
          mmHeight = 3440
          mmLeft = 167563
          mmTop = 5035
          mmWidth = 23019
          BandType = 3
          GroupNo = 1
          LayerName = Foreground
        end
        object ppLabel8: TppLabel
          UserName = 'Label8'
          HyperlinkEnabled = False
          AutoSize = False
          Caption = 'Gastos'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clNavy
          Font.Name = 'Verdana'
          Font.Size = 8
          Font.Style = [fsBold]
          TextAlignment = taRightJustified
          Transparent = True
          mmHeight = 3440
          mmLeft = 215285
          mmTop = 5035
          mmWidth = 23019
          BandType = 3
          GroupNo = 1
          LayerName = Foreground
        end
        object ppLabel25: TppLabel
          UserName = 'Label25'
          HyperlinkEnabled = False
          AutoSize = False
          Caption = 'Credito'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clNavy
          Font.Name = 'Verdana'
          Font.Size = 8
          Font.Style = [fsBold]
          TextAlignment = taRightJustified
          Transparent = True
          mmHeight = 3440
          mmLeft = 239488
          mmTop = 5035
          mmWidth = 24342
          BandType = 3
          GroupNo = 1
          LayerName = Foreground
        end
        object ppDBText1: TppDBText
          UserName = 'DBText1'
          HyperlinkEnabled = False
          DataField = 'Registro'
          DataPipeline = ppDBPipeline1
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clNavy
          Font.Name = 'Verdana'
          Font.Size = 10
          Font.Style = [fsBold]
          Transparent = True
          DataPipelineName = 'ppDBPipeline1'
          mmHeight = 4233
          mmLeft = 1323
          mmTop = 0
          mmWidth = 48683
          BandType = 3
          GroupNo = 1
          LayerName = Foreground
        end
        object ppLine3: TppLine
          UserName = 'Line3'
          Pen.Color = clNavy
          ParentWidth = True
          Weight = 0.750000000000000000
          mmHeight = 265
          mmLeft = 0
          mmTop = 9525
          mmWidth = 266701
          BandType = 3
          GroupNo = 1
          LayerName = Foreground
        end
        object ppLabel32: TppLabel
          UserName = 'Label32'
          HyperlinkEnabled = False
          AutoSize = False
          Caption = 'Otros'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clNavy
          Font.Name = 'Verdana'
          Font.Size = 8
          Font.Style = [fsBold]
          TextAlignment = taRightJustified
          Transparent = True
          mmHeight = 3440
          mmLeft = 190500
          mmTop = 5209
          mmWidth = 23019
          BandType = 3
          GroupNo = 0
          LayerName = Foreground
        end
      end
      object ppGroupFooterBand3: TppGroupFooterBand
        Background.Brush.Style = bsClear
        HideWhenOneDetail = False
        mmBottomOffset = 0
        mmHeight = 5556
        mmPrintPosition = 0
        object ppShape1: TppShape
          UserName = 'Shape1'
          Brush.Color = 15000804
          ParentHeight = True
          ParentWidth = True
          Pen.Color = clSilver
          mmHeight = 5556
          mmLeft = 0
          mmTop = 0
          mmWidth = 266701
          BandType = 5
          GroupNo = 1
          LayerName = Foreground
        end
        object ppDBCalc1: TppDBCalc
          UserName = 'DBCalc1'
          HyperlinkEnabled = False
          DataField = 'Efectivo'
          DataPipeline = ppDBPipeline1
          DisplayFormat = '#,0.00;(#,0.00)'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Verdana'
          Font.Size = 8
          Font.Style = []
          ResetGroup = ppGroup3
          TextAlignment = taRightJustified
          Transparent = True
          DataPipelineName = 'ppDBPipeline1'
          mmHeight = 3440
          mmLeft = 119938
          mmTop = 1056
          mmWidth = 21960
          BandType = 5
          GroupNo = 1
          LayerName = Foreground
        end
        object ppDBCalc2: TppDBCalc
          UserName = 'DBCalc2'
          HyperlinkEnabled = False
          DataField = 'Tarjeta'
          DataPipeline = ppDBPipeline1
          DisplayFormat = '#,0.00;(#,0.00)'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Verdana'
          Font.Size = 8
          Font.Style = []
          ResetGroup = ppGroup3
          TextAlignment = taRightJustified
          Transparent = True
          DataPipelineName = 'ppDBPipeline1'
          mmHeight = 3440
          mmLeft = 144614
          mmTop = 1056
          mmWidth = 21960
          BandType = 5
          GroupNo = 1
          LayerName = Foreground
        end
        object ppDBCalc3: TppDBCalc
          UserName = 'DBCalc3'
          HyperlinkEnabled = False
          DataField = 'Gastos'
          DataPipeline = ppDBPipeline1
          DisplayFormat = '#,0.00;(#,0.00)'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Verdana'
          Font.Size = 8
          Font.Style = []
          ResetGroup = ppGroup3
          TextAlignment = taRightJustified
          Transparent = True
          DataPipelineName = 'ppDBPipeline1'
          mmHeight = 3440
          mmLeft = 216343
          mmTop = 1056
          mmWidth = 21960
          BandType = 5
          GroupNo = 1
          LayerName = Foreground
        end
        object ppDBCalc4: TppDBCalc
          UserName = 'DBCalc4'
          HyperlinkEnabled = False
          DataField = 'Cheque'
          DataPipeline = ppDBPipeline1
          DisplayFormat = '#,0.00;(#,0.00)'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Verdana'
          Font.Size = 8
          Font.Style = []
          ResetGroup = ppGroup3
          TextAlignment = taRightJustified
          Transparent = True
          DataPipelineName = 'ppDBPipeline1'
          mmHeight = 3440
          mmLeft = 168621
          mmTop = 1056
          mmWidth = 21960
          BandType = 5
          GroupNo = 1
          LayerName = Foreground
        end
        object ppDBCalc19: TppDBCalc
          UserName = 'DBCalc19'
          HyperlinkEnabled = False
          DataField = 'Credito'
          DataPipeline = ppDBPipeline1
          DisplayFormat = '#,0.00;(#,0.00)'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Verdana'
          Font.Size = 8
          Font.Style = []
          ResetGroup = ppGroup3
          TextAlignment = taRightJustified
          Transparent = True
          DataPipelineName = 'ppDBPipeline1'
          mmHeight = 3440
          mmLeft = 240546
          mmTop = 1056
          mmWidth = 23283
          BandType = 5
          GroupNo = 1
          LayerName = Foreground
        end
        object ppDBCalc27: TppDBCalc
          UserName = 'DBCalc27'
          HyperlinkEnabled = False
          DataField = 'Otros'
          DataPipeline = ppDBPipeline1
          DisplayFormat = '#,0.00;(#,0.00)'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Verdana'
          Font.Size = 8
          Font.Style = []
          ResetGroup = ppGroup3
          TextAlignment = taRightJustified
          Transparent = True
          DataPipelineName = 'ppDBPipeline1'
          mmHeight = 3175
          mmLeft = 193090
          mmTop = 1323
          mmWidth = 21696
          BandType = 5
          GroupNo = 0
          LayerName = Foreground
        end
      end
    end
    object ppDesignLayers1: TppDesignLayers
      object ppDesignLayer1: TppDesignLayer
        UserName = 'Foreground'
        LayerType = ltBanded
        Index = 0
      end
    end
    object ppParameterList1: TppParameterList
    end
  end
  object rsPDV: TADODataSet
    Connection = dm.Coneccion
    CursorType = ctStatic
    LockType = ltReadOnly
    CommandText = 'svCuadreUsuarioPDV;1'
    CommandType = cmdStoredProc
    Parameters = <
      item
        Name = '@RETURN_VALUE'
        DataType = ftInteger
        Direction = pdReturnValue
        Precision = 10
        Value = Null
      end
      item
        Name = '@desde'
        Attributes = [paNullable]
        DataType = ftDateTime
        Value = Null
      end
      item
        Name = '@hasta'
        Attributes = [paNullable]
        DataType = ftDateTime
        Value = Null
      end
      item
        Name = '@usuario'
        Attributes = [paNullable]
        DataType = ftString
        Size = 30
        Value = Null
      end>
    Left = 100
    Top = 190
    object rsPDVidFactura: TGuidField
      FieldName = 'idFactura'
      FixedChar = True
      Size = 38
    end
    object rsPDVusuario: TStringField
      FieldName = 'usuario'
      Size = 30
    end
    object rsPDVHora: TDateTimeField
      FieldName = 'Hora'
    end
    object rsPDVFecha: TDateTimeField
      FieldName = 'Fecha'
    end
    object rsPDVfactura: TStringField
      FieldName = 'factura'
      Size = 16
    end
    object rsPDVformaPago: TStringField
      FieldName = 'formaPago'
      ReadOnly = True
      Size = 2
    end
    object rsPDVValor: TBCDField
      FieldName = 'Valor'
      Precision = 19
      Size = 2
    end
    object rsPDVEfectivo: TBCDField
      FieldName = 'Efectivo'
      ReadOnly = True
      Precision = 19
      Size = 2
    end
    object rsPDVTarjeta: TBCDField
      FieldName = 'Tarjeta'
      ReadOnly = True
      Precision = 19
      Size = 2
    end
    object rsPDVCheques: TBCDField
      FieldName = 'Cheques'
      ReadOnly = True
      Precision = 19
      Size = 2
    end
    object rsPDVOtros: TBCDField
      FieldName = 'Otros'
      ReadOnly = True
      Precision = 19
      Size = 2
    end
  end
  object RPTPDV: TppReport
    AutoStop = False
    DataPipeline = plPDV
    PassSetting = psTwoPass
    PrinterSetup.BinName = 'Default'
    PrinterSetup.DocumentName = 'Report'
    PrinterSetup.PaperName = 'Custom'
    PrinterSetup.PrinterName = 'Default'
    PrinterSetup.SaveDeviceSettings = False
    PrinterSetup.mmMarginBottom = 6350
    PrinterSetup.mmMarginLeft = 6350
    PrinterSetup.mmMarginRight = 6350
    PrinterSetup.mmMarginTop = 6350
    PrinterSetup.mmPaperHeight = 127000
    PrinterSetup.mmPaperWidth = 76200
    PrinterSetup.PaperSize = 125
    Template.FileName = '\\cbsdgserver\c$\Sistemas\Sistemas\CuadrePDV.rtm'
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
    ThumbnailSettings.Enabled = True
    ThumbnailSettings.Visible = True
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
    TextSearchSettings.Enabled = True
    XLSSettings.AppName = 'ReportBuilder'
    XLSSettings.Author = 'ReportBuilder'
    XLSSettings.Subject = 'Report'
    XLSSettings.Title = 'Report'
    Left = 202
    Top = 306
    Version = '15.02'
    mmColumnWidth = 0
    DataPipelineName = 'plPDV'
    object ppTitleBand2: TppTitleBand
      Background.Brush.Style = bsClear
      mmBottomOffset = 0
      mmHeight = 0
      mmPrintPosition = 0
    end
    object ppHeaderBand2: TppHeaderBand
      Background.Brush.Style = bsClear
      mmBottomOffset = 0
      mmHeight = 19579
      mmPrintPosition = 0
      object ppLabel10: TppLabel
        UserName = 'Label1'
        HyperlinkEnabled = False
        AutoSize = False
        Caption = 'Cuadre de caja'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Printer 8cpi'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 4233
        mmLeft = 0
        mmTop = 6085
        mmWidth = 22225
        BandType = 0
        LayerName = Foreground1
      end
      object ppDBText10: TppDBText
        UserName = 'DBText9'
        HyperlinkEnabled = False
        DataField = 'Compania'
        DataPipeline = dm.plConfig
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Printer 8cpi'
        Font.Size = 8
        Font.Style = []
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'plConfig'
        mmHeight = 4254
        mmLeft = 0
        mmTop = 1058
        mmWidth = 60590
        BandType = 0
        LayerName = Foreground1
      end
      object ppVariable1: TppVariable
        UserName = 'Variable1'
        HyperlinkEnabled = False
        BlankWhenZero = False
        CalcOrder = 0
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Printer 8cpi'
        Font.Size = 8
        Font.Style = []
        OnCalc = ppVariable1Calc
        Transparent = True
        mmHeight = 4233
        mmLeft = 0
        mmTop = 10848
        mmWidth = 60325
        BandType = 0
        LayerName = Foreground1
      end
      object ppSystemVariable1: TppSystemVariable
        UserName = 'SystemVariable1'
        HyperlinkEnabled = False
        VarType = vtPrintDateTime
        DisplayFormat = #39'IImpreso:'#39' dd/mm/yyyy hh:nn:ss'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Printer 8cpi'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 4254
        mmLeft = 0
        mmTop = 15324
        mmWidth = 94343
        BandType = 0
        LayerName = Foreground1
      end
    end
    object ppDetailBand2: TppDetailBand
      Background1.Brush.Style = bsClear
      Background2.Brush.Style = bsClear
      mmBottomOffset = 0
      mmHeight = 5292
      mmPrintPosition = 0
      object ppDBText11: TppDBText
        UserName = 'DBText2'
        HyperlinkEnabled = False
        DataField = 'factura'
        DataPipeline = plPDV
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Printer 8cpi'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        DataPipelineName = 'plPDV'
        mmHeight = 4233
        mmLeft = 0
        mmTop = 529
        mmWidth = 13494
        BandType = 4
        LayerName = Foreground1
      end
      object ppDBText12: TppDBText
        UserName = 'DBText12'
        HyperlinkEnabled = False
        DataField = 'Valor'
        DataPipeline = plPDV
        DisplayFormat = '#,0.00;-#,0.00'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Printer 8cpi'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'plPDV'
        mmHeight = 4233
        mmLeft = 15610
        mmTop = 529
        mmWidth = 11642
        BandType = 4
        LayerName = Foreground1
      end
      object ppDBText13: TppDBText
        UserName = 'DBText13'
        HyperlinkEnabled = False
        DataField = 'Hora'
        DataPipeline = plPDV
        DisplayFormat = 'hh:nn'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Printer 8cpi'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        DataPipelineName = 'plPDV'
        mmHeight = 4233
        mmLeft = 29633
        mmTop = 529
        mmWidth = 11642
        BandType = 4
        LayerName = Foreground1
      end
      object ppDBText14: TppDBText
        UserName = 'DBText14'
        HyperlinkEnabled = False
        DataField = 'formaPago'
        DataPipeline = plPDV
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Printer 8cpi'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taCentered
        Transparent = True
        DataPipelineName = 'plPDV'
        mmHeight = 4233
        mmLeft = 42598
        mmTop = 529
        mmWidth = 11642
        BandType = 4
        LayerName = Foreground1
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
      mmHeight = 28046
      mmPrintPosition = 0
      object ppLine5: TppLine
        UserName = 'Line5'
        Position = lpBottom
        Weight = 0.750000000000000000
        mmHeight = 3969
        mmLeft = 0
        mmTop = 794
        mmWidth = 59002
        BandType = 7
        LayerName = Foreground1
      end
      object ppDBCalc14: TppDBCalc
        UserName = 'DBCalc14'
        HyperlinkEnabled = False
        DataField = 'Efectivo'
        DataPipeline = plPDV
        DisplayFormat = '#,0.00;-#,0.00'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Printer 8cpi'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'plPDV'
        mmHeight = 4233
        mmLeft = 38100
        mmTop = 5292
        mmWidth = 19579
        BandType = 7
        LayerName = Foreground1
      end
      object ppLabel20: TppLabel
        UserName = 'Label20'
        HyperlinkEnabled = False
        Caption = 'Efectivo:'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Printer 8cpi'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 4233
        mmLeft = 8467
        mmTop = 5292
        mmWidth = 29369
        BandType = 7
        LayerName = Foreground1
      end
      object ppDBCalc15: TppDBCalc
        UserName = 'DBCalc102'
        HyperlinkEnabled = False
        DataField = 'Tarjeta'
        DataPipeline = plPDV
        DisplayFormat = '#,0.00;-#,0.00'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Printer 8cpi'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'plPDV'
        mmHeight = 4233
        mmLeft = 38100
        mmTop = 9790
        mmWidth = 19579
        BandType = 7
        LayerName = Foreground1
      end
      object ppLabel21: TppLabel
        UserName = 'Label21'
        HyperlinkEnabled = False
        Caption = 'Tarjeta:'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Printer 8cpi'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 4233
        mmLeft = 11906
        mmTop = 9790
        mmWidth = 25929
        BandType = 7
        LayerName = Foreground1
      end
      object ppDBCalc16: TppDBCalc
        UserName = 'DBCalc16'
        HyperlinkEnabled = False
        DataField = 'Cheques'
        DataPipeline = plPDV
        DisplayFormat = '#,0.00;-#,0.00'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Printer 8cpi'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'plPDV'
        mmHeight = 4233
        mmLeft = 38100
        mmTop = 14288
        mmWidth = 19579
        BandType = 7
        LayerName = Foreground1
      end
      object ppLabel22: TppLabel
        UserName = 'Label22'
        HyperlinkEnabled = False
        Caption = 'Cheques:'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Printer 8cpi'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 4233
        mmLeft = 11906
        mmTop = 14288
        mmWidth = 25929
        BandType = 7
        LayerName = Foreground1
      end
      object ppDBCalc17: TppDBCalc
        UserName = 'DBCalc17'
        HyperlinkEnabled = False
        DataField = 'Otros'
        DataPipeline = plPDV
        DisplayFormat = '#,0.00;-#,0.00'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Printer 8cpi'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'plPDV'
        mmHeight = 4233
        mmLeft = 38100
        mmTop = 18785
        mmWidth = 19579
        BandType = 7
        LayerName = Foreground1
      end
      object ppLabel23: TppLabel
        UserName = 'Label23'
        HyperlinkEnabled = False
        Caption = 'Otros:'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Printer 8cpi'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 4233
        mmLeft = 18256
        mmTop = 18785
        mmWidth = 19579
        BandType = 7
        LayerName = Foreground1
      end
      object ppDBCalc18: TppDBCalc
        UserName = 'DBCalc18'
        HyperlinkEnabled = False
        DataField = 'Valor'
        DataPipeline = plPDV
        DisplayFormat = '#,0.00;-#,0.00'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Printer 8cpi'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'plPDV'
        mmHeight = 4233
        mmLeft = 38100
        mmTop = 23283
        mmWidth = 19579
        BandType = 7
        LayerName = Foreground1
      end
      object ppLabel24: TppLabel
        UserName = 'Label24'
        HyperlinkEnabled = False
        Caption = 'Total:'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Printer 8cpi'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 4233
        mmLeft = 18256
        mmTop = 23283
        mmWidth = 19579
        BandType = 7
        LayerName = Foreground1
      end
    end
    object ppGroup2: TppGroup
      BreakName = 'usuario'
      DataPipeline = plPDV
      GroupFileSettings.NewFile = False
      GroupFileSettings.EmailFile = False
      OutlineSettings.CreateNode = True
      StartOnOddPage = False
      UserName = 'Group1'
      mmNewColumnThreshold = 0
      mmNewPageThreshold = 0
      DataPipelineName = 'plPDV'
      NewFile = False
      object ppGroupHeaderBand2: TppGroupHeaderBand
        Background.Brush.Style = bsClear
        mmBottomOffset = 0
        mmHeight = 10848
        mmPrintPosition = 0
        object ppLine4: TppLine
          UserName = 'Line3'
          Pen.Color = clNavy
          Weight = 0.750000000000000000
          mmHeight = 265
          mmLeft = 0
          mmTop = 10583
          mmWidth = 59002
          BandType = 3
          GroupNo = 0
          LayerName = Foreground1
        end
        object ppDBText18: TppDBText
          UserName = 'DBText1'
          HyperlinkEnabled = False
          DataField = 'usuario'
          DataPipeline = plPDV
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Name = 'Printer 8cpi'
          Font.Size = 8
          Font.Style = []
          Transparent = True
          DataPipelineName = 'plPDV'
          mmHeight = 4233
          mmLeft = 0
          mmTop = 529
          mmWidth = 48683
          BandType = 3
          GroupNo = 0
          LayerName = Foreground1
        end
        object ppLabel12: TppLabel
          UserName = 'Label2'
          HyperlinkEnabled = False
          AutoSize = False
          Caption = 'Numero'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Name = 'Printer 14cpi'
          Font.Size = 8
          Font.Style = []
          Transparent = True
          mmHeight = 4233
          mmLeft = 0
          mmTop = 5821
          mmWidth = 13494
          BandType = 3
          GroupNo = 0
          LayerName = Foreground1
        end
        object ppLabel11: TppLabel
          UserName = 'Label11'
          HyperlinkEnabled = False
          AutoSize = False
          Caption = 'Valor'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Name = 'Printer 14cpi'
          Font.Size = 8
          Font.Style = []
          TextAlignment = taRightJustified
          Transparent = True
          mmHeight = 4233
          mmLeft = 15875
          mmTop = 5821
          mmWidth = 11642
          BandType = 3
          GroupNo = 0
          LayerName = Foreground1
        end
        object ppLabel13: TppLabel
          UserName = 'Label13'
          HyperlinkEnabled = False
          AutoSize = False
          Caption = 'Hora'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Name = 'Printer 14cpi'
          Font.Size = 8
          Font.Style = []
          Transparent = True
          mmHeight = 4233
          mmLeft = 29633
          mmTop = 5821
          mmWidth = 11642
          BandType = 3
          GroupNo = 0
          LayerName = Foreground1
        end
        object ppLabel14: TppLabel
          UserName = 'Label14'
          HyperlinkEnabled = False
          AutoSize = False
          Caption = 'F/P'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Name = 'Printer 14cpi'
          Font.Size = 8
          Font.Style = []
          TextAlignment = taCentered
          Transparent = True
          mmHeight = 4233
          mmLeft = 42598
          mmTop = 5821
          mmWidth = 11642
          BandType = 3
          GroupNo = 0
          LayerName = Foreground1
        end
      end
      object ppGroupFooterBand2: TppGroupFooterBand
        Background.Brush.Style = bsClear
        HideWhenOneDetail = False
        mmBottomOffset = 0
        mmHeight = 28046
        mmPrintPosition = 0
        object ppLine1: TppLine
          UserName = 'Line1'
          Position = lpBottom
          Weight = 0.750000000000000000
          mmHeight = 3969
          mmLeft = 529
          mmTop = 529
          mmWidth = 59002
          BandType = 5
          GroupNo = 0
          LayerName = Foreground1
        end
        object ppDBCalc9: TppDBCalc
          UserName = 'DBCalc9'
          HyperlinkEnabled = False
          DataField = 'Efectivo'
          DataPipeline = plPDV
          DisplayFormat = '#,0.00;-#,0.00'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Name = 'Printer 8cpi'
          Font.Size = 8
          Font.Style = []
          ResetGroup = ppGroup2
          TextAlignment = taRightJustified
          Transparent = True
          DataPipelineName = 'plPDV'
          mmHeight = 4233
          mmLeft = 37306
          mmTop = 5027
          mmWidth = 19579
          BandType = 5
          GroupNo = 0
          LayerName = Foreground1
        end
        object ppLabel15: TppLabel
          UserName = 'Label15'
          HyperlinkEnabled = False
          Caption = 'Efectivo:'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Name = 'Printer 8cpi'
          Font.Size = 8
          Font.Style = []
          TextAlignment = taRightJustified
          Transparent = True
          mmHeight = 4254
          mmLeft = 7763
          mmTop = 5027
          mmWidth = 29279
          BandType = 5
          GroupNo = 0
          LayerName = Foreground1
        end
        object ppDBCalc10: TppDBCalc
          UserName = 'DBCalc10'
          HyperlinkEnabled = False
          DataField = 'Tarjeta'
          DataPipeline = plPDV
          DisplayFormat = '#,0.00;-#,0.00'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Name = 'Printer 8cpi'
          Font.Size = 8
          Font.Style = []
          ResetGroup = ppGroup2
          TextAlignment = taRightJustified
          Transparent = True
          DataPipelineName = 'plPDV'
          mmHeight = 4233
          mmLeft = 37306
          mmTop = 9525
          mmWidth = 19579
          BandType = 5
          GroupNo = 0
          LayerName = Foreground1
        end
        object ppLabel16: TppLabel
          UserName = 'Label16'
          HyperlinkEnabled = False
          Caption = 'Tarjeta:'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Name = 'Printer 8cpi'
          Font.Size = 8
          Font.Style = []
          TextAlignment = taRightJustified
          Transparent = True
          mmHeight = 4233
          mmLeft = 11113
          mmTop = 9525
          mmWidth = 25929
          BandType = 5
          GroupNo = 0
          LayerName = Foreground1
        end
        object ppDBCalc11: TppDBCalc
          UserName = 'DBCalc11'
          HyperlinkEnabled = False
          DataField = 'Cheques'
          DataPipeline = plPDV
          DisplayFormat = '#,0.00;-#,0.00'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Name = 'Printer 8cpi'
          Font.Size = 8
          Font.Style = []
          ResetGroup = ppGroup2
          TextAlignment = taRightJustified
          Transparent = True
          DataPipelineName = 'plPDV'
          mmHeight = 4233
          mmLeft = 37306
          mmTop = 14023
          mmWidth = 19579
          BandType = 5
          GroupNo = 0
          LayerName = Foreground1
        end
        object ppLabel17: TppLabel
          UserName = 'Label17'
          HyperlinkEnabled = False
          Caption = 'Cheques:'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Name = 'Printer 8cpi'
          Font.Size = 8
          Font.Style = []
          TextAlignment = taRightJustified
          Transparent = True
          mmHeight = 4233
          mmLeft = 11113
          mmTop = 14023
          mmWidth = 25929
          BandType = 5
          GroupNo = 0
          LayerName = Foreground1
        end
        object ppDBCalc12: TppDBCalc
          UserName = 'DBCalc101'
          HyperlinkEnabled = False
          DataField = 'Otros'
          DataPipeline = plPDV
          DisplayFormat = '#,0.00;-#,0.00'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Name = 'Printer 8cpi'
          Font.Size = 8
          Font.Style = []
          ResetGroup = ppGroup2
          TextAlignment = taRightJustified
          Transparent = True
          DataPipelineName = 'plPDV'
          mmHeight = 4233
          mmLeft = 37306
          mmTop = 18521
          mmWidth = 19579
          BandType = 5
          GroupNo = 0
          LayerName = Foreground1
        end
        object ppLabel18: TppLabel
          UserName = 'Label18'
          HyperlinkEnabled = False
          Caption = 'Otros:'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Name = 'Printer 8cpi'
          Font.Size = 8
          Font.Style = []
          TextAlignment = taRightJustified
          Transparent = True
          mmHeight = 4233
          mmLeft = 17463
          mmTop = 18521
          mmWidth = 19579
          BandType = 5
          GroupNo = 0
          LayerName = Foreground1
        end
        object ppDBCalc13: TppDBCalc
          UserName = 'DBCalc13'
          HyperlinkEnabled = False
          DataField = 'Valor'
          DataPipeline = plPDV
          DisplayFormat = '#,0.00;-#,0.00'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Name = 'Printer 8cpi'
          Font.Size = 8
          Font.Style = []
          ResetGroup = ppGroup2
          TextAlignment = taRightJustified
          Transparent = True
          DataPipelineName = 'plPDV'
          mmHeight = 4233
          mmLeft = 37306
          mmTop = 23019
          mmWidth = 19579
          BandType = 5
          GroupNo = 0
          LayerName = Foreground1
        end
        object ppLabel19: TppLabel
          UserName = 'Label19'
          HyperlinkEnabled = False
          Caption = 'Total:'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Name = 'Printer 8cpi'
          Font.Size = 8
          Font.Style = []
          TextAlignment = taRightJustified
          Transparent = True
          mmHeight = 4233
          mmLeft = 17463
          mmTop = 23019
          mmWidth = 19579
          BandType = 5
          GroupNo = 0
          LayerName = Foreground1
        end
      end
    end
    object ppDesignLayers2: TppDesignLayers
      object ppDesignLayer2: TppDesignLayer
        UserName = 'Foreground1'
        LayerType = ltBanded
        Index = 0
      end
    end
    object ppParameterList2: TppParameterList
    end
  end
  object plPDV: TppDBPipeline
    DataSource = dsPDV
    UserName = 'plPDV'
    Left = 96
    Top = 330
    object plPDVppField1: TppField
      FieldAlias = 'idFactura'
      FieldName = 'idFactura'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 0
      Searchable = False
      Sortable = False
    end
    object plPDVppField2: TppField
      FieldAlias = 'usuario'
      FieldName = 'usuario'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 1
      Searchable = False
      Sortable = False
    end
    object plPDVppField3: TppField
      FieldAlias = 'Hora'
      FieldName = 'Hora'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 2
      Searchable = False
      Sortable = False
    end
    object plPDVppField4: TppField
      FieldAlias = 'Fecha'
      FieldName = 'Fecha'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 3
      Searchable = False
      Sortable = False
    end
    object plPDVppField5: TppField
      FieldAlias = 'factura'
      FieldName = 'factura'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 4
      Searchable = False
      Sortable = False
    end
    object plPDVppField6: TppField
      FieldAlias = 'formaPago'
      FieldName = 'formaPago'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 5
      Searchable = False
      Sortable = False
    end
    object plPDVppField7: TppField
      FieldAlias = 'Valor'
      FieldName = 'Valor'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 6
      Searchable = False
      Sortable = False
    end
    object plPDVppField8: TppField
      FieldAlias = 'Efectivo'
      FieldName = 'Efectivo'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 7
      Searchable = False
      Sortable = False
    end
    object plPDVppField9: TppField
      FieldAlias = 'Tarjeta'
      FieldName = 'Tarjeta'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 8
      Searchable = False
      Sortable = False
    end
    object plPDVppField10: TppField
      FieldAlias = 'Cheques'
      FieldName = 'Cheques'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 9
      Searchable = False
      Sortable = False
    end
    object plPDVppField11: TppField
      FieldAlias = 'Otros'
      FieldName = 'Otros'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 10
      Searchable = False
      Sortable = False
    end
  end
  object dsPDV: TwwDataSource
    AutoEdit = False
    DataSet = rsPDV
    OnUpdateData = DSUpdateData
    Left = 359
    Top = 293
  end
  object spCleanCycle: TADOStoredProc
    Connection = dm.Coneccion
    ProcedureName = 'svCyClesClean;1'
    Parameters = <
      item
        Name = '@RETURN_VALUE'
        DataType = ftInteger
        Direction = pdReturnValue
        Precision = 10
        Value = Null
      end
      item
        Name = '@Desde'
        Attributes = [paNullable]
        DataType = ftDateTime
        Value = Null
      end
      item
        Name = '@Hasta'
        Attributes = [paNullable]
        DataType = ftDateTime
        Value = Null
      end>
    Left = 446
    Top = 322
  end
  object sd: TSaveDialog
    DefaultExt = 'xls'
    Left = 602
    Top = 206
  end
  object dsSucursal: TwwDataSource
    AutoEdit = False
    DataSet = rsSucursal
    OnUpdateData = DSUpdateData
    Left = 319
    Top = 127
  end
  object rsSucursal: TADODataSet
    Connection = dm.Coneccion
    CursorType = ctStatic
    CommandText = 'select idCentroCosto,CentroCosto from CentroCosto where Activo=1'
    Parameters = <>
    Left = 404
    Top = 126
    object rsSucursalidCentroCosto: TGuidField
      FieldName = 'idCentroCosto'
      FixedChar = True
      Size = 38
    end
    object rsSucursalCentroCosto: TStringField
      FieldName = 'CentroCosto'
      Size = 16
    end
  end
end
