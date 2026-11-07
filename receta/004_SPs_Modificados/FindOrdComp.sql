CREATE OR ALTER PROCEDURE [dbo].[FindOrdComp](@Orden varchar(100), @Desde Datetime, @Hasta Datetime) AS



Select 

  idOrdComp, 

  OrdComp, 

  Fecha, 

  Referencia, 

  idCliente, 

  Cliente, 

  NotaReferencia AS "Nota de Referencia",

  Total,

  idOrdCompStatus 

From 

  OrdComp 

Where 

  Fecha between @Desde and @Hasta 

Order by 

  Fecha desc




GO
