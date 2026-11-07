CREATE OR ALTER PROCEDURE RPTAplicaciondeCobros(@Desde datetime, @Hasta Datetime) AS



declare @Fecha datetime



Set @Fecha = @Desde



SELECT TOP 100 PERCENT 

  @Desde as Desde,

  @Hasta as Hasta,

  f.idCxc AS idFactura, 

  f.Cxc AS Factura, 

  c.idCliente, 

  c.Cliente, 

  f.idTipoDocumento, 

  f.Valor, 

  f.Fecha, 

  pd.Valor AS Aplicado, 

  pd.Fecha AS FechaAplicado, 

  p.Cxc AS Recibo, 

  p.Fecha AS FechaRecibo, 

  p.idCxc AS idRecibo,

  (CASE WHEN (Month(pd.fecha) = month(@Fecha) and year(pd.fecha) = year(@Fecha)) THEN pd.Valor ELSE $0.00 END) as Mes1,

  (CASE WHEN (Month(pd.fecha) = month(dateadd(m,1,@Fecha)) and year(pd.fecha) = year(dateadd(m,1,@Fecha))) THEN pd.Valor ELSE $0.00 END) as Mes2,

  (CASE WHEN (Month(pd.fecha) = month(dateadd(m,2,@Fecha)) and year(pd.fecha) = year(dateadd(m,2,@Fecha))) THEN pd.Valor ELSE $0.00 END) as Mes3,

  (CASE WHEN (Month(pd.fecha) = month(dateadd(m,3,@Fecha)) and year(pd.fecha) = year(dateadd(m,3,@Fecha))) THEN pd.Valor ELSE $0.00 END) as Mes4,

  (CASE WHEN (Month(pd.fecha) = month(dateadd(m,4,@Fecha)) and year(pd.fecha) = year(dateadd(m,4,@Fecha))) THEN pd.Valor ELSE $0.00 END) as Mes5,

  (CASE WHEN (Month(pd.fecha) = month(dateadd(m,5,@Fecha)) and year(pd.fecha) = year(dateadd(m,5,@Fecha))) THEN pd.Valor ELSE $0.00 END) as Mes6,

  (CASE WHEN (Month(pd.fecha) = month(dateadd(m,6,@Fecha)) and year(pd.fecha) = year(dateadd(m,6,@Fecha))) THEN pd.Valor ELSE $0.00 END) as Mes7,

  (CASE WHEN (Month(pd.fecha) = month(dateadd(m,7,@Fecha)) and year(pd.fecha) = year(dateadd(m,7,@Fecha))) THEN pd.Valor ELSE $0.00 END) as Mes8,

  (CASE WHEN (Month(pd.fecha) = month(dateadd(m,8,@Fecha)) and year(pd.fecha) = year(dateadd(m,8,@Fecha))) THEN pd.Valor ELSE $0.00 END) as Mes9,

  (CASE WHEN (Month(pd.fecha) = month(dateadd(m,9,@Fecha)) and year(pd.fecha) = year(dateadd(m,9,@Fecha))) THEN pd.Valor ELSE $0.00 END) as Mes10,

  (CASE WHEN (Month(pd.fecha) = month(dateadd(m,10,@Fecha)) and year(pd.fecha) = year(dateadd(m,10,@Fecha))) THEN pd.Valor ELSE $0.00 END) as Mes11,

  (CASE WHEN (Month(pd.fecha) = month(dateadd(m,11,@Fecha)) and year(pd.fecha) = year(dateadd(m,11,@Fecha))) THEN pd.Valor ELSE $0.00 END) as Mes12

FROM         

  dbo.Cliente c INNER JOIN

  dbo.Cxc f ON c.idCliente = f.idCliente INNER JOIN

  dbo.CxcDet pd ON f.idCxc = pd.idCxcDebito INNER JOIN

  dbo.Cxc p ON pd.idCxc = p.idCxc

WHERE     

  (f.esCredito = 0) 

  AND (f.Cancelado = 0) 

  AND (p.Cancelado = 0)

  AND (f.fecha between @Desde and @Hasta)

ORDER BY f.Fecha, f.Cxc
GO
