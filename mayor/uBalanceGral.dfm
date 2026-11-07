object fBalanceGral: TfBalanceGral
  Left = 373
  Top = 233
  ActiveControl = deHasta
  BorderStyle = bsSingle
  Caption = 'Balance general'
  ClientHeight = 437
  ClientWidth = 684
  Color = 15790320
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poMainFormCenter
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 8
    Top = 14
    Width = 32
    Height = 13
    Caption = 'Hasta:'
  end
  object deHasta: TcxDateEdit
    Left = 44
    Top = 10
    Width = 121
    Height = 21
    Properties.SaveTime = False
    Style.LookAndFeel.NativeStyle = True
    TabOrder = 0
  end
  object cxGrid1: TcxGrid
    Left = 0
    Top = 40
    Width = 684
    Height = 397
    Align = alBottom
    Anchors = [akLeft, akTop, akRight, akBottom]
    TabOrder = 1
    LookAndFeel.NativeStyle = True
    object cxGrid1DBTableView1: TcxGridDBTableView
      DataController.DataSource = ds
      DataController.KeyFieldNames = 'CtaEstado'
      DataController.Summary.DefaultGroupSummaryItems = <>
      DataController.Summary.FooterSummaryItems = <>
      DataController.Summary.SummaryGroups = <>
      NavigatorButtons.ConfirmDelete = False
      object cxGrid1DBTableView1Grupo: TcxGridDBColumn
        DataBinding.FieldName = 'Grupo'
        Visible = False
        GroupIndex = 0
        Options.Filtering = False
      end
      object cxGrid1DBTableView1DBColumn4: TcxGridDBColumn
        Caption = 'Sub grupo'
        DataBinding.FieldName = 'Seccion'
        Visible = False
        GroupIndex = 1
        Options.Filtering = False
      end
      object cxGrid1DBTableView1Descripcion: TcxGridDBColumn
        Caption = 'Item'
        DataBinding.FieldName = 'Descripcion'
        Visible = False
        GroupIndex = 2
        Options.Filtering = False
      end
      object cxGrid1DBTableView1CtaEstado: TcxGridDBColumn
        DataBinding.FieldName = 'CtaEstado'
        Visible = False
        Options.Filtering = False
        Width = 64
      end
      object cxGrid1DBTableView1Cuenta: TcxGridDBColumn
        DataBinding.FieldName = 'Cuenta'
        Options.Filtering = False
        Width = 219
      end
      object cxGrid1DBTableView1MovActual: TcxGridDBColumn
        Caption = 'Mes Actual'
        DataBinding.FieldName = 'MovActual'
        Options.Filtering = False
        Width = 96
      end
      object cxGrid1DBTableView1MovAnterior: TcxGridDBColumn
        Caption = 'Mes Ant.'
        DataBinding.FieldName = 'MovAnterior'
        Options.Filtering = False
        Width = 99
      end
      object cxGrid1DBTableView1MovAcumulado: TcxGridDBColumn
        Caption = '% Variacion'
        DataBinding.FieldName = 'cVariacion'
        Options.Filtering = False
        Width = 91
      end
      object cxGrid1DBTableView1DBColumn1: TcxGridDBColumn
        Caption = 'Importe'
        DataBinding.FieldName = 'cImporte'
        Options.Filtering = False
        Width = 104
      end
    end
    object cxGrid1Level1: TcxGridLevel
      GridView = cxGrid1DBTableView1
    end
  end
  object cxButton1: TcxButton
    Left = 204
    Top = 5
    Width = 135
    Height = 31
    Caption = 'Mostrar'
    Default = True
    TabOrder = 2
    OnClick = cxButton1Click
    Glyph.Data = {
      F6060000424DF606000000000000360000002800000018000000180000000100
      180000000000C0060000120B0000120B00000000000000000000FF00FFFF00FF
      FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00
      FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF
      00FFFF00FFFF00FF969190736E6EAF7D7EFF00FFFF00FFFF00FFFF00FFFF00FF
      FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00
      FFFF00FFFF00FFFF00FFFF00FF9792916C6C70174B82326089AF7B7BFF00FFFF
      00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF
      FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF8386863A79B11A81FF0D62
      BC3B5F7FB07D7DFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF
      00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF2698FF
      3DB0FF349DFF1C7EF80C62BA395E7FB07B7DFF00FFFF00FFFF00FFFF00FFFF00
      FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF
      00FFFF00FFFF00FF2996FF42ADFE349AFF1C7EF80C60B8405F7FB17D7BFF00FF
      FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00
      FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF2A96FE41AFFE349AFF1C7EF80C
      5FB83E5F7EB07B7BFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF
      FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF2A97
      FE41AFFE349AFF1A7BF80B5FB744627FA97A7EFF00FFFF00FFFF00FFFF00FFFF
      00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF
      FF00FFFF00FFFF00FF2C98FE41ADFE349CFF197BF60C5EB62B587FFF00FFFF00
      FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF
      00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF2D99FE41ADFE339CFF287FE7
      3D607BFF00FFFF00FFFF00FF996964996964996964996964996964FF00FFFF00
      FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF2D
      9AFE4BB5FF8CBDEDAC9F966C565593665F996964DDCCABFFFFD9FFFFD9FFFFD7
      E9D5B6996964996964FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00
      FFFF00FFFF00FFFF00FFFF00FFFF00FFD1ADA5B68775CCAB8CFFFFD3FFFFD3FF
      FFD0FFFFCFFFFFD0FFFFD3FFFFE2D4BAA4996964FF00FFFF00FFFF00FFFF00FF
      FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF996B65D4AF8FFFEF
      B0FBEDB8FFFFCFFFFFCEFFFFCFFFFFD7FFFFDCFFFFEAFFFFFFD3BBB8996964FF
      00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF
      996964FFEAA6F2C78FFAEBB6FFFFD0FFFFCFFFFFD3FFFFE5FFFFF2FFFFFAFFFF
      FCFFFFFE996964FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF
      00FFFF00FF996964E6C9A0F6CA8BEEBA7FFBE7B4FFFFD0FFFFCFFFFFD7FFFFEB
      FFFFFEFFFFFCFFFFF2FFFFE5D8C6A5996964FF00FFFF00FFFF00FFFF00FFFF00
      FFFF00FFFF00FFFF00FFFF00FF996964FFEFADF0BC7DEBB075F7DDA7FEFCCBFF
      FFD1FFFFD5FFFFE6FFFFF6FFFFF6FFFFE6FFFFD7FFFFDA996964FF00FFFF00FF
      FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF996964FFF0AFEFBA7BE9A5
      6AF2C98FFCEFBCFFFFD1FFFFD3FFFFD9FFFFE1FFFFE2FFFFD9FFFFD3FFFFDA99
      6964FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF996964
      FFF2B2F3C484E99E63EDB57AF4D79FFCF4C2FFFFD1FFFFD3FFFFD3FFFFD3FFFF
      D0FFFFCFFFFFD8996964FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF
      00FFFF00FF996964E6C9A0FCDE9EEFBA7EEEB779EFC284F6DAA1FBF2BFFFFFCF
      FFFFD1FFFFD0FFFFD0FFFFD1D9C6A5996964FF00FFFF00FFFF00FFFF00FFFF00
      FFFF00FFFF00FFFF00FFFF00FFFF00FF996964FFFEC2FBEBCAF6D7ACF0C186EF
      BF82F3CC95FAE3ADFCF0BCFBF4C1FEF6C4FFFFD4996964FF00FFFF00FFFF00FF
      FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF996964D7BB9EFFFF
      FFFEF7EEF6D8ACEDB474E9A76BEDB478F0C48AF6D49CFFF4B6D3B799996964FF
      00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF
      FF00FF996964CEB6AFFFFFFFFFF4CBF6CF90F0BC7DF2BF81F7CE90FFEDA9D4B1
      93996964FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF
      00FFFF00FFFF00FFFF00FFFF00FF996964996964E1C9A0FFF7B5FFF2AFFFF2B1
      E9CCA4996964996964FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00
      FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF99696499
      6964996964996964996964FF00FFFF00FFFF00FFFF00FFFF00FF}
    LookAndFeel.NativeStyle = True
  end
  object cxButton2: TcxButton
    Left = 376
    Top = 5
    Width = 135
    Height = 31
    Caption = 'Imprimir'
    TabOrder = 3
    OnClick = cxButton2Click
    Glyph.Data = {
      F6060000424DF606000000000000360000002800000018000000180000000100
      180000000000C0060000120B0000120B00000000000000000000FF00FFFF00FF
      FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00
      FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF
      00FFFF00FFFF00FFFF00FF8E5D598E5D598E5D598E5D598E5D598E5D598E5D59
      8E5D598E5D598E5D598E5D598E5D598E5D598E5D598E5D598E5D598E5D598E5D
      5980504BFF00FFFF00FFFF00FFFF00FF646365314B62AC7D7EF6DAB6F3D5ADF2
      D1A5F0CE9EEFCB97EFC791EEC589EBC182EBC080EBC080EBC080EBC080EBC080
      EBC080EDC180EABF7F80504BFF00FFFF00FFFF00FFFF00FF5084B20F6FE1325F
      8CB87E7AF2D5B1F0D1AAEFCFA3EECB9DEDC796EDC58FEBC188EABF82E9BD7FE9
      BD7FE9BD7FE9BD7FE9BD7FEABF7FE7BC7E80504BFF00FFFF00FFFF00FFFF00FF
      32A0FE37A1FF106FE2325F8BB67D79F2D4B1F0D1AAEFCFA4EECB9DEDC796EDC5
      8FEBC189EABF82E9BD7FE9BD7FE9BD7FE9BD7FEABF7FE7BC7E80504BFF00FFFF
      00FFFF00FFFF00FFFF00FF37A4FE379FFF0E6DDE355F89BB7F79F2D4B0F0D1AA
      EFCEA3EECB9CEDC795EDC58FEBC189E9BD81E9BD7FE9BD7FE9BD7FEABF7FE7BC
      7E80504BFF00FFFF00FFFF00FFFF00FFFF00FF93656037A4FE359EFF0F6FDE35
      608BA67B7FF2D5B1F0D1AAEFCEA3EECB9CEDC796EDC590EBC189E9BF82E9BD7F
      E9BD7FEABF7FE7BC7E80504BFF00FFFF00FFFF00FFFF00FFFF00FF956660F2E2
      D338A5FE329DFF156DCE444F5BDAB8A0925D5A986660935E5B9A6663B88A74D7
      AB82EBC189E9BD81E9BD7FEABF7FE7BC7E80504BFF00FFFF00FFFF00FFFF00FF
      FF00FF986963F2E6DAFAEEDE3BABFFA1CAE78F6D6B96665FC2A38CE9DCB7FBF8
      CBE7DCB6BF9A899D6B66CB9E7BEBC189E9BD81EABF7FE7BC7E80504BFF00FFFF
      00FFFF00FFFF00FFFF00FF9E6E64F4EAE1FBF2E6F8EADCB49291A06D66EDD4A4
      FFFCCAFFFFCFFFFFCFFFFFD5FFFFEAE3D3CC96635FD5AB82EBC188EABF82E7BB
      7E80504BFF00FFFF00FFFF00FFFF00FFFF00FFA37266F6EEE9FCF6EDF8EFE3A1
      6C67C79F81F6D095FCF4C2FFFFCFFFFFD8FFFFEEFFFFFAFFFFFFB79387B88A73
      EBC48EEBC288E7BC8080504BFF00FFFF00FFFF00FFFF00FFFF00FFA77568F8F3
      F0FEFBF6FBF3EB9D6A64E7C28EEEB87FFBF0BDFFFFD0FFFFDCFFFFF7FFFFFAFF
      FFE6DCCEAD996560EDC795EDC58FE9BF8780504BFF00FFFF00FFFF00FFFF00FF
      FF00FFAC7969FAF6F4FFFFFEFEF8F3935F5BF7D495EAA76CF7DAA3FFFFCEFFFF
      D4FFFFE1FFFFE3FFFFD7F6F2C9935E5BEECB9CEEC996EAC18E80504BFF00FFFF
      00FFFF00FFFF00FFFF00FFB17E6BFAF6F4FFFFFFFFFEFB9E6B65E9C793EAA96A
      EFBD80FAE9B4FFFFD0FFFFD3FFFFD1FFFFD1E1D1B0996660EFCEA1EECB9CEBC5
      9280504BFF00FFFF00FFFF00FFFF00FFFF00FFB6816CFAF6F4FFFFFFFFFFFFA4
      706BCBA989F8E2B5F0C690F0C286F7DCA5FEF3C1FEF8C6FFFFCFBB9984BB8F7E
      F0D1A9F0CFA3EDC99980504BFF00FFFF00FFFF00FFFF00FFFF00FFBB846EFAF6
      F4FFFFFFFFFFFFE5D5D5A07068EDE3E2FFF4E2EFBD80EBAB6FF0C086FBDEA3EB
      D9A9986760DAB89FF0D4AFEFD0A7CEB49180504BFF00FFFF00FFFF00FFFF00FF
      FF00FFC0896FFBF7F4FFFFFFFFFFFFFFFFFFD7C0BF9E6F6BC6A999EAD19EFADA
      9CE9C793C59D829D6A64D0AC9CF3DCBDE5CEAFC4B096A1927F80504BFF00FFFF
      00FFFF00FFFF00FFFF00FFC58C70FBF7F4FFFFFFFFFFFFFFFFFFFFFFFFE5D5D5
      A4766A9A6862935F5B9E6A64BD988FE0C4B5FAE9D0E0D0BAB8AB9AA79C8BA497
      8680504BFF00FFFF00FFFF00FFFF00FFFF00FFCB9173FBF7F4FFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFEFBFCF7F0FBF2E9FBF2E5E9D3C49E675B98665B
      95655B96655B96655B986859FF00FFFF00FFFF00FFFF00FFFF00FFCF9674FBF7
      F6FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFCFAFCF7F0FFFAEFDA
      C0B69F675BDAA16BDD984FE2903AEA8923A5686BFF00FFFF00FFFF00FFFF00FF
      FF00FFD49875FCF8F6FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFCFBFFFEF7DDC4BC9F675BEAB474EFA952F6A036A5686BFF00FFFF00FFFF
      00FFFF00FFFF00FFFF00FFD49875FCF8F6FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFDDC7C29F675BEAB273EFA751A5686BFF00
      FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFD49875FFFEFEFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFE2D0CE9F675BEDB572
      A5686BFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFCF8E68CF8E
      68CF8E68CF8E68CF8E68CF8E68CF8E68CF8E68CF8E68CF8E68CF8E68CF8E68CF
      8E689F675BA5686BFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF}
    LookAndFeel.NativeStyle = True
  end
  object cxButton3: TcxButton
    Left = 548
    Top = 5
    Width = 135
    Height = 31
    Caption = 'Salir'
    TabOrder = 4
    OnClick = cxButton3Click
    Glyph.Data = {
      F6060000424DF606000000000000360000002800000018000000180000000100
      180000000000C0060000130B0000130B00000000000000000000C9B3B2A29594
      DCDAD9FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFDCD9D9A29593C9
      B4B1A39694EFF1F9455DB90A29A20D2BA2102EA4122FA41330A3122FA4122FA5
      1130A81130A80D2DA80B2DAB092CAC082BAC0628A80427AA0326AB0125AB0122
      A24057B0EFF0F8A29594DCDADA4560CB0F33C31538C51A3DC52042C82243C822
      43C72142C82042C81E42C81C41C91A41CC173FCE123DCF103BCE0D39CC0937CF
      0533CF0230CD012CC50126B24057B0DCDADAFFFFFF0B33D1163DD61F45D8274B
      D92D50DA2F52DB2F51DB2D50DA2C51DB2B52DC2851DC244FDE204EDF1C4CE018
      49E11346E00E43E1083DE00438DF0133D7012BC50121A1FFFFFFFFFFFF0F38DB
      1D44DE274DE03053E13658E1395BE2395CE2375AE2355AE2345BE3305AE42C58
      E52756E62254E71C50E7174DE71149E80B43E7073EE60338DF0230CD0124A8FF
      FFFFFFFFFF133CDD254AE03053E1375AE23E5FE44162E44162E55D7AE89FB0F2
      DBE2FAF7F9FEF6F8FED5DEFA8FA9F43E6CEC1B52EA154EEA0F48E90942E7053A
      E10331CF0225AAFFFFFFFFFFFF173FDE2C50E1385AE34061E44666E54A69E58C
      A0EFF5F7FEFFFFFFEFF2FDE3E9FCE2E8FCF0F3FDFFFFFFECF1FD688CF11851EA
      124BEA0C45E8083EE10634CF0427ABFFFFFFFFFFFF1C43DE3256E23E5FE44665
      E44C6AE591A3EFFFFFFFF1F3FDAABAF46683EB3E67E73964E75E81EEA2B8F6F3
      F6FEFBFCFF6489F1144DE91048E80D41E10B38CF0629ACFFFFFFFFFFFF2147DF
      395BE34564E44B69E56C84EAF3F5FDEFF2FD7D94ED496AE6456AE74067E73A65
      E73361E82C5DE96F90F0F2F5FEE8EDFD3564EC154BE71245E1103CD0092BABFF
      FFFFFFFFFF254BE03F60E44A68E5506DE6AEBBF4FFFFFFA6B6F24E6DE64B6BE6
      4669E7FFFFFFFFFFFF3461E82D5DE82759E89FB5F6FFFFFF8AA5F3194DE71849
      E1153FCF0D2FACFFFFFFFFFFFF2C50E14665E5506DE65571E7E5E9FBECEFFC6D
      84EB4F6DE64A6BE64568E6FFFFFFFFFFFF345FE72C5BE72757E74E76ECEFF3FD
      D1DBFA1C4EE51C4BE01A42CF1031ABFFFFFFFFFFFF3154E24C69E55571E75873
      E8FFFFFFD9DEFA536FE74F6CE64A69E54566E6FFFFFFFFFFFF325CE52C58E627
      54E62453E6DFE6FBF5F7FE204FE5214DDF1E45CE1333AAFFFFFFFFFFFF3457E2
      516EE75A74E85C76E8FFFFFFD8DEF9546FE64F6CE64A68E54465E5FFFFFFFFFF
      FF325AE42B56E52652E42250E4DEE5FBF7F9FE234FE3254FDF2247CD1534ABFF
      FFFFFFFFFF3A5CE35873E85F79E8607AE8E9ECFCEAEDFC6B82E94F6CE54A68E5
      4464E5FFFFFFFFFFFF3258E32C54E42751E34A6DE8EEF1FDD6DEFA2650E32950
      DD2548CD1835A9FFFFFFFFFFFF3F60E45F79E8657EE8647DE8B9C4F5FFFFFFA4
      B2F24F6BE64A67E44463E4FFFFFFFFFFFF3256E22C53E2284FE29BAEF2FFFFFF
      95A8F12950E22C51DD2849CD1A37AAFFFFFFFFFFFF4060E4657EE96C85EA6A82
      EA8195EDF7F9FEEBEEFC798DEC4C68E54764E44160E43B5CE33558E23054E267
      81EAEEF1FDF0F3FD4A6BE62C52E12E52DD294ACC1A37A9FFFFFFFFFFFF4665E5
      6B83EA738AEB6F87EB6981EAA5B3F2FFFFFFECEFFCA1B0F25C76E74462E43E5E
      E45975E897A8F0EEF1FDFFFFFF7B92ED2E52E22E53E12F52DC2A4ACB1B38A9FF
      FFFFFFFFFF4967E5738AEB7C92EC768DEC6E86EB6780E9A4B2F2FDFDFFFFFFFF
      E4E8FBD4DBF9D4DBF9E7EBFCFFFFFFF6F8FE8196ED3255E13155E23154E13153
      DC2A4ACA1B37A8FFFFFFFFFFFF506EE67F95ED8A9EEE8398ED788FEC6D85EB68
      81E98094ECB5C1F5E9ECFCFFFFFFFFFFFFE3E8FBA7B6F3647EE84161E43D5FE3
      3A5CE33558E23153DC2848CA1835A7FFFFFFFFFFFF5773E78B9FEF98AAF18FA2
      EF8197ED768DEC7088EB6B83EA6780E9637DE8607AE85E79E85B76E85773E754
      71E74F6DE64968E54363E43A5CE23153DC2546CA1431A6FFFFFFFFFFFF5A76E8
      92A5F0A0B0F296A8F1869BEE7A91EC748CEB6F87EA6B84EA6981E9667FE9657F
      E9637DE95F7AE95B77E85572E74F6EE64766E53D5EE33053DC2143C9112FA5FF
      FFFFDFDEDE778DEB7E94ED8EA2EF869BEE788EEC6C85EA6981EA657EE9617BE9
      5E78E85B76E85A75E85773E75270E6516EE64C6BE54767E53E60E43558E1294D
      DA1C3EC64B62BCDFDEDEB2ACACF1F4FD778DEB5874E75370E74C69E64867E544
      63E53E5EE43C5DE33D5EE33C5DE33A5BE33658E23557E22F53E12E52E12D51E1
      264BE02046DE193FD54E68D1F0F1F9B2ACACE5DBDAB3ADADE0DEDEFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFE0DEDEB3ADADE4DBDA}
    LookAndFeel.NativeStyle = True
  end
  object rsEstado: TADODataSet
    Connection = dm.Coneccion
    CursorType = ctStatic
    LockType = ltReadOnly
    OnCalcFields = rsEstadoCalcFields
    CommandText = 'cgabrirBalanceGeneral'
    CommandTimeout = 120
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
        Name = '@EstId'
        Attributes = [paNullable]
        DataType = ftInteger
        Precision = 10
        Value = Null
      end
      item
        Name = '@Hasta'
        Attributes = [paNullable]
        DataType = ftDateTime
        Value = Null
      end>
    Prepared = True
    Left = 256
    Top = 260
    object rsEstadoGrupo: TStringField
      FieldName = 'Grupo'
      Size = 50
    end
    object rsEstadoidGrupo: TIntegerField
      FieldName = 'idGrupo'
    end
    object rsEstadoidItem: TIntegerField
      FieldName = 'idItem'
    end
    object rsEstadoDescripcion: TStringField
      FieldName = 'Descripcion'
      Size = 50
    end
    object rsEstadoPieGrupo: TStringField
      FieldName = 'PieGrupo'
      Size = 50
    end
    object rsEstadoPieSubGrupo: TStringField
      FieldName = 'PieSubGrupo'
      Size = 50
    end
    object rsEstadoOrdenGrupo: TWordField
      FieldName = 'OrdenGrupo'
    end
    object rsEstadoOrdenSubGrupo: TIntegerField
      FieldName = 'OrdenSubGrupo'
    end
    object rsEstadoCtaEstado: TStringField
      FieldName = 'CtaEstado'
      Size = 16
    end
    object rsEstadoCuenta: TStringField
      FieldName = 'Cuenta'
      Size = 60
    end
    object rsEstadoDebCre: TWordField
      FieldName = 'DebCre'
    end
    object rsEstadoMovActual: TBCDField
      FieldName = 'MovActual'
      ReadOnly = True
      currency = True
      Precision = 19
      Size = 2
    end
    object rsEstadoMovAnterior: TBCDField
      FieldName = 'MovAnterior'
      ReadOnly = True
      currency = True
      Precision = 19
      Size = 2
    end
    object rsEstadoMovAcumulado: TBCDField
      FieldName = 'MovAcumulado'
      ReadOnly = True
      currency = True
      Precision = 19
      Size = 2
    end
    object rsEstadoOrigen: TStringField
      FieldName = 'Origen'
      FixedChar = True
      Size = 1
    end
    object rsEstadoOrigenGrupo: TWordField
      FieldName = 'OrigenGrupo'
    end
    object rsEstadoOrigenSubGrupo: TWordField
      FieldName = 'OrigenSubGrupo'
    end
    object rsEstadoMovAnnoAnt: TBCDField
      FieldName = 'MovAnnoAnt'
      ReadOnly = True
      currency = True
      Precision = 19
      Size = 2
    end
    object rsEstadocVariacion: TFloatField
      FieldKind = fkCalculated
      FieldName = 'cVariacion'
      currency = True
      Calculated = True
    end
    object rsEstadoNombreEstado: TStringField
      FieldName = 'NombreEstado'
      Size = 50
    end
    object rsEstadoPieEstado: TStringField
      FieldName = 'PieEstado'
      Size = 50
    end
    object rsEstadocMovActual: TBCDField
      FieldName = 'cMovActual'
      currency = True
      Precision = 19
      Size = 2
    end
    object rsEstadocMovAnterior: TBCDField
      FieldName = 'cMovAnterior'
      currency = True
      Precision = 19
      Size = 2
    end
    object rsEstadocMovAcumulado: TBCDField
      FieldName = 'cMovAcumulado'
      currency = True
      Precision = 19
      Size = 2
    end
    object rsEstadocMovAnnoAnt: TBCDField
      FieldName = 'cMovAnnoAnt'
      currency = True
      Precision = 19
      Size = 2
    end
    object rsEstadocsgMovActual: TBCDField
      FieldName = 'csgMovActual'
      currency = True
      Precision = 19
      Size = 2
    end
    object rsEstadocsgMovAnterior: TBCDField
      FieldName = 'csgMovAnterior'
      currency = True
      Precision = 19
      Size = 2
    end
    object rsEstadocsgMovAcumulado: TBCDField
      FieldName = 'csgMovAcumulado'
      currency = True
      Precision = 19
      Size = 2
    end
    object rsEstadocsgMovAnnoAnt: TBCDField
      FieldName = 'csgMovAnnoAnt'
      currency = True
      Precision = 19
      Size = 2
    end
    object rsEstadocgMovActual: TBCDField
      FieldName = 'cgMovActual'
      currency = True
      Precision = 19
      Size = 2
    end
    object rsEstadocgMovAnterior: TBCDField
      FieldName = 'cgMovAnterior'
      currency = True
      Precision = 19
      Size = 2
    end
    object rsEstadocgMovAcumulado: TBCDField
      FieldName = 'cgMovAcumulado'
      currency = True
      Precision = 19
      Size = 2
    end
    object rsEstadocgMovAnnoAnt: TBCDField
      FieldName = 'cgMovAnnoAnt'
      currency = True
      Precision = 19
      Size = 2
    end
    object rsEstadocsecMovActual: TBCDField
      FieldName = 'csecMovActual'
      Precision = 19
      Size = 2
    end
    object rsEstadocsecMovAnterior: TBCDField
      FieldName = 'csecMovAnterior'
      Precision = 19
      Size = 2
    end
    object rsEstadocsecMovAcumulado: TBCDField
      FieldName = 'csecMovAcumulado'
      Precision = 19
      Size = 2
    end
    object rsEstadocsecMovAnnoAnt: TBCDField
      FieldName = 'csecMovAnnoAnt'
      Precision = 19
      Size = 2
    end
    object rsEstadoidSeccion: TIntegerField
      FieldName = 'idSeccion'
    end
    object rsEstadoSeccion: TStringField
      FieldName = 'Seccion'
      Size = 50
    end
    object rsEstadoPieSeccion: TStringField
      FieldName = 'PieSeccion'
      Size = 100
    end
    object rsEstadoOrigenSeccion: TWordField
      FieldName = 'OrigenSeccion'
    end
    object rsEstadoOrdenSeccion: TIntegerField
      FieldName = 'OrdenSeccion'
    end
    object rsEstadoDetGrupo: TBooleanField
      FieldName = 'DetGrupo'
    end
    object rsEstadoHeadergrupo: TBooleanField
      FieldName = 'Headergrupo'
    end
    object rsEstadoTotalesGrupo: TBooleanField
      FieldName = 'TotalesGrupo'
    end
    object rsEstadoDetSec: TBooleanField
      FieldName = 'DetSec'
    end
    object rsEstadoHeaderSec: TBooleanField
      FieldName = 'HeaderSec'
    end
    object rsEstadoTotalesSec: TBooleanField
      FieldName = 'TotalesSec'
    end
    object rsEstadoDetItem: TBooleanField
      FieldName = 'DetItem'
    end
    object rsEstadoHeaderItem: TBooleanField
      FieldName = 'HeaderItem'
    end
    object rsEstadoTotalesItem: TBooleanField
      FieldName = 'TotalesItem'
    end
    object rsEstadocImporte: TCurrencyField
      FieldKind = fkCalculated
      FieldName = 'cImporte'
      Calculated = True
    end
    object rsEstadocompania: TStringField
      FieldName = 'compania'
      Size = 100
    end
    object rsEstadocImporteItem: TCurrencyField
      FieldKind = fkCalculated
      FieldName = 'cImporteItem'
      Calculated = True
    end
    object rsEstadocVariacionItem: TCurrencyField
      FieldKind = fkCalculated
      FieldName = 'cVariacionItem'
      Calculated = True
    end
    object rsEstadocSecVariacion: TFloatField
      FieldKind = fkCalculated
      FieldName = 'cSecVariacion'
      Calculated = True
    end
    object rsEstadocsecImporte: TCurrencyField
      FieldKind = fkCalculated
      FieldName = 'csecImporte'
      Calculated = True
    end
    object rsEstadocsgImporte: TCurrencyField
      FieldKind = fkCalculated
      FieldName = 'csgImporte'
      Calculated = True
    end
    object rsEstadocsgVariacion: TFloatField
      FieldKind = fkCalculated
      FieldName = 'csgVariacion'
      Calculated = True
    end
    object rsEstadoNotaGrupo: TStringField
      FieldName = 'NotaGrupo'
      Size = 10
    end
    object rsEstadoNotaSec: TStringField
      FieldName = 'NotaSec'
      Size = 10
    end
    object rsEstadoNotaItem: TStringField
      FieldName = 'NotaItem'
      Size = 10
    end
    object rsEstadoNotaCta: TStringField
      FieldName = 'NotaCta'
      Size = 10
    end
    object rsEstadoNotaEstado: TStringField
      FieldName = 'NotaEstado'
    end
  end
  object ds: TDataSource
    DataSet = rsEstado
    Left = 290
    Top = 180
  end
  object plEstado: TppDBPipeline
    DataSource = ds
    UserName = 'Estado'
    Left = 116
    Top = 186
    object plEstadoppField1: TppField
      FieldAlias = 'Grupo'
      FieldName = 'Grupo'
      FieldLength = 0
      DisplayWidth = 0
      Position = 0
    end
    object plEstadoppField2: TppField
      Alignment = taRightJustify
      FieldAlias = 'idGrupo'
      FieldName = 'idGrupo'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 1
    end
    object plEstadoppField3: TppField
      Alignment = taRightJustify
      FieldAlias = 'idItem'
      FieldName = 'idItem'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 2
    end
    object plEstadoppField4: TppField
      FieldAlias = 'Descripcion'
      FieldName = 'Descripcion'
      FieldLength = 50
      DisplayWidth = 50
      Position = 3
    end
    object plEstadoppField5: TppField
      FieldAlias = 'PieGrupo'
      FieldName = 'PieGrupo'
      FieldLength = 50
      DisplayWidth = 50
      Position = 4
    end
    object plEstadoppField6: TppField
      FieldAlias = 'PieSubGrupo'
      FieldName = 'PieSubGrupo'
      FieldLength = 50
      DisplayWidth = 50
      Position = 5
    end
    object plEstadoppField7: TppField
      Alignment = taRightJustify
      FieldAlias = 'OrdenGrupo'
      FieldName = 'OrdenGrupo'
      FieldLength = 0
      DataType = dtLongint
      DisplayWidth = 10
      Position = 6
    end
    object plEstadoppField8: TppField
      Alignment = taRightJustify
      FieldAlias = 'OrdenSubGrupo'
      FieldName = 'OrdenSubGrupo'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 7
    end
    object plEstadoppField9: TppField
      FieldAlias = 'CtaEstado'
      FieldName = 'CtaEstado'
      FieldLength = 16
      DisplayWidth = 16
      Position = 8
    end
    object plEstadoppField10: TppField
      FieldAlias = 'Cuenta'
      FieldName = 'Cuenta'
      FieldLength = 60
      DisplayWidth = 60
      Position = 9
    end
    object plEstadoppField11: TppField
      Alignment = taRightJustify
      FieldAlias = 'DebCre'
      FieldName = 'DebCre'
      FieldLength = 0
      DataType = dtLongint
      DisplayWidth = 10
      Position = 10
    end
    object plEstadoppField12: TppField
      Alignment = taRightJustify
      FieldAlias = 'MovActual'
      FieldName = 'MovActual'
      FieldLength = 2
      DataType = dtDouble
      DisplayWidth = 20
      Position = 11
    end
    object plEstadoppField13: TppField
      Alignment = taRightJustify
      FieldAlias = 'MovAnterior'
      FieldName = 'MovAnterior'
      FieldLength = 2
      DataType = dtDouble
      DisplayWidth = 20
      Position = 12
    end
    object plEstadoppField14: TppField
      Alignment = taRightJustify
      FieldAlias = 'MovAcumulado'
      FieldName = 'MovAcumulado'
      FieldLength = 2
      DataType = dtDouble
      DisplayWidth = 20
      Position = 13
    end
    object plEstadoppField15: TppField
      FieldAlias = 'Origen'
      FieldName = 'Origen'
      FieldLength = 1
      DisplayWidth = 1
      Position = 14
    end
    object plEstadoppField16: TppField
      Alignment = taRightJustify
      FieldAlias = 'OrigenGrupo'
      FieldName = 'OrigenGrupo'
      FieldLength = 0
      DataType = dtLongint
      DisplayWidth = 10
      Position = 15
    end
    object plEstadoppField17: TppField
      Alignment = taRightJustify
      FieldAlias = 'OrigenSubGrupo'
      FieldName = 'OrigenSubGrupo'
      FieldLength = 0
      DataType = dtLongint
      DisplayWidth = 10
      Position = 16
    end
    object plEstadoppField18: TppField
      Alignment = taRightJustify
      FieldAlias = 'MovAnnoAnt'
      FieldName = 'MovAnnoAnt'
      FieldLength = 2
      DataType = dtDouble
      DisplayWidth = 20
      Position = 17
    end
    object plEstadoppField19: TppField
      Alignment = taRightJustify
      FieldAlias = 'cVariacion'
      FieldName = 'cVariacion'
      FieldLength = 0
      DataType = dtDouble
      DisplayWidth = 10
      Position = 18
    end
    object plEstadoppField20: TppField
      FieldAlias = 'NombreEstado'
      FieldName = 'NombreEstado'
      FieldLength = 50
      DisplayWidth = 50
      Position = 19
    end
    object plEstadoppField21: TppField
      FieldAlias = 'PieEstado'
      FieldName = 'PieEstado'
      FieldLength = 50
      DisplayWidth = 50
      Position = 20
    end
    object plEstadoppField22: TppField
      Alignment = taRightJustify
      FieldAlias = 'cMovActual'
      FieldName = 'cMovActual'
      FieldLength = 2
      DataType = dtDouble
      DisplayWidth = 20
      Position = 21
    end
    object plEstadoppField23: TppField
      Alignment = taRightJustify
      FieldAlias = 'cMovAnterior'
      FieldName = 'cMovAnterior'
      FieldLength = 2
      DataType = dtDouble
      DisplayWidth = 20
      Position = 22
    end
    object plEstadoppField24: TppField
      Alignment = taRightJustify
      FieldAlias = 'cMovAcumulado'
      FieldName = 'cMovAcumulado'
      FieldLength = 2
      DataType = dtDouble
      DisplayWidth = 20
      Position = 23
    end
    object plEstadoppField25: TppField
      Alignment = taRightJustify
      FieldAlias = 'cMovAnnoAnt'
      FieldName = 'cMovAnnoAnt'
      FieldLength = 2
      DataType = dtDouble
      DisplayWidth = 20
      Position = 24
    end
    object plEstadoppField26: TppField
      Alignment = taRightJustify
      FieldAlias = 'csgMovActual'
      FieldName = 'csgMovActual'
      FieldLength = 2
      DataType = dtDouble
      DisplayWidth = 20
      Position = 25
    end
    object plEstadoppField27: TppField
      Alignment = taRightJustify
      FieldAlias = 'csgMovAnterior'
      FieldName = 'csgMovAnterior'
      FieldLength = 2
      DataType = dtDouble
      DisplayWidth = 20
      Position = 26
    end
    object plEstadoppField28: TppField
      Alignment = taRightJustify
      FieldAlias = 'csgMovAcumulado'
      FieldName = 'csgMovAcumulado'
      FieldLength = 2
      DataType = dtDouble
      DisplayWidth = 20
      Position = 27
    end
    object plEstadoppField29: TppField
      Alignment = taRightJustify
      FieldAlias = 'csgMovAnnoAnt'
      FieldName = 'csgMovAnnoAnt'
      FieldLength = 2
      DataType = dtDouble
      DisplayWidth = 20
      Position = 28
    end
    object plEstadoppField30: TppField
      Alignment = taRightJustify
      FieldAlias = 'cgMovActual'
      FieldName = 'cgMovActual'
      FieldLength = 2
      DataType = dtDouble
      DisplayWidth = 20
      Position = 29
    end
    object plEstadoppField31: TppField
      Alignment = taRightJustify
      FieldAlias = 'cgMovAnterior'
      FieldName = 'cgMovAnterior'
      FieldLength = 2
      DataType = dtDouble
      DisplayWidth = 20
      Position = 30
    end
    object plEstadoppField32: TppField
      Alignment = taRightJustify
      FieldAlias = 'cgMovAcumulado'
      FieldName = 'cgMovAcumulado'
      FieldLength = 2
      DataType = dtDouble
      DisplayWidth = 20
      Position = 31
    end
    object plEstadoppField33: TppField
      Alignment = taRightJustify
      FieldAlias = 'cgMovAnnoAnt'
      FieldName = 'cgMovAnnoAnt'
      FieldLength = 2
      DataType = dtDouble
      DisplayWidth = 20
      Position = 32
    end
    object plEstadoppField34: TppField
      Alignment = taRightJustify
      FieldAlias = 'csecMovActual'
      FieldName = 'csecMovActual'
      FieldLength = 2
      DataType = dtDouble
      DisplayWidth = 20
      Position = 33
    end
    object plEstadoppField35: TppField
      Alignment = taRightJustify
      FieldAlias = 'csecMovAnterior'
      FieldName = 'csecMovAnterior'
      FieldLength = 2
      DataType = dtDouble
      DisplayWidth = 20
      Position = 34
    end
    object plEstadoppField36: TppField
      Alignment = taRightJustify
      FieldAlias = 'csecMovAcumulado'
      FieldName = 'csecMovAcumulado'
      FieldLength = 2
      DataType = dtDouble
      DisplayWidth = 20
      Position = 35
    end
    object plEstadoppField37: TppField
      Alignment = taRightJustify
      FieldAlias = 'csecMovAnnoAnt'
      FieldName = 'csecMovAnnoAnt'
      FieldLength = 2
      DataType = dtDouble
      DisplayWidth = 20
      Position = 36
    end
    object plEstadoppField38: TppField
      Alignment = taRightJustify
      FieldAlias = 'idSeccion'
      FieldName = 'idSeccion'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 37
    end
    object plEstadoppField39: TppField
      FieldAlias = 'Seccion'
      FieldName = 'Seccion'
      FieldLength = 50
      DisplayWidth = 50
      Position = 38
    end
    object plEstadoppField40: TppField
      FieldAlias = 'PieSeccion'
      FieldName = 'PieSeccion'
      FieldLength = 100
      DisplayWidth = 100
      Position = 39
    end
    object plEstadoppField41: TppField
      Alignment = taRightJustify
      FieldAlias = 'OrigenSeccion'
      FieldName = 'OrigenSeccion'
      FieldLength = 0
      DataType = dtLongint
      DisplayWidth = 10
      Position = 40
    end
    object plEstadoppField42: TppField
      Alignment = taRightJustify
      FieldAlias = 'OrdenSeccion'
      FieldName = 'OrdenSeccion'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 41
    end
    object plEstadoppField43: TppField
      FieldAlias = 'DetGrupo'
      FieldName = 'DetGrupo'
      FieldLength = 0
      DataType = dtBoolean
      DisplayWidth = 5
      Position = 42
    end
    object plEstadoppField44: TppField
      FieldAlias = 'Headergrupo'
      FieldName = 'Headergrupo'
      FieldLength = 0
      DataType = dtBoolean
      DisplayWidth = 5
      Position = 43
    end
    object plEstadoppField45: TppField
      FieldAlias = 'TotalesGrupo'
      FieldName = 'TotalesGrupo'
      FieldLength = 0
      DataType = dtBoolean
      DisplayWidth = 5
      Position = 44
    end
    object plEstadoppField46: TppField
      FieldAlias = 'DetSec'
      FieldName = 'DetSec'
      FieldLength = 0
      DataType = dtBoolean
      DisplayWidth = 5
      Position = 45
    end
    object plEstadoppField47: TppField
      FieldAlias = 'HeaderSec'
      FieldName = 'HeaderSec'
      FieldLength = 0
      DataType = dtBoolean
      DisplayWidth = 5
      Position = 46
    end
    object plEstadoppField48: TppField
      FieldAlias = 'TotalesSec'
      FieldName = 'TotalesSec'
      FieldLength = 0
      DataType = dtBoolean
      DisplayWidth = 5
      Position = 47
    end
    object plEstadoppField49: TppField
      FieldAlias = 'DetItem'
      FieldName = 'DetItem'
      FieldLength = 0
      DataType = dtBoolean
      DisplayWidth = 5
      Position = 48
    end
    object plEstadoppField50: TppField
      FieldAlias = 'HeaderItem'
      FieldName = 'HeaderItem'
      FieldLength = 0
      DataType = dtBoolean
      DisplayWidth = 5
      Position = 49
    end
    object plEstadoppField51: TppField
      FieldAlias = 'TotalesItem'
      FieldName = 'TotalesItem'
      FieldLength = 0
      DataType = dtBoolean
      DisplayWidth = 5
      Position = 50
    end
    object plEstadoppField52: TppField
      FieldAlias = 'cImporte'
      FieldName = 'cImporte'
      FieldLength = 0
      DataType = dtCurrency
      DisplayWidth = 10
      Position = 51
    end
    object plEstadoppField53: TppField
      FieldAlias = 'compania'
      FieldName = 'compania'
      FieldLength = 100
      DisplayWidth = 100
      Position = 52
    end
    object plEstadoppField54: TppField
      FieldAlias = 'cImporteItem'
      FieldName = 'cImporteItem'
      FieldLength = 0
      DataType = dtCurrency
      DisplayWidth = 10
      Position = 53
    end
    object plEstadoppField55: TppField
      FieldAlias = 'cVariacionItem'
      FieldName = 'cVariacionItem'
      FieldLength = 0
      DataType = dtCurrency
      DisplayWidth = 10
      Position = 54
    end
    object plEstadoppField56: TppField
      Alignment = taRightJustify
      FieldAlias = 'cSecVariacion'
      FieldName = 'cSecVariacion'
      FieldLength = 0
      DataType = dtDouble
      DisplayWidth = 10
      Position = 55
    end
    object plEstadoppField57: TppField
      FieldAlias = 'csecImporte'
      FieldName = 'csecImporte'
      FieldLength = 0
      DataType = dtCurrency
      DisplayWidth = 10
      Position = 56
    end
    object plEstadoppField58: TppField
      FieldAlias = 'csgImporte'
      FieldName = 'csgImporte'
      FieldLength = 0
      DataType = dtCurrency
      DisplayWidth = 10
      Position = 57
    end
    object plEstadoppField59: TppField
      Alignment = taRightJustify
      FieldAlias = 'csgVariacion'
      FieldName = 'csgVariacion'
      FieldLength = 0
      DataType = dtDouble
      DisplayWidth = 10
      Position = 58
    end
    object plEstadoppField60: TppField
      FieldAlias = 'NotaGrupo'
      FieldName = 'NotaGrupo'
      FieldLength = 10
      DisplayWidth = 10
      Position = 59
    end
    object plEstadoppField61: TppField
      FieldAlias = 'NotaSec'
      FieldName = 'NotaSec'
      FieldLength = 10
      DisplayWidth = 10
      Position = 60
    end
    object plEstadoppField62: TppField
      FieldAlias = 'NotaItem'
      FieldName = 'NotaItem'
      FieldLength = 10
      DisplayWidth = 10
      Position = 61
    end
    object plEstadoppField63: TppField
      FieldAlias = 'NotaCta'
      FieldName = 'NotaCta'
      FieldLength = 10
      DisplayWidth = 10
      Position = 62
    end
    object plEstadoppField64: TppField
      FieldAlias = 'NotaEstado'
      FieldName = 'NotaEstado'
      FieldLength = 20
      DisplayWidth = 20
      Position = 63
    end
  end
  object Report: TppReport
    AutoStop = False
    DataPipeline = plEstado
    PassSetting = psTwoPass
    PrinterSetup.BinName = 'Default'
    PrinterSetup.DocumentName = 'Report'
    PrinterSetup.Orientation = poLandscape
    PrinterSetup.PaperName = 'Letter'
    PrinterSetup.PrinterName = 'Default'
    PrinterSetup.mmMarginBottom = 6350
    PrinterSetup.mmMarginLeft = 6350
    PrinterSetup.mmMarginRight = 6350
    PrinterSetup.mmMarginTop = 6350
    PrinterSetup.mmPaperHeight = 215900
    PrinterSetup.mmPaperWidth = 279401
    PrinterSetup.PaperSize = 1
    Template.FileName = 'C:\desarrollo\CxP\MayorNuevo\RPT\BalanceGeneral.rtm'
    AllowPrintToFile = True
    DeviceType = 'Screen'
    OutlineSettings.CreateNode = True
    OutlineSettings.CreatePageNodes = True
    OutlineSettings.Enabled = False
    OutlineSettings.Visible = False
    TextSearchSettings.DefaultString = '<EncontrarTexto>'
    TextSearchSettings.Enabled = True
    Left = 178
    Top = 178
    Version = '7.04'
    mmColumnWidth = 0
    DataPipelineName = 'plEstado'
    object ppTitleBand1: TppTitleBand
      mmBottomOffset = 0
      mmHeight = 0
      mmPrintPosition = 0
    end
    object ppHeaderBand1: TppHeaderBand
      mmBottomOffset = 0
      mmHeight = 43921
      mmPrintPosition = 0
      object ppShape9: TppShape
        UserName = 'Shape5'
        mmHeight = 17198
        mmLeft = 0
        mmTop = 26723
        mmWidth = 262996
        BandType = 0
      end
      object ppLabel3: TppLabel
        UserName = 'Label3'
        AutoSize = False
        Caption = 'Actual'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Verdana'
        Font.Size = 8
        Font.Style = [fsBold]
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 3440
        mmLeft = 131763
        mmTop = 39688
        mmWidth = 31221
        BandType = 0
      end
      object ppLabel4: TppLabel
        UserName = 'Label4'
        AutoSize = False
        Caption = 'Anterior'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Verdana'
        Font.Size = 8
        Font.Style = [fsBold]
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 3440
        mmLeft = 170657
        mmTop = 39952
        mmWidth = 31750
        BandType = 0
      end
      object ppLabel5: TppLabel
        UserName = 'Label5'
        AutoSize = False
        Caption = 'Aumento (Disminucion)'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Verdana'
        Font.Size = 8
        Font.Style = [fsBold]
        TextAlignment = taCentered
        Transparent = True
        WordWrap = True
        mmHeight = 7408
        mmLeft = 206111
        mmTop = 35983
        mmWidth = 31750
        BandType = 0
      end
      object ppSystemVariable2: TppSystemVariable
        UserName = 'SystemVariable2'
        AutoSize = False
        VarType = vtPageSetDesc
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Verdana'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        Visible = False
        mmHeight = 3440
        mmLeft = 222515
        mmTop = 1588
        mmWidth = 41010
        BandType = 0
      end
      object ppSystemVariable1: TppSystemVariable
        UserName = 'SystemVariable1'
        AutoSize = False
        VarType = vtPrintDateTime
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Verdana'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 3440
        mmLeft = 222515
        mmTop = 6085
        mmWidth = 41010
        BandType = 0
      end
      object ppLabel6: TppLabel
        UserName = 'Label6'
        AutoSize = False
        Caption = '%'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Verdana'
        Font.Size = 8
        Font.Style = [fsBold]
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 3440
        mmLeft = 242623
        mmTop = 39952
        mmWidth = 16404
        BandType = 0
      end
      object ppLabel7: TppLabel
        UserName = 'Label7'
        AutoSize = False
        Caption = 'Mes'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Verdana'
        Font.Size = 8
        Font.Style = [fsBold]
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 3440
        mmLeft = 131763
        mmTop = 35719
        mmWidth = 31221
        BandType = 0
      end
      object ppLabel8: TppLabel
        UserName = 'Label8'
        AutoSize = False
        Caption = 'Mes'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Verdana'
        Font.Size = 8
        Font.Style = [fsBold]
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 3440
        mmLeft = 170657
        mmTop = 35983
        mmWidth = 31750
        BandType = 0
      end
      object ppDBText12: TppDBText
        UserName = 'DBText12'
        DataField = 'NombreEstado'
        DataPipeline = plEstado
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Verdana'
        Font.Size = 12
        Font.Style = [fsBold]
        TextAlignment = taCentered
        Transparent = True
        DataPipelineName = 'plEstado'
        mmHeight = 5027
        mmLeft = 60854
        mmTop = 8467
        mmWidth = 144198
        BandType = 0
      end
      object ppVariable1: TppVariable
        UserName = 'Variable1'
        AutoSize = False
        CalcOrder = 2
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Verdana'
        Font.Size = 10
        Font.Style = [fsBold]
        OnCalc = ppVariable1Calc
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 4233
        mmLeft = 60854
        mmTop = 14288
        mmWidth = 144463
        BandType = 0
      end
      object ppLabel1: TppLabel
        OnPrint = ppLabel1Print
        UserName = 'Label1'
        AutoSize = False
        Caption = 'Valores en RD$'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Verdana'
        Font.Size = 8
        Font.Style = [fsBold]
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 3440
        mmLeft = 117740
        mmTop = 18785
        mmWidth = 30427
        BandType = 0
      end
      object ppLabel10: TppLabel
        UserName = 'Label10'
        AutoSize = False
        Caption = 'Variacion'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Verdana'
        Font.Size = 8
        Font.Style = [fsBold]
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 3440
        mmLeft = 205317
        mmTop = 27517
        mmWidth = 57150
        BandType = 0
      end
      object ppDBText15: TppDBText
        UserName = 'DBText15'
        DataField = 'compania'
        DataPipeline = plEstado
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Verdana'
        Font.Size = 16
        Font.Style = [fsBold]
        TextAlignment = taCentered
        Transparent = True
        DataPipelineName = 'plEstado'
        mmHeight = 5821
        mmLeft = 46302
        mmTop = 1588
        mmWidth = 173832
        BandType = 0
      end
      object ppLabel11: TppLabel
        UserName = 'Label101'
        AutoSize = False
        Caption = 'Importe'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Verdana'
        Font.Size = 8
        Font.Style = [fsBold]
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 3440
        mmLeft = 206111
        mmTop = 32279
        mmWidth = 31750
        BandType = 0
      end
      object ppLine11: TppLine
        UserName = 'Line6'
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 16933
        mmLeft = 164307
        mmTop = 26723
        mmWidth = 1588
        BandType = 0
      end
      object ppLine12: TppLine
        UserName = 'Line12'
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 16933
        mmLeft = 204259
        mmTop = 26723
        mmWidth = 1588
        BandType = 0
      end
      object ppLine13: TppLine
        UserName = 'Line13'
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 12171
        mmLeft = 239978
        mmTop = 31485
        mmWidth = 1058
        BandType = 0
      end
      object ppLine14: TppLine
        UserName = 'Line14'
        Weight = 0.750000000000000000
        mmHeight = 1323
        mmLeft = 204523
        mmTop = 31485
        mmWidth = 58473
        BandType = 0
      end
      object ppLine2: TppLine
        UserName = 'Line2'
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 16933
        mmLeft = 128588
        mmTop = 26723
        mmWidth = 1588
        BandType = 0
      end
      object ppLine15: TppLine
        UserName = 'Line15'
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 16933
        mmLeft = 114300
        mmTop = 26988
        mmWidth = 1588
        BandType = 0
      end
      object ppLabel2: TppLabel
        UserName = 'Label2'
        AutoSize = False
        Caption = 'Descripcion'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Verdana'
        Font.Size = 8
        Font.Style = [fsBold]
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 3440
        mmLeft = 1323
        mmTop = 39688
        mmWidth = 112184
        BandType = 0
      end
      object ppLabel9: TppLabel
        UserName = 'Label9'
        AutoSize = False
        Caption = 'Nos.'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Verdana'
        Font.Size = 8
        Font.Style = [fsBold]
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 3440
        mmLeft = 115094
        mmTop = 39952
        mmWidth = 12700
        BandType = 0
      end
      object ppLabel12: TppLabel
        UserName = 'Label12'
        AutoSize = False
        Caption = 'Notas'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Verdana'
        Font.Size = 8
        Font.Style = [fsBold]
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 3440
        mmLeft = 115094
        mmTop = 35983
        mmWidth = 12700
        BandType = 0
      end
    end
    object ppDetailBand1: TppDetailBand
      BeforePrint = ppDetailBand1BeforePrint
      mmBottomOffset = 0
      mmHeight = 4233
      mmPrintPosition = 0
      object ppDBText3: TppDBText
        UserName = 'DBText3'
        DataField = 'Cuenta'
        DataPipeline = plEstado
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Verdana'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        DataPipelineName = 'plEstado'
        mmHeight = 3440
        mmLeft = 22490
        mmTop = 529
        mmWidth = 85461
        BandType = 4
      end
      object ppDBText4: TppDBText
        UserName = 'DBText4'
        DataField = 'MovActual'
        DataPipeline = plEstado
        DisplayFormat = '#,0.00;(#,0.00)'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Verdana'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'plEstado'
        mmHeight = 3440
        mmLeft = 133615
        mmTop = 529
        mmWidth = 29633
        BandType = 4
      end
      object ppDBText5: TppDBText
        UserName = 'DBText5'
        DataField = 'MovAnterior'
        DataPipeline = plEstado
        DisplayFormat = '#,0.00;(#,0.00)'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Verdana'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'plEstado'
        mmHeight = 3440
        mmLeft = 172244
        mmTop = 529
        mmWidth = 30427
        BandType = 4
      end
      object ppDBText6: TppDBText
        UserName = 'DBText6'
        DataField = 'cImporte'
        DataPipeline = plEstado
        DisplayFormat = '#,0.00;(#,0.00)'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Verdana'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'plEstado'
        mmHeight = 3440
        mmLeft = 210873
        mmTop = 529
        mmWidth = 27252
        BandType = 4
      end
      object ppDBText11: TppDBText
        UserName = 'DBText11'
        DataField = 'cVariacion'
        DataPipeline = plEstado
        DisplayFormat = '0.00 %'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Verdana'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'plEstado'
        mmHeight = 3440
        mmLeft = 242623
        mmTop = 529
        mmWidth = 16669
        BandType = 4
      end
    end
    object ppFooterBand1: TppFooterBand
      mmBottomOffset = 0
      mmHeight = 9525
      mmPrintPosition = 0
      object ppLine5: TppLine
        UserName = 'Line5'
        Pen.Color = clGray
        Pen.Width = 2
        Weight = 1.500000000000000000
        mmHeight = 265
        mmLeft = 1323
        mmTop = 1058
        mmWidth = 264055
        BandType = 8
      end
      object ppSystemVariable5: TppSystemVariable
        UserName = 'SystemVariable3'
        OnGetText = ppSystemVariable5GetText
        AutoSize = False
        VarType = vtPageNo
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Verdana'
        Font.Size = 14
        Font.Style = [fsBold]
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 6085
        mmLeft = 186796
        mmTop = 2381
        mmWidth = 72231
        BandType = 8
      end
    end
    object ppSummaryBand1: TppSummaryBand
      mmBottomOffset = 0
      mmHeight = 23548
      mmPrintPosition = 0
      object ppShape3: TppShape
        UserName = 'Shape3'
        Brush.Color = 15987699
        ParentHeight = True
        ParentWidth = True
        Pen.Style = psClear
        mmHeight = 23548
        mmLeft = 0
        mmTop = 0
        mmWidth = 266701
        BandType = 7
      end
      object ppDBText9: TppDBText
        OnPrint = ppDBText9Print
        UserName = 'DBText9'
        DataField = 'PieEstado'
        DataPipeline = plEstado
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Verdana'
        Font.Size = 8
        Font.Style = [fsBold]
        Transparent = True
        DataPipelineName = 'plEstado'
        mmHeight = 3387
        mmLeft = 3969
        mmTop = 1588
        mmWidth = 87313
        BandType = 7
      end
      object ppLine4: TppLine
        UserName = 'Line4'
        ParentWidth = True
        Weight = 0.750000000000000000
        mmHeight = 265
        mmLeft = 0
        mmTop = 794
        mmWidth = 266701
        BandType = 7
      end
      object ppDBText21: TppDBText
        OnPrint = ppDBText9Print
        UserName = 'DBText21'
        DataField = 'cgMovActual'
        DataPipeline = plEstado
        DisplayFormat = '#,0.00;(#,0.00)'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Verdana'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'plEstado'
        mmHeight = 3440
        mmLeft = 133615
        mmTop = 1588
        mmWidth = 29633
        BandType = 7
      end
      object ppDBText22: TppDBText
        OnPrint = ppDBText9Print
        UserName = 'DBText22'
        DataField = 'cgMovAnterior'
        DataPipeline = plEstado
        DisplayFormat = '#,0.00;(#,0.00)'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Verdana'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'plEstado'
        mmHeight = 3440
        mmLeft = 172244
        mmTop = 1588
        mmWidth = 30427
        BandType = 7
      end
      object ppLabel13: TppLabel
        UserName = 'Label11'
        AutoSize = False
        Caption = 'Preparado por'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = [fsBold]
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 4233
        mmLeft = 51594
        mmTop = 16404
        mmWidth = 33602
        BandType = 7
      end
      object ppLine3: TppLine
        UserName = 'Line3'
        Weight = 0.750000000000000000
        mmHeight = 3969
        mmLeft = 44979
        mmTop = 15610
        mmWidth = 46038
        BandType = 7
      end
      object ppLabel14: TppLabel
        UserName = 'Label14'
        AutoSize = False
        Caption = 'Revisado por'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = [fsBold]
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 4233
        mmLeft = 166423
        mmTop = 16404
        mmWidth = 33602
        BandType = 7
      end
      object ppLine16: TppLine
        UserName = 'Line16'
        Weight = 0.750000000000000000
        mmHeight = 3969
        mmLeft = 159809
        mmTop = 15610
        mmWidth = 46038
        BandType = 7
      end
    end
    object ppGroup1: TppGroup
      BreakName = 'Grupo'
      DataPipeline = plEstado
      OutlineSettings.CreateNode = True
      ReprintOnSubsequentPage = False
      UserName = 'Group1'
      mmNewColumnThreshold = 0
      mmNewPageThreshold = 0
      DataPipelineName = 'plEstado'
      object ppGroupHeaderBand1: TppGroupHeaderBand
        BeforePrint = ppGroupHeaderBand1BeforePrint
        mmBottomOffset = 0
        mmHeight = 5292
        mmPrintPosition = 0
        object ppDBText1: TppDBText
          UserName = 'DBText1'
          DataField = 'Grupo'
          DataPipeline = plEstado
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Name = 'Verdana'
          Font.Size = 10
          Font.Style = [fsBold]
          Transparent = True
          DataPipelineName = 'plEstado'
          mmHeight = 4233
          mmLeft = 1588
          mmTop = 529
          mmWidth = 111919
          BandType = 3
          GroupNo = 0
        end
      end
      object ppGroupFooterBand1: TppGroupFooterBand
        BeforePrint = ppGroupFooterBand1BeforePrint
        mmBottomOffset = 0
        mmHeight = 5292
        mmPrintPosition = 0
        object ppShape2: TppShape
          UserName = 'Shape2'
          Brush.Color = 15987699
          ParentHeight = True
          ParentWidth = True
          Pen.Style = psClear
          mmHeight = 5292
          mmLeft = 0
          mmTop = 0
          mmWidth = 266701
          BandType = 5
          GroupNo = 0
        end
        object ppDBText8: TppDBText
          UserName = 'DBText8'
          DataField = 'PieGrupo'
          DataPipeline = plEstado
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Name = 'Verdana'
          Font.Size = 8
          Font.Style = [fsBold]
          Transparent = True
          DataPipelineName = 'plEstado'
          mmHeight = 3387
          mmLeft = 1852
          mmTop = 794
          mmWidth = 87313
          BandType = 5
          GroupNo = 0
        end
        object ppLine1: TppLine
          UserName = 'Line1'
          ParentWidth = True
          Weight = 0.750000000000000000
          mmHeight = 265
          mmLeft = 0
          mmTop = 5027
          mmWidth = 266701
          BandType = 5
          GroupNo = 0
        end
        object ppDBText17: TppDBText
          UserName = 'DBText17'
          DataField = 'csgMovActual'
          DataPipeline = plEstado
          DisplayFormat = '#,0.00;(#,0.00)'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Name = 'Verdana'
          Font.Size = 8
          Font.Style = []
          TextAlignment = taRightJustified
          Transparent = True
          DataPipelineName = 'plEstado'
          mmHeight = 3440
          mmLeft = 133615
          mmTop = 794
          mmWidth = 29633
          BandType = 5
          GroupNo = 0
        end
        object ppDBText18: TppDBText
          UserName = 'DBText18'
          DataField = 'csgMovAnterior'
          DataPipeline = plEstado
          DisplayFormat = '#,0.00;(#,0.00)'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Name = 'Verdana'
          Font.Size = 8
          Font.Style = []
          TextAlignment = taRightJustified
          Transparent = True
          DataPipelineName = 'plEstado'
          mmHeight = 3440
          mmLeft = 172244
          mmTop = 794
          mmWidth = 30427
          BandType = 5
          GroupNo = 0
        end
        object ppDBText35: TppDBText
          UserName = 'DBText35'
          DataField = 'csgVariacion'
          DataPipeline = plEstado
          DisplayFormat = '0.00 %'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Name = 'Verdana'
          Font.Size = 8
          Font.Style = []
          TextAlignment = taRightJustified
          Transparent = True
          DataPipelineName = 'plEstado'
          mmHeight = 3440
          mmLeft = 242623
          mmTop = 794
          mmWidth = 16669
          BandType = 5
          GroupNo = 0
        end
        object ppDBText36: TppDBText
          UserName = 'DBText36'
          DataField = 'csgImporte'
          DataPipeline = plEstado
          DisplayFormat = '#,0.00;(#,0.00)'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Name = 'Verdana'
          Font.Size = 8
          Font.Style = []
          TextAlignment = taRightJustified
          Transparent = True
          DataPipelineName = 'plEstado'
          mmHeight = 3440
          mmLeft = 210873
          mmTop = 794
          mmWidth = 27252
          BandType = 5
          GroupNo = 0
        end
        object ppDBText20: TppDBText
          OnPrint = ppDBText26Print
          UserName = 'DBText20'
          DataField = 'NotaGrupo'
          DataPipeline = plEstado
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Name = 'Verdana'
          Font.Size = 8
          Font.Style = [fsBold]
          TextAlignment = taCentered
          Transparent = True
          DataPipelineName = 'plEstado'
          mmHeight = 3440
          mmLeft = 115359
          mmTop = 794
          mmWidth = 12700
          BandType = 5
          GroupNo = 0
        end
      end
    end
    object ppGroup2: TppGroup
      BreakName = 'idSeccion'
      DataPipeline = plEstado
      OutlineSettings.CreateNode = True
      ReprintOnSubsequentPage = False
      UserName = 'Group2'
      mmNewColumnThreshold = 0
      mmNewPageThreshold = 0
      DataPipelineName = 'plEstado'
      object ppGroupHeaderBand2: TppGroupHeaderBand
        BeforePrint = ppGroupHeaderBand2BeforePrint
        mmBottomOffset = 0
        mmHeight = 3704
        mmPrintPosition = 0
        object ppDBText2: TppDBText
          UserName = 'DBText301'
          DataField = 'Seccion'
          DataPipeline = plEstado
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Name = 'Verdana'
          Font.Size = 8
          Font.Style = [fsBold]
          Transparent = True
          DataPipelineName = 'plEstado'
          mmHeight = 3440
          mmLeft = 9790
          mmTop = 264
          mmWidth = 80433
          BandType = 3
          GroupNo = 1
        end
      end
      object ppGroupFooterBand2: TppGroupFooterBand
        BeforePrint = ppGroupFooterBand2BeforePrint
        mmBottomOffset = 0
        mmHeight = 5027
        mmPrintPosition = 0
        object ppShape1: TppShape
          UserName = 'Shape1'
          Brush.Color = 15987699
          ParentHeight = True
          ParentWidth = True
          Pen.Style = psClear
          mmHeight = 5027
          mmLeft = 0
          mmTop = 0
          mmWidth = 266701
          BandType = 5
          GroupNo = 1
        end
        object ppDBText7: TppDBText
          UserName = 'DBText7'
          DataField = 'PieSeccion'
          DataPipeline = plEstado
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Name = 'Verdana'
          Font.Size = 8
          Font.Style = [fsBold]
          Transparent = True
          DataPipelineName = 'plEstado'
          mmHeight = 3440
          mmLeft = 9790
          mmTop = 794
          mmWidth = 87313
          BandType = 5
          GroupNo = 1
        end
        object ppDBText13: TppDBText
          UserName = 'DBText13'
          DataField = 'csecMovActual'
          DataPipeline = plEstado
          DisplayFormat = '#,0.00;(#,0.00)'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Name = 'Verdana'
          Font.Size = 8
          Font.Style = []
          TextAlignment = taRightJustified
          Transparent = True
          DataPipelineName = 'plEstado'
          mmHeight = 3440
          mmLeft = 133615
          mmTop = 794
          mmWidth = 29633
          BandType = 5
          GroupNo = 1
        end
        object ppDBText14: TppDBText
          UserName = 'DBText14'
          DataField = 'csecMovAnterior'
          DataPipeline = plEstado
          DisplayFormat = '#,0.00;(#,0.00)'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Name = 'Verdana'
          Font.Size = 8
          Font.Style = []
          TextAlignment = taRightJustified
          Transparent = True
          DataPipelineName = 'plEstado'
          mmHeight = 3440
          mmLeft = 172244
          mmTop = 794
          mmWidth = 30427
          BandType = 5
          GroupNo = 1
        end
        object ppDBText29: TppDBText
          UserName = 'DBText29'
          DataField = 'csecVariacion'
          DataPipeline = plEstado
          DisplayFormat = '0.00 %'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Name = 'Verdana'
          Font.Size = 8
          Font.Style = []
          TextAlignment = taRightJustified
          Transparent = True
          DataPipelineName = 'plEstado'
          mmHeight = 3440
          mmLeft = 242623
          mmTop = 794
          mmWidth = 16669
          BandType = 5
          GroupNo = 1
        end
        object ppDBText34: TppDBText
          UserName = 'DBText34'
          DataField = 'csecImporte'
          DataPipeline = plEstado
          DisplayFormat = '#,0.00;(#,0.00)'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Name = 'Verdana'
          Font.Size = 8
          Font.Style = []
          TextAlignment = taRightJustified
          Transparent = True
          DataPipelineName = 'plEstado'
          mmHeight = 3440
          mmLeft = 210873
          mmTop = 794
          mmWidth = 27252
          BandType = 5
          GroupNo = 1
        end
        object ppDBText16: TppDBText
          OnPrint = ppDBText26Print
          UserName = 'DBText101'
          DataField = 'NotaSec'
          DataPipeline = plEstado
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Name = 'Verdana'
          Font.Size = 8
          Font.Style = [fsBold]
          TextAlignment = taCentered
          Transparent = True
          DataPipelineName = 'plEstado'
          mmHeight = 3440
          mmLeft = 115359
          mmTop = 794
          mmWidth = 12700
          BandType = 5
          GroupNo = 1
        end
      end
    end
    object ppGroup3: TppGroup
      BreakName = 'idItem'
      DataPipeline = plEstado
      OutlineSettings.CreateNode = True
      ReprintOnSubsequentPage = False
      UserName = 'Group3'
      mmNewColumnThreshold = 0
      mmNewPageThreshold = 0
      DataPipelineName = 'plEstado'
      object ppGroupHeaderBand3: TppGroupHeaderBand
        BeforePrint = ppGroupHeaderBand3BeforePrint
        mmBottomOffset = 0
        mmHeight = 3969
        mmPrintPosition = 0
        object ppDBText30: TppDBText
          UserName = 'DBText30'
          DataField = 'Descripcion'
          DataPipeline = plEstado
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Name = 'Verdana'
          Font.Size = 8
          Font.Style = [fsBold]
          Transparent = True
          DataPipelineName = 'plEstado'
          mmHeight = 3440
          mmLeft = 16933
          mmTop = 529
          mmWidth = 80433
          BandType = 3
          GroupNo = 2
        end
      end
      object ppGroupFooterBand3: TppGroupFooterBand
        BeforePrint = ppGroupFooterBand3BeforePrint
        mmBottomOffset = 0
        mmHeight = 4763
        mmPrintPosition = 0
        object ppShape4: TppShape
          OnPrint = ppShape4Print
          UserName = 'Shape4'
          Brush.Color = 15987699
          ParentHeight = True
          ParentWidth = True
          Pen.Style = psClear
          mmHeight = 4763
          mmLeft = 0
          mmTop = 0
          mmWidth = 266701
          BandType = 5
          GroupNo = 2
        end
        object ppDBText26: TppDBText
          OnPrint = ppDBText26Print
          UserName = 'DBText26'
          DataField = 'PieSubGrupo'
          DataPipeline = plEstado
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Name = 'Verdana'
          Font.Size = 8
          Font.Style = [fsBold]
          Transparent = True
          DataPipelineName = 'plEstado'
          mmHeight = 3440
          mmLeft = 17463
          mmTop = 794
          mmWidth = 87313
          BandType = 5
          GroupNo = 2
        end
        object ppDBText27: TppDBText
          UserName = 'DBText27'
          DataField = 'cMovActual'
          DataPipeline = plEstado
          DisplayFormat = '#,0.00;(#,0.00)'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Name = 'Verdana'
          Font.Size = 8
          Font.Style = []
          TextAlignment = taRightJustified
          Transparent = True
          DataPipelineName = 'plEstado'
          mmHeight = 3440
          mmLeft = 133615
          mmTop = 794
          mmWidth = 29633
          BandType = 5
          GroupNo = 2
        end
        object ppDBText28: TppDBText
          UserName = 'DBText28'
          DataField = 'cMovAnterior'
          DataPipeline = plEstado
          DisplayFormat = '#,0.00;(#,0.00)'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Name = 'Verdana'
          Font.Size = 8
          Font.Style = []
          TextAlignment = taRightJustified
          Transparent = True
          DataPipelineName = 'plEstado'
          mmHeight = 3440
          mmLeft = 172244
          mmTop = 794
          mmWidth = 30427
          BandType = 5
          GroupNo = 2
        end
        object ppDBText19: TppDBText
          UserName = 'DBText19'
          DataField = 'cVariacionitem'
          DataPipeline = plEstado
          DisplayFormat = '0.00 %'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Name = 'Verdana'
          Font.Size = 8
          Font.Style = []
          TextAlignment = taRightJustified
          Transparent = True
          DataPipelineName = 'plEstado'
          mmHeight = 3440
          mmLeft = 242623
          mmTop = 794
          mmWidth = 16669
          BandType = 5
          GroupNo = 2
        end
        object ppDBText23: TppDBText
          UserName = 'DBText23'
          DataField = 'cImporteitem'
          DataPipeline = plEstado
          DisplayFormat = '#,0.00;(#,0.00)'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Name = 'Verdana'
          Font.Size = 8
          Font.Style = []
          TextAlignment = taRightJustified
          Transparent = True
          DataPipelineName = 'plEstado'
          mmHeight = 3440
          mmLeft = 210873
          mmTop = 794
          mmWidth = 27252
          BandType = 5
          GroupNo = 2
        end
        object ppDBText10: TppDBText
          OnPrint = ppDBText26Print
          UserName = 'DBText10'
          DataField = 'NotaItem'
          DataPipeline = plEstado
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Name = 'Verdana'
          Font.Size = 8
          Font.Style = [fsBold]
          TextAlignment = taCentered
          Transparent = True
          DataPipelineName = 'plEstado'
          mmHeight = 3440
          mmLeft = 115359
          mmTop = 794
          mmWidth = 12700
          BandType = 5
          GroupNo = 2
        end
      end
    end
  end
  object VertReport: TppReport
    AutoStop = False
    DataPipeline = plEstado
    PassSetting = psTwoPass
    PrinterSetup.BinName = 'Default'
    PrinterSetup.DocumentName = 'Report'
    PrinterSetup.PaperName = 'Letter'
    PrinterSetup.PrinterName = 'Default'
    PrinterSetup.mmMarginBottom = 6350
    PrinterSetup.mmMarginLeft = 6350
    PrinterSetup.mmMarginRight = 6350
    PrinterSetup.mmMarginTop = 6350
    PrinterSetup.mmPaperHeight = 279401
    PrinterSetup.mmPaperWidth = 215900
    PrinterSetup.PaperSize = 1
    DeviceType = 'Screen'
    OutlineSettings.CreateNode = True
    OutlineSettings.CreatePageNodes = True
    OutlineSettings.Enabled = False
    OutlineSettings.Visible = False
    TextSearchSettings.DefaultString = '<EncontrarTexto>'
    TextSearchSettings.Enabled = True
    Left = 442
    Top = 190
    Version = '7.04'
    mmColumnWidth = 0
    DataPipelineName = 'plEstado'
    object ppTitleBand2: TppTitleBand
      mmBottomOffset = 0
      mmHeight = 0
      mmPrintPosition = 0
    end
    object ppHeaderBand2: TppHeaderBand
      mmBottomOffset = 0
      mmHeight = 24077
      mmPrintPosition = 0
      object ppLine6: TppLine
        UserName = 'Line3'
        Pen.Color = clNavy
        Pen.Width = 2
        ParentWidth = True
        Weight = 1.500000000000000000
        mmHeight = 529
        mmLeft = 0
        mmTop = 23283
        mmWidth = 203200
        BandType = 0
      end
      object ppSystemVariable3: TppSystemVariable
        UserName = 'SystemVariable2'
        AutoSize = False
        VarType = vtPageSetDesc
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Verdana'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 3440
        mmLeft = 145786
        mmTop = 1058
        mmWidth = 47096
        BandType = 0
      end
      object ppSystemVariable4: TppSystemVariable
        UserName = 'SystemVariable1'
        AutoSize = False
        VarType = vtPrintDateTime
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Verdana'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 3440
        mmLeft = 138642
        mmTop = 5556
        mmWidth = 54240
        BandType = 0
      end
      object ppDBText31: TppDBText
        UserName = 'DBText12'
        DataField = 'NombreEstado'
        DataPipeline = plEstado
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Verdana'
        Font.Size = 14
        Font.Style = [fsBold]
        Transparent = True
        DataPipelineName = 'plEstado'
        mmHeight = 5821
        mmLeft = 1058
        mmTop = 1058
        mmWidth = 102129
        BandType = 0
      end
      object ppVariable2: TppVariable
        UserName = 'Variable1'
        CalcOrder = 2
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Verdana'
        Font.Size = 10
        Font.Style = [fsBold]
        OnCalc = ppVariable2Calc
        Transparent = True
        mmHeight = 4233
        mmLeft = 1058
        mmTop = 7408
        mmWidth = 18785
        BandType = 0
      end
      object ppLabel18: TppLabel
        UserName = 'Label1'
        AutoSize = False
        Caption = 'Valores en RD$'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Verdana'
        Font.Size = 8
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 3440
        mmLeft = 1058
        mmTop = 11906
        mmWidth = 30427
        BandType = 0
      end
      object ppLine7: TppLine
        UserName = 'Line2'
        Pen.Color = clSilver
        Pen.Width = 6
        Weight = 4.500000000000000000
        mmHeight = 1323
        mmLeft = 1058
        mmTop = 16140
        mmWidth = 98425
        BandType = 0
      end
    end
    object ppDetailBand2: TppDetailBand
      BeforePrint = ppDetailBand2BeforePrint
      mmBottomOffset = 0
      mmHeight = 4233
      mmPrintPosition = 0
      object ppDBText32: TppDBText
        UserName = 'DBText3'
        DataField = 'Cuenta'
        DataPipeline = plEstado
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Verdana'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        DataPipelineName = 'plEstado'
        mmHeight = 3440
        mmLeft = 12171
        mmTop = 529
        mmWidth = 85461
        BandType = 4
      end
      object ppDBText33: TppDBText
        UserName = 'DBText4'
        DataField = 'MovActual'
        DataPipeline = plEstado
        DisplayFormat = '#,0.00;(#,0.00)'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Verdana'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'plEstado'
        mmHeight = 3440
        mmLeft = 152400
        mmTop = 529
        mmWidth = 40481
        BandType = 4
      end
    end
    object ppFooterBand2: TppFooterBand
      mmBottomOffset = 0
      mmHeight = 7144
      mmPrintPosition = 0
      object ppLine8: TppLine
        UserName = 'Line5'
        Pen.Color = clGray
        Pen.Width = 2
        ParentWidth = True
        Weight = 1.500000000000000000
        mmHeight = 3969
        mmLeft = 0
        mmTop = 5821
        mmWidth = 203200
        BandType = 8
      end
    end
    object ppSummaryBand2: TppSummaryBand
      mmBottomOffset = 0
      mmHeight = 6085
      mmPrintPosition = 0
      object ppShape5: TppShape
        UserName = 'Shape3'
        Brush.Color = 15987699
        ParentHeight = True
        ParentWidth = True
        Pen.Style = psClear
        mmHeight = 6085
        mmLeft = 0
        mmTop = 0
        mmWidth = 203200
        BandType = 7
      end
      object ppDBText38: TppDBText
        OnPrint = ppDBText9Print
        UserName = 'DBText9'
        DataField = 'PieEstado'
        DataPipeline = plEstado
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Verdana'
        Font.Size = 8
        Font.Style = [fsBold]
        Transparent = True
        DataPipelineName = 'plEstado'
        mmHeight = 3387
        mmLeft = 3969
        mmTop = 1588
        mmWidth = 87313
        BandType = 7
      end
      object ppLine9: TppLine
        UserName = 'Line4'
        ParentWidth = True
        Weight = 0.750000000000000000
        mmHeight = 265
        mmLeft = 0
        mmTop = 794
        mmWidth = 203200
        BandType = 7
      end
      object ppDBText39: TppDBText
        OnPrint = ppDBText9Print
        UserName = 'DBText21'
        DataField = 'cgMovActual'
        DataPipeline = plEstado
        DisplayFormat = '#,0.00;(#,0.00)'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Verdana'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'plEstado'
        mmHeight = 3440
        mmLeft = 152400
        mmTop = 1588
        mmWidth = 40481
        BandType = 7
      end
    end
    object ppGroup4: TppGroup
      BreakName = 'Grupo'
      DataPipeline = plEstado
      OutlineSettings.CreateNode = True
      UserName = 'Group1'
      mmNewColumnThreshold = 0
      mmNewPageThreshold = 0
      DataPipelineName = 'plEstado'
      object ppGroupHeaderBand4: TppGroupHeaderBand
        BeforePrint = ppGroupHeaderBand4BeforePrint
        mmBottomOffset = 0
        mmHeight = 5292
        mmPrintPosition = 0
        object ppDBText43: TppDBText
          UserName = 'DBText1'
          DataField = 'Grupo'
          DataPipeline = plEstado
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Name = 'Verdana'
          Font.Size = 10
          Font.Style = [fsBold]
          Transparent = True
          DataPipelineName = 'plEstado'
          mmHeight = 4233
          mmLeft = 1588
          mmTop = 529
          mmWidth = 125413
          BandType = 3
          GroupNo = 0
        end
      end
      object ppGroupFooterBand4: TppGroupFooterBand
        BeforePrint = ppGroupFooterBand4BeforePrint
        mmBottomOffset = 0
        mmHeight = 8731
        mmPrintPosition = 0
        object ppShape6: TppShape
          UserName = 'Shape2'
          Brush.Color = 15987699
          ParentHeight = True
          ParentWidth = True
          Pen.Style = psClear
          mmHeight = 8731
          mmLeft = 0
          mmTop = 0
          mmWidth = 203200
          BandType = 5
          GroupNo = 0
        end
        object ppDBText44: TppDBText
          UserName = 'DBText8'
          DataField = 'PieGrupo'
          DataPipeline = plEstado
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Name = 'Verdana'
          Font.Size = 8
          Font.Style = [fsBold]
          Transparent = True
          DataPipelineName = 'plEstado'
          mmHeight = 3387
          mmLeft = 1852
          mmTop = 3704
          mmWidth = 87313
          BandType = 5
          GroupNo = 0
        end
        object ppLine10: TppLine
          UserName = 'Line1'
          ParentWidth = True
          Weight = 0.750000000000000000
          mmHeight = 265
          mmLeft = 0
          mmTop = 7938
          mmWidth = 203200
          BandType = 5
          GroupNo = 0
        end
        object ppDBText45: TppDBText
          UserName = 'DBText17'
          DataField = 'csgMovActual'
          DataPipeline = plEstado
          DisplayFormat = '#,0.00;(#,0.00)'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Name = 'Verdana'
          Font.Size = 8
          Font.Style = []
          TextAlignment = taRightJustified
          Transparent = True
          DataPipelineName = 'plEstado'
          mmHeight = 3440
          mmLeft = 152400
          mmTop = 3704
          mmWidth = 40481
          BandType = 5
          GroupNo = 0
        end
      end
    end
    object ppGroup5: TppGroup
      BreakName = 'idSeccion'
      DataPipeline = plEstado
      OutlineSettings.CreateNode = True
      UserName = 'Group2'
      mmNewColumnThreshold = 0
      mmNewPageThreshold = 0
      DataPipelineName = 'plEstado'
      object ppGroupHeaderBand5: TppGroupHeaderBand
        BeforePrint = ppGroupHeaderBand5BeforePrint
        mmBottomOffset = 0
        mmHeight = 5292
        mmPrintPosition = 0
        object ppDBText49: TppDBText
          UserName = 'DBText301'
          DataField = 'Seccion'
          DataPipeline = plEstado
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Name = 'Verdana'
          Font.Size = 8
          Font.Style = [fsBold]
          Transparent = True
          DataPipelineName = 'plEstado'
          mmHeight = 3440
          mmLeft = 4763
          mmTop = 794
          mmWidth = 80433
          BandType = 3
          GroupNo = 1
        end
      end
      object ppGroupFooterBand5: TppGroupFooterBand
        BeforePrint = ppGroupFooterBand5BeforePrint
        mmBottomOffset = 0
        mmHeight = 7938
        mmPrintPosition = 0
        object ppShape7: TppShape
          UserName = 'Shape1'
          Brush.Color = 15987699
          ParentHeight = True
          ParentWidth = True
          Pen.Style = psClear
          mmHeight = 7938
          mmLeft = 0
          mmTop = 0
          mmWidth = 203200
          BandType = 5
          GroupNo = 1
        end
        object ppDBText50: TppDBText
          UserName = 'DBText7'
          DataField = 'PieSeccion'
          DataPipeline = plEstado
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Name = 'Verdana'
          Font.Size = 8
          Font.Style = [fsBold]
          Transparent = True
          DataPipelineName = 'plEstado'
          mmHeight = 3440
          mmLeft = 4763
          mmTop = 2646
          mmWidth = 87313
          BandType = 5
          GroupNo = 1
        end
        object ppDBText51: TppDBText
          UserName = 'DBText13'
          DataField = 'csecMovActual'
          DataPipeline = plEstado
          DisplayFormat = '#,0.00;(#,0.00)'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Name = 'Verdana'
          Font.Size = 8
          Font.Style = []
          TextAlignment = taRightJustified
          Transparent = True
          DataPipelineName = 'plEstado'
          mmHeight = 3440
          mmLeft = 152400
          mmTop = 2646
          mmWidth = 40481
          BandType = 5
          GroupNo = 1
        end
      end
    end
    object ppGroup6: TppGroup
      BreakName = 'idItem'
      DataPipeline = plEstado
      KeepTogether = True
      OutlineSettings.CreateNode = True
      UserName = 'Group3'
      mmNewColumnThreshold = 0
      mmNewPageThreshold = 0
      DataPipelineName = 'plEstado'
      object ppGroupHeaderBand6: TppGroupHeaderBand
        BeforePrint = ppGroupHeaderBand6BeforePrint
        mmBottomOffset = 0
        mmHeight = 6085
        mmPrintPosition = 0
        object ppDBText55: TppDBText
          UserName = 'DBText30'
          DataField = 'Descripcion'
          DataPipeline = plEstado
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Name = 'Verdana'
          Font.Size = 8
          Font.Style = [fsBold]
          Transparent = True
          DataPipelineName = 'plEstado'
          mmHeight = 3440
          mmLeft = 7673
          mmTop = 1323
          mmWidth = 80433
          BandType = 3
          GroupNo = 2
        end
      end
      object ppGroupFooterBand6: TppGroupFooterBand
        BeforePrint = ppGroupFooterBand6BeforePrint
        mmBottomOffset = 0
        mmHeight = 4763
        mmPrintPosition = 0
        object ppShape8: TppShape
          UserName = 'Shape4'
          Brush.Color = 15987699
          ParentHeight = True
          ParentWidth = True
          Pen.Style = psClear
          mmHeight = 4763
          mmLeft = 0
          mmTop = 0
          mmWidth = 203200
          BandType = 5
          GroupNo = 2
        end
        object ppDBText57: TppDBText
          UserName = 'DBText26'
          DataField = 'PieSubGrupo'
          DataPipeline = plEstado
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Name = 'Verdana'
          Font.Size = 8
          Font.Style = [fsBold]
          Transparent = True
          DataPipelineName = 'plEstado'
          mmHeight = 3440
          mmLeft = 8202
          mmTop = 1323
          mmWidth = 87313
          BandType = 5
          GroupNo = 2
        end
        object ppDBText58: TppDBText
          UserName = 'DBText27'
          DataField = 'cMovActual'
          DataPipeline = plEstado
          DisplayFormat = '#,0.00;(#,0.00)'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Name = 'Verdana'
          Font.Size = 8
          Font.Style = []
          TextAlignment = taRightJustified
          Transparent = True
          DataPipelineName = 'plEstado'
          mmHeight = 3440
          mmLeft = 152400
          mmTop = 1323
          mmWidth = 40481
          BandType = 5
          GroupNo = 2
        end
      end
    end
  end
end
