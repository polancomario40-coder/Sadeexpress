
------------ final de:svDevolucion2ProMov ------------



------------ inicio de:svFacturacionMes ------------



CREATE OR ALTER PROCEDURE svFacturacionMes

 @desde datetime,

 @hasta datetime

as

select data.Mes, data.Total

 from 

(

 select datepart(month,fecha) as iMes,

		datename(month,fecha) as Mes,

		sum(Valor * case when Tasa = 0 then 1 else Tasa end) as Total

 from recibo 

 where fecha between @desde and @hasta

       and cancelado = 0

 group by datepart(month,fecha), datename(month,fecha)  

) data

order by imes

return 0 




GO
