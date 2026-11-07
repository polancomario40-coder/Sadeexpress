CREATE OR ALTER PROC svVentasPorProductoRpt(@Desde datetime, @Hasta Datetime)

AS    

select      

 NewId() As Id,    

 @Desde as Desde,    

 @Hasta as Hasta,    

 f.idCliente,    

 f.Cliente,    

 f.fecha,    

 f.factura,    

 f.referencia,    

 f.CompFiscal,

 f.Total * f.Tasa As Total,

 m.Moneda,    

 d.idProducto,    

 d.Producto,    

 d.cantidad,    

 d.Descuento * f.Tasa As Descuento,    

 d.Itbis * f.Tasa As Itbis,    

 d.Precio * f.Tasa As Precio,    

 d.LineTotal * f.Tasa As LineTotal,    

 (d.LineTotal-d.Descuento+d.itbis) * f.Tasa as TotalValor,

 a.Almacen

from     

  Cliente c     

  join Factura      f on c.idCliente = f.idCliente

  join FacturaDet   d on f.idFactura = d.idFactura

  join Producto     p on d.idProducto = p.idProducto

  join Moneda       m on (m.IdMoneda = f.IdMoneda)

  left join Almacen a on (d.IdAlmacen = a.IdAlmacen)

where    

  f.fecha between @Desde and @Hasta     

--  and (f.cancelado = 0)    

order by     

  m.Moneda,

  f.Factura,

  p.Producto,    

  f.fecha



return 0


GO
