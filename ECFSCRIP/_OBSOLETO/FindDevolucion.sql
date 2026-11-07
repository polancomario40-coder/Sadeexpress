







CREATE PROCEDURE [dbo].[FindDevolucion](@Orden varchar(10)) AS



Select 

  idDevolucion,

  Devolucion,

  Fecha, 

  Factura,

  convert(varchar(25), cliente) as Cliente 

From 

  Devolucion

Order by

  Fecha Desc

 



