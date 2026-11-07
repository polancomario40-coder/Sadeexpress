object fMarcarDepositos: TfMarcarDepositos
  Left = 370
  Top = 221
  Width = 552
  Height = 349
  Caption = 'Marcar depositos recibidos por el banco'
  Color = 14870499
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poDesktopCenter
  OnCreate = FormCreate
  DesignSize = (
    544
    315)
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 6
    Top = 10
    Width = 39
    Height = 13
    Caption = 'Cuenta:'
  end
  object Label3: TLabel
    Left = 6
    Top = 36
    Width = 34
    Height = 13
    Caption = 'Desde:'
  end
  object Label2: TLabel
    Left = 223
    Top = 36
    Width = 32
    Height = 13
    Caption = 'Hasta:'
  end
  object sbSave: TcxButton
    Left = 4
    Top = 262
    Width = 63
    Height = 49
    Anchors = [akRight, akBottom]
    Caption = 'Guardar'
    Enabled = False
    TabOrder = 1
    OnClick = sbSaveClick
    Glyph.Data = {
      36030000424D3603000000000000360000002800000010000000100000000100
      18000000000000030000120B0000120B00000000000000000000FF00FFFF00FF
      FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00
      FFFF00FFFF00FFFF00FFFF00FFFF00FF7F2B287F2B28A18283A18283A18283A1
      8283A18283A18283A182837A1C1C7F2B28FF00FFFF00FFFF00FFFF00FF7F2B28
      CA4D4DB64545DDD4D5791617791617DCE0E0D7DADECED5D7BDBABD76100F9A2D
      2D7F2B28FF00FFFF00FFFF00FF7F2B28C24A4BB14444E2D9D9791617791617D9
      D8DAD9DEE1D3D9DCC1BDC1761111982D2D7F2B28FF00FFFF00FFFF00FF7F2B28
      C24A4AB04242E6DCDC791617791617D5D3D5D8DEE1D7DDE0C6C2C5700F0F962C
      2C7F2B28FF00FFFF00FFFF00FF7F2B28C24A4AB04141EADEDEE7DDDDDDD4D5D7
      D3D5D5D7D9D7D8DACAC2C57E17179E31317F2B28FF00FFFF00FFFF00FF7F2B28
      BF4748B84545BA4C4CBD5757BB5756B64E4EB44949BD5251BB4B4CB54242BF4A
      4A7F2B28FF00FFFF00FFFF00FF7F2B28A33B39B1605DC68684CB918FCC9190CC
      908FCB8988C98988CB9391CC9696BD4B4C7F2B28FF00FFFF00FFFF00FF7F2B28
      BD4B4CF7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7BD4B
      4C7F2B28FF00FFFF00FFFF00FF7F2B28BD4B4CF7F7F7F7F7F7F7F7F7F7F7F7F7
      F7F7F7F7F7F7F7F7F7F7F7F7F7F7BD4B4C7F2B28FF00FFFF00FFFF00FF7F2B28
      BD4B4CF7F7F7BFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFF7F7F7BD4B
      4C7F2B28FF00FFFF00FFFF00FF7F2B28BD4B4CF7F7F7F7F7F7F7F7F7F7F7F7F7
      F7F7F7F7F7F7F7F7F7F7F7F7F7F7BD4B4C7F2B28FF00FFFF00FFFF00FF7F2B28
      BD4B4CF7F7F7BFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFF7F7F7BD4B
      4C7F2B28FF00FFFF00FFFF00FF7F2B28BD4B4CF7F7F7F7F7F7F7F7F7F7F7F7F7
      F7F7F7F7F7F7F7F7F7F7F7F7F7F7BD4B4C7F2B28FF00FFFF00FFFF00FFFF00FF
      7F2B28F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F77F2B
      28FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF
      00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF}
    Layout = blGlyphTop
    LookAndFeel.NativeStyle = True
  end
  object sbExit: TcxButton
    Left = 476
    Top = 262
    Width = 63
    Height = 49
    Anchors = [akRight, akBottom]
    Caption = 'Salir'
    TabOrder = 2
    OnClick = sbExitClick
    Glyph.Data = {
      36040000424D3604000000000000360000002800000010000000100000000100
      20000000000000040000120B0000120B00000000000000000000B13EB20098A2
      91009298A900737A9700777E9900777D9800777D9A00777E9B00777E9B00767D
      9A00767D9B00757C9A00747C9B0072799900A9ABB300817F7C00ADB7A20099A3
      D0001B37C5000428B7000F32BB001132BA000E31BC00082DBC00032BBE00012B
      C100012CC3000028C2000024C4000018B9004051C000A9ABB200BAB6A3003B55
      C0000831DC00274CDD003053DE002B4FDE00244ADE00365BE1003960E4002351
      E300093FE3000D43E500063DE5000034DE000018B900727A9900BAB5A200425D
      C8001942E6003558E2003557E3004D6CE700BAC7F600D4DCFA00D6DEFB00CCD8
      FA008CA7F4001049E9000642EA00043CE5000023C400757D9C00B9B4A2004761
      C800244BE700385AE200617CE800EBEFFC00B2C1F5005274E9002654E4005D83
      EE00CEDAF900BCCDF9000B46E900063EE5000028C500757D9C00B8B3A1004B65
      C9002D53E9004866E500D6DDF900A7B7F2003358E3005273E9008FA7F1001F51
      E6002155E800CCD8F90086A3F400013AE300012CC600767E9B00B7B3A100516A
      CA003356E9007B90EC00DDE2FA004E6CE5004061E4006783EB00CBD5F8002E5A
      E6001449E600527AED00CFDAFA001D4DE400042DC500777E9B00B6B2A100566E
      CB003A5BEA0097A8F000C0C9F6003E5DE3004664E500627EE900C1CCF7002A55
      E4002351E5001D4CE500D1DCFA00345DE500082FC300787F9C00B5B1A1005B72
      CC004565EC0090A2EE00CFD6F8004966E4004362E300627DE900C3CEF6002A52
      E2001F49E200365DE500D2DBFA003359E2000E33C20079809C00B4B1A1005F74
      CD005573EE007087EA00EAEDFC007D90EC003554E100607AE700BCC7F500274D
      E000113CDE009FB0F200B7C4F6001F48DE00173BC20079809C00B4B0A1006277
      CD00637FF0006580E9009AABF100F2F4FD00798DEB003B5AE2002246DF003153
      E2008EA1EE00E1E6FB003F61E500274DDF001B3DC20079809C00B3AFA100667A
      CD00728CF2007F96ED006680E9009AAAF000EAEDFC00C9D2F700B6C2F400CFD7
      F800D5DCF8005572E700294EE0003254DF00183AC100787F9B00B1AEA0006A7E
      CE008BA0F6009AABF1007E95EC006681E900748AEA0097A9EF00A2B1F200899C
      EE005470E6004363E4004464E5003557E0000E31BE00747B9900ADB49F008A98
      D8007A93FA00879EF5006E88F100637FF0005875EE004F6EED004A6AEC004968
      EC004768EC004264EB003659EA001D44E1001F40C9009297A900A669A500ADBC
      AF008A98D800667ACD006277CD006074CC005D73CC005E73CC005C71CC00586F
      CC00546CCB00546CCB004F67CA00435DC30099A2D00098A29100E860E800A669
      A500ACB49E00B3AFA100B3B0A100B4B0A100B5B1A100B5B1A100B5B1A100B6B1
      A100B6B2A100B6B2A100B7B3A100B9B4A200ACB6A200B13DB100}
    Layout = blGlyphTop
    LookAndFeel.NativeStyle = True
  end
  object sbStart: TcxButton
    Left = 430
    Top = 4
    Width = 107
    Height = 29
    Caption = 'Iniciar'
    TabOrder = 3
    OnClick = sbStartClick
    Glyph.Data = {
      36030000424D3603000000000000360000002800000010000000100000000100
      18000000000000030000120B0000120B00000000000000000000FF00FFFF00FF
      A46769A46769A46769A46769A46769A46769A46769A46769A46769A46769A467
      69A46769A46769FF00FFFF00FFFF00FFB79184FEE9C7F4DAB5F3D5AAF2D0A0EF
      CB96EFC68BEDC182EBC17FEBC180EBC180F2C782A46769FF00FFFF00FFFF00FF
      B79187FCEACEF3DABCF2D5B1F0D0A7EECB9EEDC793EDC28BE9BD81E9BD7FE9BD
      7FEFC481A46769FF00FFFF00FFFF00FFB7938AFEEFDAF6E0C6F2DABCF2D5B2EF
      D0A9EECB9EEDC796EBC28CE9BD82E9BD7FEFC481A46769FF00FFFF00FFFF00FF
      BA978FFFF4E5F7E5CFF4E0C5F3DABBF2D5B1F0D0A6EECB9EEDC795EBC28AEABF
      81EFC480A46769FF00FFFF00FFFF00FFC09E95FFFBF0F8EADCF6E3CFF4E0C6F2
      D9BCF2D5B1F0D0A9EDCB9EEDC695EBC28AEFC583A46769FF00FFFF00FFFF00FF
      C6A49AFFFFFCFAF0E6F8EADAF7E5CFF4E0C5F2DABAF2D5B1F0D0A7EECB9DEBC7
      93F2C98CA46769FF00FFFF00FFFF00FFCBA99EFFFFFFFEF7F2FAEFE6F8EAD9F7
      E3CFF6E0C5F2DABBF2D4B1F0D0A7EECC9EF3CE97A46769FF00FFFF00FFFF00FF
      CFAC9FFFFFFFFFFEFCFCF6F0FAEFE6F7EADAF6E3CFF4E0C5F3D9BBF3D4B0F0D0
      A6F6D3A0A46769FF00FFFF00FFFF00FFD4B0A1FFFFFFFFFFFFFFFEFCFEF7F0FA
      EFE5F8EAD9F7E5CEF6DEC4F3D9B8F4D8B1EBCFA4A46769FF00FFFF00FFFF00FF
      D9B5A1FFFFFFFFFFFFFFFFFFFFFEFCFCF7F0FAEFE5F8E9D9F8E7D1FBEACEDECE
      B4B6AA93A46769FF00FFFF00FFFF00FFDDB7A4FFFFFFFFFFFFFFFFFFFFFFFFFF
      FEFCFCF6EFFCF3E6EDD8C9B68A7BA17B6F9C7667A46769FF00FFFF00FFFF00FF
      E2BCA5FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEFBFFFEF7DAC1BAAD735BE19E
      55E68F31B56D4DFF00FFFF00FFFF00FFE6BFA7FFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFDCC7C5B88265F8B55CBF7A5CFF00FFFF00FFFF00FFFF00FF
      E4BCA4FBF4F0FBF4EFFAF3EFFAF3EFF8F2EFF7F2EFF7F2EFD8C2C0B77F62C183
      6CFF00FFFF00FFFF00FFFF00FFFF00FFE8C4ADEBCBB7EBCBB7EACBB7EACAB6EA
      CAB6EACAB6EACAB6E3C2B1A56B5FFF00FFFF00FFFF00FFFF00FF}
    LookAndFeel.NativeStyle = True
  end
  object sbCancel: TcxButton
    Left = 74
    Top = 262
    Width = 63
    Height = 49
    Anchors = [akRight, akBottom]
    Caption = 'Cancelar'
    Enabled = False
    TabOrder = 4
    OnClick = sbCancelClick
    Glyph.Data = {
      36030000424D3603000000000000360000002800000010000000100000000100
      18000000000000030000120B0000120B00000000000000000000FF00FFFF00FF
      FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00
      FFFF00FF0005B70005B7FF00FF0005B70005B7FF00FFFF00FFFF00FFFF00FFFF
      00FFFF00FFFF00FFFF00FFFF00FFFF00FF0005B70005B7FF00FFFF00FF0005B7
      0005B70005B7FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF0005
      B70005B7FF00FFFF00FFFF00FF0005B70005B60005B70005B7FF00FFFF00FFFF
      00FFFF00FFFF00FFFF00FF0005B70005B7FF00FFFF00FFFF00FFFF00FFFF00FF
      0006D70005BA0005B70005B7FF00FFFF00FFFF00FFFF00FF0005B70005B7FF00
      FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF0005B70005B70005B6FF
      00FF0005B60005B70005B7FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF
      FF00FFFF00FFFF00FF0005B60006C70006C70006CE0005B4FF00FFFF00FFFF00
      FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF0006C100
      05C10006DAFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF
      FF00FFFF00FFFF00FF0005B60006D70006CE0006DA0006E9FF00FFFF00FFFF00
      FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF0006E50006DA0006D3FF
      00FFFF00FF0006E50006EFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF
      FF00FF0006F80006DA0006EFFF00FFFF00FFFF00FFFF00FF0006F80006F6FF00
      FFFF00FFFF00FFFF00FFFF00FFFF00FF0006F60006F60006F8FF00FFFF00FFFF
      00FFFF00FFFF00FFFF00FF0006F60006F6FF00FFFF00FFFF00FFFF00FF0006F6
      0006F60006F6FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00
      FF0006F6FF00FFFF00FF0006F60006F60006F6FF00FFFF00FFFF00FFFF00FFFF
      00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF0006F60006F6
      FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00
      FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF
      00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF}
    Layout = blGlyphTop
    LookAndFeel.NativeStyle = True
  end
  object luBco: TcxLookupComboBox
    Left = 48
    Top = 6
    Width = 335
    Height = 21
    Properties.KeyFieldNames = 'idCuentaBanco'
    Properties.ListColumns = <
      item
        FieldName = 'Nombre'
      end>
    Properties.ListOptions.CaseInsensitive = True
    Properties.ListOptions.GridLines = glNone
    Properties.ListOptions.ShowHeader = False
    Properties.ListSource = dsBancos
    Style.LookAndFeel.NativeStyle = True
    TabOrder = 0
  end
  object Grid: TcxGrid
    Left = 4
    Top = 58
    Width = 535
    Height = 200
    TabOrder = 5
    LookAndFeel.NativeStyle = True
    object GridDBTableView1: TcxGridDBTableView
      DataController.DataSource = dsDeps
      DataController.Summary.DefaultGroupSummaryItems = <>
      DataController.Summary.FooterSummaryItems = <>
      DataController.Summary.SummaryGroups = <>
      NavigatorButtons.ConfirmDelete = False
      OptionsView.GroupByBox = False
      object GridDBTableView1Referencia: TcxGridDBColumn
        DataBinding.FieldName = 'Referencia'
        Options.Editing = False
        Options.Filtering = False
      end
      object GridDBTableView1Fecha: TcxGridDBColumn
        DataBinding.FieldName = 'Fecha'
        Options.Editing = False
        Options.Filtering = False
        Width = 90
      end
      object GridDBTableView1Valor: TcxGridDBColumn
        DataBinding.FieldName = 'Valor'
        Options.Editing = False
        Options.Filtering = False
        Width = 84
      end
      object GridDBTableView1Status: TcxGridDBColumn
        DataBinding.FieldName = 'Status'
        PropertiesClassName = 'TcxImageComboBoxProperties'
        Properties.Items = <
          item
            Description = 'Recibido'
            ImageIndex = 0
            Value = '$'
          end
          item
            Description = 'Transito'
            Value = 'T'
          end
          item
            Description = 'Cancelado'
            Value = 'C'
          end>
        Options.Filtering = False
        Width = 108
      end
      object GridDBTableView1FechaStatus: TcxGridDBColumn
        Caption = 'Fecha proc.'
        DataBinding.FieldName = 'FechaStatus'
        Options.Filtering = False
      end
    end
    object GridLevel1: TcxGridLevel
      GridView = GridDBTableView1
    end
  end
  object deDesde: TcxDateEdit
    Left = 48
    Top = 32
    Width = 121
    Height = 21
    Properties.SaveTime = False
    Properties.ShowTime = False
    Style.LookAndFeel.NativeStyle = True
    TabOrder = 6
  end
  object deHasta: TcxDateEdit
    Left = 262
    Top = 32
    Width = 121
    Height = 21
    Properties.SaveTime = False
    Properties.ShowTime = False
    Style.LookAndFeel.NativeStyle = True
    TabOrder = 7
  end
  object dsBancos: TDataSource
    DataSet = dmBanco.rsBancos
    Left = 358
    Top = 84
  end
  object mDeps: TkbmMemTable
    DesignActivation = True
    AttachedAutoRefresh = True
    AttachMaxCount = 1
    FieldDefs = <>
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
    Left = 52
    Top = 166
    object mDepsidDocumento: TIntegerField
      FieldName = 'idDocumento'
    end
    object mDepsReferencia: TStringField
      FieldName = 'Referencia'
      OnValidate = mDepsReferenciaValidate
    end
    object mDepsFecha: TDateField
      FieldName = 'Fecha'
    end
    object mDepsValor: TCurrencyField
      FieldName = 'Valor'
    end
    object mDepsStatus: TStringField
      FieldName = 'Status'
      Size = 1
    end
    object mDepsFechaStatus: TDateTimeField
      FieldName = 'FechaStatus'
    end
    object mDepsGuidDocumento: TStringField
      FieldName = 'GuidDocumento'
      Size = 38
    end
  end
  object dsDeps: TDataSource
    DataSet = mDeps
    Left = 194
    Top = 188
  end
  object rsBuscarDep: TADODataSet
    Connection = dm.Coneccion
    CursorType = ctStatic
    LockType = ltReadOnly
    CommandText = 'bcoBuscarDeposito;1'
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
        Name = '@idBco'
        Attributes = [paNullable]
        DataType = ftInteger
        Precision = 10
        Value = Null
      end
      item
        Name = '@Numero'
        Attributes = [paNullable]
        DataType = ftInteger
        Precision = 10
        Value = Null
      end
      item
        Name = '@IdTr'
        Attributes = [paNullable]
        DataType = ftInteger
        Precision = 10
        Value = Null
      end>
    Left = 248
    Top = 154
    object rsBuscarDepidDocumento: TIntegerField
      FieldName = 'idDocumento'
      ReadOnly = True
    end
    object rsBuscarDepidTrans: TIntegerField
      FieldName = 'idTrans'
    end
    object rsBuscarDepFecha: TDateTimeField
      FieldName = 'Fecha'
    end
    object rsBuscarDepidCuentaBanco: TIntegerField
      FieldName = 'idCuentaBanco'
    end
    object rsBuscarDepStatus: TStringField
      FieldName = 'Status'
      FixedChar = True
      Size = 1
    end
    object rsBuscarDepFechaStatus: TDateTimeField
      FieldName = 'FechaStatus'
    end
    object rsBuscarDepTipoDocOrigen: TStringField
      FieldName = 'TipoDocOrigen'
      Size = 2
    end
    object rsBuscarDepDocOrigen: TIntegerField
      FieldName = 'DocOrigen'
    end
    object rsBuscarDepReferencia: TStringField
      FieldName = 'Referencia'
    end
    object rsBuscarDepValor: TBCDField
      FieldName = 'Valor'
      Precision = 19
      Size = 2
    end
    object rsBuscarDepDebCre: TWordField
      FieldName = 'DebCre'
    end
  end
  object cmdGuardarStatus: TADOCommand
    CommandText = 'bcoGuardarStatusDoc;1'
    CommandType = cmdStoredProc
    Connection = dm.Coneccion
    Parameters = <
      item
        Name = '@RETURN_VALUE'
        DataType = ftInteger
        Direction = pdReturnValue
        Precision = 10
        Value = Null
      end
      item
        Name = '@idDoc'
        Attributes = [paNullable]
        DataType = ftGuid
        Value = Null
      end
      item
        Name = '@st'
        Attributes = [paNullable]
        DataType = ftString
        Size = 1
        Value = Null
      end
      item
        Name = '@Fec'
        Attributes = [paNullable]
        DataType = ftDateTime
        Value = Null
      end>
    Left = 84
    Top = 108
  end
  object rsDeps: TADODataSet
    Connection = dm.Coneccion
    CursorType = ctStatic
    LockType = ltReadOnly
    CommandText = 
      'select d.GuidDocumento, d.IdDocumento, d.Fecha, d.Status, d.Fech' +
      'aStatus, d.Valor, d.Referencia'#13#10'from bcoDocumentos d'#13#10'where idTr' +
      'ans = 1 and d.idCuentaBanco = :idCta and fecha between :inicio a' +
      'nd :final'#13#10'order by d.Referencia '
    Parameters = <
      item
        Name = 'idCta'
        Attributes = [paSigned]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = Null
      end
      item
        Name = 'inicio'
        DataType = ftDateTime
        NumericScale = 3
        Precision = 23
        Size = 16
        Value = Null
      end
      item
        Name = 'final'
        DataType = ftDateTime
        NumericScale = 3
        Precision = 23
        Size = 16
        Value = Null
      end>
    Left = 166
    Top = 166
    object rsDepsIdDocumento: TIntegerField
      FieldName = 'IdDocumento'
      ReadOnly = True
    end
    object rsDepsFecha: TDateTimeField
      FieldName = 'Fecha'
    end
    object rsDepsStatus: TStringField
      FieldName = 'Status'
      FixedChar = True
      Size = 1
    end
    object rsDepsFechaStatus: TDateTimeField
      FieldName = 'FechaStatus'
    end
    object rsDepsValor: TBCDField
      FieldName = 'Valor'
      Precision = 19
      Size = 2
    end
    object rsDepsReferencia: TStringField
      FieldName = 'Referencia'
    end
    object rsDepsGuidDocumento: TStringField
      FieldName = 'GuidDocumento'
      Size = 38
    end
  end
end
