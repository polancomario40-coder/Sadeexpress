
------------ final de:rssFacturadoyCobradoGrafico ------------



------------ inicio de:rssFacturaProducto ------------



CREATE OR ALTER PROCEDURE rssFacturaProducto(@Desde DateTime, @Hasta DateTime)

AS

SELECT

  ft.IdFactura,

  ft.Fecha,

  Year(ft.Fecha) As Ano,

  Month(ft.Fecha) As Mes,

  ft.Total,

  ft.Itbis,

  fd.IdProducto,

  fd.Producto

FROM

  Factura ft Inner Join

  FacturaDet fd On (ft.IdFactura = fd.IdFactura)

WHERE

  ft.Fecha Between @Desde And @Hasta




GO
