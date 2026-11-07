CREATE OR ALTER PROCEDURE [dbo].[presReporteCXC] (@hasta datetime) as



select  t.idTransaccion,

	t.Transaccion, 

	t.Prestamo,

	p.Cliente, 

	c.Telefono,

	c.Direccion, 

	t.idPrestamo,

	t.idTipo,

	t.Fecha,

	t.Capital,

	t.Interes,

	t.Monto ,

	dbo.presPagadoTransaccion(t.idtransaccion, @hasta) Pagado

from 

  prestransaccion t 

  join presPrestamo p on t.idPrestamo = p.idPrestamo 

  join presCliente c on p.idCliente = c.idCliente 

where   

  t.Cancelado = 0

  and t.DebCre = 1 

  and t.fecha <= @hasta  

  and t.Monto > dbo.presPagadoTransaccion(t.idtransaccion, @hasta)

order by 

  p.Cliente, p.Prestamo, t.Fecha, t.idtransaccion


GO
