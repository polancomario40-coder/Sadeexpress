

CREATE OR ALTER PROCEDURE [dbo].[RPTVentasdeProductosResumenPorMoneda](@Desde datetime, @Hasta datetime) AS    

SELECT     TOP 100 PERCENT     

  @Desde as Desde,    

  @Hasta as Hasta,    

  cc.Compania,    

  g.idGrupo,    

  g.Grupo,    

  p.idProducto,     

  p.Producto,     

  f.tasa,    

  m.Moneda,    

  fd.idFacturaDet,    

  fd.Cantidad,     

  fd.Precio as  Precio,     

  fd.LineTotal as LineTotal,    

  fd.Descuento as Descuento,     

  fd.Itbis as Itbis,     

  fd.Itbis * f.Tasa as ItbisRD,   

  fd.Descuento * f.Tasa as DescuentoRD,   

  fd.LineTotal * f.Tasa as LineTotalRD,   

  (fd.LineTotal-fd.Descuento) AS TotalBruto,    

  (fd.LineTotal-fd.Descuento+fd.Itbis) AS TotalNeto,    

  f.Tasa * (fd.LineTotal-fd.Descuento) AS TotalBrutoRD,    

  f.Tasa * (fd.LineTotal-fd.Descuento+fd.Itbis) AS TotalNetoRD,    

  Sum(isnull(dd.DevCantidad,0)) as DevCantidad,    

  Sum(isnull(dd.DevDescuento,0)) as DevDescuento,    

  Sum(isnull(dd.DevItbis,0)) as DevItbis,    

  Sum(isnull(dd.DevLineTotal,0)) as DevLineTotal,    

  Sum(isnull(dd.DevLineTotal,0)-isnull(dd.DevDescuento,0)) AS DevTotalBruto,    

  Sum(isnull(dd.DevLineTotal,0)-isnull(dd.DevDescuento,0)+isnull(dd.DevItbis,0)) AS DevTotalNeto    

INTO    

  #Tmp    

FROM             

  dbo.Factura f     

  INNER JOIN dbo.FacturaDet fd ON f.idFactura = fd.idFactura    

  INNER JOIN dbo.Producto p ON p.idProducto = fd.idProducto    

  INNER JOIN Grupo g on g.idGrupo = p.idGrupo    

  Inner Join Moneda m On (m.IdMoneda = f.IdMoneda)    

  LEFT Join DevolucionDet dd ON fd.idFacturaDet = dd.idFacturaDet    

  Left Join Devolucion dv ON dd.iddevolucion = dv.idDevolucion and dv.fecha between @Desde and @hasta    

  Cross Join Configuracion cc    

WHERE    

  f.fecha between @Desde and @Hasta     

  and ((f.cancelado = 0))-- or (f.cancelado = 1 and f.fechacancelado > @Hasta))    

--  and (isnull(dv.cancelado, 0) = 0)    

GROUP BY     

  cc.Compania,    

  g.idGrupo,    

  g.Grupo,    

  p.idProducto,     

  p.Producto,     

  f.tasa,    

  m.Moneda,    

  fd.idFacturaDet,    

  fd.Cantidad,     

  fd.Precio,     

  fd.LineTotal,    

  fd.Descuento,     

  fd.Itbis,     

  fd.LineTotal-fd.Descuento,    

  fd.LineTotal-fd.Descuento+fd.Itbis    

    

SELECT TOP 100 PERCENT     

  Desde,    

  Hasta,    

  Compania,    

  idGrupo,    

  Grupo,    

  idProducto,     

  Producto,     

  Moneda,    

  SUM(Cantidad-DevCantidad)AS Cantidad,     

  AVG(Precio) AS Precio,     

  SUM(LineTotal-DevLineTotal) AS Total,    

  SUM(Descuento-DevDescuento) AS Descuento,     

  SUM(Itbis-DevItbis) AS Itbis,     

  SUM(TotalBruto-DevTotalBruto) AS TotalBruto,    

  SUM(TotalNeto-DevTotalNeto) AS TotalNeto,    

  sum(TotalBrutoRD) as TotalbrutoRD,  

  SUM(TotalNetoRD) as TotalNetoRD,   

  sum(ItbisRD) as ItbisRD,  

  SUM(DescuentoRD) as DescuentoRD,  

  SUM(LineTotalRD) as LineTotalRD,   

  sum(precio * cantidad) / sum(cantidad) as Promedio,    

  PromedioCat = (select sum(precio * cantidad) / sum(cantidad)    

   from #tmp    

   where idGrupo = fd.idGrupo),    

  PromedioGral = (select sum(precio * cantidad) / sum(cantidad)    

   from #tmp)    

FROM             

  #Tmp fd       

GROUP BY     

  Desde,    

  Hasta,    

  Compania,    

  idGrupo,    

  Grupo,    

  idProducto,     

  Producto,    

  Moneda    

ORDER BY     

  Moneda,    

  idGrupo,     

  Grupo,     

  Producto    

Drop table #Tmp    
GO
