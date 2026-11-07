CREATE OR ALTER PROCEDURE RPTFacturacion(@Desde datetime, @Hasta Datetime) AS



SELECT     TOP 100 PERCENT 

  c.idCliente, 

  c.Cliente, 

  f.Factura, 

  f.Fecha, 

  fd.idProducto, 

  fd.Producto, 

  fd.Cantidad, 

  fd.Precio, 

  fd.LineTotal, 

  fd.Descuento, 

  fd.Itbis, 

  fd.LineTotal - c.Descuento + f.Itbis AS PrecioFinal

FROM         

  dbo.Cliente c INNER JOIN

  dbo.Factura f ON c.idCliente = f.idCliente INNER JOIN

  dbo.FacturaDet fd ON f.idFactura = fd.idFactura

WHERE     

  (f.Cancelado = 0) and (f.fecha between @Desde and @Hasta)

ORDER BY 

  c.idCliente, 

  f.Fecha, 

  f.Factura, 

  fd.Producto
GO
