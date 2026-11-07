CREATE OR ALTER PROCEDURE cxpPagoToBancoACHrpt(@Desde DateTime, @Hasta DateTime)

AS

SELECT

  dc.IdSolicitud As IdDocumento,

  dc.CuentaDestino As CuentaDestino,

  bc.Codigo As CodigoBanco,

  bs.TipoCuenta AS TipoCuenta,

  su.Nombre As Suplidor,

  'C' As TipoMovimiento,

  dc.Total As Total,

  Convert(VarChar(10), dc.Numero) As Referencia,

  Convert(VarChar(80), Replace(dc.Concepto, ';',',')) As Descripcion,

  su.eMail As eMail

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
