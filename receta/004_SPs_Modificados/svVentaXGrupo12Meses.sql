CREATE OR ALTER PROCEDURE svVentaXGrupo12Meses(@Desde datetime, @Hasta Datetime) 

AS

SELECT       

  TOP 100 PERCENT   

  Newid() as id,  

  pg.Grupo,  

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

  dbo.svEmpleado e   

  INNER JOIN dbo.Factura f ON e.idEmpleado = f.idEmpleado   

  INNER JOIN dbo.FacturaDet fd ON fd.idFactura = f.idFactura  

  INNER JOIN dbo.Producto p ON p.idProducto = fd.idProducto  

  INNER JOIN dbo.Grupo pg ON p.idGrupo = pg.idGrupo  

  INNER JOIN dbo.Linea l ON pg.idLinea = l.idLinea  

  INNER JOIN dbo.Cliente c ON f.idCliente = c.idCliente   

  LEFT JOIN dbo.Zona z ON c.idZona = z.idZona  

  LEFT JOIN dbo.ClienteGrupo g ON c.idClienteGrupo = g.idClienteGrupo  

WHERE       

  (f.Cancelado = 0)  

  and f.fecha between @Desde and @Hasta  

GROUP BY   

  pg.Grupo

ORDER BY 

  pg.Grupo

  


GO
