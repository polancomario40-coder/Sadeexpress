CREATE OR ALTER PROC svVentasPorProdCliente    

 @idCli int, @Desde datetime, @Hasta Datetime, @idProducto varchar(25) AS    

select      

 @Desde as Desde,    

 @Hasta as Hasta,    

 d.idFacturaDet,   

 c.idCliente,    

 c.Cliente,    

 p.idProducto,    

 p.Producto,    

 f.fecha,    

 f.factura,    

 f.referencia,    

 d.cantidad as TotalCant,    

 d.LineTotal-d.Descuento+d.itbis as TotalValor,    

        d.Precio    

from Cliente c join Factura f    

  on c.idCliente = f.idCliente    

  join FacturaDet d on f.idFactura = d.idFactura    

  join Producto p on d.idProducto = p.idProducto    

where    

  (@idCli = -1 or c.idCliente = @idCli)    

  and (@idProducto is null or p.idProducto = @idProducto)    

  and (f.fecha between @Desde and @Hasta)     

  and (f.cancelado = 0)    

order by     

  p.idproducto,  

  c.Cliente,     

  f.fecha,    

  f.factura    

return 0




GO
