
CREATE OR ALTER PROCEDURE svVentaProductoAnual(@Desde datetime, @Hasta Datetime, @idZona varchar(16)) as



SELECT TOP 100 PERCENT 

  Newid() as id,

  l.linea,

  g.Grupo,  

  p.idProducto,

  p.Producto,

  SUM(CASE WHEN Month(f.fecha) = 1  THEN ((fd.LineTotal-fd.Descuento)*f.tasa) ELSE 0.00 END) AS Enero,

  SUM(CASE WHEN Month(f.fecha) = 1  THEN (fd.cantidad) ELSE 0.00 END) AS EneCant,

  SUM(CASE WHEN Month(f.fecha) = 2  THEN ((fd.LineTotal-fd.Descuento)*f.tasa) ELSE 0.00 END) AS Febrero,

  SUM(CASE WHEN Month(f.fecha) = 2  THEN (fd.cantidad) ELSE 0.00 END) AS FebCant,

  SUM(CASE WHEN Month(f.fecha) = 3  THEN ((fd.LineTotal-fd.Descuento)*f.tasa) ELSE 0.00 END) AS Marzo,

  SUM(CASE WHEN Month(f.fecha) = 3  THEN (fd.cantidad) ELSE 0.00 END) AS MarCant,

  SUM(CASE WHEN Month(f.fecha) = 4  THEN ((fd.LineTotal-fd.Descuento)*f.tasa) ELSE 0.00 END) AS Abril,

  SUM(CASE WHEN Month(f.fecha) = 4  THEN (fd.cantidad) ELSE 0.00 END) AS AbrCant,

  SUM(CASE WHEN Month(f.fecha) = 5  THEN ((fd.LineTotal-fd.Descuento)*f.tasa) ELSE 0.00 END) AS Mayo,

  SUM(CASE WHEN Month(f.fecha) = 5  THEN (fd.cantidad) ELSE 0.00 END) AS MayCant,

  SUM(CASE WHEN Month(f.fecha) = 6  THEN ((fd.LineTotal-fd.Descuento)*f.tasa) ELSE 0.00 END) AS Junio,

  SUM(CASE WHEN Month(f.fecha) = 6  THEN (fd.cantidad) ELSE 0.00 END) AS JunCant,

  SUM(CASE WHEN Month(f.fecha) = 7  THEN ((fd.LineTotal-fd.Descuento)*f.tasa) ELSE 0.00 END) AS Julio,

  SUM(CASE WHEN Month(f.fecha) = 7  THEN (fd.cantidad) ELSE 0.00 END) AS JulCant,

  SUM(CASE WHEN Month(f.fecha) = 8  THEN ((fd.LineTotal-fd.Descuento)*f.tasa) ELSE 0.00 END) AS Agosto,

  SUM(CASE WHEN Month(f.fecha) = 8  THEN (fd.cantidad) ELSE 0.00 END) AS AgoCant,

  SUM(CASE WHEN Month(f.fecha) = 9  THEN ((fd.LineTotal-fd.Descuento)*f.tasa) ELSE 0.00 END) AS Septiembre,

  SUM(CASE WHEN Month(f.fecha) = 9  THEN (fd.cantidad) ELSE 0.00 END) AS SepCant,

  SUM(CASE WHEN Month(f.fecha) = 10 THEN ((fd.LineTotal-fd.Descuento)*f.tasa) ELSE 0.00 END) AS Octubre,

  SUM(CASE WHEN Month(f.fecha) = 10  THEN (fd.cantidad) ELSE 0.00 END) AS OctCant,

  SUM(CASE WHEN Month(f.fecha) = 11 THEN ((fd.LineTotal-fd.Descuento)*f.tasa) ELSE 0.00 END) AS Noviembre,

  SUM(CASE WHEN Month(f.fecha) = 11  THEN (fd.cantidad) ELSE 0.00 END) AS NovCant,

  SUM(CASE WHEN Month(f.fecha) = 12 THEN ((fd.LineTotal-fd.Descuento)*f.tasa) ELSE 0.00 END) AS Diciembre,

  SUM(CASE WHEN Month(f.fecha) = 12  THEN (fd.cantidad) ELSE 0.00 END) AS DicCant,

  SUM(((fd.LineTotal-fd.Descuento)*f.tasa) ) AS TotalGral,

  SUM(fd.Cantidad) AS TotalCant

FROM         

  dbo.Factura f

  INNER JOIN dbo.FacturaDet fd ON fd.idFactura = f.idFactura

  INNER JOIN dbo.Producto p ON p.idProducto = fd.idProducto

  INNER JOIN dbo.Grupo g ON p.idGrupo = g.idGrupo

  INNER JOIN dbo.Linea l ON g.idLinea = l.idLinea

  INNER JOIN Cliente c on f.idCliente = c.idCliente

WHERE     

  (f.Cancelado = 0)

  and f.fecha between @Desde and @Hasta

  and ((@idZona is null) or (c.idZona = @idZona))

GROUP BY 

  l.linea,

  g.Grupo,  

  p.idProducto,

  p.Producto

ORDER BY   

  l.linea,

  g.Grupo,

  p.idProducto








GO
