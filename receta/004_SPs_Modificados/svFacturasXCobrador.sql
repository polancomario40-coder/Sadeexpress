

CREATE OR ALTER PROCEDURE svFacturasXCobrador

 @desde datetime,

 @hasta datetime,

 @todas bit

as

 select f.idFactura,

	f.Factura,

	f.fecha,

	f.Total,

	dbo.cxcBalanceDocumento(f.idFactura, @hasta,null) as Cobrado,

	f.idCobrador, 

	e.Empleado as Cobrador,

	f.Cliente,

	f.Condicion,

	f.Referencia

 from factura f left join svempleado e 

  on f.idCobrador = e.idEmpleado

 where f.fecha between @desde and @hasta

	and f.Credito = 1

	and (@todas = 1 or dbo.cxcBalanceDocumento(f.idFactura, @hasta,null) < f.Total)

 order by 

   e.Empleado, 

   f.fecha, 

   f.factura

return 0


GO
