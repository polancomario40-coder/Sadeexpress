

CREATE OR ALTER PROCEDURE dbo.cxpRemisionGastosDGII2018

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

		  monto_servicios DECIMAL(19,2),

		  monto_bienes DECIMAL(19,2), 

		  monto_facturado DECIMAL(19, 2) ,

          itbis_facturado DECIMAL(19, 2) ,

          itbis_retenido DECIMAL(19, 2) ,

		  itbis_prop DECIMAL(19,2), 

		  itbis_costo DECIMAL(19,2), 

		  itbis_adelantar DECIMAL(19,2),

		  itbis_percibido DECIMAL(19,2),

		  tipo_retencion INT,           

          isr_retenido DECIMAL(19, 2),

		  isr_percibido DECIMAL(19,2), 

		  monto_isc DECIMAL(19,2),

		  otros_imp DECIMAL(19,2),

		  propina DECIMAL(19,2), 

		  FormaPago INT 

        )        

        

    INSERT  INTO @tbl

    (

        keyfield,

        idDocumento,

        tipoDoc,

        rnc_cedula,

        tipo_identificacion,

        tipo_compra,

        compfiscal,

        compfiscal_modif,

        fecha_compfiscal,

        fecha_pago,

        monto_servicios,

        monto_bienes,

        monto_facturado,

        itbis_facturado,

        itbis_retenido,

        itbis_prop,

        itbis_costo,

        itbis_adelantar,

        itbis_percibido,

        tipo_retencion,

        isr_retenido,

        isr_percibido,

        monto_isc,

        otros_imp,

        propina,

        FormaPago

    )    

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

					h.montoFacturadoServicios * h.Tasa, 

					h.montoFacturadoBienes * h.Tasa, 

					(h.montoFacturadoBienes + h.montoFacturadoServicios) * h.Tasa, 

                    h.montoImpuestos * h.Tasa AS itbis_facturado ,                    

                    dbo.cxpRetenidoDoc(h.idDocumento, @desde, @hasta,'ITBIS') AS itbis_retenido ,

					0.00, -- itbis sujeto a prop. 

					h.ItbisCosto * h.Tasa, -- itbis llevado al costo ?                    

                    (h.MontoImpuestos - h.itbisCosto) * h.Tasa AS monto_facturado ,

					NULL AS itbis_percibido, 

					dbo.cxpBuscarTipoRetencionDoc(h.idDocumento, @desde, @hasta, 'ISR'),

                    dbo.cxpRetenidoDoc(h.idDocumento, @desde, @hasta,'ISR') AS isr_retenido,

					NULL AS isr_percibido,

					h.montoIsc,

					h.OtrosImpuestos,

					h.PropinaLegal,

					dbo.cxpBuscarFormaPago(h.idDocumento, @desde, @hasta)					

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

	  (

        keyfield,idDocumento,tipoDoc,rnc_cedula,tipo_identificacion,

        tipo_compra,compfiscal,compfiscal_modif,fecha_compfiscal,

        fecha_pago,monto_servicios,monto_bienes,monto_facturado,

        itbis_facturado,itbis_retenido,itbis_prop,itbis_costo,

        itbis_adelantar,itbis_percibido,tipo_retencion,isr_retenido,

        isr_percibido,monto_isc,otros_imp,propina, FormaPago

      )    

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

					h.montoFacturadoServicios * h.Tasa,

					h.montoFacturadoBienes * h.Tasa,

					(h.montoFacturadoBienes + h.montoFacturadoServicios) * h.Tasa,

                    dbo.cxpTotalItbisDoc(h.idDocumento) AS itbis_facturado ,

                    dbo.cxpRetenidoDoc(h.idDocumento, @desde, @hasta, 'ITBIS') AS itbis_retenido , 

					0.00,

					0.00,

					dbo.cxpTotalItbisDoc(h.idDocumento) AS itbis_adelantar,

					NULL,

					dbo.cxpBuscarTipoRetencionDoc(h.idDocumento, @desde, @hasta, 'ISR') AS tipo_retencion, 

                    dbo.cxpRetenidoDoc(h.idDocumento, @desde, @hasta, 'ISR') AS isr_retenido,

					NULL,

					0,

					0,

					0,

					dbo.cxpBuscarFormaPago(h.idDocumento, @desde, @hasta)

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

ORDER BY            tipo_compra ,

                    h.Fecha ,

                    h.idDocumento        

                

    INSERT  INTO @tbl

	  (

        keyfield,idDocumento,tipoDoc,rnc_cedula,tipo_identificacion,

        tipo_compra,compfiscal,compfiscal_modif,fecha_compfiscal,

        fecha_pago,monto_servicios,monto_bienes,monto_facturado,

        itbis_facturado,itbis_retenido,itbis_prop,itbis_costo,

        itbis_adelantar,itbis_percibido,tipo_retencion,isr_retenido,

        isr_percibido,monto_isc,otros_imp,propina, FormaPago

      )  

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

					h.valor * h.Tasa AS monto_servicios,

					0.00 AS monto_bienes,

					h.Valor * h.Tasa AS monto_facturado ,

                    0.00 AS itbis_facturado ,

                    itbis_retenido = 0.00 ,

					0 AS itbis_prop,

					0 AS itbis_costo,

					0 AS itbis_adelantar,

					NULL AS itbis_percibido,

					NULL AS tipo_retencion,

					isr_retenido = 0.00,

					NULL AS isr_percibido,

					0,

					0, 

					0,

					2 AS FormaPago 

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

	  (

        keyfield,idDocumento,tipoDoc,rnc_cedula,tipo_identificacion,

        tipo_compra,compfiscal,compfiscal_modif,fecha_compfiscal,

        fecha_pago,monto_servicios,monto_bienes,monto_facturado,

        itbis_facturado,itbis_retenido,itbis_prop,itbis_costo,

        itbis_adelantar,itbis_percibido,tipo_retencion,isr_retenido,

        isr_percibido,monto_isc,otros_imp,propina, FormaPago

      )  

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

					SUM(d.Importe) AS servicios,

					0.00 AS bienes,                                         

                    SUM(d.Importe) AS monto_facturado ,

					itbis_facturado = 0.00,

					itbis_retenido = 0.00 ,

					itbis_prop = 0,

					itbis_costo = 0,

					itbis_adelantar = 0,

					NULL AS itbis_perc,

					NULL AS tipo_retencion,

                    isr_retenido = 0.00,

					NULL AS isr_percibido,

					0,

					0,

					0,

					ISNULL(h.IdPagoForma,1) AS forma_pago 

            FROM    bcoGastosMenores h

                    JOIN bcoGastosMenoresDet d ON h.GUIDDocumento = d.GUIDDocumento

            WHERE   h.Fecha BETWEEN @desde AND @hasta

                    AND h.Cancelado = 0

                    AND ISNULL(h.CompFiscal, '') <> ''

            GROUP BY h.GUIDDocumento ,

					ISNULL(h.IdPagoForma,1), 

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
