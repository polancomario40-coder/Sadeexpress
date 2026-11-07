

CREATE OR ALTER PROCEDURE dbo.svFacturasToDgiiResumen2018

  @Desde DATETIME ,

  @Hasta DATETIME

AS

    DECLARE @CtaItbis VARCHAR(16), @CtaItbisPrima VARCHAR(16)  

  

    SET @CtaItbis = CONVERT(VARCHAR(20), ( SELECT   Valor

                                           FROM     Defaults

                                           WHERE    Clave = 'CuentaITBIS'

                                         ))  

    SET @CtaItbisPrima = ( SELECT   idCuentaPrima

                           FROM     cgCuentaPrima

                           WHERE    idCuenta = @CtaItbis

                         )  

	DECLARE @resumen TABLE (id INT, Concepto VARCHAR(200), Valor VARCHAR(100))



	DECLARE @cant INT, 

			@itbis MONEY,

			@montoFacturado  MONEY,

			@efectivo MONEY,

			@cheque MONEY,

			@tarjeta MONEY,

			@otras MONEY,

			@credito MONEY



	SELECT  @cant = COUNT(*),

		    @itbis = SUM(ft.Itbis * ft.Tasa),

            @montoFacturado = SUM(( SubTotal - ft.Descuento ) * ft.Tasa),			

			@efectivo = SUM(CASE ft.Credito WHEN 0 THEN ISNULL(fc.Efectivo,ft.Total) ELSE 0.00 END),

			@cheque = SUM(CASE ft.Credito WHEN 0 THEN ISNULL(fc.Cheque,00) ELSE 0.00 END),

			@tarjeta = SUM(CASE ft.Credito WHEN 0 THEN ISNULL(fc.Tarjeta,0.00) ELSE 0.00 END),

			@otras = SUM(CASE ft.Credito WHEN 0 THEN ISNULL(fc.Otros,0.00) ELSE 0.00 END),

			@credito = SUM(CASE ft.Credito WHEN 1 THEN ft.Total ELSE 0.00 END)

    FROM    Factura ft            			

			LEFT JOIN dbo.FacturaCobro fc ON ft.idFactura = fc.idFactura

    WHERE   ft.Fecha BETWEEN @Desde AND @Hasta

            AND ft.Cancelado = 0

			AND SUBSTRING(ft.CompFiscal,2,2) = '02'

			AND ISNULL(ft.CompFiscal,'') <> ''



  INSERT INTO @resumen

  (id, Concepto, Valor )

  VALUES

  (01, 'Cantidad de NCFs Emitidos de F.C.', CONVERT(VARCHAR(20), @cant)),

  (02, 'Total Monto Facturado', CONVERT(VARCHAR(100), @montoFacturado, 101)),

  (03, 'Total ITBIS Facturado', CONVERT(VARCHAR(100), @itbis, 101)),

  (04, 'Impuesto Selectivo al Consumo', '0'),

  (05, 'Total Otros Impuestos/Tasas', '0'),

  (06, 'Total Monto Propina Legal', '0'),

  (07, 'EFECTIVO', CONVERT(VARCHAR(100), @efectivo, 101)),

  (08, 'CHEQUE/TRANSFERENCIA/DEPOSITO', CONVERT(VARCHAR(100), @cheque, 101)),

  (09, 'TARJETA DEBITO/CREDITO', CONVERT(VARCHAR(100), @tarjeta, 101)),

  (10, 'BONOS O CERTIFICADOS DE REGALO', '0'),

  (11, 'PERMUTA', '0'),

  (12, 'OTRAS FORMAS DE VENTAS', '0')



  SELECT * FROM @resumen ORDER BY id 


GO
