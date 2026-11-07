



CREATE OR ALTER PROCEDURE [dbo].[biVentasDetalladas](@Desde datetime, @Hasta Datetime) as

--declare

--  @Desde datetime, @Hasta Datetime

  

--Set @Desde = '20110101' 

--set @Hasta = '20110430'



select  newid() keyfield, 

1,   

 --f.idCliente,    

 f.Cliente,    

 f.fecha,    

 f.factura,    

 f.referencia, 

 f.subtotal,

 f.itbis,

 month(f.fecha) as mes,

 f.descuento,

 f.total,   

 f.tasa,

 --m.Moneda,    

 --g.Grupo,    

 (SELECT empleado from svEmpleado e where e.idEmpleado=F.idempleado) As Vendedor, 

 (SELECT empleado from svEmpleado e where e.idEmpleado=F.idDoctor) as Doctor

 ,f.idAlmacen as sucursal

 --cg.ClienteGrupo As Categoria,    

-- ct.ClienteTipo,    

-- d.idProducto,    

-- d.Producto,    

-- d.cantidad,    

-- d.Descuento * f.Tasa As Descuento,    

-- d.Itbis * f.Tasa As Itbis,    

-- d.Precio * f.Tasa As Precio,    

-- d.LineTotal * f.Tasa As LineTotal,    

--(d.LineTotal-d.Descuento+d.itbis) * f.Tasa as TotalValor

from     

  Cliente c     

  join Factura    f on c.idCliente = f.idCliente    

  --join FacturaDet d on f.idFactura = d.idFactura    

  --join Producto   p on d.idProducto = p.idProducto    

  --join Moneda     m on (m.IdMoneda = f.IdMoneda)     

  --Join svEmpleado e on (e.IdEmpleado = f.IdEmpleado)

  --Left Outer Join svGrupo g on (g.IdGrupo = c.Grupo)    

  --Left Outer Join ClienteGrupo cg on (cg.IdClienteGrupo = c.IdClienteGrupo)    

  ----Left Outer Join ClienteTipo  ct on (ct.IdClienteTipo = c.IdClienteTipo)

  where    

  f.fecha between @Desde and @hasta 

  and (f.cancelado = 0)

  --and p.idproducto = '5000'

  --and f.idCliente = 1475

order by     

  f.fecha,    

  f.cliente   

  




GO
