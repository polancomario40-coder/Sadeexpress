CREATE OR ALTER PROCEDURE cxpDocsPendientesCC

 @hasta datetime

as

 

declare @desde datetime

 

--set @desde = '04/01/2008'

--set @hasta = '04/30/2008'



declare @cargos table (

 idDocumento int,

 Suplidor varchar(200), 

 GUIDDocumento uniqueidentifier,

 Referencia varchar(20),

 Fecha datetime, 

 idCentroCosto uniqueidentifier,

 Total decimal(19,2),

 idMoneda int,

 Tasa float,

 Pagado decimal(19,2)

 )



insert into @cargos 

select h.idDocumento,

	   h.Nombre, 

	   h.GuidDocumento, 

	   h.Referencia,

	   h.Fecha,	   

	   idCentroCosto = (select top 1 idCentroCosto from cxpDocCuentas where iddocumento = h.idDocumento and idCentroCosto is not null), 

	   h.Total,	   

	   h.idMoneda,

	   h.Tasa,

	   Pagado = isnull((select sum(d.valor) 

						from cxpDocumentosDtl d join cxpDocumentos s on d.idDocumento = s.idDocumento 

						where d.idDocXPagar = h.idDocumento 

						and s.Status <> 'C' and d.Fecha <= @hasta),0.00) 

from cxpDocumentos h 

where h.idTrans = 1 and h.fecha <= @hasta 

	  and h.status <> 'C'	    

 

select --c.Guiddocumento,

	   c.Suplidor, 

	   c.Referencia,

	   c.Fecha,

	   m.Moneda,	   

	   --c.idCentroCosto, 

	   Proyecto = cc.CentroCosto,

	   c.Tasa,

	   c.Total,

	   c.Pagado,

	   Pendiente = Total - Pagado

from @cargos c join CentroCosto cc on c.idCentroCosto = cc.idCentroCosto 

    join moneda m on c.idmoneda = m.idmoneda     

where Total > Pagado

	  and c.idCentroCosto is not null 

order by c.idMoneda, c.Fecha, c.Referencia 

return 0 


GO
