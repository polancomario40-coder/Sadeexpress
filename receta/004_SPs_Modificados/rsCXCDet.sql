CREATE OR ALTER PROCEDURE [dbo].[rsCXCDet]

    @idCXC UNIQUEIDENTIFIER,

    @idCliente INT

AS

    DECLARE @FechaPago DATETIME  

    SET @FechaPago = (SELECT    Fecha

                      FROM      Cxc

                      WHERE     idCxc = @idCXC

                     )  

  

    DECLARE @tbl TABLE

        (

         idCXCDet UNIQUEIDENTIFIER,

         idCXC UNIQUEIDENTIFIER,

         idCXCDebito UNIQUEIDENTIFIER,

         Aplicado DECIMAL(19, 2),

         AplicadoOtros DECIMAL(19, 2),

         Documento VARCHAR(20),

         idTipoDocumento VARCHAR(16),

         idMoneda INT,

         Moneda VARCHAR(16),

         FechaDoc DATETIME,

         TotalDoc DECIMAL(19, 2),

         FechaAplicado DATETIME,

         Tasa FLOAT,

         Tipo TINYINT,

         Descuento DECIMAL(19, 2),

         idClienteObra VARCHAR(16),

         ClienteObra VARCHAR(100)

        )  

  

    INSERT  INTO @tbl

            (idCXCDet,

             idCXC,

             idCXCDebito,

             Aplicado,

             AplicadoOtros,

             Documento,

             idTipoDocumento,

             idMoneda,

             Moneda,

             FechaDoc,

             TotalDoc,

             FechaAplicado,

             Tasa,

             Tipo,

             Descuento,

             idClienteObra,

             ClienteObra

            )

            SELECT  d.idCxcDet,

                    d.idCxc,

                    d.idCxcDebito,

                    d.Valor AS Aplicado,   

--         AplicadoOtros = dbo.cxcBalanceDocumento(d.idCXCDebito, getdate(), d.idCXC),  

                    AplicadoOtros = ISNULL((SELECT  SUM(d2.TotalAplicado)

                                            FROM    Cxc c2

                                                    JOIN CxcDet d2 ON c2.idCxc = d2.idCxc

                                            WHERE   c2.Cancelado = 0

                                                    AND d2.idCxcDebito = d.idCxcDebito

                                                    AND c2.idCxc <> d.idCxc

                                           ), 0.00),

                    c.Cxc,

                    c.idTipoDocumento,

                    c.idMoneda,

                    m.Moneda,

                    c.Fecha AS FechaDoc,

                    c.Valor AS TotalDoc,

                    d.Fecha AS FechaAplicado,

                    d.Tasa,

                    0 AS Tipo,

                    d.Descuento AS Descuento,

                    c.idClienteObra,

                    ISNULL(c.ClienteObra, co.ClienteObra) AS ClienteObra

            FROM    CxcDet d

                    JOIN Cxc c ON d.idCxcDebito = c.idCxc

                    JOIN Moneda m ON c.idMoneda = m.idMoneda

                    LEFT JOIN ClienteObra co ON c.idCliente = co.idCliente

                                                AND c.idClienteObra = co.idClienteObra

            WHERE   d.idCxc = @idCXC  

  

    INSERT  INTO @tbl

            (idCXCDebito,

             Aplicado,

             AplicadoOtros,

             Documento,

             idTipoDocumento,

             idMoneda,

             Moneda,

             FechaDoc,

             TotalDoc,

             FechaAplicado,

             Tasa,

             Tipo,

             Descuento,

             idClienteObra,

             ClienteObra

            )

            SELECT  c.idCxc AS idCXCDebito,

                    0.00 AS Aplicado,  

--       AplicadoOtros = dbo.cxcBalanceDocumento(c.idCXC, getdate(), null),  

                    AplicadoOtros = ISNULL((SELECT  SUM(d2.TotalAplicado)

                                            FROM    Cxc c2

                                                    JOIN CxcDet d2 ON c2.idCxc = d2.idCxc

                                            WHERE   c2.Cancelado = 0

                                                    AND d2.idCxcDebito = c.idCxc

                                           ), 0.00),

                    c.Cxc,

                    c.idTipoDocumento,

                    c.idMoneda,

                    m.Moneda,

                    c.Fecha AS FechaDoc,

                    c.Valor AS TotalDoc,

                    NULL AS FechaAplicado,

                    dbo.fTasaActual(c.idMoneda, @FechaPago) AS Tasa,

                    1 AS Tipo,

                    0.00 AS Descuento,

                    c.idClienteObra,

                    ISNULL(c.ClienteObra, co.ClienteObra) AS ClienteObra

            FROM    Cxc c

                    JOIN Moneda m ON c.idMoneda = m.idMoneda

                    LEFT JOIN ClienteObra co ON c.idCliente = co.idCliente

                                                AND c.idClienteObra = co.idClienteObra

            WHERE   c.idCliente = @idCliente

                    AND c.esCredito = 0

                    AND NOT EXISTS ( SELECT 1

                                     FROM   @tbl

                                     WHERE  idCXCDebito = c.idCxc )    

  

    SELECT  *,

            Balance = TotalDoc - (Aplicado + AplicadoOtros + Descuento)

    FROM    @tbl

    WHERE   (Tipo = 0

             OR TotalDoc > (Aplicado + AplicadoOtros)

            )

    ORDER BY FechaDoc,

            Documento               

           

    RETURN 0    


GO
