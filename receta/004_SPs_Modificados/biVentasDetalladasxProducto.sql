--/****** Object:  StoredProcedure [dbo].[biVentasDetalladas]    Script Date: 05/04/2019 04:09:51 p.m. ******/

--SET ANSI_NULLS ON

--GO

--SET QUOTED_IDENTIFIER ON

--GO



CREATE OR ALTER PROCEDURE [dbo].[biVentasDetalladasxProducto](@Desde datetime, @Hasta Datetime) as

--declare

--  @Desde datetime, @Hasta Datetime

  

--Set @Desde = '20190301' 

--set @Hasta = '20190305'



select  newid() keyfield, 

1,   

 f.Cliente,    

 f.fecha,    

 f.factura,    

 --f.referencia, 

 --f.subtotal,

 --f.itbis,

 --month(f.fecha) as mes,

 --f.descuento,

 --f.total,   

 --f.tasa,

 (SELECT empleado from svEmpleado e where e.idEmpleado=F.idempleado) As Vendedor, 

 (SELECT empleado from svEmpleado e where e.idEmpleado=F.idDoctor) as Doctor,

 d.idproducto,d.producto,p.idgrupo as Grupo,

 d.cantidad,d.descuento,d.itbis,d.precio,d.idAlmacen

 

from     

  Cliente c     

  join Factura    f on c.idCliente = f.idCliente    

  join FacturaDet d on f.idFactura = d.idFactura    

  join Producto   p on d.idProducto = p.idProducto  

  where    

  f.fecha between @Desde and @hasta 

  and (f.cancelado = 0)





order by     

  f.fecha,    

  f.cliente   

  




GO
