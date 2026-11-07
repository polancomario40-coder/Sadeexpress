--alter table factura add Cobrada bit not null default (1)

--go

CREATE OR ALTER PROCEDURE [dbo].[pvFacturasAbiertas]

as

select 	f.idFactura,

	f.Factura,

	f.Fecha,

	f.Hora,

	f.IdCliente,

	f.Cliente,

	f.Usuario, 

	f.Total

from factura f 

where f.Cobrada = 0 and f.fecha >= dateadd(day,-5,getdate())

order by f.Factura

return 0


GO
