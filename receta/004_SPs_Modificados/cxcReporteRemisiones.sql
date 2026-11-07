
------------ final de:cxcIngresosMes ------------



------------ inicio de:cxcReporteRemisiones ------------







CREATE OR ALTER PROCEDURE cxcReporteRemisiones

 @idGrp int,

 @desde datetime,

 @hasta datetime,

 @idCli int 

as

select 	f.idFactura as idCXC,

	f.Factura,

        c.IdCliente,

	c.Cliente as Nombre,

	f.Fecha,	

	f.Total,

	f.Referencia, 

	f.Cotizacion, 

	c.Direccion,

	c.Telefono,

	c.Ciudad,

	c.Sector

from factura f join Cliente c 

  on f.idCliente = c.idCliente

where 	f.Credito = 1

	and f.Cancelado = 0

	and f.fecha between @desde and @hasta

	and (@idGrp = 0 or c.idClienteGrupo = @idGrp) 

	and (@idCli = 0 or c.idCliente = @idCli)

order by f.Cliente, f.Factura

return 0 




GO
