CREATE OR ALTER PROCEDURE [dbo].[svToDGINCFVentas]

    (

     @Desde DATETIME,

     @Hasta DATETIME

    )

AS

    DECLARE @Registro INT,

        @TotalFact DECIMAL(19, 2),

        @TotalNCR DECIMAL(19, 2),

        @RNC VARCHAR(11),

        @Regular BIT  

  

    DECLARE @CtaItbis VARCHAR(16),

        @CtaItbisPrima VARCHAR(16)  

  

    SELECT  @CtaItbis = CONVERT(VARCHAR(20), (SELECT    Valor

                                              FROM      Defaults

                                              WHERE     Clave = 'CuentaITBIS'

                                             )),

            @CtaItbisPrima = (SELECT    idCuentaPrima

                              FROM      cgCuentaPrima

                              WHERE     idCuenta = @CtaItbis

                             ),

            @Regular = ISNULL((SELECT   CASE WHEN CONVERT(BIT, Valor) = 1

                                             THEN 1

                                             ELSE 0

                                        END

                               FROM     Defaults

                               WHERE    Clave = 'INICIO_AÑO'

                              ), 1)  

  

    SELECT  ft.Fecha,

            dbo.rpad(REPLACE(ISNULL(ft.ClienteRNC, ''), '-', ''), ' ', 11)

            + CASE DATALENGTH(REPLACE(ISNULL(ft.ClienteRNC, ''), '-', ''))

                WHEN 9 THEN '1'

                WHEN 11 THEN '2'

                ELSE CASE WHEN DATALENGTH(ft.CompFiscal) > 10

                               AND SUBSTRING(ft.CompFiscal, 10, 2) = '01'

                          THEN '1'

                          ELSE '3'

                     END

              END + CASE WHEN @Regular = 0 THEN dbo.lpad(Factura, ' ', 25)

                         ELSE ''

                    END + ft.CompFiscal + REPLICATE(' ', 19)

            + CONVERT(VARCHAR(8), Fecha, 112)

            + dbo.lpad(CONVERT(VARCHAR(12), CONVERT(DECIMAL(12, 2), ROUND(ft.Itbis

                                                              * ft.Tasa, 2))),

                       '0', 12)

            + dbo.lpad(CONVERT(VARCHAR(12), CONVERT(DECIMAL(12, 2), ROUND(ft.Tasa

                                                              * (ft.SubTotal

                                                              - ft.Descuento),

                                                              2))), '0', 12) AS Cadena

    INTO    #Tmp

    FROM    Factura ft

    WHERE   ft.Fecha BETWEEN @Desde AND @Hasta

            AND Cancelado = 0  

--************** NOTAS DE CREDITO********************

    UNION ALL

    SELECT  cc.Fecha,

            dbo.rpad(REPLACE(ISNULL(ft.ClienteRNC, ''), '-', ''), ' ', 11)

            + CASE DATALENGTH(REPLACE(ISNULL(ft.ClienteRNC, ''), '-', ''))

                WHEN 9 THEN '1'

                WHEN 11 THEN '2'

                ELSE CASE WHEN DATALENGTH(ft.CompFiscal) > 10

                               AND SUBSTRING(ft.CompFiscal, 10, 2) = '01'

                          THEN '1'

                          ELSE '3'

                     END

              END + CASE WHEN @Regular = 0 THEN dbo.lpad(Factura, ' ', 25)

                         ELSE ''

                    END + cm.CompFiscal + cc.CompFiscal

            + CONVERT(VARCHAR(8), cm.Fecha, 112)

            + dbo.lpad(CONVERT(VARCHAR(12), ISNULL((SELECT  SUM(Valor)

                                                    FROM    cgCodificacion

                                                    WHERE   GUIDDocumento = cm.idCxc

                                                            AND DebCre = 1

                                                            AND (idCuenta = @CtaItbis

                                                              OR idCuenta = @CtaItbisPrima

                                                              )

                                                   ), 0.00)), '0', 12)

            + dbo.lpad(CONVERT(VARCHAR(12), CONVERT(DECIMAL(12, 2), ((cd.TotalAplicado

                                                              * cd.Tasa)

                                                              - ISNULL((SELECT

                                                              SUM(Valor)

                                                              FROM

                                                              cgCodificacion

                                                              WHERE

                                                              GUIDDocumento = cm.idCxc

                                                              AND DebCre = 1

                                                              AND (idCuenta = @CtaItbis

                                                              OR idCuenta = @CtaItbisPrima

                                                              )

                                                              ), 0.00)))), '0',

                       12)

    FROM    CxcDet cd

            INNER JOIN Cxc cc ON (cd.idCxcDebito = cc.idCxc)

            INNER JOIN Cxc cm ON (cm.idCxc = cd.idCxc)

            INNER JOIN Factura ft ON (ft.idFactura = cc.idCxc)

    WHERE   cm.Fecha BETWEEN @Desde AND @Hasta

            AND cm.Cancelado = 0

            AND cm.idTipoDocumento = 'NC'

            AND ((cm.CompFiscal IS NOT NULL)

                 AND (cm.CompFiscal <> '')

                )

            AND ((cc.CompFiscal IS NOT NULL)

                 AND (cc.CompFiscal <> '')

                )

    ORDER BY 1 



    SELECT  @Registro = COUNT(*)

    FROM    #Tmp  

  

    SELECT  @TotalFact = SUM((SubTotal - Descuento) * Tasa)

    FROM    Factura ft

    WHERE   ft.Fecha BETWEEN @Desde AND @Hasta

            AND Cancelado = 0  

  

    SELECT  @TotalNCR = SUM(cd.TotalAplicado * cd.Tasa) --cm.total * cm.tasa

            - ISNULL(SUM(x.Valor), 0)

    FROM    CxcDet cd

            INNER JOIN Cxc cc ON (cd.idCxcDebito = cc.idCxc)

            INNER JOIN Cxc cm ON (cm.idCxc = cd.idCxc)

            INNER JOIN Factura ft ON (ft.idFactura = cc.idCxc)

            LEFT JOIN (SELECT   GUIDDocumento,

                                Valor

                       FROM     cgCodificacion

                       WHERE    DebCre = 1

                                AND (idCuenta = @CtaItbis

                                     OR idCuenta = @CtaItbisPrima

                                    )

                      ) x ON x.GUIDDocumento = cm.idCxc

    WHERE   cm.Fecha BETWEEN @Desde AND @Hasta

            AND cm.Cancelado = 0

            AND cm.idTipoDocumento = 'NC'

            AND ((cm.CompFiscal IS NOT NULL)

                 AND (cm.CompFiscal <> '')

                )

            AND ((cc.CompFiscal IS NOT NULL)

                 AND (cc.CompFiscal <> '')

                )  

  

    SELECT  @TotalFact = ISNULL(@TotalFact, 0.00),

            @TotalNCR = ISNULL(@TotalNCR, 0.00)  

  

    SET @RNC = REPLACE((SELECT TOP 1

                                RNC

                        FROM    Configuracion

                       ), '-', '')  

  

    SELECT  CASE WHEN @Regular = 1 THEN '607'

                 ELSE '611'

            END + REPLACE(ISNULL(@RNC, ''), '-', '') + REPLICATE(' ',

                                                              11

                                                              - DATALENGTH(REPLACE(ISNULL(@RNC,

                                                              ''), '-', '')))

            + CONVERT(VARCHAR(4), YEAR(@Desde)) + REPLICATE('0',

                                                            2

                                                            - DATALENGTH(CONVERT(VARCHAR(2), MONTH(@Desde))))

            + CONVERT(VARCHAR(2), MONTH(@Desde)) + REPLICATE('0',

                                                             12

                                                             - DATALENGTH(CONVERT(VARCHAR(12), @Registro)))

            + CONVERT(VARCHAR(12), @Registro) + REPLICATE('0',

                                                          16

                                                          - DATALENGTH(CONVERT(VARCHAR(16), SUM(@TotalFact

                                                              - @TotalNCR))))

            + CONVERT(VARCHAR(16), SUM(@TotalFact - @TotalNCR)) AS Cadena

    UNION ALL

    SELECT  Cadena

    FROM    #Tmp




GO
