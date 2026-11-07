CREATE OR ALTER PROCEDURE [dbo].[ws_lg_ConsumosCliente] 

 @idcliente int

as

declare @hasta datetime,

	    @desde datetime



set @hasta = GETDATE()

set @desde = '01/01/' + convert(varchar,YEAR(@hasta))

	    

select dbo.cbsNombreMes(CONVERT(datetime, sMes + '/01/' + sAnno)) + '/' + sAnno as Mes,

	   CONVERT(datetime, sMes + '/01/' + sAnno) as Corte,

	   TotalRD,

	   Total

from (

select convert(varchar,MONTH(Fecha)) as sMes,

	   convert(varchar,YEAR(Fecha)) as sAnno,	   

	   SUM(Total * Tasa) as TotalRD,

	   SUM(Total) as Total

from Factura 

where idCliente = @idcliente

	  and Cancelado = 0 

	  and Fecha between @desde and @hasta

group by convert(varchar,MONTH(Fecha)), convert(varchar,YEAR(Fecha))

) as data

order by convert(int, sAnno), convert(int, sMes)

return


GO
