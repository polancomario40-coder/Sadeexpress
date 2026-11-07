CREATE OR ALTER PROCEDURE RPTComisionVentasDetalle

 @desde datetime, 

 @hasta datetime, 

 @idVend int, 

 @idEmp int,

 @Todos bit

AS



-- Comisiones para los que cobran por todos los productos y de todos los vendedores

-- como el gte de ventas

/*



declare

 @desde datetime, 

 @hasta datetime, 

 @idVend int, 

 @idEmp int,

 @Todos bit



set @Desde = '01/01/01'

set @Hasta = '01/01/05'

set @idVend = null

set @idEmp = 135

set @Todos = 0



*/

IF exists (

  select top 1 1

  from EmpleadoCom e 

  where e.idEmpleado = @idEmp)



BEGIN



select 	

        newid() as id,

	f.idEmpleado Vendedor,

	r.CxC as Pago,

	dr.fecha as FechaApli,

	f.factura,

	f.cliente,

	f.fecha as FechaFact,	

	datediff(day, f.fecha, dr.fecha) as Antiguedad,

	dr.Valor as Aplicado,

	convert(decimal(19,2),(dr.Valor / f.Total)* 100 )as Porciento,

	df.idproducto,

	df.producto,

	df.Cantidad,

	convert(decimal(19,2),(df.LineTotal-df.Descuento)/df.Cantidad) as PrecioUnidad,

	df.LineTotal-df.Descuento as TotalRenglon,

        isnull((select top 1 convert(decimal(19,6),Comision) from EmpleadoCom  where idEmpleado = @idEmp and datediff(day, f.fecha, dr.Fecha) between Desde and Hasta),0.00)  as Comision,

 	convert(decimal(19,2),(dr.Valor / f.Total) * (df.LineTotal - df.Descuento) * isnull(

		(select top 1 Comision/100 from EmpleadoCom 

		 where  idEmpleado = @idEmp

			and datediff(day, f.fecha, dr.Fecha) between Desde and Hasta),0.00)) as  TotalPagar



from 

  CXC r 

  join CXCDet dr on r.idCXC = dr.IdCXC

  join Factura f on dr.idCXCDebito = f.idFactura

  join FacturaDet df on f.idFactura = df.idFactura

  join Producto p on df.idProducto = p.idProducto

where 	

  

  r.idTipoDocumento = 'RC'

  and dr.fecha between @desde and @hasta 

  and (@Todos = 1 or p.Comisiona = 1) 

  and f.Total > 0

  and (@idVend is null or @idVend = f.idEmpleado)

order by 

  f.idEmpleado



END

ELSE

BEGIN



select 	

        newid() as id,

	f.idEmpleado Vendedor,

	r.CxC as Pago,

	dr.fecha as FechaApli,

	f.factura,

	f.cliente,

	f.fecha as FechaFact,	

	datediff(day, f.fecha, getdate()) as Antiguedad,

	dr.Valor as Aplicado,

	convert(decimal(19,2),(dr.Valor / f.Total)* 100 )as Porciento,

	df.idproducto,

	df.producto,

	df.Cantidad,

	convert(decimal(19,2),(df.LineTotal-df.Descuento)/df.Cantidad) as PrecioUnidad,

	df.LineTotal-df.Descuento as TotalRenglon,

        isnull((select top 1 convert(decimal(19,6), xec.Comision) 

		from svEmpleado xe join EmpleadoCom xec on xe.idempleadoRoll = xec.idEmpleadoRoll

  		where xe.idEmpleado = @idEmp and datediff(day, f.fecha, dr.Fecha) between Desde and Hasta),0.00)  as Comision,



 	convert(decimal(19,2),(dr.Valor / f.Total) * (df.LineTotal - df.Descuento) * isnull(

		(select top 1 xec.Comision/100 

 		 from svEmpleado xe join EmpleadoCom xec on xe.idempleadoRoll = xec.idEmpleadoRoll

		 where  xe.idEmpleado = @idEmp

			and datediff(day, f.fecha, dr.Fecha) between Desde and Hasta),0.00)) as  TotalPagar



from 

  CXC r 

  join CXCDet dr on r.idCXC = dr.IdCXC

  join Factura f on dr.idCXCDebito = f.idFactura

  join FacturaDet df on f.idFactura = df.idFactura

  join Producto p on df.idProducto = p.idProducto

where 	

  

  r.idTipoDocumento = 'RC'

  and dr.fecha between @desde and @hasta 

  and (@Todos = 1 or p.Comisiona = 1) 

  and f.Total > 0

  and (@idVend is null or @idVend = f.idEmpleado)

order by 

  f.idEmpleado





END


GO
