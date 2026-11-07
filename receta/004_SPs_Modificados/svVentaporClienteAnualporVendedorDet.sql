CREATE OR ALTER PROCEDURE [dbo].[svVentaporClienteAnualporVendedorDet](@Desde datetime, @Hasta Datetime) as



SELECT     

  TOP 100 PERCENT 

 -- newid() as key,

  e.empleado as Vendedor,

  c.idCliente, 

  c.Cliente, 

  c.Sector, 

  c.Ciudad, 

  c.Grupo, 

  z.Zona, 

  g.ClienteGrupo as Categoria, 

  fd.idproducto,

  fd.producto,

  (Select Max(ff.fecha) 

   from Factura ff 

   where ff.cancelado = 0 and idCliente = c.idCliente) as UltimaFact,

  SUM(CASE WHEN Month(f.fecha) = 1  THEN ((fd.cantidad)) ELSE 0.00 END) AS Enero,

  SUM(CASE WHEN Month(f.fecha) = 2  THEN ((fd.cantidad)) ELSE 0.00 END) AS Febrero,

  SUM(CASE WHEN Month(f.fecha) = 3  THEN ((fd.cantidad)) ELSE 0.00 END) AS Marzo,

  SUM(CASE WHEN Month(f.fecha) = 4  THEN ((fd.cantidad)) ELSE 0.00 END) AS Abril,

  SUM(CASE WHEN Month(f.fecha) = 5  THEN ((fd.cantidad)) ELSE 0.00 END) AS Mayo,

  SUM(CASE WHEN Month(f.fecha) = 6  THEN ((fd.cantidad)) ELSE 0.00 END) AS Junio,

  SUM(CASE WHEN Month(f.fecha) = 7  THEN ((fd.cantidad)) ELSE 0.00 END) AS Julio,

  SUM(CASE WHEN Month(f.fecha) = 8  THEN ((fd.cantidad)) ELSE 0.00 END) AS Agosto,

  SUM(CASE WHEN Month(f.fecha) = 9  THEN ((fd.cantidad)) ELSE 0.00 END) AS Septiembre,

  SUM(CASE WHEN Month(f.fecha) = 10 THEN ((fd.cantidad)) ELSE 0.00 END) AS Octubre,

  SUM(CASE WHEN Month(f.fecha) = 11 THEN ((fd.cantidad)) ELSE 0.00 END) AS Noviembre,

  SUM(CASE WHEN Month(f.fecha) = 12 THEN ((fd.cantidad)) ELSE 0.00 END) AS Diciembre,

  SUM((fd.cantidad)) AS TotalGral

FROM         

  dbo.Cliente c 

  inner join dbo.svempleado e on c.idempleado = e.idempleado

  INNER JOIN dbo.Factura f ON f.idCliente = c.idCliente 

  INNER JOIN dbo.facturadet fd on f.idfactura = fd.idfactura

  LEFT JOIN dbo.Zona z ON c.idZona = z.idZona

  LEFT JOIN dbo.ClienteGrupo g ON c.idClienteGrupo = g.idClienteGrupo

  join ClienteStatus cs on c.idClienteStatus = cs.idClienteStatus

where  

  cs.activo = 1

  and (f.Cancelado = 0)

  and f.fecha between @Desde and @Hasta

GROUP BY 

  e.empleado,

  c.idCliente, 

  c.Cliente, 

  c.Sector, 

  c.Ciudad, 

  z.Zona, 

  c.Grupo, 

  g.ClienteGrupo,

  fd.idproducto,

  fd.producto

ORDER BY

  e.empleado,

  g.ClienteGrupo,

  c.Cliente,

  fd.idproducto,

  fd.producto


GO
