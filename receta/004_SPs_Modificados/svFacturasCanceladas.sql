
------------ final de:svFacturacionMes ------------



------------ inicio de:svFacturasCanceladas ------------



CREATE OR ALTER PROCEDURE svFacturasCanceladas (@Desde DateTime, @Hasta DateTime)

AS

SELECT

  IdFactura As Id,

  Factura,

  Fecha,

  Referencia,

  CompFiscal,

  TipoAnulacion

From

  Factura

Where

  Fecha Between @Desde And @Hasta AND

  Cancelado = 1




GO
