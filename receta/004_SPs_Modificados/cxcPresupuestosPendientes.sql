
CREATE OR ALTER PROCEDURE cxcPresupuestosPendientes

as

 declare @st varchar(16)

 

 select @st = convert(varchar(16), valor)

 from defaults

 where clave = 'ST_PRESUP'



 select c.*, m.Moneda from cotizacion c join moneda m on c.idmoneda = m.idmoneda

 where c.idCotizacionStatus = @st and c.Cancelado = 0

 order by c.Cliente, c.Fecha

return 0 




GO
