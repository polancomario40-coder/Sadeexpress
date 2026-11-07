CREATE OR ALTER PROCEDURE [dbo].[cxpRemisionGastosDGII2011] --'01/01/2007','03/31/2007'      

    @desde DATETIME ,

    @hasta DATETIME

AS

    DECLARE @ctaRets VARCHAR(16) ,

        @mi_rnc VARCHAR(11)      

           

    SELECT TOP 1

            @mi_rnc = RNC

    FROM    Configuracion      

      

    DECLARE @tbl TABLE

        (

          keyfield UNIQUEIDENTIFIER ,

          idDocumento INT ,

          tipoDoc INT ,

          rnc_cedula VARCHAR(11) ,

          tipo_identificacion INT ,

          tipo_compra VARCHAR(2) ,

          compfiscal VARCHAR(19) ,

          compfiscal_modif VARCHAR(19) ,

          fecha_compfiscal DATETIME ,

          fecha_pago DATETIME ,

          itbis_facturado DECIMAL(19, 2) ,

          itbis_retenido DECIMAL(19, 2) ,

          monto_facturado DECIMAL(19, 2) ,

          isr_retenido DECIMAL(19, 2)

        )      

      

    INSERT  INTO @tbl

            SELECT  h.GUIDDocumento ,

                    h.idDocumento ,

                    1 ,

                    SUBSTRING(REPLACE(h.RNC, '-', ''), 1, 11) AS rnc_cedula ,

                    CONVERT(INT, h.idTipoIdentificacion) AS tipo_identificacion ,

                    CASE tt.DebCre

                      WHEN 2 THEN h.idClaseGasto

                      ELSE dbo.cxpBuscarClaseGtoModificado(h.idDocumento)

                    END AS tipo_compra ,

                    h.CompFiscal ,

                    dbo.cxpBuscarNCFModificado(h.idDocumento) AS compfiscal_modif ,

                    h.Fecha AS fecha_compfiscal ,

                    dbo.cxpBuscarFechaPago(h.idDocumento, @desde, @hasta) AS fecha_pago ,      

                    --dbo.cxpTotalItbisDoc(h.idDocumento) AS itbis_facturado ,	       

                    CASE WHEN h.idTrans = 25

                         THEN ( dbo.cxpTotalItbisDoc(h.idDocumento) * -1 )

                         ELSE dbo.cxpTotalItbisDoc(h.idDocumento)

                    END AS itbis_facturado ,

                    CASE WHEN h.idTrans = 25

                         THEN ( dbo.cxpRetenidoDoc(h.idDocumento, @desde,

                                                   @hasta, 'ITBIS') * -1 )

                         ELSE dbo.cxpRetenidoDoc(h.idDocumento, @desde, @hasta,

                                                 'ITBIS')

                    END AS itbis_retenido ,

                    CASE WHEN h.idTrans = 25

                         THEN ( ( ( h.Total * h.Tasa )

                                  - dbo.cxpTotalItbisDoc(h.idDocumento) ) * -1 )

                         ELSE ( ( h.Total * h.Tasa )

                                - dbo.cxpTotalItbisDoc(h.idDocumento) )

                    END AS monto_facturado ,

                    CASE WHEN h.idTrans = 25

                         THEN ( dbo.cxpRetenidoDoc(h.idDocumento, @desde,

                                                   @hasta, 'ISR') * -1 )

                         ELSE dbo.cxpRetenidoDoc(h.idDocumento, @desde, @hasta,

                                                 'ISR')

                    END AS isr_retenido

            FROM    cxpDocumentos h

                    JOIN cxpSuplidores s ON h.idSuplidor = s.idSuplidor

                    JOIN TiposTrans tt ON h.idTrans = tt.idTrans

                                          AND tt.Sistema = 'CXP'

            WHERE   --tt.DebCre = 2 and      

                    h.Fecha BETWEEN @desde AND @hasta

                    AND ISNULL(h.Status, 'A') <> 'C'

                    AND ISNULL(h.CompFiscal, '') <> ''

                    AND h.idTrans <> 20

            ORDER BY tipo_compra ,

                    h.Fecha ,

                    h.idDocumento     

      

    INSERT  INTO @tbl

            SELECT  h.GUIDDocumento ,

                    h.idDocumento ,

                    1 ,

                    SUBSTRING(REPLACE(h.RNC, '-', ''), 1, 11) AS rnc_cedula ,

                    CONVERT(INT, h.idTipoIdentificacion) AS tipo_identificacion ,

                    CASE tt.DebCre

                      WHEN 2 THEN h.idClaseGasto

                      ELSE '00'

                    END AS tipo_compra ,

                    h.CompFiscal ,

                    dbo.cxpBuscarNCFModificado(h.idDocumento) AS compfiscal_modif ,

                    h.Fecha AS fecha_compfiscal ,

                    dbo.cxpBuscarFechaPago(h.idDocumento, @desde, @hasta) AS fecha_pago ,

                    dbo.cxpTotalItbisDoc(h.idDocumento) AS itbis_facturado ,

                    dbo.cxpRetenidoDoc(h.idDocumento, @desde, @hasta, 'ITBIS') AS itbis_retenido ,

                    ( h.Total * h.Tasa ) - dbo.cxpTotalItbisDoc(h.idDocumento) AS monto_facturado ,

                    dbo.cxpRetenidoDoc(h.idDocumento, @desde, @hasta, 'ISR') AS isr_retenido

            FROM    cxpDocumentos h

                    JOIN cxpSuplidores s ON h.idSuplidor = s.idSuplidor

                    JOIN TiposTrans tt ON h.idTrans = tt.idTrans

                                          AND tt.Sistema = 'CXP'

            WHERE   tt.DebCre = 2

                    AND h.Fecha < @desde

                    AND EXISTS ( SELECT 1

                                 FROM   cxpDocumentosDtl

                                 WHERE  IdDocXPagar = h.idDocumento

                                        AND Fecha BETWEEN @desde AND @hasta )

                    AND dbo.cxpBuscarFechaPago(h.idDocumento, @desde, @hasta) BETWEEN @desde

                                                              AND

                                                              @hasta

                    AND dbo.cxpRetenidoDoc(h.idDocumento, @desde, @hasta, '') > 0.00

                    AND ISNULL(h.CompFiscal, '') <> ''      

 --and h.idTrans <> 20      

ORDER BY            tipo_compra ,

                    h.Fecha ,

                    h.idDocumento      

      

      

    INSERT  INTO @tbl

            SELECT  h.GUIDDocumento ,

                    h.idDocumento ,

                    2 ,

                    REPLACE(b.RNC_Banco, '-', '') AS rnc_cedula ,

                    '1' AS tipo_identificacion ,

                    '07' AS tipo_compra ,

                    h.CompFiscal ,

                    ' ' AS compfiscal_modif ,

                    h.Fecha AS fecha_compfiscal ,

                    NULL AS fecha_pago ,

                    0.00 AS itbis_facturado ,

                    itbis_retenido = 0.00 ,

                    h.Valor * h.Tasa AS monto_facturado ,

                    isr_retenido = 0.00

            FROM    bcoDocumentos h

                    JOIN cxpBancos b ON h.idCuentaBanco = b.idCuentaBanco      

 --join TiposTrans tt on h.idTrans = tt.idTrans and tt.Sistema = 'CXP'      

            WHERE   --tt.DebCre = 2 and      

                    h.Fecha BETWEEN @desde AND @hasta

                    AND ISNULL(h.Status, 'A') <> 'C'

                    AND ISNULL(h.CompFiscal, '') <> ''

            ORDER BY tipo_compra ,

                    h.Fecha ,

                    h.idDocumento      

      

    INSERT  INTO @tbl

            SELECT  h.GUIDDocumento ,

                    0 AS idDocumento ,

                    3 ,

                    REPLACE(@mi_rnc, '-', '') AS rnc_cedula ,

                    '1' AS tipo_identificacion ,

                    h.idClaseGasto AS tipo_compra ,

                    h.CompFiscal ,

                    ' ' AS compfiscal_modif ,

                    h.Fecha AS fecha_compfiscal ,

                    NULL AS fecha_pago ,

                    0.00 AS itbis_facturado ,

                    itbis_retenido = 0.00 ,

                    SUM(d.Importe) AS monto_facturado ,

                    isr_retenido = 0.00

            FROM    bcoGastosMenores h

                    JOIN bcoGastosMenoresDet d ON h.GUIDDocumento = d.GUIDDocumento

            WHERE   h.Fecha BETWEEN @desde AND @hasta

                    AND ISNULL(h.CompFiscal, '') <> ''

            GROUP BY h.GUIDDocumento ,

                    h.CompFiscal ,

                    h.idClaseGasto ,

                    h.Fecha

            ORDER BY tipo_compra ,

                    h.Fecha ,

                    h.CompFiscal      

      

    SELECT  *

    FROM    @tbl

    ORDER BY fecha_compfiscal  





      

    RETURN 0      






GO
