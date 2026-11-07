unit uImpresoraFiscal;

interface

uses
  SysUtils, Dialogs, Variants, Forms, Classes, EpsonFPHostControlX_TLB, DB,
  ADODB;

var Copias, Fuente, tipoNCF: string;
  EpsonFPHostControl1: TEpsonFPHostControl;
  GenSp             : TADODataSet;
  COMPort : String;

procedure AbrirCOM1(puertoCOM: String);
procedure CerrarCOM1;
procedure Esperar;
procedure ValidaImpresoraFiscal;
procedure msn_error_ifiscal(msn: string; error: Integer);
function BaseNADec(num: string; n: byte): Integer;
function BinADec(num: string): Integer;
function GetDataSet(const cmd: string; params: variant): TDataSet;
function TextoDerecha(S: string; Caracter: Char; n: Integer): string;
function TextoIzquierda(S: string; Caracter: Char; n: Integer): string;
procedure IFImpresionFiscalFactura(uidFactura: TGUID; CantCopia, TipoFuente: Integer);
procedure IFImpresionNoVentaFactura(uidFactura: TGUID; CantCopia, TipoFuente: Integer);
procedure IFCancelaImpresionReporteFiscal(tipoAnulacion: Integer);
procedure IFImpresionReporteFiscal(Reporte: Integer; desde, hasta: string; fdesde, fhasta: TDateTime);
procedure IFImpresionNoVenta(uidFactura: TGUID; CantCopia, TipoFuente: Integer);
procedure IFImpresionFiscalDevolucion(uidDevolucion: TGUID; CantCopia, TipoFuente: Integer);

implementation

uses Udata;

function GetDataSet(const cmd: string; params: variant): TDataSet;
var
  i                 : Integer;
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

function BaseNADec(num: string; n: byte): Integer;
var
  i                 : Integer;
  aux               : string;
begin
  aux := '0123456789ABCDEFGHIO';
  Result := 0;
  for i := 1 to length(num) do
    Result := Result * n + pos(upcase(num[i]), aux) - 1;
end;

function BinADec(num: string): Integer;
begin
  Result := BaseNADec(num, 2);
end;

procedure msn_error_ifiscal(msn: string; error: Integer);
begin
  MessageDlg(msn + ' ' + IntToStr(error), mtError, [], 0);
end;

procedure ValidaImpresoraFiscal;
var
  comando, extension: string;
  Enviar, Envio     : boolean;
  COM               : Integer;
begin
  CerrarCOM1;

  AbrirCOM1(COMPort);

  // esto para saber si paso de un dia a otro y hay que realizar un z
  try
    comando := CHR(8) + CHR(10);        // #08#10
    extension := CHR(0) + CHR(0);
    Enviar := EpsonFPHostControl1.AddDataField(comando);
    Enviar := EpsonFPHostControl1.AddDataField(extension);
    Envio := EpsonFPHostControl1.SendCommand;

    // sHOWMessage(DiferenciaFechas('H',StrToDateTime(EpsonFPHostControl1.GetExtraField(1)),Now));
    sHOWMessage(EpsonFPHostControl1.GetExtraField(1));
    sHOWMessage(EpsonFPHostControl1.GetExtraField(2));

    if EpsonFPHostControl1.ReturnCode <> 0 then
      msn_error_ifiscal('ERROR IFISCAL', EpsonFPHostControl1.ReturnCode);
  finally
    Esperar;
  end;

  CerrarCOM1;
end;

procedure Esperar;
begin
  while EpsonFPHostControl1.State = EFP_S_Busy do
  begin
    Application.ProcessMessages;
  end;
end;

procedure AbrirCOM1(puertoCOM: string);
var
  apertura          : boolean;
  COM               : Integer;
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

procedure CerrarCOM1;
begin
  EpsonFPHostControl1.ClosePort;
end;

procedure IFImpresionFiscalFactura(uidFactura: TGUID; CantCopia, TipoFuente: Integer);
var
  comando, extension, cadena: string;
  Enviar, Envio, RecargoDet: boolean;
  i, a              : Integer;
  LS                : TStringList;
  ds                : TDataSet;
begin
  EpsonFPHostControl1 := TEpsonFPHostControl.Create(nil);

  ds := GetDataSet('RPTFacturaFiscal', GUIDToString(uidFactura));

  CerrarCOM1;
  AbrirCOM1(COMPort);

  EpsonFPHostControl1.Purge;            // limpia la impresora

  case CantCopia of                     // cantidad de copias
    0: Copias := '000';                 // No realizar copias.
    1: Copias := '001';                 // Realizar una copia.
    2: Copias := '010';                 // Realizar dos copias.
    3: Copias := '011';                 // Realizar tres copias.
    4: Copias := '100';                 // Realizar cuatro copias.
    5: Copias := '101';                 // Realizar cinco copias.
    6: Copias := '110';                 // Realizar seis copias.
    7: Copias := '111';                 // Realizar siete copias.
  end;

  case TipoFuente of                    // tipo de fuente
    0: Fuente := '00';                  // Utilizar fuente predeterminada.
    1: Fuente := '01';                  // Utilizar fuente tipo A.
    2: Fuente := '10';                  // Utilizar fuente tipo B.
  end;

  case StrToInt(Copy(ds.FieldByName('CompFiscal').AsString, 10, 2)) of // Tipo NCF, estraerlo desde la factura
    1: tipoNCF := '001';                // Factura con derecho a crédito fiscal.
    2: tipoNCF := '000';                // Factura a consumidor final.
    14: tipoNCF := '101';               // Factura con derecho a crédito fiscal con exoneración de ITBIS.
    15: tipoNCF := '001';               // Factura con derecho a crédito fiscal.
  end;

  try
    comando := CHR(10) + CHR(1);        // abrimos el comprobante
    extension := CHR(0) + CHR(BinADec('0000000' + Copias + Fuente + '0' + tipoNCF));

    Enviar := EpsonFPHostControl1.AddDataField(comando);
    Enviar := EpsonFPHostControl1.AddDataField(extension);
    Enviar := EpsonFPHostControl1.AddDataField('0');
    Enviar := EpsonFPHostControl1.AddDataField('0');
    Enviar := EpsonFPHostControl1.AddDataField('01'); // sucursal
    Enviar := EpsonFPHostControl1.AddDataField('01'); // caja
    Enviar := EpsonFPHostControl1.AddDataField(ds.FieldByName('CompFiscal').AsString); // ncf
    Enviar := EpsonFPHostControl1.AddDataField(ds.FieldByName('Cliente').AsString); // cliente
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
        LS := TStringList.Create;

        // if Length(ds.FieldByName('Nota').AsString) = 0 then
        for a := 0 to 8 do
          LS.Add('');
        {
          for a := 0 to mm_nota_articulo.Lines.Count do
          begin
          cadena := '';
          for i := 1 to Length(mm_nota_articulo.Lines[a]) do
          begin
          cadena := cadena + mm_nota_articulo.Lines[a][i];

          if ((Length(cadena) = 8) or (i = Length(mm_nota_articulo.Lines[a]))) then
          LS.Add(cadena);

          if Length(cadena) = 8 then
          cadena := '';
          end;
          end;

          if ((Length(cd_detalleDt_Nota.AsString) > 0) and (LS.Count <= 8)) then
          for a := 0 to (8 - LS.Count) do
          LS.Add('');
        }
        comando := CHR(10) + CHR(2);
        extension := CHR(0) + CHR(00);

        Enviar := EpsonFPHostControl1.AddDataField(comando);
        Enviar := EpsonFPHostControl1.AddDataField(extension);
        Enviar := EpsonFPHostControl1.AddDataField(LS[0]); // solo 8 caracteres
        Enviar := EpsonFPHostControl1.AddDataField(LS[1]);
        Enviar := EpsonFPHostControl1.AddDataField(LS[2]);
        Enviar := EpsonFPHostControl1.AddDataField(LS[3]);
        Enviar := EpsonFPHostControl1.AddDataField(LS[4]);
        Enviar := EpsonFPHostControl1.AddDataField(LS[5]);
        Enviar := EpsonFPHostControl1.AddDataField(LS[6]);
        Enviar := EpsonFPHostControl1.AddDataField(LS[7]);
        Enviar := EpsonFPHostControl1.AddDataField(LS[8]);
        Enviar := EpsonFPHostControl1.AddDataField(ds.FieldByName('DetProducto').AsString);
        Enviar := EpsonFPHostControl1.AddDataField(StringReplace(FormatFloat('00000.000', ds.FieldByName('DetCantidad').AsFloat), '.', '', [rfReplaceAll, rfIgnoreCase]));
        Enviar := EpsonFPHostControl1.AddDataField(StringReplace(FormatFloat('0000000.00', ds.FieldByName('DetPrecio').AsFloat), '.', '', [rfReplaceAll, rfIgnoreCase]));
        Enviar := EpsonFPHostControl1.AddDataField(StringReplace(FormatFloat('00.00', ds.FieldByName('tasaImpuesto').AsFloat), '.', '', [rfReplaceAll, rfIgnoreCase]));
        Envio := EpsonFPHostControl1.SendCommand;

        if EpsonFPHostControl1.ReturnCode <> 0 then
          msn_error_ifiscal('ERROR ITEMS', EpsonFPHostControl1.ReturnCode);
      finally
        LS.Free;
        Esperar;
      end;

      if ds.FieldByName('DetDescuento').AsFloat > 0 then
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

      if ds.FieldByName('Recargo').AsFloat > 0 then
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
          Enviar := EpsonFPHostControl1.AddDataField(StringReplace(FormatFloat('0000000.00', ds.FieldByName('RecargoDet').AsFloat), '.', '', [rfReplaceAll, rfIgnoreCase]));
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

  if ds.FieldByName('Descuento').AsFloat > 0 then
  begin
    try
      comando := CHR(10) + CHR(4);
      extension := CHR(0) + CHR(00);
      Enviar := EpsonFPHostControl1.AddDataField(comando);
      Enviar := EpsonFPHostControl1.AddDataField(extension);
      Enviar := EpsonFPHostControl1.AddDataField('Descuento');
      Enviar := EpsonFPHostControl1.AddDataField(StringReplace(FormatFloat('000000000.00', ds.FieldByName('Descuento').AsFloat), '.', '', [rfReplaceAll, rfIgnoreCase]));
      Envio := EpsonFPHostControl1.SendCommand;

      if EpsonFPHostControl1.ReturnCode <> 0 then
        msn_error_ifiscal('ERROR DESCUENTO', EpsonFPHostControl1.ReturnCode);
    finally
      Esperar;
    end;
  end;

  // if (Not(RecargoDet) and
  if (ds.FieldByName('Recargo').AsFloat > 0) then
  begin
    try
      comando := CHR(10) + CHR(4);
      extension := CHR(0) + CHR(01);
      Enviar := EpsonFPHostControl1.AddDataField(comando);
      Enviar := EpsonFPHostControl1.AddDataField(extension);
      Enviar := EpsonFPHostControl1.AddDataField('Recargo');
      Enviar := EpsonFPHostControl1.AddDataField(StringReplace(FormatFloat('000000000.00', ds.FieldByName('Recargo').AsFloat), '.', '', [rfReplaceAll, rfIgnoreCase]));
      Envio := EpsonFPHostControl1.SendCommand;

      if EpsonFPHostControl1.ReturnCode <> 0 then
        msn_error_ifiscal('ERROR RECARGO', EpsonFPHostControl1.ReturnCode);
    finally
      Esperar;
    end;
  end;

  try
    comando := CHR(10) + CHR(5);
    extension := CHR(0) + CHR(00);
    Enviar := EpsonFPHostControl1.AddDataField(comando);
    Enviar := EpsonFPHostControl1.AddDataField(extension);
    Enviar := EpsonFPHostControl1.AddDataField('1'); // forma de pago
    Enviar := EpsonFPHostControl1.AddDataField(StringReplace(FormatFloat('000000000.00', 1000.00), '.', '', [rfReplaceAll, rfIgnoreCase]));
    Enviar := EpsonFPHostControl1.AddDataField('');
    Enviar := EpsonFPHostControl1.AddDataField('');
    Enviar := EpsonFPHostControl1.AddDataField('');
    Envio := EpsonFPHostControl1.SendCommand;

    if EpsonFPHostControl1.ReturnCode <> 0 then
      msn_error_ifiscal('ERROR PAGO', EpsonFPHostControl1.ReturnCode);
  finally
    Esperar;
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

  {
  //AVANCE PAPEL
  try
    comando := CHR(7) + CHR(1);
    extension := CHR(0) + CHR(0);
    Enviar := EpsonFPHostControl1.AddDataField(comando);
    Enviar := EpsonFPHostControl1.AddDataField(extension);
    Enviar := EpsonFPHostControl1.AddDataField('1'); // CANTIDAD DE LINEAS
    Envio := EpsonFPHostControl1.SendCommand;

    if EpsonFPHostControl1.ReturnCode <> 0 then
      msn_error_ifiscal('ERROR AVANCE PAPEL', EpsonFPHostControl1.ReturnCode);
  finally
    Esperar;
  end;
   }

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

  {if not (ds.FieldByName('Nota').IsNull) then
  begin
    for i := 0 to 0 do                  // mm_comentario.Lines.Count do
    begin
      try
        comando := CHR(10) + CHR(18);
        extension := CHR(0) + CHR(00);
        Enviar := EpsonFPHostControl1.AddDataField(comando);
        Enviar := EpsonFPHostControl1.AddDataField(extension);
        // Enviar := EpsonFPHostControl1.AddDataField(Copy(mm_comentario.Lines[i], 1, 40));
        Envio := EpsonFPHostControl1.SendCommand;

        if EpsonFPHostControl1.ReturnCode <> 0 then
          msn_error_ifiscal('ERROR COMENTARIO 5', EpsonFPHostControl1.ReturnCode);
      finally
        Esperar;
      end;
    end;
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
  end;

  EpsonFPHostControl1.Free;
end;

procedure IFImpresionNoVentaFactura(uidFactura: TGUID; CantCopia, TipoFuente: Integer);
var
  comando, extension, cantidad, precio, Subtotal: string;
  Enviar, Envio     : boolean;
  i                 : Integer;
  ds                : TDataSet;
begin
  EpsonFPHostControl1 := TEpsonFPHostControl.Create(nil);

  ds := GetDataSet('RPTFacturaFiscal', GUIDToString(uidFactura));

  CerrarCOM1;
  AbrirCOM1(COMPort);

  EpsonFPHostControl1.Purge;

  case TipoFuente of                    // Modulo.Qry_Parametros_ImpresoraFiscalpi_tipo_fuente.AsInteger of
    0: Fuente := '00';                  // Utilizar fuente predeterminada.
    1: Fuente := '01';                  // Utilizar fuente tipo A.
    2: Fuente := '10';                  // Utilizar fuente tipo B.
  end;

  try
    comando := CHR(14) + CHR(1);
    extension := CHR(BinADec('0000000000' + Fuente + '000')); //#00#00
    Enviar := EpsonFPHostControl1.AddDataField(comando);
    Enviar := EpsonFPHostControl1.AddDataField(extension);
    Envio := EpsonFPHostControl1.SendCommand;

    if EpsonFPHostControl1.ReturnCode <> 0 then
      msn_error_ifiscal('ERROR ABRIENDO', EpsonFPHostControl1.ReturnCode);
  finally
    Esperar;
  end;

  try
    comando := CHR(14) + CHR(2);
    extension := CHR(0) + CHR(0);
    Enviar := EpsonFPHostControl1.AddDataField(comando);
    Enviar := EpsonFPHostControl1.AddDataField(extension);
    Enviar := EpsonFPHostControl1.AddDataField('--- REIMPRESION FACTURA (NO VENTA) ---');
    Envio := EpsonFPHostControl1.SendCommand;

    if EpsonFPHostControl1.ReturnCode <> 0 then
      msn_error_ifiscal('ERROR TITULO', EpsonFPHostControl1.ReturnCode);
  finally
    Esperar;
  end;

  try
    comando := CHR(14) + CHR(2);
    extension := CHR(0) + CHR(0);
    Enviar := EpsonFPHostControl1.AddDataField(comando);
    Enviar := EpsonFPHostControl1.AddDataField(extension);
    Enviar := EpsonFPHostControl1.AddDataField(ds.FieldByName('coCompania').AsString); // nombre de la empresa
    Envio := EpsonFPHostControl1.SendCommand;

    if EpsonFPHostControl1.ReturnCode <> 0 then
      msn_error_ifiscal('ERROR EMPRESA', EpsonFPHostControl1.ReturnCode);
  finally
    Esperar;
  end;

  try
    comando := CHR(14) + CHR(2);
    extension := CHR(0) + CHR(0);
    Enviar := EpsonFPHostControl1.AddDataField(comando);
    Enviar := EpsonFPHostControl1.AddDataField(extension);
    Enviar := EpsonFPHostControl1.AddDataField(ds.FieldByName('coRNC').AsString); // RNC EMPRESA
    Envio := EpsonFPHostControl1.SendCommand;

    if EpsonFPHostControl1.ReturnCode <> 0 then
      msn_error_ifiscal('ERROR RNC', EpsonFPHostControl1.ReturnCode);
  finally
    Esperar;
  end;

  try
    comando := CHR(14) + CHR(2);
    extension := CHR(0) + CHR(0);
    Enviar := EpsonFPHostControl1.AddDataField(comando);
    Enviar := EpsonFPHostControl1.AddDataField(extension);
    Enviar := EpsonFPHostControl1.AddDataField(ds.FieldByName('coDireccion').AsString); // DIRECCION EMPRESA
    Envio := EpsonFPHostControl1.SendCommand;

    if EpsonFPHostControl1.ReturnCode <> 0 then
      msn_error_ifiscal('ERROR DIRECCION', EpsonFPHostControl1.ReturnCode);
  finally
    Esperar;
  end;

  try
    comando := CHR(14) + CHR(2);
    extension := CHR(0) + CHR(0);
    Enviar := EpsonFPHostControl1.AddDataField(comando);
    Enviar := EpsonFPHostControl1.AddDataField(extension);
    Enviar := EpsonFPHostControl1.AddDataField(ds.FieldByName('coTelefono').AsString); // TELEFONO EMPRESA 1
    Envio := EpsonFPHostControl1.SendCommand;

    if EpsonFPHostControl1.ReturnCode <> 0 then
      msn_error_ifiscal('ERROR TELEFONO', EpsonFPHostControl1.ReturnCode);
  finally
    Esperar;
  end;

  try
    comando := CHR(14) + CHR(2);
    extension := CHR(0) + CHR(0);
    Enviar := EpsonFPHostControl1.AddDataField(comando);
    Enviar := EpsonFPHostControl1.AddDataField(extension);
    Enviar := EpsonFPHostControl1.AddDataField('--------------------------------------');
    Envio := EpsonFPHostControl1.SendCommand;

    if EpsonFPHostControl1.ReturnCode <> 0 then
      msn_error_ifiscal('ERROR RAYA 1', EpsonFPHostControl1.ReturnCode);
  finally
    Esperar;
  end;

  try
    comando := CHR(14) + CHR(2);
    extension := CHR(0) + CHR(0);
    Enviar := EpsonFPHostControl1.AddDataField(comando);
    Enviar := EpsonFPHostControl1.AddDataField(extension);
    Enviar := EpsonFPHostControl1.AddDataField('Secuencia: ' + ds.FieldByName('Factura').AsString);
    Envio := EpsonFPHostControl1.SendCommand;

    if EpsonFPHostControl1.ReturnCode <> 0 then
      msn_error_ifiscal('ERROR SECUENCIA', EpsonFPHostControl1.ReturnCode);
  finally
    Esperar;
  end;

  try
    comando := CHR(14) + CHR(2);
    extension := CHR(0) + CHR(0);
    Enviar := EpsonFPHostControl1.AddDataField(comando);
    Enviar := EpsonFPHostControl1.AddDataField(extension);
    Enviar := EpsonFPHostControl1.AddDataField('Fecha: ' + DateToStr(ds.FieldByName('Fecha').AsDateTime) + ' Hora: ' + TimeToStr(ds.FieldByName('Hora').AsDateTime));
    Envio := EpsonFPHostControl1.SendCommand;

    if EpsonFPHostControl1.ReturnCode <> 0 then
      msn_error_ifiscal('ERROR FECHA Y HORA', EpsonFPHostControl1.ReturnCode);
  finally
    Esperar;
  end;

  try
    comando := CHR(14) + CHR(2);
    extension := CHR(0) + CHR(0);
    Enviar := EpsonFPHostControl1.AddDataField(comando);
    Enviar := EpsonFPHostControl1.AddDataField(extension);
    Enviar := EpsonFPHostControl1.AddDataField('Orden: ' + ds.FieldByName('Factura').AsString);
    Envio := EpsonFPHostControl1.SendCommand;

    if EpsonFPHostControl1.ReturnCode <> 0 then
      msn_error_ifiscal('ERROR PEDIDO', EpsonFPHostControl1.ReturnCode);
  finally
    Esperar;
  end;

  try
    comando := CHR(14) + CHR(2);
    extension := CHR(0) + CHR(0);
    Enviar := EpsonFPHostControl1.AddDataField(comando);
    Enviar := EpsonFPHostControl1.AddDataField(extension);
    Enviar := EpsonFPHostControl1.AddDataField('NCF: ' + ds.FieldByName('compFiscal').AsString);
    Envio := EpsonFPHostControl1.SendCommand;

    if EpsonFPHostControl1.ReturnCode <> 0 then
      msn_error_ifiscal('ERROR NCF', EpsonFPHostControl1.ReturnCode);
  finally
    Esperar;
  end;

  try
    comando := CHR(14) + CHR(2);
    extension := CHR(0) + CHR(0);
    Enviar := EpsonFPHostControl1.AddDataField(comando);
    Enviar := EpsonFPHostControl1.AddDataField(extension);
    Enviar := EpsonFPHostControl1.AddDataField('--------------------------------------');
    Envio := EpsonFPHostControl1.SendCommand;

    if EpsonFPHostControl1.ReturnCode <> 0 then
      msn_error_ifiscal('ERROR RAYA 2', EpsonFPHostControl1.ReturnCode);
  finally
    Esperar;
  end;

  with ds do
  begin
    First;
    while not Eof do
    begin
      cantidad := FormatFloat('###,###,##0.00', ds.FieldByName('DetCantidad').AsFloat);
      precio := FormatFloat('###,###,###0.00', ds.FieldByName('DetPrecio').AsFloat);
      Subtotal := FormatFloat('###,###,###0.00', (ds.FieldByName('DetCantidad').AsFloat * ds.FieldByName('DetPrecio').AsFloat));

      try
        comando := CHR(14) + CHR(2);
        extension := CHR(0) + CHR(00);
        Enviar := EpsonFPHostControl1.AddDataField(comando);
        Enviar := EpsonFPHostControl1.AddDataField(extension);
        Enviar := EpsonFPHostControl1.AddDataField(TextoIzquierda(cantidad, ' ', 10) + TextoIzquierda(Copy(Trim(ds.FieldByName('DetProducto').AsString), 1, 30), ' ', 20) + TextoDerecha(precio, ' ', 10));
        Envio := EpsonFPHostControl1.SendCommand;

        if EpsonFPHostControl1.ReturnCode <> 0 then
          msn_error_ifiscal('ERROR ITEMS', EpsonFPHostControl1.ReturnCode);
      finally
        Esperar;
      end;

      Next;
    end;
  end;

  try
    comando := CHR(14) + CHR(2);
    extension := CHR(0) + CHR(0);
    Enviar := EpsonFPHostControl1.AddDataField(comando);
    Enviar := EpsonFPHostControl1.AddDataField(extension);
    Enviar := EpsonFPHostControl1.AddDataField('--------------------------------------');
    Envio := EpsonFPHostControl1.SendCommand;

    if EpsonFPHostControl1.ReturnCode <> 0 then
      msn_error_ifiscal('ERROR RAYA 3', EpsonFPHostControl1.ReturnCode);
  finally
    Esperar;
  end;

  try
    comando := CHR(14) + CHR(2);
    extension := CHR(0) + CHR(00);
    Enviar := EpsonFPHostControl1.AddDataField(comando);
    Enviar := EpsonFPHostControl1.AddDataField(extension);
    Enviar := EpsonFPHostControl1.AddDataField('SubTotal' + TextoDerecha(FormatFloat('###,###,###0.00', ds.FieldByName('SubTotal').AsFloat), '.', 32));
    Envio := EpsonFPHostControl1.SendCommand;

    if EpsonFPHostControl1.ReturnCode <> 0 then
      msn_error_ifiscal('ERROR SUBTOTAL', EpsonFPHostControl1.ReturnCode);
  finally
    Esperar;
  end;

  if ds.FieldByName('Descuento').AsFloat > 0 then
  begin
    try
      comando := CHR(14) + CHR(2);
      extension := CHR(0) + CHR(00);
      Enviar := EpsonFPHostControl1.AddDataField(comando);
      Enviar := EpsonFPHostControl1.AddDataField(extension);
      Enviar := EpsonFPHostControl1.AddDataField('Descuento' + TextoDerecha(FormatFloat('###,###,###0.00', ds.FieldByName('Descuento').AsFloat), '.', 31));
      Envio := EpsonFPHostControl1.SendCommand;

      if EpsonFPHostControl1.ReturnCode <> 0 then
        msn_error_ifiscal('ERROR DESCUENTO', EpsonFPHostControl1.ReturnCode);
    finally
      Esperar;
    end;
  end;

  try
    comando := CHR(14) + CHR(2);
    extension := CHR(0) + CHR(00);
    Enviar := EpsonFPHostControl1.AddDataField(comando);
    Enviar := EpsonFPHostControl1.AddDataField(extension);
    Enviar := EpsonFPHostControl1.AddDataField('ITBIS' + TextoDerecha(FormatFloat('###,###,###0.00', ds.FieldByName('ITBIS').AsFloat), '.', 35));
    Envio := EpsonFPHostControl1.SendCommand;

    if EpsonFPHostControl1.ReturnCode <> 0 then
      msn_error_ifiscal('ERROR ITBIS', EpsonFPHostControl1.ReturnCode);
  finally
    Esperar;
  end;

  try
    comando := CHR(14) + CHR(2);
    extension := CHR(0) + CHR(00);
    Enviar := EpsonFPHostControl1.AddDataField(comando);
    Enviar := EpsonFPHostControl1.AddDataField(extension);
    Enviar := EpsonFPHostControl1.AddDataField('TOTAL' + TextoDerecha(FormatFloat('###,###,###0.00', ds.FieldByName('Total').AsFloat), '.', 35));
    Envio := EpsonFPHostControl1.SendCommand;

    if EpsonFPHostControl1.ReturnCode <> 0 then
      msn_error_ifiscal('ERROR TOTAL', EpsonFPHostControl1.ReturnCode);
  finally
    Esperar;
  end;

  try
    comando := CHR(14) + CHR(2);
    extension := CHR(0) + CHR(0);
    Enviar := EpsonFPHostControl1.AddDataField(comando);
    Enviar := EpsonFPHostControl1.AddDataField(extension);
    Enviar := EpsonFPHostControl1.AddDataField('--------------------------------------');
    Envio := EpsonFPHostControl1.SendCommand;

    if EpsonFPHostControl1.ReturnCode <> 0 then
      msn_error_ifiscal('ERROR RAYA 4', EpsonFPHostControl1.ReturnCode);
  finally
    Esperar;
  end;

  try
    comando := CHR(14) + CHR(2);
    extension := CHR(0) + CHR(00);
    Enviar := EpsonFPHostControl1.AddDataField(comando);
    Enviar := EpsonFPHostControl1.AddDataField(extension);
    Enviar := EpsonFPHostControl1.AddDataField('Gracias por su compra...!');
    Envio := EpsonFPHostControl1.SendCommand;

    if EpsonFPHostControl1.ReturnCode <> 0 then
      msn_error_ifiscal('ERROR COMENTARIO', EpsonFPHostControl1.ReturnCode);

    Esperar;

    comando := CHR(14) + CHR(2);
    extension := CHR(0) + CHR(00);
    Enviar := EpsonFPHostControl1.AddDataField(comando);
    Enviar := EpsonFPHostControl1.AddDataField(extension);
    Enviar := EpsonFPHostControl1.AddDataField('Regrese pronto...!');
    Envio := EpsonFPHostControl1.SendCommand;

    if EpsonFPHostControl1.ReturnCode <> 0 then
      msn_error_ifiscal('ERROR COMENTARIO', EpsonFPHostControl1.ReturnCode);
  finally
    Esperar;
  end;

  {if not (ds.FieldByName('Nota').IsNull) then
  begin
    for i := 0 to 0 do                  // mm_comentario.Lines.Count do
    begin
      try
        comando := CHR(14) + CHR(2);
        extension := CHR(0) + CHR(00);
        Enviar := EpsonFPHostControl1.AddDataField(comando);
        Enviar := EpsonFPHostControl1.AddDataField(extension);
        Enviar := EpsonFPHostControl1.AddDataField(Copy(mm_comentario.Lines[i], 1, 40));
        Envio := EpsonFPHostControl1.SendCommand;

        if EpsonFPHostControl1.ReturnCode <> 0 then
          msn_error_ifiscal('ERROR COMENTARIO 5',
            EpsonFPHostControl1.ReturnCode);
      finally
        Esperar;
      end;
    end;
  end;}

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

  EpsonFPHostControl1.Free;
end;

procedure IFCancelaImpresionReporteFiscal(tipoAnulacion: Integer);
var
  comando, extension: string;
  Enviar, Envio, RecargoDet: boolean;
  i                 : Integer;
begin
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

procedure IFImpresionReporteFiscal(Reporte: Integer; desde, hasta: string; fdesde, fhasta: TDateTime);
var
  comando, extension: string;
  Enviar, Envio, RecargoDet: boolean;
  i                 : Integer;
begin
  EpsonFPHostControl1 := TEpsonFPHostControl.Create(nil);

  CerrarCOM1;
  AbrirCOM1(COMPort);

  EpsonFPHostControl1.Purge;

  try
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
    EpsonFPHostControl1.Free;
  end;
end;

procedure IFImpresionNoVenta(uidFactura: TGUID; CantCopia, TipoFuente: Integer);
var
  comando, extension, cantidad, precio, Subtotal: string;
  Enviar, Envio     : boolean;
  I                 : Integer;
  ds                : TDataSet;
begin
  EpsonFPHostControl1 := TEpsonFPHostControl.Create(nil);

  ds := GetDataSet('RPTFacturaFiscal', GUIDToString(uidFactura));

  CerrarCOM1;
  AbrirCOM1(COMPort);

  EpsonFPHostControl1.Purge;

  case TipoFuente of                    // Modulo.Qry_Parametros_ImpresoraFiscalpi_tipo_fuente.AsInteger of
    0: Fuente := '00';                  // Utilizar fuente predeterminada.
    1: Fuente := '01';                  // Utilizar fuente tipo A.
    2: Fuente := '10';                  // Utilizar fuente tipo B.
  end;

  try
    comando := CHR(14) + CHR(1);
    extension := CHR(0) + CHR(0);       //CHR(BinADec('0000000000' + Fuente + '000'));
    Enviar := EpsonFPHostControl1.AddDataField(comando);
    Enviar := EpsonFPHostControl1.AddDataField(extension);
    Envio := EpsonFPHostControl1.SendCommand;

    if EpsonFPHostControl1.ReturnCode <> 0 then
      msn_error_ifiscal('ERROR ABRIENDO', EpsonFPHostControl1.ReturnCode);
  finally
    Esperar;
  end;

  try
    comando := CHR(14) + CHR(2);
    extension := CHR(0) + CHR(0);
    Enviar := EpsonFPHostControl1.AddDataField(comando);
    Enviar := EpsonFPHostControl1.AddDataField(extension);
    Enviar := EpsonFPHostControl1.AddDataField('--- REIMPRESION FACTURA (NO VENTA) ---');
    Envio := EpsonFPHostControl1.SendCommand;

    if EpsonFPHostControl1.ReturnCode <> 0 then
      msn_error_ifiscal('ERROR TITULO', EpsonFPHostControl1.ReturnCode);
  finally
    Esperar;
  end;

  try
    comando := CHR(14) + CHR(2);
    extension := CHR(0) + CHR(0);
    Enviar := EpsonFPHostControl1.AddDataField(comando);
    Enviar := EpsonFPHostControl1.AddDataField(extension);
    Enviar := EpsonFPHostControl1.AddDataField(ds.FieldByName('coCompania').AsString); // nombre de la empresa
    Envio := EpsonFPHostControl1.SendCommand;

    if EpsonFPHostControl1.ReturnCode <> 0 then
      msn_error_ifiscal('ERROR EMPRESA', EpsonFPHostControl1.ReturnCode);
  finally
    Esperar;
  end;

  try
    comando := CHR(14) + CHR(2);
    extension := CHR(0) + CHR(0);
    Enviar := EpsonFPHostControl1.AddDataField(comando);
    Enviar := EpsonFPHostControl1.AddDataField(extension);
    Enviar := EpsonFPHostControl1.AddDataField(ds.FieldByName('coRNC').AsString); // RNC EMPRESA
    Envio := EpsonFPHostControl1.SendCommand;

    if EpsonFPHostControl1.ReturnCode <> 0 then
      msn_error_ifiscal('ERROR RNC', EpsonFPHostControl1.ReturnCode);
  finally
    Esperar;
  end;

  try
    comando := CHR(14) + CHR(2);
    extension := CHR(0) + CHR(0);
    Enviar := EpsonFPHostControl1.AddDataField(comando);
    Enviar := EpsonFPHostControl1.AddDataField(extension);
    Enviar := EpsonFPHostControl1.AddDataField(ds.FieldByName('coDireccion').AsString); // DIRECCION EMPRESA
    Envio := EpsonFPHostControl1.SendCommand;

    if EpsonFPHostControl1.ReturnCode <> 0 then
      msn_error_ifiscal('ERROR DIRECCION', EpsonFPHostControl1.ReturnCode);
  finally
    Esperar;
  end;

  try
    comando := CHR(14) + CHR(2);
    extension := CHR(0) + CHR(0);
    Enviar := EpsonFPHostControl1.AddDataField(comando);
    Enviar := EpsonFPHostControl1.AddDataField(extension);
    Enviar := EpsonFPHostControl1.AddDataField(ds.FieldByName('coTelefono').AsString); // TELEFONO EMPRESA 1
    Envio := EpsonFPHostControl1.SendCommand;

    if EpsonFPHostControl1.ReturnCode <> 0 then
      msn_error_ifiscal('ERROR TELEFONO', EpsonFPHostControl1.ReturnCode);
  finally
    Esperar;
  end;

  try
    comando := CHR(14) + CHR(2);
    extension := CHR(0) + CHR(0);
    Enviar := EpsonFPHostControl1.AddDataField(comando);
    Enviar := EpsonFPHostControl1.AddDataField(extension);
    Enviar := EpsonFPHostControl1.AddDataField('--------------------------------------');
    Envio := EpsonFPHostControl1.SendCommand;

    if EpsonFPHostControl1.ReturnCode <> 0 then
      msn_error_ifiscal('ERROR RAYA 1', EpsonFPHostControl1.ReturnCode);
  finally
    Esperar;
  end;

  try
    comando := CHR(14) + CHR(2);
    extension := CHR(0) + CHR(0);
    Enviar := EpsonFPHostControl1.AddDataField(comando);
    Enviar := EpsonFPHostControl1.AddDataField(extension);
    Enviar := EpsonFPHostControl1.AddDataField('Secuencia: ' + ds.FieldByName('Factura').AsString);
    Envio := EpsonFPHostControl1.SendCommand;

    if EpsonFPHostControl1.ReturnCode <> 0 then
      msn_error_ifiscal('ERROR SECUENCIA', EpsonFPHostControl1.ReturnCode);
  finally
    Esperar;
  end;

  try
    comando := CHR(14) + CHR(2);
    extension := CHR(0) + CHR(0);
    Enviar := EpsonFPHostControl1.AddDataField(comando);
    Enviar := EpsonFPHostControl1.AddDataField(extension);
    Enviar := EpsonFPHostControl1.AddDataField('Fecha: ' + DateToStr(ds.FieldByName('Fecha').AsDateTime) + ' Hora: ' + TimeToStr(ds.FieldByName('Hora').AsDateTime));
    Envio := EpsonFPHostControl1.SendCommand;

    if EpsonFPHostControl1.ReturnCode <> 0 then
      msn_error_ifiscal('ERROR FECHA Y HORA', EpsonFPHostControl1.ReturnCode);
  finally
    Esperar;
  end;

  try
    comando := CHR(14) + CHR(2);
    extension := CHR(0) + CHR(0);
    Enviar := EpsonFPHostControl1.AddDataField(comando);
    Enviar := EpsonFPHostControl1.AddDataField(extension);
    Enviar := EpsonFPHostControl1.AddDataField('Orden: ' + ds.FieldByName('Factura').AsString);
    Envio := EpsonFPHostControl1.SendCommand;

    if EpsonFPHostControl1.ReturnCode <> 0 then
      msn_error_ifiscal('ERROR PEDIDO', EpsonFPHostControl1.ReturnCode);
  finally
    Esperar;
  end;

  try
    comando := CHR(14) + CHR(2);
    extension := CHR(0) + CHR(0);
    Enviar := EpsonFPHostControl1.AddDataField(comando);
    Enviar := EpsonFPHostControl1.AddDataField(extension);
    Enviar := EpsonFPHostControl1.AddDataField('NCF: ' + ds.FieldByName('compFiscal').AsString);
    Envio := EpsonFPHostControl1.SendCommand;

    if EpsonFPHostControl1.ReturnCode <> 0 then
      msn_error_ifiscal('ERROR NCF', EpsonFPHostControl1.ReturnCode);
  finally
    Esperar;
  end;

  try
    comando := CHR(14) + CHR(2);
    extension := CHR(0) + CHR(0);
    Enviar := EpsonFPHostControl1.AddDataField(comando);
    Enviar := EpsonFPHostControl1.AddDataField(extension);
    Enviar := EpsonFPHostControl1.AddDataField('--------------------------------------');
    Envio := EpsonFPHostControl1.SendCommand;

    if EpsonFPHostControl1.ReturnCode <> 0 then
      msn_error_ifiscal('ERROR RAYA 2', EpsonFPHostControl1.ReturnCode);
  finally
    Esperar;
  end;

  with ds do
  begin
    First;
    while not Eof do
    begin
      cantidad := FormatFloat('###,###,##0.00', ds.FieldByName('DetCantidad').AsFloat);
      precio := FormatFloat('###,###,###0.00', ds.FieldByName('DetPrecio').AsFloat);
      Subtotal := FormatFloat('###,###,###0.00', (ds.FieldByName('DetCantidad').AsFloat * ds.FieldByName('DetPrecio').AsFloat));

      try
        comando := CHR(14) + CHR(2);
        extension := CHR(0) + CHR(00);
        Enviar := EpsonFPHostControl1.AddDataField(comando);
        Enviar := EpsonFPHostControl1.AddDataField(extension);
        Enviar := EpsonFPHostControl1.AddDataField(TextoIzquierda(cantidad, ' ', 10) + TextoIzquierda(Copy(Trim(ds.FieldByName('DetProducto').AsString), 1, 30), ' ', 20) + TextoDerecha(precio, ' ', 10));
        Envio := EpsonFPHostControl1.SendCommand;

        if EpsonFPHostControl1.ReturnCode <> 0 then
          msn_error_ifiscal('ERROR ITEMS', EpsonFPHostControl1.ReturnCode);
      finally
        Esperar;
      end;

      Next;
    end;
  end;

  try
    comando := CHR(14) + CHR(2);
    extension := CHR(0) + CHR(0);
    Enviar := EpsonFPHostControl1.AddDataField(comando);
    Enviar := EpsonFPHostControl1.AddDataField(extension);
    Enviar := EpsonFPHostControl1.AddDataField('--------------------------------------');
    Envio := EpsonFPHostControl1.SendCommand;

    if EpsonFPHostControl1.ReturnCode <> 0 then
      msn_error_ifiscal('ERROR RAYA 3', EpsonFPHostControl1.ReturnCode);
  finally
    Esperar;
  end;

  try
    comando := CHR(14) + CHR(2);
    extension := CHR(0) + CHR(00);
    Enviar := EpsonFPHostControl1.AddDataField(comando);
    Enviar := EpsonFPHostControl1.AddDataField(extension);
    Enviar := EpsonFPHostControl1.AddDataField('SubTotal' + TextoDerecha(FormatFloat('###,###,###0.00', ds.FieldByName('SubTotal').AsFloat), '.', 32));
    Envio := EpsonFPHostControl1.SendCommand;

    if EpsonFPHostControl1.ReturnCode <> 0 then
      msn_error_ifiscal('ERROR SUBTOTAL', EpsonFPHostControl1.ReturnCode);
  finally
    Esperar;
  end;

  if ds.FieldByName('Descuento').AsFloat > 0 then
  begin
    try
      comando := CHR(14) + CHR(2);
      extension := CHR(0) + CHR(00);
      Enviar := EpsonFPHostControl1.AddDataField(comando);
      Enviar := EpsonFPHostControl1.AddDataField(extension);
      Enviar := EpsonFPHostControl1.AddDataField('Descuento' + TextoDerecha(FormatFloat('###,###,###0.00', ds.FieldByName('Descuento').AsFloat), '.', 31));
      Envio := EpsonFPHostControl1.SendCommand;

      if EpsonFPHostControl1.ReturnCode <> 0 then
        msn_error_ifiscal('ERROR DESCUENTO', EpsonFPHostControl1.ReturnCode);
    finally
      Esperar;
    end;
  end;

  try
    comando := CHR(14) + CHR(2);
    extension := CHR(0) + CHR(00);
    Enviar := EpsonFPHostControl1.AddDataField(comando);
    Enviar := EpsonFPHostControl1.AddDataField(extension);
    Enviar := EpsonFPHostControl1.AddDataField('ITBIS' + TextoDerecha(FormatFloat('###,###,###0.00', ds.FieldByName('ITBIS').AsFloat), '.', 35));
    Envio := EpsonFPHostControl1.SendCommand;

    if EpsonFPHostControl1.ReturnCode <> 0 then
      msn_error_ifiscal('ERROR ITBIS', EpsonFPHostControl1.ReturnCode);
  finally
    Esperar;
  end;

  try
    comando := CHR(14) + CHR(2);
    extension := CHR(0) + CHR(00);
    Enviar := EpsonFPHostControl1.AddDataField(comando);
    Enviar := EpsonFPHostControl1.AddDataField(extension);
    Enviar := EpsonFPHostControl1.AddDataField('TOTAL' + TextoDerecha(FormatFloat('###,###,###0.00', ds.FieldByName('Total').AsFloat), '.', 35));
    Envio := EpsonFPHostControl1.SendCommand;

    if EpsonFPHostControl1.ReturnCode <> 0 then
      msn_error_ifiscal('ERROR TOTAL', EpsonFPHostControl1.ReturnCode);
  finally
    Esperar;
  end;

  try
    comando := CHR(14) + CHR(2);
    extension := CHR(0) + CHR(0);
    Enviar := EpsonFPHostControl1.AddDataField(comando);
    Enviar := EpsonFPHostControl1.AddDataField(extension);
    Enviar := EpsonFPHostControl1.AddDataField('--------------------------------------');
    Envio := EpsonFPHostControl1.SendCommand;

    if EpsonFPHostControl1.ReturnCode <> 0 then
      msn_error_ifiscal('ERROR RAYA 4', EpsonFPHostControl1.ReturnCode);
  finally
    Esperar;
  end;

  try
    comando := CHR(14) + CHR(2);
    extension := CHR(0) + CHR(00);
    Enviar := EpsonFPHostControl1.AddDataField(comando);
    Enviar := EpsonFPHostControl1.AddDataField(extension);
    Enviar := EpsonFPHostControl1.AddDataField('Gracias por su compra...!');
    Envio := EpsonFPHostControl1.SendCommand;

    if EpsonFPHostControl1.ReturnCode <> 0 then
      msn_error_ifiscal('ERROR COMENTARIO', EpsonFPHostControl1.ReturnCode);

    Esperar;

    comando := CHR(14) + CHR(2);
    extension := CHR(0) + CHR(00);
    Enviar := EpsonFPHostControl1.AddDataField(comando);
    Enviar := EpsonFPHostControl1.AddDataField(extension);
    Enviar := EpsonFPHostControl1.AddDataField('Regrese pronto...!');
    Envio := EpsonFPHostControl1.SendCommand;

    if EpsonFPHostControl1.ReturnCode <> 0 then
      msn_error_ifiscal('ERROR COMENTARIO', EpsonFPHostControl1.ReturnCode);
  finally
    Esperar;
  end;

  {if not (ds.FieldByName('Nota').IsNull) then
  begin
    for i := 0 to 0 do                  // mm_comentario.Lines.Count do
    begin
      try
        comando := CHR(14) + CHR(2);
        extension := CHR(0) + CHR(00);
        Enviar := EpsonFPHostControl1.AddDataField(comando);
        Enviar := EpsonFPHostControl1.AddDataField(extension);
        // Enviar := EpsonFPHostControl1.AddDataField(Copy(mm_comentario.Lines[i], 1, 40));
        Envio := EpsonFPHostControl1.SendCommand;

        if EpsonFPHostControl1.ReturnCode <> 0 then
          msn_error_ifiscal('ERROR COMENTARIO 5', EpsonFPHostControl1.ReturnCode);
      finally
        Esperar;
      end;
    end;
  end;}

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

  EpsonFPHostControl1.Free;
end;

procedure IFImpresionFiscalDevolucion(uidDevolucion: TGUID; CantCopia, TipoFuente: Integer);
var
  comando, extension: string;
  Enviar, Envio     : Boolean;
  ds                : TDataSet;
begin
  EpsonFPHostControl1 := TEpsonFPHostControl.Create(nil);

  ds := GetDataSet('RPTDevolucionFiscal', GUIDToString(uidDevolucion));

  CerrarCOM1;
  AbrirCOM1(COMPort);

  EpsonFPHostControl1.Purge;

  case CantCopia of
    0: Copias := '000';                 // No realizar copias.
    1: Copias := '001';                 // Realizar una copia.
    2: Copias := '010';                 // Realizar dos copias.
    3: Copias := '011';                 // Realizar tres copias.
    4: Copias := '100';                 // Realizar cuatro copias.
    5: Copias := '101';                 // Realizar cinco copias.
    6: Copias := '110';                 // Realizar seis copias.
    7: Copias := '111';                 // Realizar siete copias.
  end;

  case TipoFuente of
    0: Fuente := '00';                  // Utilizar fuente predeterminada.
    1: Fuente := '01';                  // Utilizar fuente tipo A.
    2: Fuente := '10';                  // Utilizar fuente tipo B.
  end;

  if Copy(ds.FieldByName('CompFiscal').AsString, 10, 2) = '2' then // consumidor final --tipo de NCF que tiene la Factura
    tipoNCF := '010'
  else
  begin
    if Copy(ds.FieldByName('CompFiscal').AsString, 10, 2) = '14' then //si es especial
      tipoNCF := '110'
    else
      tipoNCF := '011';                 //si es credito fiscal
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
    Enviar := EpsonFPHostControl1.AddDataField(ds.FieldByName('CompFiscal').AsString); // ncf
    Enviar := EpsonFPHostControl1.AddDataField(ds.FieldByName('Cliente').AsString); // cliente
    Enviar := EpsonFPHostControl1.AddDataField(ds.FieldByName('ClienteRNC').AsString); // rnc
    Enviar := EpsonFPHostControl1.AddDataField(ds.FieldByName('CompFiscalFactura').AsString);
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

  if ds.FieldByName('Descuento').asfloat > 0 then
  begin
    try
      comando := CHR(10) + CHR(4);
      extension := CHR(0) + CHR(00);
      Enviar := EpsonFPHostControl1.AddDataField(comando);
      Enviar := EpsonFPHostControl1.AddDataField(extension);
      Enviar := EpsonFPHostControl1.AddDataField('Descuento');
      Enviar := EpsonFPHostControl1.AddDataField(StringReplace(FormatFloat('000000000.00', ds.FieldByName('Descuento').asfloat), '.', '', [rfReplaceAll, rfIgnoreCase]));
      Envio := EpsonFPHostControl1.SendCommand;

      if EpsonFPHostControl1.ReturnCode <> 0 then
        msn_error_ifiscal('ERROR DESCUENTO', EpsonFPHostControl1.ReturnCode);
    finally
      Esperar;
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
  end;

  EpsonFPHostControl1.Free;
end;

function TextoDerecha(S: string; Caracter: Char; n: Integer): string;
begin
  Result := StringOfChar(Caracter, n - Length(S)) + S;
end;

function TextoIzquierda(S: string; Caracter: Char; n: Integer): string;
begin
  Result := S + StringOfChar(Caracter, n - Length(S));
end;

initialization
  dm.GetPCSetting('IF_PUERTO_COM#')

end.

