
CREATE OR ALTER PROC svVentasPorClienteSeg

 @idCli int, @Desde datetime, @Hasta Datetime, @idProducto varchar(25) AS  

select    

 @Desde as Desde,  

 @Hasta as Hasta,  

 NewId() As Id,

 c.idCliente,  

 c.Cliente,  

  IsNull(g.Grupo, 'NO ASIGNADO') As Grupo,

 cg.ClienteGrupo As Categoria,

 d.idProducto,  

 p.Producto,  

 f.fecha,  

 f.factura,  

 f.referencia,  

 f.idEmpleado,

 e.Empleado as Vendedor,

 d.cantidad as TotalCant,  

 d.LineTotal-d.Descuento+d.itbis as TotalValor,  

 d.Precio  

from Cliente c join Factura f  

  on c.idCliente = f.idCliente  

  join FacturaDet d on f.idFactura = d.idFactura  

  join Producto p on d.idProducto = p.idProducto Left Outer Join

  svGrupo g On (g.IdGrupo = c.Grupo) Left Outer Join

  ClienteGrupo cg On (cg.IdClienteGrupo = c.IdClienteGrupo)

  left join svEmpleado e on f.idEmpleado = e.idEmpleado

where  

  (@idCli = -1 or c.idCliente = @idCli)  

  and (@idProducto is null or p.idProducto = @idProducto)  

  and (f.fecha between @Desde and @Hasta)   

  and (f.cancelado = 0)  

order by

  g.Grupo,

  c.Cliente,   

  p.Producto,  

  f.fecha,  

  f.factura  

return 0  

  






GO
