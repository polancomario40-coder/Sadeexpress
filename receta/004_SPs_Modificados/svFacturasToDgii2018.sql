

CREATE OR ALTER PROCEDURE dbo.svFacturasToDgii2018

  @Desde DATETIME ,

  @Hasta DATETIME

AS

    DECLARE @CtaItbis VARCHAR(16), @CtaItbisPrima VARCHAR(16)  

	DECLARE @nullDate DATETIME = NULL,

			@nullMoney DECIMAL(19,2) = NULL,

			@TOPE_FC DECIMAL(19,2) = 50000

  

    SET @CtaItbis = CONVERT(VARCHAR(20), ( SELECT   Valor

                                           FROM     Defaults

                                           WHERE    Clave = 'CuentaITBIS'

                                         ))  

    SET @CtaItbisPrima = ( SELECT   idCuentaPrima

                           FROM     cgCuentaPrima

                           WHERE    idCuenta = @CtaItbis

                         )  



    SELECT  ft.idFactura ,

		    'FT' AS TipoDoc, 

            ft.Factura ,

            REPLACE(ft.ClienteRNC, '-', '') AS ClienteRNC ,            

            ft.CompFiscal ,

            '' AS CompFiscalModificado ,

            ft.Fecha ,

            ft.Itbis * ft.Tasa AS Itbis ,

            ( SubTotal - ft.Descuento ) * ft.Tasa AS MontoFacturado,

			ft.idTipoIngreso,

			ti.Tipo AS TipoIngreso,

			@nullDate AS FechaRetencion,

			0.00 AS ItbisRetenido,

			0.00 AS ISRRetenido, 

			@nullMoney AS ItbisPercibido,

			@nullMoney AS ISRPercibido,

			0.00 AS ImpSelectivo,

			0.00 AS OtrosImpuestos,

			CASE ft.Credito WHEN 0 THEN ISNULL(fc.Efectivo,ft.Total) ELSE 0.00 END AS Efectivo,

			CASE ft.Credito WHEN 0 THEN ISNULL(fc.Cheque,00) ELSE 0.00 END AS Cheque,

			CASE ft.Credito WHEN 0 THEN ISNULL(fc.Tarjeta,0.00) ELSE 0.00 END AS Tarjetas,

			CASE ft.Credito WHEN 0 THEN ISNULL(fc.Otros,0.00) ELSE 0.00 END AS OtrasFormasPago,

			CASE ft.Credito WHEN 1 THEN ft.Total ELSE 0.00 END AS MontoCredito,

			0.00 AS Permuta,

			0.00 AS Propina,

			0.00 AS Bonos

    FROM    Factura ft

            INNER JOIN Cliente cl ON ( cl.idCliente = ft.idCliente )

			LEFT JOIN dbo.svTipoIngreso ti ON ft.idTipoIngreso = ti.idTipo

			LEFT JOIN dbo.FacturaCobro fc ON ft.idFactura = fc.idFactura

    WHERE   ft.Fecha BETWEEN @Desde AND @Hasta

            AND ft.Cancelado = 0

			AND (SUBSTRING(ft.CompFiscal,2,2) <> '02' OR ((( SubTotal - ft.Descuento ) * ft.Tasa) > @TOPE_FC))

			AND ISNULL(ft.CompFiscal,'') <> ''

    UNION ALL

    SELECT  cm.idCxc AS IdFactura ,

		    'CXC' AS TipoDoc, 

            cm.Cxc AS Factura ,

            REPLACE(cl.RNC_Cedula, '-', '') AS ClienteRNC ,            

            cm.CompFiscal ,

            cc.CompFiscal AS CompFiscalModificado ,

            cm.Fecha ,

            Itbis = ( ISNULL(x.itbis, 0.00) * -1 ) ,

            ( ( ( cm.Total * cm.Tasa ) - ISNULL(x.itbis, 0.00) ) * 1 ) AS SubTotal,

			ft.idTipoIngreso,

			ti.Tipo AS TipoIngreso,

			@nullDate AS FechaRetencion,

			0.00 AS ItbisRetenido,

			0.00 AS ISRRetenido, 

			@nullMoney AS ItbisPercibido,

			@nullMoney AS ISRPercibido,

			0.00 AS ImpSelectivo,

			0.00 AS OtrosImpuestos,

			0.00 AS Efectivo,

			0.00 AS Cheque,

			0.00 AS Tarjetas,

			0.00 AS OtrasFormasPago,

			cm.Total MontoCredito,

			0.00 AS Permuta,

			0.00 AS Propina,

			0.00 AS Bonos

    FROM    CxcDet cd

            INNER JOIN Cxc cc ON ( cd.idCxcDebito = cc.idCxc )

            INNER JOIN Cxc cm ON ( cm.idCxc = cd.idCxc )

            INNER JOIN Factura ft ON ( ft.idFactura = cc.idCxc )

            INNER JOIN Cliente cl ON ( cl.idCliente = ft.idCliente )

			LEFT JOIN dbo.svTipoIngreso ti ON ft.idTipoIngreso = ti.idTipo 

            LEFT JOIN ( SELECT  GUIDDocumento ,

                                SUM(Valor) AS itbis

                        FROM    cgCodificacion

                        WHERE   DebCre = 1

                                AND idCuenta = @CtaItbis

                                OR idCuenta = @CtaItbisPrima

                        GROUP BY GUIDDocumento

                      ) x ON x.GUIDDocumento = cm.idCxc

    WHERE   cm.Fecha BETWEEN @Desde AND @Hasta

            AND cm.Cancelado = 0

            AND cm.idTipoDocumento = 'NC'

            AND ( ( cm.CompFiscal IS NOT NULL )

                  AND ( cm.CompFiscal <> '' )

                )

            AND ( ( cc.CompFiscal IS NOT NULL )

                  AND ( cc.CompFiscal <> '' )

                )    

	ORDER BY 5 


GO
