
CREATE OR ALTER PROCEDURE svVentaZonaGrupoAnual(@Desde datetime, @Hasta Datetime) as



SELECT TOP 100 PERCENT 

  Newid() as id,

  f.idEmpleado as Vendedor,

  c.idZona as Zona,

  l.linea,

  g.Grupo,  

  SUM(CASE WHEN Month(f.fecha) = 1  THEN ((fd.LineTotal-fd.Descuento)*f.tasa) ELSE 0.00 END) AS Enero,

  SUM(CASE WHEN Month(f.fecha) = 2  THEN ((fd.LineTotal-fd.Descuento)*f.tasa) ELSE 0.00 END) AS Febrero,

  SUM(CASE WHEN Month(f.fecha) = 3  THEN ((fd.LineTotal-fd.Descuento)*f.tasa) ELSE 0.00 END) AS Marzo,

  SUM(CASE WHEN Month(f.fecha) = 4  THEN ((fd.LineTotal-fd.Descuento)*f.tasa) ELSE 0.00 END) AS Abril,

  SUM(CASE WHEN Month(f.fecha) = 5  THEN ((fd.LineTotal-fd.Descuento)*f.tasa) ELSE 0.00 END) AS Mayo,

  SUM(CASE WHEN Month(f.fecha) = 6  THEN ((fd.LineTotal-fd.Descuento)*f.tasa) ELSE 0.00 END) AS Junio,

  SUM(CASE WHEN Month(f.fecha) = 7  THEN ((fd.LineTotal-fd.Descuento)*f.tasa) ELSE 0.00 END) AS Julio,

  SUM(CASE WHEN Month(f.fecha) = 8  THEN ((fd.LineTotal-fd.Descuento)*f.tasa) ELSE 0.00 END) AS Agosto,

  SUM(CASE WHEN Month(f.fecha) = 9  THEN ((fd.LineTotal-fd.Descuento)*f.tasa) ELSE 0.00 END) AS Septiembre,

  SUM(CASE WHEN Month(f.fecha) = 10 THEN ((fd.LineTotal-fd.Descuento)*f.tasa) ELSE 0.00 END) AS Octubre,

  SUM(CASE WHEN Month(f.fecha) = 11 THEN ((fd.LineTotal-fd.Descuento)*f.tasa) ELSE 0.00 END) AS Noviembre,

  SUM(CASE WHEN Month(f.fecha) = 12 THEN ((fd.LineTotal-fd.Descuento)*f.tasa) ELSE 0.00 END) AS Diciembre,

  SUM(((fd.LineTotal-fd.Descuento)*f.tasa) ) AS TotalGral

FROM         

  dbo.Factura f

  INNER JOIN dbo.FacturaDet fd ON fd.idFactura = f.idFactura

  INNER JOIN dbo.Producto p ON p.idProducto = fd.idProducto

  INNER JOIN dbo.Grupo g ON p.idGrupo = g.idGrupo

  INNER JOIN dbo.Linea l ON g.idLinea = l.idLinea

  INNER JOIN Cliente c on f.idCliente = c.idCliente  	  

  LEFT Join DevolucionDet dd ON fd.idFacturaDet = dd.idFacturaDet

  Left Join Devolucion dv ON dd.iddevolucion = dv.idDevolucion and dv.fecha between @Desde and @hasta

WHERE     

  ((f.Cancelado = 0) or (f.cancelado =1 and f.fechacancelado >@Hasta))

  and f.fecha between @Desde and @Hasta

GROUP BY 

  f.idEmpleado,

  c.idZona,

  l.linea,

  g.Grupo

ORDER BY 

  f.idEmpleado,

  c.idZona,  

  l.linea,

  g.Grupo






GO
