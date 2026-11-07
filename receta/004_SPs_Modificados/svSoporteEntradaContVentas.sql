CREATE OR ALTER PROCEDURE [dbo].[svSoporteEntradaContVentas]

    @Desde DATETIME ,

    @Hasta DATETIME

AS

    SELECT  c.idCodificacion AS ID ,

            f.Factura ,

            f.Fecha ,

            f.Cliente ,

            c.idCuenta ,

            ISNULL(cat.Descripcion, '*** ERROR DE CUENTA ***') AS Descripcion ,

            Debito = CASE WHEN c.DebCre = 1 THEN Valor

                          ELSE 0.00

                     END ,

            Credito = CASE WHEN c.DebCre = 2 THEN Valor

                           ELSE 0.00

                      END

    FROM    factura f

            LEFT JOIN cgCodificacion c ON f.idFactura = c.GuidDocumento

            LEFT JOIN cgCatalogoCuentas cat ON c.idCuenta = cat.idCuenta

    WHERE   f.fecha BETWEEN @desde AND @hasta

            AND f.Cancelado = 0

    ORDER BY f.Fecha ,

            f.Factura ,

            8 DESC ,

            --c.Credito ,

            c.idCuenta

  



    RETURN   


GO
