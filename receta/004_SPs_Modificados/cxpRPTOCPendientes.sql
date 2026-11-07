

CREATE OR ALTER PROCEDURE cxpRPTOCPendientes

  @hasta datetime

as

 

select *, Pendiente = GranTotal - Pagado

from (

select o.idOrden,

	   o.Numero,

	   o.Tipo, 

	   o.Fecha,

	   s.Nombre as Suplidor,

	   o.idSuplidor,

	   o.SubTotal,

	   o.TotalImpuestos as ITBIS,

	   o.GranTotal,

	   m.Moneda,

	   o.Referencia, 

	   o.Notas,

	   dbo.ocPagadoOrdenCompra(o.idOrden, o.idMoneda, @hasta) as Pagado 

from ocOrdenes o join cxpSuplidores s on o.idSuplidor = s.idSuplidor 

	join Moneda m on o.idMoneda = m.idMoneda 

where o.fecha <= @hasta 

	  and o.Status in ('A','D')

	  and dbo.ocPagadoOrdenCompra(o.idOrden, o.idMoneda, @hasta) <> o.GranTotal 

) as data 

order by data.fecha, data.Numero 

return 


GO
