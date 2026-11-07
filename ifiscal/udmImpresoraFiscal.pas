unit udmImpresoraFiscal;

interface

uses
  SysUtils, Dialogs, Variants, Forms, Classes, EpsonFPHostControlX_TLB, DB,
  ADODB, StdCtrls, Controls;

type
  TdmFiscal = class(TDataModule)
  private
    LSNota: TStringList;
    LSNotaDetalle: TStringList;

    procedure AbrirCOM1(puertoCOM: string);
    function BaseNADec(num: string; n: byte): Integer;
    function BinADec(num: string): Integer;
    procedure CerrarCOM1;
    procedure agregaMemo(Datos: string; Lineas, Caracteres: Integer);
    procedure Esperar;
    function GetDataSet(const cmd: string; params: variant): TDataSet;
    function RunSproc(const cmd: string; params: variant; retIdx: Integer = 0): Variant;
    procedure msn_error_ifiscal(msn: string; error: Integer);
    procedure ValidaImpresoraFiscal;
    function TextoDerecha(S: string; Caracter: Char; n: Integer): string;
    function TextoIzquierda(S: string; Caracter: Char; n: Integer): string;
    procedure agregaLineaNoVenta(LS: TStringList; Datos: string; Lineas,
      Caracteres: Integer);
    procedure agregaMemoDetalle(Datos: string; Lineas,
      Caracteres: Integer);
    procedure configuracion;
    { Private declarations }
  public
    Copias, Fuente, tipoNCF: string;
    EpsonFPHostControl1: TEpsonFPHostControl;
    COMPort: string;
    TipoFuente, CantCopiaFactura, CantCopiaDevolucion, CantCopiaNoVenta: Integer;
    GenSp: TADODataSet;

    procedure IFCancelaImpresionReporteFiscal(tipoAnulacion: Integer);
    procedure IFImpresionFiscalDevolucion(uidDevolucion: TGUID);
    procedure IFImpresionFiscalFactura(uidFactura: TGUID);
    procedure IFImpresionNoVenta(uidFactura: TGUID; tipoDoc: string);
    procedure IFImpresionReporteFiscal(Reporte: Integer; desde,
      hasta: string; fdesde, fhasta: TDateTime);
    { Public declarations }
  end;

var
  dmFiscal: TdmFiscal;

implementation

uses Udata, UUtiles, Math;

{$R *.dfm}

function TdmFiscal.RunSproc(const cmd: string; params: variant; retIdx: Integer = 0): Variant;
var
  i: Integer;
  GenCmd: TADOCommand;
begin
  GenCmd := TADOCommand.Create(nil);
  GenCmd.Connection := dm.Coneccion;
  GenCmd.CommandType := cmdStoredProc;

  GenCmd.CommandText := cmd;
  GenCmd.Parameters.Refresh();

//  if not (params = Null) then
//  begin
  if VarIsArray(params) then
  begin

    for i := VarArrayLowBound(params, 1) to VarArrayHighBound(params, 1) do
      GenCmd.Parameters[i + 1].Value := params[i];
  end
  else
    GenCmd.Parameters[1].Value := params;
//  end;

  GenCmd.Execute();

  Result := GenCmd.Parameters[retIdx].Value;
end;

function TdmFiscal.GetDataSet(const cmd: string; params: variant): TDataSet;
var
  i: Integer;
begin
  if GenSp = nil then
  begin
    GenSp := TADODataSet.Create(nil);
    GenSp.Connection := dm.Coneccion;
    GenSp.CommandType := cmdStoredProc;
  end;

  if GenSp.Active then
    GenSp.Close();

  GenSp.CommandText := cmd;
  GenSp.Parameters.Refresh();
  if VarIsArray(params) then
  begin
    for i := VarArrayLowBound(params, 1) to VarArrayHighBound(params, 1) do
      GenSp.Parameters[i + 1].Value := params[i];
  end
  else
    GenSp.Parameters[1].Value := params;

  GenSp.Open();
  Result := GenSp;
end;

function TdmFiscal.BaseNADec(num: string; n: byte): Integer;
var
  i: Integer;
  aux: string;
begin
  aux := '0123456789ABCDEFGHIO';
  Result := 0;
  for i := 1 to length(num) do
    Result := Result * n + pos(upcase(num[i]), aux) - 1;
end;

function TdmFiscal.BinADec(num: string): Integer;
begin
  Result := BaseNADec(num, 2);
end;

procedure TdmFiscal.msn_error_ifiscal(msn: string; error: Integer);
var desc: string;
begin
  desc := dm.GetDataSet('RSMensaje_IFiscal', error).FieldByName('Mensaje').AsString;

  MessageDlg(msn + ': ' + desc + ', No.: ' + IntToStr(error), mtError, [], 0);
  EpsonFPHostControl1.Free;
end;

procedure TdmFiscal.ValidaImpresoraFiscal;
var
  comando, extension: string;
  Enviar, Envio: boolean;
begin
  EpsonFPHostControl1 := TEpsonFPHostControl.Create(nil);

  CerrarCOM1;
  AbrirCOM1(COMPort);

  EpsonFPHostControl1.Purge;
  // esto para saber si paso de un dia a otro y hay que realizar un z
  try
    comando := CHR(08) + CHR(10); // #08#10
    extension := CHR(0) + CHR(1);
    Enviar := EpsonFPHostControl1.AddDataField(comando);
    Enviar := EpsonFPHostControl1.AddDataField(extension);
    Envio := EpsonFPHostControl1.SendCommand;

    ShowMessage(IntToStr(EpsonFPHostControl1.FiscalStatus));

    // ShowMessage(DiferenciaFechas('H',StrToDateTime(EpsonFPHostControl1.GetExtraField(1)),Now));
    ShowMessage(EpsonFPHostControl1.GetExtraField(1));
    ShowMessage(EpsonFPHostControl1.GetExtraField(2));
    ShowMessage(EpsonFPHostControl1.GetExtraField(3));

    if EpsonFPHostControl1.ReturnCode <> 0 then
      msn_error_ifiscal('ERROR IFISCAL', EpsonFPHostControl1.ReturnCode);
  finally
    //Esperar;
    EpsonFPHostControl1.Free;
  end;
end;

procedure TdmFiscal.Esperar;
begin
  while EpsonFPHostControl1.State = EFP_S_Busy do
  begin
    Application.ProcessMessages;
  end;
end;

procedure TdmFiscal.AbrirCOM1(puertoCOM: string);
var
  apertura: boolean;
  COM: Integer;
begin
  try
    COM := StrToInt(puertoCOM);
  except
    raise Exception.Create('El valor del puerto COM no es valido..');
  end;

  case COM of
    1: EpsonFPHostControl1.CommPort := Com1;
    2: EpsonFPHostControl1.CommPort := Com2;
    3: EpsonFPHostControl1.CommPort := Com3;
    4: EpsonFPHostControl1.CommPort := Com4;
  else
    raise Exception.Create('El puerto COM no esta definido en los parametros del sistema, verifique por favor..');
  end;

  EpsonFPHostControl1.BaudRate := br9600;
  EpsonFPHostControl1.ProtocolType := protocol_Extended;

  apertura := EpsonFPHostControl1.OpenPort;

  if not (apertura) then
    raise Exception.Create('El puerto serial no puede ser aperturado..');
end;

procedure TdmFiscal.CerrarCOM1;
begin
  EpsonFPHostControl1.ClosePort;
end;

procedure TdmFiscal.agregaMemo(Datos: string; Lineas, Caracteres: Integer);
var cadena: string;
  l, c: Integer;
begin
  if Length(Datos) = 0 then
  begin
    for l := 0 to Lineas do
      LSNota.Add('')
  end
  else
  begin
    c := 1;

    for l := 1 to Lineas do
    begin
      cadena := '';

      while ((Datos[c] <> #13) and (c < (Length(Datos) + 1))) do
      begin
        if ((Length(cadena) < Caracteres) and (Datos[c] <> #10)) then
        begin
          cadena := cadena + Datos[c];

          c := c + 1;
        end
        else
        begin
          LSNota.Add(cadena);
          cadena := '';
        end;
      end;

      LSNota.Add(cadena);
      cadena := '';

      if (c = (Length(Datos) + 1)) then
        Exit;
    end;

    {if ((Length(Datos) > 0) and (LSNota.Count <= Lineas)) then
      for l := 0 to (Lineas - LSNota.Count) do
        LSNota.Add('');}
  end;
end;

procedure TdmFiscal.agregaMemoDetalle(Datos: string; Lineas, Caracteres: Integer);
var cadena: string;
  l, c: Integer;
begin
  if Length(Datos) = 0 then
  begin
    for l := 0 to Lineas do
      LSNotaDetalle.Add('')
  end
  else
  begin
    c := 1;

    for l := 1 to Lineas do
    begin
      cadena := '';

      while ((Datos[c] <> #13) and (c < (Length(Datos) + 1))) do
      begin
        if ((Length(cadena) < Caracteres) and (Datos[c] <> #10)) then
        begin
          cadena := cadena + Datos[c];

          c := c + 1;
        end
        else
        begin
          LSNotaDetalle.Add(cadena);
          cadena := '';
        end;
      end;

      LSNotaDetalle.Add(cadena);
      cadena := '';

      if (c = (Length(Datos) + 1)) then
        Exit;
    end;

    {if ((Length(Datos) > 0) and (LSNotaDetalle.Count <= Lineas)) then
      for l := 0 to (Lineas - LSNotaDetalle.Count) do
        LSNotaDetalle.Add('');}
  end;
end;

{procedure TdmFiscal.agregaMemo(Datos: string; Lineas, Caracteres: Integer);
var cadena: string;
  i, a: Integer;
begin
  if Length(Datos) = 0 then
  begin
    for a := 0 to Lineas do
      LSNota.Add('')
  end
  else
  begin
    i := 0;

    for a := 1 to Lineas do
    begin
      cadena := '';
      i := i + 1;

      while ((Datos[i] <> #13) and (i < (Length(Datos) + 1))) do
      begin
        if ((Length(cadena) < Caracteres) and (Datos[i] <> #10)) then
        begin
          cadena := cadena + Datos[i];

          i := i + 1;
        end
        else
        begin
          LSNota.Add(cadena);
          cadena := '';
        end;
      end;

      LSNota.Add(cadena);
      cadena := '';

      if (i = (Length(Datos) + 1)) then
        Exit;
    end;

    if ((Length(Datos) > 0) and (LSNota.Count <= Lineas)) then
      for a := 0 to (Lineas - LSNota.Count) do
        LSNota.Add('');
  end;
end;}

procedure TdmFiscal.agregaLineaNoVenta(LS: TStringList; Datos: string; Lineas, Caracteres: Integer);
var cadena: string;
  i, a: Integer;
begin
  i := 0;

  for a := 1 to Lineas do
  begin
    cadena := '';
    i := i + 1;

    while ((Datos[i] <> #13) and (i < (Length(Datos) + 1))) do
    begin
      if ((Length(cadena) < Caracteres) and (Datos[i] <> #10)) then
        cadena := cadena + Datos[i];

      i := i + 1;
    end;

    if (i = (Length(Datos) + 1)) then
      Exit;

    LS.Add(cadena);
  end;

  if ((Length(Datos) > 0) and (LS.Count <= Lineas)) then
    for a := 0 to (Lineas - LS.Count) do
      LS.Add('');
end;

procedure TdmFiscal.IFImpresionFiscalFactura(uidFactura: TGUID);
var
  comando, extension, sSubTotal: string;
  Enviar, Envio, RecargoDet: boolean;
  ds: TDataSet;
  i: Integer;
  MontoPendiente, SubTotalIF: Double;
begin
  configuracion();
  
  MontoPendiente := 0;
  SubTotalIF := 0;

  EpsonFPHostControl1 := TEpsonFPHostControl.Create(nil);

  ds := GetDataSet('RPTFacturaFiscal', GUIDToString(uidFactura));

  CerrarCOM1;
  AbrirCOM1(COMPort);

  EpsonFPHostControl1.Purge; // limpia la impresora

  case CantCopiaFactura of // cantidad de copias
    0: Copias := '000'; // No realizar copias.
    1: Copias := '001'; // Realizar una copia.
    2: Copias := '010'; // Realizar dos copias.
    3: Copias := '011'; // Realizar tres copias.
    4: Copias := '100'; // Realizar cuatro copias.
    5: Copias := '101'; // Realizar cinco copias.
    6: Copias := '110'; // Realizar seis copias.
    7: Copias := '111'; // Realizar siete copias.
  end;

  case TipoFuente of // tipo de fuente
    0: Fuente := '00'; // Utilizar fuente predeterminada.
    1: Fuente := '01'; // Utilizar fuente tipo A.
    2: Fuente := '10'; // Utilizar fuente tipo B.
  end;

  case StrToInt(Copy(ds.FieldByName('CompFiscal').AsString, 10, 2)) of // Tipo NCF, estraerlo desde la factura
    1: tipoNCF := '001'; // Factura con derecho a crédito fiscal.
    2: tipoNCF := '000'; // Factura a consumidor final.
    14: tipoNCF := '101'; // Factura con derecho a crédito fiscal con exoneración de ITBIS.
    15: tipoNCF := '001'; // Factura con derecho a crédito fiscal.
  end;

  try
    comando := CHR(10) + CHR(1); // abrimos el comprobante
    extension := CHR(0) + CHR(BinADec('0000000' + Copias + Fuente + '0' + tipoNCF));

    Enviar := EpsonFPHostControl1.AddDataField(comando);
    Enviar := EpsonFPHostControl1.AddDataField(extension);
    Enviar := EpsonFPHostControl1.AddDataField('');
    Enviar := EpsonFPHostControl1.AddDataField('');
    Enviar := EpsonFPHostControl1.AddDataField('01'); // sucursal
    Enviar := EpsonFPHostControl1.AddDataField('01'); // caja
    Enviar := EpsonFPHostControl1.AddDataField(ds.FieldByName('CompFiscal').AsString); // ncf
    Enviar := EpsonFPHostControl1.AddDataField(Copy(ds.FieldByName('Cliente').AsString, 0, 39)); // cliente
    Enviar := EpsonFPHostControl1.AddDataField(ds.FieldByName('ClienteRNC').AsString); // rnc

    Enviar := EpsonFPHostControl1.AddDataField('');
    Envio := EpsonFPHostControl1.SendCommand;

    if EpsonFPHostControl1.ReturnCode <> 0 then
      msn_error_ifiscal('ERROR CABEZERA', EpsonFPHostControl1.ReturnCode);
  finally
    Esperar;
  end;

  with ds do
  begin
    First;
    while not Eof do
    begin
      try
        LSNotaDetalle := TStringList.Create;

        //agrega especificaciones del item
        agregaMemoDetalle(ds.FieldByName('Especificacion').AsString, 8, 40);

        comando := CHR(10) + CHR(2);
        extension := CHR(0) + CHR(00);

        Enviar := EpsonFPHostControl1.AddDataField(comando);
        Enviar := EpsonFPHostControl1.AddDataField(extension);
        Enviar := EpsonFPHostControl1.AddDataField(LSNotaDetalle[0]); // solo 8 caracteres
        Enviar := EpsonFPHostControl1.AddDataField(LSNotaDetalle[1]);
        Enviar := EpsonFPHostControl1.AddDataField(LSNotaDetalle[2]);
        Enviar := EpsonFPHostControl1.AddDataField(LSNotaDetalle[3]);
        Enviar := EpsonFPHostControl1.AddDataField(LSNotaDetalle[4]);
        Enviar := EpsonFPHostControl1.AddDataField(LSNotaDetalle[5]);
        Enviar := EpsonFPHostControl1.AddDataField(LSNotaDetalle[6]);
        Enviar := EpsonFPHostControl1.AddDataField(LSNotaDetalle[7]);
        Enviar := EpsonFPHostControl1.AddDataField(LSNotaDetalle[8]);
        Enviar := EpsonFPHostControl1.AddDataField(ds.FieldByName('DetProducto').AsString);
        Enviar := EpsonFPHostControl1.AddDataField(StringReplace(FormatFloat('00000.000', ds.FieldByName('DetCantidad').AsFloat), '.', '', [rfReplaceAll, rfIgnoreCase]));
        Enviar := EpsonFPHostControl1.AddDataField(StringReplace(FormatFloat('0000000.00', ds.FieldByName('DetPrecio').AsFloat), '.', '', [rfReplaceAll, rfIgnoreCase]));
        Enviar := EpsonFPHostControl1.AddDataField(StringReplace(FormatFloat('00.00', ds.FieldByName('tasaImpuesto').AsFloat), '.', '', [rfReplaceAll, rfIgnoreCase]));
        Envio := EpsonFPHostControl1.SendCommand;

        if EpsonFPHostControl1.ReturnCode <> 0 then
          msn_error_ifiscal('ERROR ITEMS', EpsonFPHostControl1.ReturnCode);
      finally
        //LSNotaDetalle.Free;
        Esperar;
      end;

      if (ds.FieldByName('DetDescuento').AsFloat > 0) then
      begin
        try
          comando := CHR(10) + CHR(2);
          extension := CHR(0) + CHR(10);

          Enviar := EpsonFPHostControl1.AddDataField(comando);
          Enviar := EpsonFPHostControl1.AddDataField(extension);
          Enviar := EpsonFPHostControl1.AddDataField('');
          Enviar := EpsonFPHostControl1.AddDataField('');
          Enviar := EpsonFPHostControl1.AddDataField('');
          Enviar := EpsonFPHostControl1.AddDataField('');
          Enviar := EpsonFPHostControl1.AddDataField('');
          Enviar := EpsonFPHostControl1.AddDataField('');
          Enviar := EpsonFPHostControl1.AddDataField('');
          Enviar := EpsonFPHostControl1.AddDataField('');
          Enviar := EpsonFPHostControl1.AddDataField('');
          Enviar := EpsonFPHostControl1.AddDataField(ds.FieldByName('DetProducto').AsString);
          Enviar := EpsonFPHostControl1.AddDataField(StringReplace(FormatFloat('00000.000', 1), '.', '', [rfReplaceAll, rfIgnoreCase]));
          Enviar := EpsonFPHostControl1.AddDataField(StringReplace(FormatFloat('0000000.00', ds.FieldByName('DetDescuento').AsFloat), '.', '', [rfReplaceAll, rfIgnoreCase]));
          Enviar := EpsonFPHostControl1.AddDataField(StringReplace(FormatFloat('00.00', ds.FieldByName('tasaImpuesto').AsFloat), '.', '', [rfReplaceAll, rfIgnoreCase]));
          Envio := EpsonFPHostControl1.SendCommand;

          if EpsonFPHostControl1.ReturnCode <> 0 then
            msn_error_ifiscal('ERROR DESCUENTO', EpsonFPHostControl1.ReturnCode);
        finally
          Esperar;
        end;
      end;

      if (ds.FieldByName('DetRecargo').AsFloat > 0) then
      begin
        RecargoDet := True;
        try
          comando := CHR(10) + CHR(2);
          extension := CHR(0) + CHR(11);

          Enviar := EpsonFPHostControl1.AddDataField(comando);
          Enviar := EpsonFPHostControl1.AddDataField(extension);
          Enviar := EpsonFPHostControl1.AddDataField('');
          Enviar := EpsonFPHostControl1.AddDataField('');
          Enviar := EpsonFPHostControl1.AddDataField('');
          Enviar := EpsonFPHostControl1.AddDataField('');
          Enviar := EpsonFPHostControl1.AddDataField('');
          Enviar := EpsonFPHostControl1.AddDataField('');
          Enviar := EpsonFPHostControl1.AddDataField('');
          Enviar := EpsonFPHostControl1.AddDataField('');
          Enviar := EpsonFPHostControl1.AddDataField('');
          Enviar := EpsonFPHostControl1.AddDataField(ds.FieldByName('DetProducto').AsString);
          Enviar := EpsonFPHostControl1.AddDataField(StringReplace(FormatFloat('00000.000', 1), '.', '', [rfReplaceAll, rfIgnoreCase]));
          Enviar := EpsonFPHostControl1.AddDataField(StringReplace(FormatFloat('0000000.00', ds.FieldByName('DetRecargo').AsFloat), '.', '', [rfReplaceAll, rfIgnoreCase]));
          Enviar := EpsonFPHostControl1.AddDataField(StringReplace(FormatFloat('00.00', ds.FieldByName('tasaImpuesto').AsFloat), '.', '', [rfReplaceAll, rfIgnoreCase]));
          Envio := EpsonFPHostControl1.SendCommand;

          if EpsonFPHostControl1.ReturnCode <> 0 then
            msn_error_ifiscal('ERROR RECARGO', EpsonFPHostControl1.ReturnCode);
        finally
          Esperar;
        end;
      end;

      Next;
    end;
  end;

  try
    comando := CHR(10) + CHR(3);
    extension := CHR(0) + CHR(00);
    Enviar := EpsonFPHostControl1.AddDataField(comando);
    Enviar := EpsonFPHostControl1.AddDataField(extension);
    Envio := EpsonFPHostControl1.SendCommand;

    if EpsonFPHostControl1.ReturnCode <> 0 then
      msn_error_ifiscal('ERROR SUBTOTAL', EpsonFPHostControl1.ReturnCode);
  finally
    Esperar;

    //esto se hace porque el monto retornado no tiene punto decimal, asi que hay que ponerselo.
    sSubTotal := Copy(EpsonFPHostControl1.GetExtraField(1), 1, (Length(EpsonFPHostControl1.GetExtraField(1)) - 2)) + '.' + Copy(EpsonFPHostControl1.GetExtraField(1), (Length(EpsonFPHostControl1.GetExtraField(1)) - 1), 2);
    SubTotalIF := StrToFloat(sSubTotal);
  end;

  if (ds.FieldByName('DescuentoTotal').AsFloat > 0) then
  begin
    try
      comando := CHR(10) + CHR(4);
      extension := CHR(0) + CHR(00);
      Enviar := EpsonFPHostControl1.AddDataField(comando);
      Enviar := EpsonFPHostControl1.AddDataField(extension);
      Enviar := EpsonFPHostControl1.AddDataField('Descuento');
      Enviar := EpsonFPHostControl1.AddDataField(StringReplace(FormatFloat('000000000.00', ds.FieldByName('DescuentoTotal').AsFloat), '.', '', [rfReplaceAll, rfIgnoreCase]));
      Envio := EpsonFPHostControl1.SendCommand;

      if EpsonFPHostControl1.ReturnCode <> 0 then
        msn_error_ifiscal('ERROR DESCUENTO', EpsonFPHostControl1.ReturnCode);
    finally
      Esperar;
    end;
  end;

  if (ds.FieldByName('RecargoTotal').AsFloat > 0) then
  begin
    try
      comando := CHR(10) + CHR(4);
      extension := CHR(0) + CHR(01);
      Enviar := EpsonFPHostControl1.AddDataField(comando);
      Enviar := EpsonFPHostControl1.AddDataField(extension);
      Enviar := EpsonFPHostControl1.AddDataField('Recargo');
      Enviar := EpsonFPHostControl1.AddDataField(StringReplace(FormatFloat('000000000.00', ds.FieldByName('RecargoTotal').AsFloat), '.', '', [rfReplaceAll, rfIgnoreCase]));
      Envio := EpsonFPHostControl1.SendCommand;

      if EpsonFPHostControl1.ReturnCode <> 0 then
        msn_error_ifiscal('ERROR RECARGO', EpsonFPHostControl1.ReturnCode);
    finally
      Esperar;
    end;
  end;

  if ds.FieldByName('PagoCredito').AsFloat > 0 then
  begin
    try
      comando := CHR(10) + CHR(5);
      extension := CHR(0) + CHR(00);
      Enviar := EpsonFPHostControl1.AddDataField(comando);
      Enviar := EpsonFPHostControl1.AddDataField(extension);
      Enviar := EpsonFPHostControl1.AddDataField('7'); // forma de pago
      Enviar := EpsonFPHostControl1.AddDataField(StringReplace(FormatFloat('000000000.00', ds.FieldByName('PagoCredito').AsFloat), '.', '', [rfReplaceAll, rfIgnoreCase]));
      Enviar := EpsonFPHostControl1.AddDataField('');
      Enviar := EpsonFPHostControl1.AddDataField('');
      Enviar := EpsonFPHostControl1.AddDataField('');
      Envio := EpsonFPHostControl1.SendCommand;

      if EpsonFPHostControl1.ReturnCode <> 0 then
        msn_error_ifiscal('ERROR PAGO', EpsonFPHostControl1.ReturnCode);
    finally
      Esperar;
      MontoPendiente := StrToFloat(EpsonFPHostControl1.GetExtraField(1));
    end;
  end
  else
  begin
    if ds.FieldByName('Cheque').AsFloat > 0 then
    begin
      try
        comando := CHR(10) + CHR(5);
        extension := CHR(0) + CHR(00);
        Enviar := EpsonFPHostControl1.AddDataField(comando);
        Enviar := EpsonFPHostControl1.AddDataField(extension);
        Enviar := EpsonFPHostControl1.AddDataField('2'); // forma de pago
        Enviar := EpsonFPHostControl1.AddDataField(StringReplace(FormatFloat('000000000.00', ds.FieldByName('Cheque').AsFloat), '.', '', [rfReplaceAll, rfIgnoreCase]));
        Enviar := EpsonFPHostControl1.AddDataField('');
        Enviar := EpsonFPHostControl1.AddDataField('');
        Enviar := EpsonFPHostControl1.AddDataField('');
        Envio := EpsonFPHostControl1.SendCommand;

        if EpsonFPHostControl1.ReturnCode <> 0 then
          msn_error_ifiscal('ERROR PAGO', EpsonFPHostControl1.ReturnCode);
      finally
        Esperar;
        MontoPendiente := StrToFloat(EpsonFPHostControl1.GetExtraField(1));
      end;
    end;
    if ds.FieldByName('Tarjeta').AsFloat > 0 then
    begin
      try
        comando := CHR(10) + CHR(5);
        extension := CHR(0) + CHR(00);
        Enviar := EpsonFPHostControl1.AddDataField(comando);
        Enviar := EpsonFPHostControl1.AddDataField(extension);
        Enviar := EpsonFPHostControl1.AddDataField('3'); // forma de pago
        Enviar := EpsonFPHostControl1.AddDataField(StringReplace(FormatFloat('000000000.00', ds.FieldByName('Tarjeta').AsFloat), '.', '', [rfReplaceAll, rfIgnoreCase]));
        Enviar := EpsonFPHostControl1.AddDataField('');
        Enviar := EpsonFPHostControl1.AddDataField('');
        Enviar := EpsonFPHostControl1.AddDataField('');
        Envio := EpsonFPHostControl1.SendCommand;

        if EpsonFPHostControl1.ReturnCode <> 0 then
          msn_error_ifiscal('ERROR PAGO', EpsonFPHostControl1.ReturnCode);
      finally
        Esperar;
        MontoPendiente := StrToFloat(EpsonFPHostControl1.GetExtraField(1));
      end;
    end;
    if ds.FieldByName('TarjetaDebito').AsFloat > 0 then
    begin
      try
        comando := CHR(10) + CHR(5);
        extension := CHR(0) + CHR(00);
        Enviar := EpsonFPHostControl1.AddDataField(comando);
        Enviar := EpsonFPHostControl1.AddDataField(extension);
        Enviar := EpsonFPHostControl1.AddDataField('4'); // forma de pago
        Enviar := EpsonFPHostControl1.AddDataField(StringReplace(FormatFloat('000000000.00', ds.FieldByName('TarjetaDebito').AsFloat), '.', '', [rfReplaceAll, rfIgnoreCase]));
        Enviar := EpsonFPHostControl1.AddDataField('');
        Enviar := EpsonFPHostControl1.AddDataField('');
        Enviar := EpsonFPHostControl1.AddDataField('');
        Envio := EpsonFPHostControl1.SendCommand;

        if EpsonFPHostControl1.ReturnCode <> 0 then
          msn_error_ifiscal('ERROR PAGO', EpsonFPHostControl1.ReturnCode);
      finally
        Esperar;
        MontoPendiente := StrToFloat(EpsonFPHostControl1.GetExtraField(1));
      end;
    end;
    if ds.FieldByName('Otros').AsFloat > 0 then
    begin
      try
        comando := CHR(10) + CHR(5);
        extension := CHR(0) + CHR(00);
        Enviar := EpsonFPHostControl1.AddDataField(comando);
        Enviar := EpsonFPHostControl1.AddDataField(extension);
        Enviar := EpsonFPHostControl1.AddDataField('5'); // forma de pago
        Enviar := EpsonFPHostControl1.AddDataField(StringReplace(FormatFloat('000000000.00', ds.FieldByName('Otros').AsFloat), '.', '', [rfReplaceAll, rfIgnoreCase]));
        Enviar := EpsonFPHostControl1.AddDataField('');
        Enviar := EpsonFPHostControl1.AddDataField('');
        Enviar := EpsonFPHostControl1.AddDataField('');
        Envio := EpsonFPHostControl1.SendCommand;

        if EpsonFPHostControl1.ReturnCode <> 0 then
          msn_error_ifiscal('ERROR PAGO', EpsonFPHostControl1.ReturnCode);
      finally
        Esperar;
        MontoPendiente := StrToFloat(EpsonFPHostControl1.GetExtraField(1));
      end;
    end;
    {if ds.FieldByName('Cupon').AsFloat > 0 then
    begin
      try
        comando := CHR(10) + CHR(5);
        extension := CHR(0) + CHR(00);
        Enviar := EpsonFPHostControl1.AddDataField(comando);
        Enviar := EpsonFPHostControl1.AddDataField(extension);
        //Enviar := EpsonFPHostControl1.AddDataField('6'); // forma de pago
        Enviar := EpsonFPHostControl1.AddDataField('11'); // forma de pago
        Enviar := EpsonFPHostControl1.AddDataField(StringReplace(FormatFloat('000000000.00', ds.FieldByName('Cupon').AsFloat), '.', '', [rfReplaceAll, rfIgnoreCase]));
        Enviar := EpsonFPHostControl1.AddDataField('');
        Enviar := EpsonFPHostControl1.AddDataField('');
        Enviar := EpsonFPHostControl1.AddDataField('');
        Envio := EpsonFPHostControl1.SendCommand;

        if EpsonFPHostControl1.ReturnCode <> 0 then
          msn_error_ifiscal('ERROR PAGO', EpsonFPHostControl1.ReturnCode);
      finally
        Esperar;
        MontoPendiente := StrToFloat(EpsonFPHostControl1.GetExtraField(1));
      end;
    end;}
    if (ds.FieldByName('NotaCredito').AsFloat + ds.FieldByName('Cupon').AsFloat) > 0 then
    begin
      try
        comando := CHR(10) + CHR(5);
        extension := CHR(0) + CHR(00);
        Enviar := EpsonFPHostControl1.AddDataField(comando);
        Enviar := EpsonFPHostControl1.AddDataField(extension);
        Enviar := EpsonFPHostControl1.AddDataField('11'); // forma de pago
        Enviar := EpsonFPHostControl1.AddDataField(StringReplace(FormatFloat('000000000.00', (ds.FieldByName('Cupon').AsFloat + ds.FieldByName('NotaCredito').AsFloat)), '.', '', [rfReplaceAll, rfIgnoreCase]));
        Enviar := EpsonFPHostControl1.AddDataField('');
        Enviar := EpsonFPHostControl1.AddDataField('');
        Enviar := EpsonFPHostControl1.AddDataField('');
        Envio := EpsonFPHostControl1.SendCommand;

        if EpsonFPHostControl1.ReturnCode <> 0 then
          msn_error_ifiscal('ERROR PAGO', EpsonFPHostControl1.ReturnCode);
      finally
        Esperar;
        MontoPendiente := StrToFloat(EpsonFPHostControl1.GetExtraField(1));
      end;
    end;
    if ds.FieldByName('Efectivo').AsFloat > 0 then
    begin
      try
        comando := CHR(10) + CHR(5);
        extension := CHR(0) + CHR(00);
        Enviar := EpsonFPHostControl1.AddDataField(comando);
        Enviar := EpsonFPHostControl1.AddDataField(extension);
        Enviar := EpsonFPHostControl1.AddDataField('1'); // forma de pago
        Enviar := EpsonFPHostControl1.AddDataField(StringReplace(FormatFloat('000000000.00', ds.FieldByName('Efectivo').AsFloat), '.', '', [rfReplaceAll, rfIgnoreCase]));
        Enviar := EpsonFPHostControl1.AddDataField('');
        Enviar := EpsonFPHostControl1.AddDataField('');
        Enviar := EpsonFPHostControl1.AddDataField('');
        Envio := EpsonFPHostControl1.SendCommand;

        if EpsonFPHostControl1.ReturnCode <> 0 then
          msn_error_ifiscal('ERROR PAGO', EpsonFPHostControl1.ReturnCode);
      finally
        Esperar;
        MontoPendiente := StrToFloat(EpsonFPHostControl1.GetExtraField(1));
      end;
    end;
  end;

  if ((ds.FieldByName('PagoCredito').AsFloat + ds.FieldByName('Cheque').AsFloat + ds.FieldByName('Tarjeta').AsFloat + ds.FieldByName('TarjetaDebito').AsFloat +
       ds.FieldByName('Otros').AsFloat + ds.FieldByName('Cupon').AsFloat + ds.FieldByName('NotaCredito').AsFloat + ds.FieldByName('Efectivo').AsFloat) <= SubTotalIF) then
  begin
      if (SubTotalIF >= ds.FieldByName('Total').AsFloat) then

        //MontoPendiente := RoundCorrect((SubTotalIF - ds.FieldByName('Total').AsFloat),-2);
        MontoPendiente := Round((SubTotalIF - ds.FieldByName('Total').AsFloat));


      if ((MontoPendiente > 0) and (MontoPendiente <= 1)) then
      begin
          //otros pagos
        try
          comando := CHR(10) + CHR(5);
          extension := CHR(0) + CHR(00);
          Enviar := EpsonFPHostControl1.AddDataField(comando);
          Enviar := EpsonFPHostControl1.AddDataField(extension);
          Enviar := EpsonFPHostControl1.AddDataField('5'); // forma de pago
          Enviar := EpsonFPHostControl1.AddDataField(StringReplace(FormatFloat('000000000.00', MontoPendiente), '.', '', [rfReplaceAll, rfIgnoreCase]));
          Enviar := EpsonFPHostControl1.AddDataField('');
          Enviar := EpsonFPHostControl1.AddDataField('');
          Enviar := EpsonFPHostControl1.AddDataField('');
          Envio := EpsonFPHostControl1.SendCommand;

          if EpsonFPHostControl1.ReturnCode <> 0 then
            msn_error_ifiscal('ERROR PAGO', EpsonFPHostControl1.ReturnCode);
        finally
          Esperar;
        end;
      end;
  end;

  try
    comando := CHR(10) + CHR(18);
    extension := CHR(0) + CHR(00);
    Enviar := EpsonFPHostControl1.AddDataField(comando);
    Enviar := EpsonFPHostControl1.AddDataField(extension);
    Enviar := EpsonFPHostControl1.AddDataField('Gracias por su compra...!');
    Envio := EpsonFPHostControl1.SendCommand;

    if EpsonFPHostControl1.ReturnCode <> 0 then
      msn_error_ifiscal('ERROR COMENTARIO 1', EpsonFPHostControl1.ReturnCode);
  finally
    Esperar;
  end;
  
  try
    comando := CHR(10) + CHR(18);
    extension := CHR(0) + CHR(00);
    Enviar := EpsonFPHostControl1.AddDataField(comando);
    Enviar := EpsonFPHostControl1.AddDataField(extension);
    Enviar := EpsonFPHostControl1.AddDataField('Usuario: ' + ds.FieldByName('Usuario').AsString);
    Envio := EpsonFPHostControl1.SendCommand;

    if EpsonFPHostControl1.ReturnCode <> 0 then
      msn_error_ifiscal('ERROR COMENTARIO 2', EpsonFPHostControl1.ReturnCode);
  finally
    Esperar;
  end;

  try
    comando := CHR(10) + CHR(18);
    extension := CHR(0) + CHR(00);
    Enviar := EpsonFPHostControl1.AddDataField(comando);
    Enviar := EpsonFPHostControl1.AddDataField(extension);
    Enviar := EpsonFPHostControl1.AddDataField('Ref.: ' + ds.FieldByName('Factura').AsString);
    Envio := EpsonFPHostControl1.SendCommand;

    if EpsonFPHostControl1.ReturnCode <> 0 then
      msn_error_ifiscal('ERROR COMENTARIO 3', EpsonFPHostControl1.ReturnCode);
  finally
    Esperar;
  end;

  if Trim(ds.FieldByName('Nota').AsString) <> '' then
  begin
    LSNota := TStringList.Create;

    //agrega especificaciones del item
    agregaMemo(Trim(ds.FieldByName('Nota').AsString), 36, 40);

    for i := 0 to (LSNota.Count - 1) do
    begin
      try
        comando := CHR(10) + CHR(18);
        extension := CHR(0) + CHR(00);
        Enviar := EpsonFPHostControl1.AddDataField(comando);
        Enviar := EpsonFPHostControl1.AddDataField(extension);
        Enviar := EpsonFPHostControl1.AddDataField(LSNota.Strings[i]);
        Envio := EpsonFPHostControl1.SendCommand;

        if EpsonFPHostControl1.ReturnCode <> 0 then
          msn_error_ifiscal('ERROR COMENTARIO 4', EpsonFPHostControl1.ReturnCode);
      finally
        //LSNota.Free;
        Esperar;
      end;
    end;
  end;

  try
    comando := CHR(10) + CHR(6);
    extension := CHR(0) + CHR(01);
    Enviar := EpsonFPHostControl1.AddDataField(comando);
    Enviar := EpsonFPHostControl1.AddDataField(extension);
    Enviar := EpsonFPHostControl1.AddDataField('0');
    Enviar := EpsonFPHostControl1.AddDataField('');
    Enviar := EpsonFPHostControl1.AddDataField('0');
    Enviar := EpsonFPHostControl1.AddDataField('');
    Enviar := EpsonFPHostControl1.AddDataField('0');
    Enviar := EpsonFPHostControl1.AddDataField('');
    Envio := EpsonFPHostControl1.SendCommand;

    if EpsonFPHostControl1.ReturnCode <> 0 then
      msn_error_ifiscal('ERROR CIERRE', EpsonFPHostControl1.ReturnCode);
  finally
    Esperar;

    RunSproc('actualizaNIF_Factura', VarArrayOf([GUIDToString(uidFactura), EpsonFPHostControl1.GetExtraField(1)]), 2);
  end;

  EpsonFPHostControl1.Free;

  if Confirmar('Deseas imprimir un COMPROBANTE DE REGALO...?') then
    IFImpresionNoVenta(uidFactura, 'REGALO');
end;

procedure TdmFiscal.IFCancelaImpresionReporteFiscal(tipoAnulacion: Integer);
var
  comando, extension: string;
  Enviar, Envio, RecargoDet: boolean;
  i: Integer;
begin
  configuracion();

  EpsonFPHostControl1 := TEpsonFPHostControl.Create(nil);

  CerrarCOM1;
  AbrirCOM1(COMPort);

  EpsonFPHostControl1.Purge;

  try
    case tipoAnulacion of
      0:
        begin
          comando := CHR(10) + CHR(7);
          extension := CHR(0) + CHR(0);
          Enviar := EpsonFPHostControl1.AddDataField(comando);
          Enviar := EpsonFPHostControl1.AddDataField(extension);
          Envio := EpsonFPHostControl1.SendCommand;
        end;
      1:
        begin
          comando := CHR(9) + CHR(34);
          extension := CHR(0) + CHR(0);
          Enviar := EpsonFPHostControl1.AddDataField(comando);
          Enviar := EpsonFPHostControl1.AddDataField(extension);
          Envio := EpsonFPHostControl1.SendCommand;
        end;
    end;

    if EpsonFPHostControl1.ReturnCode <> 0 then
      msn_error_ifiscal('ERROR', EpsonFPHostControl1.ReturnCode);
  finally
    EpsonFPHostControl1.Free;
  end;
end;

procedure TdmFiscal.IFImpresionReporteFiscal(Reporte: Integer; desde, hasta: string; fdesde, fhasta: TDateTime);
var
  comando, extension: string;
  Enviar, Envio, RecargoDet: boolean;
  i: Integer;
begin
  configuracion();
  
  EpsonFPHostControl1 := TEpsonFPHostControl.Create(nil);

  CerrarCOM1;
  AbrirCOM1(COMPort);

  EpsonFPHostControl1.Purge;

  try
    Screen.Cursor := crSQLWait;

    case Reporte of
      0:
        begin
          comando := CHR(8) + CHR(2);
          extension := CHR(0) + CHR(1);
          Enviar := EpsonFPHostControl1.AddDataField(comando);
          Enviar := EpsonFPHostControl1.AddDataField(extension);
          Envio := EpsonFPHostControl1.SendCommand;
        end;
      1:
        begin
          comando := CHR(8) + CHR(5);
          extension := CHR(0) + CHR(0);
          Enviar := EpsonFPHostControl1.AddDataField(comando);
          Enviar := EpsonFPHostControl1.AddDataField(extension);
          Envio := EpsonFPHostControl1.SendCommand;
        end;
      2:
        begin
          comando := CHR(8) + CHR(1);
          extension := CHR(0) + CHR(1);
          Enviar := EpsonFPHostControl1.AddDataField(comando);
          Enviar := EpsonFPHostControl1.AddDataField(extension);
          Envio := EpsonFPHostControl1.SendCommand;
        end;
      3:
        begin
          // Iniciar informe de cierres Z por rango de fechas (09 01)
          comando := CHR(9) + CHR(1);
          extension := CHR(0) + CHR(1);
          Enviar := EpsonFPHostControl1.AddDataField(comando);
          Enviar := EpsonFPHostControl1.AddDataField(extension);
          Enviar := EpsonFPHostControl1.AddDataField(FormatDateTime('ddmmyyyy', fdesde));
          Enviar := EpsonFPHostControl1.AddDataField(FormatDateTime('ddmmyyyy', fhasta));
          Envio := EpsonFPHostControl1.SendCommand;
          Esperar;

          for i := 0 to 6 do
          begin
            // Obtener siguientes datos de informe de cierres Z (09 20)
            comando := CHR(9) + CHR(32);
            extension := CHR(0) + CHR(0);
            Enviar := EpsonFPHostControl1.AddDataField(comando);
            Enviar := EpsonFPHostControl1.AddDataField(extension);
            Envio := EpsonFPHostControl1.SendCommand;
            Esperar;
          end;

          // Finalizar informe de cierres Z (09 21)
          comando := CHR(9) + CHR(33);
          extension := CHR(0) + CHR(0);
          Enviar := EpsonFPHostControl1.AddDataField(comando);
          Enviar := EpsonFPHostControl1.AddDataField(extension);
          Envio := EpsonFPHostControl1.SendCommand;
          Esperar;
        end;
      4:
        begin
          // Iniciar informe de cierres Z por rango de cierres Z (09 02)
          comando := CHR(9) + CHR(2);
          extension := CHR(0) + CHR(1);
          Enviar := EpsonFPHostControl1.AddDataField(comando);
          Enviar := EpsonFPHostControl1.AddDataField(extension);
          Enviar := EpsonFPHostControl1.AddDataField(desde);
          Enviar := EpsonFPHostControl1.AddDataField(hasta);
          Envio := EpsonFPHostControl1.SendCommand;
          Esperar;

          for i := 0 to 6 do
          begin
            // Obtener siguientes datos de informe de cierres Z (09 20)
            comando := CHR(9) + CHR(32);
            extension := CHR(0) + CHR(0);
            Enviar := EpsonFPHostControl1.AddDataField(comando);
            Enviar := EpsonFPHostControl1.AddDataField(extension);
            Envio := EpsonFPHostControl1.SendCommand;
            Esperar;
          end;

          // Finalizar informe de cierres Z (09 21)
          comando := CHR(9) + CHR(33);
          extension := CHR(0) + CHR(0);
          Enviar := EpsonFPHostControl1.AddDataField(comando);
          Enviar := EpsonFPHostControl1.AddDataField(extension);
          Envio := EpsonFPHostControl1.SendCommand;
          Esperar;
        end;
      5:
        begin
          comando := CHR(8) + CHR(5);
          extension := CHR(0) + CHR(0);
          Enviar := EpsonFPHostControl1.AddDataField(comando);
          Enviar := EpsonFPHostControl1.AddDataField(extension);
          Envio := EpsonFPHostControl1.SendCommand;
        end;
    end;

    if EpsonFPHostControl1.ReturnCode <> 0 then
      msn_error_ifiscal('ERROR', EpsonFPHostControl1.ReturnCode);
  finally
    Screen.Cursor := crDefault;
    EpsonFPHostControl1.Free;
  end;
end;

procedure TdmFiscal.IFImpresionNoVenta(uidFactura: TGUID; tipoDoc: string);
var
  comando, extension, cantidad, precio, Subtotal: string;
  Enviar, Envio: boolean;
  i, a: Integer;
  ds: TDataSet;
  LS: TStringList;
begin
  configuracion();
  
  EpsonFPHostControl1 := TEpsonFPHostControl.Create(nil);

  ds := GetDataSet('RPTDocumentoNoVentaFiscal', VarArrayOf([GUIDToString(uidFactura), tipoDoc]));

  CerrarCOM1;
  AbrirCOM1(COMPort);

  EpsonFPHostControl1.Purge;

  case TipoFuente of // Modulo.Qry_Parametros_ImpresoraFiscalpi_tipo_fuente.AsInteger of
    0: Fuente := '00'; // Utilizar fuente predeterminada.
    1: Fuente := '01'; // Utilizar fuente tipo A.
    2: Fuente := '10'; // Utilizar fuente tipo B.
  end;

  for i := 0 to CantCopiaNoVenta do
  begin
    try
      comando := CHR(14) + CHR(1);
      extension := CHR(0) + CHR(0); //CHR(BinADec('0000000000' + Fuente + '000'));
      Enviar := EpsonFPHostControl1.AddDataField(comando);
      Enviar := EpsonFPHostControl1.AddDataField(extension);
      Envio := EpsonFPHostControl1.SendCommand;

      if EpsonFPHostControl1.ReturnCode <> 0 then
        msn_error_ifiscal('ERROR ABRIENDO', EpsonFPHostControl1.ReturnCode);
    finally
      Esperar;
    end;

    ds.First;
    while not ds.Eof do
    begin

      if not (ds.FieldByName('Datos').IsNull) then
      begin
        LS := TStringList.Create;

        agregaLineaNoVenta(LS, ds.FieldByName('Datos').AsString, 100, 56);

        for a := 0 to (LS.Count - 1) do
        begin

          //ShowMessage(LS.Strings[a]);

          try
            comando := CHR(14) + CHR(2);
            extension := CHR(0) + CHR(0);
            Enviar := EpsonFPHostControl1.AddDataField(comando);
            Enviar := EpsonFPHostControl1.AddDataField(extension);
            Enviar := EpsonFPHostControl1.AddDataField(LS.Strings[a]);
            Envio := EpsonFPHostControl1.SendCommand;

            if EpsonFPHostControl1.ReturnCode <> 0 then
              msn_error_ifiscal('ERROR LINEA', EpsonFPHostControl1.ReturnCode);
          finally
            Esperar;
          end;
        end;
      end;

      {try
        comando := CHR(14) + CHR(2);
        extension := CHR(0) + CHR(0);
        Enviar := EpsonFPHostControl1.AddDataField(comando);
        Enviar := EpsonFPHostControl1.AddDataField(extension);
        Enviar := EpsonFPHostControl1.AddDataField(ds.FieldByName('Datos').AsString); // nombre de la empresa
        Envio := EpsonFPHostControl1.SendCommand;

        if EpsonFPHostControl1.ReturnCode <> 0 then
          msn_error_ifiscal('ERROR EMPRESA', EpsonFPHostControl1.ReturnCode);
      finally
        Esperar;
      end; }

      ds.Next;
    end;

    try
      comando := CHR(14) + CHR(6);
      extension := CHR(0) + CHR(0);
      Enviar := EpsonFPHostControl1.AddDataField(comando);
      Enviar := EpsonFPHostControl1.AddDataField(extension);
      Envio := EpsonFPHostControl1.SendCommand;

      if EpsonFPHostControl1.ReturnCode <> 0 then
        msn_error_ifiscal('ERROR CIERRE', EpsonFPHostControl1.ReturnCode);
    finally
      Esperar;
    end;

    try
      comando := CHR(7) + CHR(1);
      extension := CHR(0) + CHR(0);
      Enviar := EpsonFPHostControl1.AddDataField(comando);
      Enviar := EpsonFPHostControl1.AddDataField(extension);
      Enviar := EpsonFPHostControl1.AddDataField('2'); // CANTIDAD DE LINEAS
      Envio := EpsonFPHostControl1.SendCommand;

      if EpsonFPHostControl1.ReturnCode <> 0 then
        msn_error_ifiscal('ERROR AVANCE PAPEL', EpsonFPHostControl1.ReturnCode);
    finally
      Esperar;
    end;

    try
      comando := CHR(7) + CHR(2);
      extension := CHR(0) + CHR(0);
      Enviar := EpsonFPHostControl1.AddDataField(comando);
      Enviar := EpsonFPHostControl1.AddDataField(extension);
      Envio := EpsonFPHostControl1.SendCommand;

      if EpsonFPHostControl1.ReturnCode <> 0 then
        msn_error_ifiscal('ERROR CORTA PAPEL', EpsonFPHostControl1.ReturnCode);
    finally
      Esperar;
    end;
  end;

  EpsonFPHostControl1.Free;
end;

procedure TdmFiscal.IFImpresionFiscalDevolucion(uidDevolucion: TGUID);
var
  comando, extension: string;
  Enviar, Envio: Boolean;
  ds: TDataSet;
begin
  configuracion();
  
  EpsonFPHostControl1 := TEpsonFPHostControl.Create(nil);

  ds := GetDataSet('RPTDevolucionFiscal', GUIDToString(uidDevolucion));

  CerrarCOM1;
  AbrirCOM1(COMPort);

  EpsonFPHostControl1.Purge;

  case CantCopiaFactura of
    0: Copias := '000'; // No realizar copias.
    1: Copias := '001'; // Realizar una copia.
    2: Copias := '010'; // Realizar dos copias.
    3: Copias := '011'; // Realizar tres copias.
    4: Copias := '100'; // Realizar cuatro copias.
    5: Copias := '101'; // Realizar cinco copias.
    6: Copias := '110'; // Realizar seis copias.
    7: Copias := '111'; // Realizar siete copias.
  end;

  case TipoFuente of
    0: Fuente := '00'; // Utilizar fuente predeterminada.
    1: Fuente := '01'; // Utilizar fuente tipo A.
    2: Fuente := '10'; // Utilizar fuente tipo B.
  end;

  if Copy(ds.FieldByName('NCFFactura').AsString, 10, 2) = '02' then // consumidor final --tipo de NCF que tiene la Factura
    tipoNCF := '010'
  else
  begin
    if Copy(ds.FieldByName('NCFFactura').AsString, 10, 2) = '14' then //si es especial
      tipoNCF := '111' //'110'
    else
      tipoNCF := '011'; //si es credito fiscal
  end;

  try
    comando := CHR(10) + CHR(1);
    extension := CHR(0) + CHR(BinADec('0000000' + Copias + Fuente + '0' + tipoNCF));

    Enviar := EpsonFPHostControl1.AddDataField(comando);
    Enviar := EpsonFPHostControl1.AddDataField(extension);
    Enviar := EpsonFPHostControl1.AddDataField('0');
    Enviar := EpsonFPHostControl1.AddDataField('0');
    Enviar := EpsonFPHostControl1.AddDataField('01'); // sucursal
    Enviar := EpsonFPHostControl1.AddDataField('01'); // caja
    Enviar := EpsonFPHostControl1.AddDataField(ds.FieldByName('NCFDevolucion').AsString); // ncf
    Enviar := EpsonFPHostControl1.AddDataField(ds.FieldByName('Cliente').AsString); // cliente
    Enviar := EpsonFPHostControl1.AddDataField(ds.FieldByName('ClienteRNC').AsString); // rnc
    Enviar := EpsonFPHostControl1.AddDataField(ds.FieldByName('NCFFactura').AsString);
    Envio := EpsonFPHostControl1.SendCommand;

    if EpsonFPHostControl1.ReturnCode <> 0 then
      msn_error_ifiscal('ERROR CABEZERA', EpsonFPHostControl1.ReturnCode);
  finally
    Esperar;
  end;

  with ds do
  begin
    First;
    while not Eof do
    begin
      try
        comando := CHR(10) + CHR(2);
        extension := CHR(0) + CHR(00);

        Enviar := EpsonFPHostControl1.AddDataField(comando);
        Enviar := EpsonFPHostControl1.AddDataField(extension);
        Enviar := EpsonFPHostControl1.AddDataField('');
        Enviar := EpsonFPHostControl1.AddDataField('');
        Enviar := EpsonFPHostControl1.AddDataField('');
        Enviar := EpsonFPHostControl1.AddDataField('');
        Enviar := EpsonFPHostControl1.AddDataField('');
        Enviar := EpsonFPHostControl1.AddDataField('');
        Enviar := EpsonFPHostControl1.AddDataField('');
        Enviar := EpsonFPHostControl1.AddDataField('');
        Enviar := EpsonFPHostControl1.AddDataField('');
        Enviar := EpsonFPHostControl1.AddDataField(ds.FieldByName('DetProducto').AsString);
        Enviar := EpsonFPHostControl1.AddDataField(StringReplace(FormatFloat('00000.000', ds.FieldByName('DetCantidad').asfloat), '.', '', [rfReplaceAll, rfIgnoreCase]));
        Enviar := EpsonFPHostControl1.AddDataField(StringReplace(FormatFloat('0000000.00', ds.FieldByName('DetPrecio').asfloat), '.', '', [rfReplaceAll, rfIgnoreCase]));
        Enviar := EpsonFPHostControl1.AddDataField(StringReplace(FormatFloat('00.00', ds.FieldByName('tasaImpuesto').asfloat), '.', '', [rfReplaceAll, rfIgnoreCase]));

        Envio := EpsonFPHostControl1.SendCommand;

        if EpsonFPHostControl1.ReturnCode <> 0 then
          msn_error_ifiscal('ERROR ITEMS', EpsonFPHostControl1.ReturnCode);
      finally
        Esperar;
      end;

      if (ds.FieldByName('DetDescuento').AsFloat > 0) then
      begin
        try
          comando := CHR(10) + CHR(2);
          extension := CHR(0) + CHR(10);

          Enviar := EpsonFPHostControl1.AddDataField(comando);
          Enviar := EpsonFPHostControl1.AddDataField(extension);
          Enviar := EpsonFPHostControl1.AddDataField('');
          Enviar := EpsonFPHostControl1.AddDataField('');
          Enviar := EpsonFPHostControl1.AddDataField('');
          Enviar := EpsonFPHostControl1.AddDataField('');
          Enviar := EpsonFPHostControl1.AddDataField('');
          Enviar := EpsonFPHostControl1.AddDataField('');
          Enviar := EpsonFPHostControl1.AddDataField('');
          Enviar := EpsonFPHostControl1.AddDataField('');
          Enviar := EpsonFPHostControl1.AddDataField('');
          Enviar := EpsonFPHostControl1.AddDataField(ds.FieldByName('DetProducto').AsString);
          Enviar := EpsonFPHostControl1.AddDataField(StringReplace(FormatFloat('00000.000', 1), '.', '', [rfReplaceAll, rfIgnoreCase]));
          Enviar := EpsonFPHostControl1.AddDataField(StringReplace(FormatFloat('0000000.00', ds.FieldByName('DetDescuento').AsFloat), '.', '', [rfReplaceAll, rfIgnoreCase]));
          Enviar := EpsonFPHostControl1.AddDataField(StringReplace(FormatFloat('00.00', ds.FieldByName('tasaImpuesto').AsFloat), '.', '', [rfReplaceAll, rfIgnoreCase]));
          Envio := EpsonFPHostControl1.SendCommand;

          if EpsonFPHostControl1.ReturnCode <> 0 then
            msn_error_ifiscal('ERROR DESCUENTO', EpsonFPHostControl1.ReturnCode);
        finally
          Esperar;
        end;
      end;

      if (ds.FieldByName('DetRecargo').AsFloat > 0) then
      begin
        try
          comando := CHR(10) + CHR(2);
          extension := CHR(0) + CHR(11);

          Enviar := EpsonFPHostControl1.AddDataField(comando);
          Enviar := EpsonFPHostControl1.AddDataField(extension);
          Enviar := EpsonFPHostControl1.AddDataField('');
          Enviar := EpsonFPHostControl1.AddDataField('');
          Enviar := EpsonFPHostControl1.AddDataField('');
          Enviar := EpsonFPHostControl1.AddDataField('');
          Enviar := EpsonFPHostControl1.AddDataField('');
          Enviar := EpsonFPHostControl1.AddDataField('');
          Enviar := EpsonFPHostControl1.AddDataField('');
          Enviar := EpsonFPHostControl1.AddDataField('');
          Enviar := EpsonFPHostControl1.AddDataField('');
          Enviar := EpsonFPHostControl1.AddDataField(ds.FieldByName('DetRecargo').AsString);
          Enviar := EpsonFPHostControl1.AddDataField(StringReplace(FormatFloat('00000.000', 1), '.', '', [rfReplaceAll, rfIgnoreCase]));
          Enviar := EpsonFPHostControl1.AddDataField(StringReplace(FormatFloat('0000000.00', ds.FieldByName('DetRecargo').AsFloat), '.', '', [rfReplaceAll, rfIgnoreCase]));
          Enviar := EpsonFPHostControl1.AddDataField(StringReplace(FormatFloat('00.00', ds.FieldByName('tasaImpuesto').AsFloat), '.', '', [rfReplaceAll, rfIgnoreCase]));
          Envio := EpsonFPHostControl1.SendCommand;

          if EpsonFPHostControl1.ReturnCode <> 0 then
            msn_error_ifiscal('ERROR RECARGO', EpsonFPHostControl1.ReturnCode);
        finally
          Esperar;
        end;
      end;

      Next;
    end;
  end;

  try
    comando := CHR(10) + CHR(3);
    extension := CHR(0) + CHR(00);
    Enviar := EpsonFPHostControl1.AddDataField(comando);
    Enviar := EpsonFPHostControl1.AddDataField(extension);
    Envio := EpsonFPHostControl1.SendCommand;

    if EpsonFPHostControl1.ReturnCode <> 0 then
      msn_error_ifiscal('ERROR SUBTOTAL', EpsonFPHostControl1.ReturnCode);
  finally
    Esperar;
  end;

  if ds.FieldByName('DescuentoTotal').asfloat > 0 then
  begin
    try
      comando := CHR(10) + CHR(4);
      extension := CHR(0) + CHR(00);
      Enviar := EpsonFPHostControl1.AddDataField(comando);
      Enviar := EpsonFPHostControl1.AddDataField(extension);
      Enviar := EpsonFPHostControl1.AddDataField('Descuento');
      Enviar := EpsonFPHostControl1.AddDataField(StringReplace(FormatFloat('000000000.00', ds.FieldByName('DescuentoTotal').asfloat), '.', '', [rfReplaceAll, rfIgnoreCase]));
      Envio := EpsonFPHostControl1.SendCommand;

      if EpsonFPHostControl1.ReturnCode <> 0 then
        msn_error_ifiscal('ERROR DESCUENTO', EpsonFPHostControl1.ReturnCode);
    finally
      Esperar;
    end;
  end;

  if ds.FieldByName('RecargoTotal').asfloat > 0 then
  begin
    try
      comando := CHR(10) + CHR(4);
      extension := CHR(0) + CHR(01);
      Enviar := EpsonFPHostControl1.AddDataField(comando);
      Enviar := EpsonFPHostControl1.AddDataField(extension);
      Enviar := EpsonFPHostControl1.AddDataField('Recargo');
      Enviar := EpsonFPHostControl1.AddDataField(StringReplace(FormatFloat('000000000.00', ds.FieldByName('RecargoTotal').asfloat), '.', '', [rfReplaceAll, rfIgnoreCase]));
      Envio := EpsonFPHostControl1.SendCommand;

      if EpsonFPHostControl1.ReturnCode <> 0 then
        msn_error_ifiscal('ERROR RECARGO', EpsonFPHostControl1.ReturnCode);
    finally
      Esperar;
    end;
  end;

  {try
    comando := CHR(10) + CHR(18);
    extension := CHR(0) + CHR(00);
    Enviar := EpsonFPHostControl1.AddDataField(comando);
    Enviar := EpsonFPHostControl1.AddDataField(extension);
    Enviar := EpsonFPHostControl1.AddDataField('NO. Devolución : ' + ds.FieldByName('Devolucion').AsString);
    Envio := EpsonFPHostControl1.SendCommand;

    if EpsonFPHostControl1.ReturnCode <> 0 then
      msn_error_ifiscal('ERROR COMENTARIO 1', EpsonFPHostControl1.ReturnCode);
  finally
    Esperar;
  end;}

  {try
    comando := CHR(10) + CHR(18);
    extension := CHR(0) + CHR(00);
    Enviar := EpsonFPHostControl1.AddDataField(comando);
    Enviar := EpsonFPHostControl1.AddDataField(extension);
    Enviar := EpsonFPHostControl1.AddDataField(ds.FieldByName('Concepto').AsString);
    Envio := EpsonFPHostControl1.SendCommand;

    if EpsonFPHostControl1.ReturnCode <> 0 then
      msn_error_ifiscal('ERROR COMENTARIO 2', EpsonFPHostControl1.ReturnCode);
  finally
    Esperar;
  end;}

  try
    comando := CHR(10) + CHR(6);
    extension := CHR(0) + CHR(01);
    Enviar := EpsonFPHostControl1.AddDataField(comando);
    Enviar := EpsonFPHostControl1.AddDataField(extension);
    Enviar := EpsonFPHostControl1.AddDataField('0');
    Enviar := EpsonFPHostControl1.AddDataField('');
    Enviar := EpsonFPHostControl1.AddDataField('0');
    Enviar := EpsonFPHostControl1.AddDataField('');
    Enviar := EpsonFPHostControl1.AddDataField('0');
    Enviar := EpsonFPHostControl1.AddDataField('');
    Envio := EpsonFPHostControl1.SendCommand;

    if EpsonFPHostControl1.ReturnCode <> 0 then
      msn_error_ifiscal('ERROR CIERRE', EpsonFPHostControl1.ReturnCode);
  finally
    Esperar;

    RunSproc('actualizaNIF_Devolucion', VarArrayOf([GUIDToString(uidDevolucion), EpsonFPHostControl1.GetExtraField(1)]), 2);
  end;

  EpsonFPHostControl1.Free;
end;

function TdmFiscal.TextoDerecha(S: string; Caracter: Char; n: Integer): string;
begin
  Result := StringOfChar(Caracter, n - Length(S)) + S;
end;

function TdmFiscal.TextoIzquierda(S: string; Caracter: Char; n: Integer): string;
begin
  Result := S + StringOfChar(Caracter, n - Length(S));
end;

procedure TdmFiscal.configuracion();
begin
  COMPort := dm.GetPCSetting('IF_PUERTO_COM#');

  TipoFuente := dm.GetDefault('IF_TIPOFUENTE');

  CantCopiaFactura := dm.GetDefault('IF_COPIAFACTURA');
  CantCopiaDevolucion := dm.GetDefault('IF_COPIADEVOLUCI');
  CantCopiaNoVenta := dm.GetDefault('IF_COPIANOVENTA');
end;

end.

