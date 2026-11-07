CREATE OR ALTER PROCEDURE [dbo].[svCalcComisionCobros]

  @desde datetime,

	    @hasta datetime

as

 

declare @weekend datetime



declare @tbl table (

 Inicio datetime,

 Final datetime, 

 PNoVenc decimal(19,2) ,

 P15 decimal(19,2), 

 P30 decimal(19,2), 

 P45 decimal(19,2), 

 P60 decimal(19,2),

 PMas60 decimal(19,2)

)



declare @aging table (

 inicio datetime,

 final datetime,

 NoVenc decimal(19,2), 

 A15 decimal(19,2), 

 A30 decimal(19,2), 

 A45 decimal(19,2), 

 A60 decimal(19,2),

 AMas60 decimal(19,2))

 	  

declare @fecha datetime



set @fecha = @desde



while @fecha <= @hasta begin

  set @weekend = dateadd(day,6,@fecha)

  if @weekend > @hasta

    set @weekend = @hasta 

  

  insert into @aging

  select @fecha,

	     @weekend,

	     NoVenc,

	     A15,

	     A30,

	     A45,

	     A60,

	     AMas60

  from dbo.cxcResumenAging(@fecha)

  

  -- cobros

  insert into @tbl 

  select @fecha, @weekend, 

		 sum(case when dias <= 0 then d.Valor else 0.00 end) as NoVenc,

		 sum(case when dias between 01 and 15 then d.Valor else 0.00 end) as A15,

		 sum(case when dias between 16 and 30 then d.Valor else 0.00 end) as A30,

		 sum(case when dias between 31 and 45 then d.Valor else 0.00 end) as A45,

		 sum(case when dias between 46 and 60 then d.Valor else 0.00 end) as A60,

		 sum(case when dias between 61 and 120 then d.Valor else 0.00 end) as AMas60		  

  from (

  select dias = datediff(day, (f.Fecha + 30), d.fecha),  

		 d.Valor

  from cxc c 

  join cxcdet d on c.idcxc = d.idcxc

  join factura f on d.idcxcdebito = f.idfactura 

  where d.fecha between @fecha and @weekend

  ) as d 

 

  set @fecha = dateadd(day,7,@fecha)

end



--select * from @aging

--select * from @tbl 

declare @Objetivo decimal(19,2)



set @objetivo = (23000 * 0.15) / (datediff(day, @desde,@hasta) + 1.0)



select KeyField = newid(), 

	   data.*,

	   @objetivo as Objetivo, 

	   Comision15 = (@Objetivo * (datediff(day,inicio, final) + 1.0) * 0.5) * Logro15,

	   Comision30 = (@Objetivo * (datediff(day,inicio, final) + 1.0) * 0.25) * Logro30,

	   Comision45 = (@Objetivo * (datediff(day,inicio, final) + 1.0) * 0.15) * Logro45,

	   Comision65 = (@Objetivo * (datediff(day,inicio, final) + 1.0) * 0.10) * Logro60,

	   Penalidad  = (@Objetivo * (datediff(day,inicio, final) + 1.0) * 0.10) * LogroMas60,

	   ComisionTotal = ((@Objetivo * (datediff(day,inicio, final) + 1.0) * 0.5) * Logro15) + 

	   ((@Objetivo * (datediff(day,inicio, final) + 1) * 0.25) * Logro30) + 

						((@Objetivo * (datediff(day,inicio, final) + 1.0) * 0.15) * Logro45) + 

						((@Objetivo * (datediff(day,inicio, final) + 1.0) * 0.1) * Logro60) + 

						(@Objetivo * (datediff(day,inicio, final) + 1.0) * 0.10) * LogroMas60

from (

select  p.Inicio,

		p.Final,

		datediff(day, p.inicio, p.final) + 1 as Dias, 

		p.PNovenc + p.P15 as P15,

		c.A15 as A15,

		p.P30,

		c.A30,

		p.P45,

		c.A45,

		p.P60,

		c.A60,

		p.PMas60,

		c.AMas60, 

		Logro15 = ((p.PNoVenc + p.P15) / ( c.A15)),

		Logro30 = ((p.P30 / c.A30) ),

		Logro45 = ((p.P45 / c.A45) ),

		Logro60 = ((p.P60 / c.A60)),		

		LogroMas60 = (1.00 - (p.PMas60 / c.AMas60)) * -1 

from @tbl p join @aging c on p.Inicio = c.Inicio) as data

return


GO
