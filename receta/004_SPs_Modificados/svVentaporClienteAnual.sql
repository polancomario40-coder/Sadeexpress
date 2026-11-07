
CREATE OR ALTER PROCEDURE svVentaporClienteAnual(@Desde datetime, @Hasta Datetime) as



SELECT     

  TOP 100 PERCENT 

  newid() as ID,

  c.idCliente, 

  c.Cliente, 

  c.Sector, 

  c.Ciudad, 

  c.Grupo, 

  z.Zona, 

  g.ClienteGrupo as Categoria, 

  (Select Max(ff.fecha) 

   from Factura ff 

   where ff.cancelado = 0 and idCliente = c.idCliente) as UltimaFact,

  SUM(CASE WHEN Month(f.fecha) = 1  THEN ((f.SubTotal-f.Descuento)* f.tasa) ELSE 0.00 END) AS Enero,

  SUM(CASE WHEN Month(f.fecha) = 2  THEN ((f.SubTotal-f.Descuento)* f.tasa) ELSE 0.00 END) AS Febrero,

  SUM(CASE WHEN Month(f.fecha) = 3  THEN ((f.SubTotal-f.Descuento)* f.tasa) ELSE 0.00 END) AS Marzo,

  SUM(CASE WHEN Month(f.fecha) = 4  THEN ((f.SubTotal-f.Descuento)* f.tasa) ELSE 0.00 END) AS Abril,

  SUM(CASE WHEN Month(f.fecha) = 5  THEN ((f.SubTotal-f.Descuento)* f.tasa) ELSE 0.00 END) AS Mayo,

  SUM(CASE WHEN Month(f.fecha) = 6  THEN ((f.SubTotal-f.Descuento)* f.tasa) ELSE 0.00 END) AS Junio,

  SUM(CASE WHEN Month(f.fecha) = 7  THEN ((f.SubTotal-f.Descuento)* f.tasa) ELSE 0.00 END) AS Julio,

  SUM(CASE WHEN Month(f.fecha) = 8  THEN ((f.SubTotal-f.Descuento)* f.tasa) ELSE 0.00 END) AS Agosto,

  SUM(CASE WHEN Month(f.fecha) = 9  THEN ((f.SubTotal-f.Descuento)* f.tasa) ELSE 0.00 END) AS Septiembre,

  SUM(CASE WHEN Month(f.fecha) = 10 THEN ((f.SubTotal-f.Descuento)* f.tasa) ELSE 0.00 END) AS Octubre,

  SUM(CASE WHEN Month(f.fecha) = 11 THEN ((f.SubTotal-f.Descuento)* f.tasa) ELSE 0.00 END) AS Noviembre,

  SUM(CASE WHEN Month(f.fecha) = 12 THEN ((f.SubTotal-f.Descuento)* f.tasa) ELSE 0.00 END) AS Diciembre,

  SUM((f.SubTotal-f.Descuento)* f.tasa) AS TotalGral

FROM         

  dbo.Cliente c 

  INNER JOIN dbo.Factura f ON f.idCliente = c.idCliente 

  LEFT JOIN dbo.Zona z ON c.idZona = z.idZona

  LEFT JOIN dbo.ClienteGrupo g ON c.idClienteGrupo = g.idClienteGrupo

  join ClienteStatus cs on c.idClienteStatus = cs.idClienteStatus

where  

  cs.activo = 1

  and (f.Cancelado = 0)

  and f.fecha between @Desde and @Hasta

GROUP BY 

  c.idCliente, 

  c.Cliente, 

  c.Sector, 

  c.Ciudad, 

  z.Zona, 

  c.Grupo, 

  g.ClienteGrupo

ORDER BY

  g.ClienteGrupo,

  c.Cliente


GO
