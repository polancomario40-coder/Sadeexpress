
CREATE OR ALTER PROCEDURE svFacturasXTipoNave --'05/01/2006' , '05/29/2006'

 @desde datetime,

 @hasta datetime

as



select  tn.TipoNave,

	fd.idProducto,

	p.Producto, 

	sum(fd.LineTotal) as Total,

	count(*) as Cuenta,

	@desde as Desde,

	@hasta as Hasta

from factura f join facturadet fd 

  on f.idFactura = fd.idFactura

join ss..avisollegada a on f.NumRegistro = convert(varchar,a.NumRegistro)

  join ss..ssTipoNave tn on tn.idTipoNave = a.idTipoNave

  join producto p on fd.idProducto = p.idProducto 

where f.fecha between @desde and @hasta

group by tn.TipoNave, fd.idProducto, p.Producto

order by tn.TipoNave, p.Producto

return 0 






GO
