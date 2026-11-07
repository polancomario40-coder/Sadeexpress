

CREATE OR ALTER PROCEDURE dbo.svFacturas608List

    @Desde DATETIME ,

    @Hasta DATETIME

AS

    SELECT  ft.IdFactura ,

            ft.Factura ,

            REPLACE(ft.ClienteRNC, '-', '') AS ClienteRNC ,

			CASE WHEN LEN(REPLACE(ft.ClienteRNC, '-', '')) = 9 THEN '1'

                 WHEN LEN(REPLACE(ft.ClienteRNC, '-', '')) = 11 THEN '2'

                 ELSE '3'

            END AS idTipoIdentificacion ,

            CASE WHEN LEN(REPLACE(ft.ClienteRNC, '-', '')) = 9 THEN 'RNC'

                 WHEN LEN(REPLACE(ft.ClienteRNC, '-', '')) = 11 THEN 'CEDULA'

                 ELSE 'SIN IDENTIFICACION'

            END AS TipoIdentificacion ,

            ft.CompFiscal ,

            ft.Fecha ,

			ft.TipoAnulacion, 

            ( Subtotal - ft.Descuento + ft.Itbis ) * ft.Tasa AS Total

    FROM    Factura ft

    WHERE   ft.Fecha BETWEEN @Desde AND @Hasta

            AND ft.Cancelado = 1

    ORDER BY ft.CompFiscal ,

            ft.Fecha




GO
