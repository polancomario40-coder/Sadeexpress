

CREATE OR ALTER PROC [dbo].[svVentasPorProducto] (@Desde datetime, @Hasta Datetime)    

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

 m.Moneda,    

 g.Grupo,    

 e.Empleado As Vendedor,    

 cg.ClienteGrupo As Categoria,    

 ct.ClienteTipo,    

 d.idProducto,    

 d.Producto,    

 d.cantidad,    

 d.Descuento * f.Tasa As Descuento,    

 d.Itbis * f.Tasa As Itbis,    

 d.Precio * f.Tasa As Precio,    

 d.LineTotal * f.Tasa As LineTotal,    

 (d.LineTotal-d.Descuento+d.itbis) * f.Tasa as TotalValor,  

 a.Almacen,

 isnull(sum(dd.DevCantidad),0) as DevCantidad,  

 isnull(sum(dd.DevDescuento * dv.Tasa) ,0) as DevDescuento,  

 isnull(sum(dd.DevItbis * dv.Tasa) ,0) as DevItbis,  

 isnull(sum(dd.DevLineTotal * dv.Tasa),0) as DevLineTotal,  

 isnull(sum(isnull(dd.DevLineTotal* dv.Tasa,0.00) -isnull(dd.DevDescuento* dv.Tasa,0)),0) AS DevTotalBruto,  

 isnull(sum(isnull(dd.DevLineTotal* dv.Tasa,0)-isnull(dd.DevDescuento* dv.Tasa,0)+isnull(dd.DevItbis* dv.Tasa,0)),0) AS DevTotalNeto  

from     

  Cliente c     

  join Factura    f on c.idCliente = f.idCliente    

  join FacturaDet d on f.idFactura = d.idFactura    

  join Producto   p on d.idProducto = p.idProducto    

  join Moneda     m on (m.IdMoneda = f.IdMoneda)     

  Join svEmpleado e on (e.IdEmpleado = f.IdEmpleado)

  Left Outer Join Almacen a on (a.idAlmacen = d.IdAlmacen)

  Left Outer Join svGrupo g on (g.IdGrupo = c.Grupo)    

  Left Outer Join ClienteGrupo cg on (cg.IdClienteGrupo = c.IdClienteGrupo)    

  Left Outer Join ClienteTipo  ct on (ct.IdClienteTipo = c.IdClienteTipo)    

  Left Outer Join DevolucionDet dd ON d.idFacturaDet = dd.idFacturaDet  

  Left Outer Join Devolucion dv 

    ON dd.iddevolucion = dv.idDevolucion and dv.fecha between @Desde and @hasta and dv.Cancelado = 0

where    

  f.fecha between @Desde and @hasta 

  and (f.cancelado = 0)

group by 

 f.idCliente,    

 f.Cliente,    

 f.fecha,    

 f.factura,    

 f.referencia, 

 c.cliente, 

 p.producto,    

 m.Moneda,    

 g.Grupo,    

 e.Empleado  ,    

 cg.ClienteGrupo ,    

 ct.ClienteTipo,    

 d.idProducto,    

 d.Producto,    

 d.cantidad,

 d.descuento,

 f.tasa, 

d.itbis,      

d.precio, 

d.linetotal,

 a.Almacen    

order by     

  m.Moneda,    

  c.Cliente,     

  p.Producto,    

  f.fecha,    

  f.factura    

  



 

return 0    

  






GO
