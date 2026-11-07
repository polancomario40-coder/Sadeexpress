CREATE OR ALTER PROCEDURE [dbo].[svGenFacturaNDPresupuesto]

    @idCotizacion UNIQUEIDENTIFIER,

    @Usuario VARCHAR(30),

    @idFactura UNIQUEIDENTIFIER OUTPUT

AS

    DECLARE @Fecha DATETIME

    SET @Fecha = (SELECT    CONVERT(DATETIME, ROUND(CONVERT(FLOAT, GETDATE()),

                                                    0, 1))

                 )



    SET @idFactura = NULL

    IF EXISTS ( SELECT  1

                FROM    Factura

                WHERE   idReferencia = @idCotizacion

                        AND Cancelado = 0 )

        BEGIN

            RETURN -2

        END



    DECLARE @idFact UNIQUEIDENTIFIER 

    DECLARE @fno VARCHAR(16)

    DECLARE @itbisCliente BIT,

        @idCliente INT,

        @Terminal VARCHAR(100),

        @Tasa FLOAT,

        @Desc FLOAT,

        @MtoDesc DECIMAL(19, 2)



    SELECT  @Terminal = HOST_NAME()



    DECLARE @SubTotal DECIMAL(19, 2),

        @itbis DECIMAL(19, 2),

        @Total DECIMAL(19, 2),

        @TotalItbis DECIMAL(19, 2),

        @VencimientoNCF DATETIME,

        @reorden BIT



    DECLARE @RC INT

    DECLARE @XContador VARCHAR(16)

    SET @XContador = 'FACTURA'

    SELECT  @Desc = 0

    SET @MtoDesc = 0



    SET @idFact = NEWID()  

    EXEC @RC = spGetNextCounterSTR @XContador, @fno OUTPUT

    

    DECLARE @ncf VARCHAR(19)

    EXEC svCompFiscal @ncf OUTPUT, @Terminal, 'FT', @idCliente,

        @VencimientoNCF OUTPUT, @reorden OUTPUT 



    INSERT  INTO Factura

            (idFactura,

             Factura,

             idCliente,

             Cliente,

             Contacto,

             Direccion,

             Sector,

             Ciudad,

             Telefono,

             idEmpleado,

             Fecha,

             Hora,

             Referencia,

             Cancelado,

             Credito,

             idCompania,

             SubTotal,

             Itbis,

             Descuento,

             Total,

             Nota,

             Usuario,

             Cotizacion,

             idCotizacion,

             idClienteObra,

             PagaItbis,

             idOrdComp,

             OrdComp,

             Fax,

             eMail,

             PorcDesc,

             Condicion,

             FechaCancelado,

             NumRegistro,

             CompFiscal,

             ClienteRNC,

             idMoneda,

             idCondicion,

             Tasa,

             idReferencia

            )

            SELECT  @idFact,

                    @fno,

                    c.idCliente,

                    SUBSTRING(c.Cliente, 1, 50) AS Cliente,

                    c.Contacto,

                    c.Direccion,

                    c.Sector,

                    c.Ciudad,

                    c.Telefono,

                    c.idEmpleado,

                    @Fecha,

                    GETDATE() AS Hora,

                    c.Cotizacion AS Referencia,

                    0 AS Cancelado,

                    1 AS Credito,

                    1 AS idCompania,

                    ISNULL(c.SubTotal, 0.00) AS SubTotal,

                    ISNULL(c.Itbis, 0.00) AS Itbis,

                    0 AS Descuento,

                    c.Total AS Total,

                    c.Nota AS Nota,

                    @Usuario AS Usuario,

                    c.Cotizacion AS Cotizacion,

                    c.idCotizacion AS idCotizacion,

                    c.idClienteObra AS idClienteObra,

                    c.PagaItbis,

                    NULL, --c.idOrdComp as idOrdComp, 

                    NULL, --c.OrdComp as OrdComp, 

                    c.Fax,

                    c.eMail,

                    0.00 AS PorcDesc,

                    c.Condicion,

                    NULL AS FechaCancelado,

                    NULL AS NumRegistro,

                    @ncf,

                    cl.RNC_Cedula,

                    c.idMoneda,

                    c.idCondicion,

                    1 AS Tasa,

                    @idCotizacion

            FROM    Cotizacion c

                    JOIN Cliente cl ON c.idCliente = cl.idCliente

            WHERE   c.idCotizacion = @idCotizacion

			  

    INSERT  INTO FacturaDet

            (idFacturaDet,

             idFactura,

             idProducto,

             Producto,

             Cantidad,

             Precio,

             idUnidad,

             Descuento,

             Itbis,

             LineTotal,

             Linea,

             DevCantidad,

             DevItbis,

             DevDescuento,

             DevLineTotal,

             idCargo,

             dias,

             PrecioDia

            )

            SELECT  d.idCotizacionDet,

                    @idFact,

                    d.idProducto,

                    d.Producto,

                    d.Cantidad AS Cantidad,

                    d.Precio,

                    d.idUnidad,

                    d.Descuento,

                    d.Itbis,

                    d.LineTotal,

                    d.Linea,

                    0 AS DevCantidad,

                    0 AS DevItbis,

                    0 AS DevDescuento,

                    0 AS DevLineTotal,

                    @idCotizacion,

                    1 AS Dias,

                    d.Precio AS PrecioDia

            FROM    CotizacionDet d

            WHERE   idCotizacion = @idCotizacion

                    AND d.Precio > 0.00 



    EXEC Factura2CxC @idFact



    SET @idFactura = @idFact

    RETURN @@ERROR


GO
