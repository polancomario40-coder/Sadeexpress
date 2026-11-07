
CREATE OR ALTER PROCEDURE FindFacturaFR(@Orden varchar(100)) AS



Select 

  idfrFactura, 

  factura,

  FechaInicio as Inicio, 

  FechaFin as Fin,

  convert(varchar(25), cliente) as Cliente ,

  DiaProceso as Dia, 

  Total, 

  DiaProceso

From 

  frFactura 

--Where 

--  Fecha between @Desde and @Hasta

--  and Credito = @Credito

Order by

  Fecha, Factura




GO
