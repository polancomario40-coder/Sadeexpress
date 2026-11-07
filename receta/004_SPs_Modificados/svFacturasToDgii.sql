CREATE OR ALTER PROCEDURE dbo.svFacturasToDgii

    (

     @Desde DATETIME,

     @Hasta DATETIME

    )

AS

    DECLARE @CtaItbis VARCHAR(16),

        @CtaItbisPrima VARCHAR(16)  

  

    SET @CtaItbis = CONVERT(VARCHAR(20), (SELECT    Valor

                                          FROM      Defaults

                                          WHERE     Clave = 'CuentaITBIS'

                                         ))  

    SET @CtaItbisPrima = (SELECT    idCuentaPrima

                          FROM      cgCuentaPrima

                          WHERE     idCuenta = @CtaItbis

                         )  



    SELECT  ft.idFactura,

            ft.Factura,

            REPLACE(cl.RNC_Cedula, '-', '') AS ClienteRNC,

            CASE WHEN cl.IdTipoIdentificacion = 1 THEN 'RNC'

                 WHEN cl.IdTipoIdentificacion = 2 THEN 'CEDULA'

                 WHEN cl.IdTipoIdentificacion = 3 THEN 'SIN IDENTIFICACION'

            END AS TipoIdentificacion,

            ft.CompFiscal,

            '' AS CompFiscalModificado,

            ft.Fecha,

            ft.Itbis * ft.Tasa AS Itbis,

            (SubTotal - ft.Descuento) * ft.Tasa AS SubTotal

    FROM    Factura ft

            INNER JOIN Cliente cl ON (cl.idCliente = ft.idCliente)

    WHERE   ft.Fecha BETWEEN @Desde AND @Hasta

            AND ft.Cancelado = 0  

--*********  

    UNION ALL

    SELECT  cm.idCxc AS IdFactura,

            cm.Cxc AS Factura,

            REPLACE(cl.RNC_Cedula, '-', '') AS ClienteRNC,

            CASE WHEN cl.IdTipoIdentificacion = 1 THEN 'RNC'

                 WHEN cl.IdTipoIdentificacion = 2 THEN 'CEDULA'

                 WHEN cl.IdTipoIdentificacion = 2 THEN 'SIN IDENTIFICACION'

            END AS TipoIdentificacion,

            cm.CompFiscal,

            cc.CompFiscal AS CompFiscalModificado,

            cm.Fecha,  

  --cd.TotalAplicado / ft.Total as Itbis, 

            Itbis = (ISNULL((SELECT SUM(Valor)

                             FROM   cgCodificacion

                             WHERE  GUIDDocumento = cm.idCxc

                                    AND DebCre = 1

                                    AND (idCuenta = @CtaItbis

                                         OR idCuenta = @CtaItbisPrima

                                        )

                            ), 0.00) * -1), 			

  --((cd.TotalAplicado * cd.Tasa) / (ft.Total * cc.Tasa)) * (ft.Itbis * ft.Tasa) As Itbis,  

            (((cm.Total * cm.Tasa)

              - ISNULL((SELECT  SUM(Valor)

                        FROM    cgCodificacion

                        WHERE   GUIDDocumento = cm.idCxc

                                AND DebCre = 1

                                AND idCuenta = @CtaItbis

                                OR idCuenta = @CtaItbisPrima

                       ), 0.00)) * -1) AS SubTotal

    FROM    CxcDet cd

            INNER JOIN Cxc cc ON (cd.idCxcDebito = cc.idCxc)

            INNER JOIN Cxc cm ON (cm.idCxc = cd.idCxc)

            INNER JOIN Factura ft ON (ft.idFactura = cc.idCxc)

            INNER JOIN Cliente cl ON (cl.idCliente = ft.idCliente)

    WHERE   cm.Fecha BETWEEN @Desde AND @Hasta

            --AND LTRIM(RTRIM(ISNULL(cm.compfiscal, ''))) <> ''

            --AND cm.Cancelado = 0

            --AND cm.IdTipoDocumento = 'NC'  

            AND cm.Cancelado = 0

            AND cm.idTipoDocumento = 'NC'

            AND ((cm.CompFiscal IS NOT NULL)

                 AND (cm.CompFiscal <> '')

                )

            AND ((cc.CompFiscal IS NOT NULL)

                 AND (cc.CompFiscal <> '')

                )    


GO
