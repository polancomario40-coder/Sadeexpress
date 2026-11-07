
CREATE OR ALTER PROCEDURE cxcReporteRecibosApl

 @desde datetime,

 @hasta datetime

as



select 	r.Recibo,

	r.Fecha,

	r.Valor,

	--r.escxc,

	d.valor as Aplicado,

	d.fecha as FechaDoc,

	f.cxc as Documento

from recibo r left join cxc c

  on r.idrecibo = c.idcxc

  left join cxcdet d on c.idCXC = d.idcxc

  left join cxc f on d.idcxcdebito = f.idcxc and f.cancelado = 0

where 	r.fecha between @desde and @hasta

	and r.cancelado = 0

order by r.fecha, r.recibo

return 0 






GO
