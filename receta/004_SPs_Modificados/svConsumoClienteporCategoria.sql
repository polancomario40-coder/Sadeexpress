
CREATE OR ALTER PROCEDURE svConsumoClienteporCategoria(@Desde datetime, @Hasta Datetime, @idClienteGrupo int) as



Select newid() as ID, * 

from 

(SELECT DISTINCT 

  g.ClienteGrupo as Categoria,   

  d.idCliente,

  d.Cliente,  

  pg.Grupo,

  p.idProducto,

  p.Producto,

  isnull((Select sum(xfd.cantidad)

          from facturadet xfd join factura xf on xfd.idfactura = xf.idFactura

          where f.cancelado = 0 

                and xfd.idproducto = p.idProducto 

                and f.idCliente = d.idCliente

                and f.fecha between @Desde and @Hasta),0) as Compra

FROM         

  dbo.Cliente c  

  INNER JOIN dbo.Factura f ON f.idCliente = c.idCliente 

  INNER JOIN dbo.FacturaDet fd ON fd.idFactura = f.idFactura

  INNER JOIN dbo.Producto p ON p.idProducto = fd.idProducto

  INNER JOIN dbo.Grupo pg ON p.idGrupo = pg.idGrupo

  LEFT JOIN dbo.ClienteGrupo g ON c.idClienteGrupo = g.idClienteGrupo

  CROSS JOIN (SELECT DISTINCT xc.idCliente, xc.Cliente   

              FROM  dbo.Cliente xc  

                    LEFT JOIN dbo.ClienteGrupo xg ON xc.idClienteGrupo = xg.idClienteGrupo

              WHERE xc.idClienteGrupo = @idClienteGrupo) d

WHERE     

  c.idClienteGrupo = @idClienteGrupo

  and (f.Cancelado = 0)

  and f.fecha between @Desde and @Hasta) Datos

ORDER BY 

   1,3,2,4,6




GO
