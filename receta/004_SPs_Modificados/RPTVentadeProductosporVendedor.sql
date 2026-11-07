
CREATE OR ALTER PROCEDURE RPTVentadeProductosporVendedor(@Desde datetime, @Hasta datetime, @idVendedor int) AS





SELECT     TOP 100 PERCENT 

  @Desde as Desde,

  @Hasta as Hasta,

  e.idEmpleado, 

  e.Empleado, 

  c.idCliente, 

  c.Cliente, 

  f.Factura, 

  f.Fecha, 

  f.total as TotalFactura,

  fd.idProducto, 

  fd.Producto, 

  fd.Cantidad, 

  fd.Precio,

  fd.LineTotal, 

  fd.Descuento, 

  fd.Itbis, 

  (fd.LineTotal - c.Descuento) AS PrecioFinal

into #temp

FROM         

  dbo.Cliente c INNER JOIN

  dbo.Factura f ON c.idCliente = f.idCliente INNER JOIN

  dbo.FacturaDet fd ON f.idFactura = fd.idFactura INNER JOIN

  dbo.svEmpleado e ON f.idEmpleado = e.idEmpleado INNER JOIN

  dbo.Producto p ON p.idProducto = fd.idProducto 

WHERE     

  ((f.cancelado = 0) or (f.cancelado = 1 and f.fechacancelado > @Hasta)) 

  and (f.fecha between @Desde and @Hasta)

  and (@idVendedor = -1 or @idVendedor = f.idEmpleado)

  and p.comisiona = 1

ORDER BY 

  e.Empleado, 

  fd.Producto





 select t.*,

	PromedioVendProd = (select sum(cantidad * Precio) / sum(cantidad)

		        from #temp

			where idProducto = t.idProducto and idEmpleado = t.idEmpleado),

	PromedioVend = (select sum(cantidad * Precio) / sum(cantidad)

		        from #temp where idEMpleado = t.idEmpleado)

 from #temp t

 order by Empleado, Producto



 drop table #temp






GO
