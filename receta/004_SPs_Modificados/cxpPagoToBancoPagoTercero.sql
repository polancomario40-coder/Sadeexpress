CREATE OR ALTER PROCEDURE cxpPagoToBancoPagoTercero(@Desde DateTime, @Hasta DateTime)

AS

SELECT

  dc.TipoAbono + ';' + 

  Convert(VarChar(22), su.Nombre) + ';' +

  Convert(VarChar(15), dc.Total) + ';' +

  Convert(VarChar(10), dc.Numero) + ';' +

--  Convert(VarChar(80), 'Pago ' + su.Nombre + ' Solic.#' + Convert(VarChar(10), dc.Numero) + 'de fecha ' + Convert(VarChar(10), dc.Fecha, 103) + ' por valor ' + Convert(VarChar, dc.Total)) + ';' +

  Convert(VarChar(80), Replace(dc.Concepto, ';',',')) + ';' +

  bs.TipoCuenta + ';' +

  dc.CuentaDestino + ';' +

  IsNull(su.eMail,'') As Cadena

FROM

  cxpSolicitudes   dc                                         Inner Join 

  cxpSuplidores    su On (su.IdSuplidor = dc.IdSuplidor) Left Outer Join

  cxpBancoSuplidor bs On (bs.BancoCodigo = dc.BancoDestino And bs.Cuenta = dc.CuentaDestino)

WHERE

  dc.TipoSolicitud = 2 AND

  dc.Status = 'A'      AND

  dc.Fecha Between @Desde And @Hasta




GO
