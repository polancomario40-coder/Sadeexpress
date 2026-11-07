
------------ final de:ValidarCuenta ------------



------------ inicio de:VentasPorCliente ------------







CREATE OR ALTER PROC VentasPorCliente

 @idCli int, @Desde datetime, @Hasta Datetime, @idProducto varchar(25) AS

select  

	@Desde as Desde,

	@Hasta as Hasta,

	c.idCliente,

	c.Cliente,

	d.idProducto,

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

  c.Cliente, 

  p.Producto,

  f.fecha,

  f.factura

return 0




GO
