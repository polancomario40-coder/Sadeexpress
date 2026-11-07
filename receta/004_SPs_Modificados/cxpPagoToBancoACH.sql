CREATE OR ALTER PROCEDURE cxpPagoToBancoACH(@Desde DateTime, @Hasta DateTime)

AS

SELECT

  dc.CuentaDestino + ';' +

  bc.Codigo + ';' + 

  bs.TipoCuenta + ';' +

  Convert(VarChar(22), su.Nombre) + ';' +

  'C' + ';' + 

  Convert(VarChar(15), dc.Total) + ';' +

  Convert(VarChar(10), dc.Numero) + ';' +

  Convert(VarChar(80), Replace(dc.Concepto, ';',',')) As Cadena

FROM

  cxpSolicitudes   dc                                         Inner Join 

  cxpSuplidores    su On (su.IdSuplidor = dc.IdSuplidor) Left Outer Join

  cxpBancoACH      bc On (bc.Codigo = dc.BancoDestino)   Left Outer Join

  cxpBancoSuplidor bs On (bs.BancoCodigo = dc.BancoDestino And bs.Cuenta = dc.CuentaDestino)

WHERE

  dc.TipoSolicitud = 2 AND

  dc.Status = 'A'      AND

  dc.Fecha Between @Desde And @Hasta




GO
