CREATE OR ALTER PROCEDURE [dbo].[frGenerarFactura]

    @idfr UNIQUEIDENTIFIER,

    @fec DATETIME,

    @usuario VARCHAR(30)

AS

    IF EXISTS ( SELECT  1

                FROM    Factura

                WHERE   idReferencia = @idfr

                        AND Fecha = @fec )

        RETURN 1

 

    DECLARE @fno VARCHAR(16),

        @idFact UNIQUEIDENTIFIER,

        @RC INT,

        @XContador VARCHAR(16),

        @ncf VARCHAR(19),

        @host VARCHAR(50),

        @idCliente INT,

        @VencimientoNCF DATETIME,

        @reorden BIT,

        @idTipoIngreso INT



    SET @idTipoIngreso = (SELECT    CAST(Valor AS INT)

                          FROM      dbo.Defaults

                          WHERE     Clave = 'DEF_TIPOINGRESO'

                         )

  

    SELECT  @idCliente = idCliente

    FROM    frFactura

    WHERE   idfrFactura = @idfr  

  

    SET @XContador = 'FACTURA'  

    EXEC @RC = spGetNextCounterSTR @XContador, @fno OUTPUT  

    EXEC @RC = svCompFiscal @ncf OUTPUT, @host, 'FT', @idCliente,

        @VencimientoNCF OUTPUT, @reorden OUTPUT

  

    SET @idFact = NEWID()  

    INSERT  INTO Factura

            (idFactura,

             Factura,

             idCliente,

             Cliente,

             ClienteRNC,

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

             idClienteObra,

             PagaItbis,

             idOrdComp,

             OrdComp,

             Fax,

             eMail,

             PorcDesc,

             Condicion,

             FechaCancelado,

             CompFiscal,

             idCondicion,

             idMoneda,

             Tasa,

             idReferencia,

             FechaVenceNCF,

             idTipoIngreso

            )

            SELECT  @idFact,

                    @fno,

                    idCliente,

                    Cliente,

                    ClienteRNC,

                    Contacto,

                    Direccion,

                    Sector,

                    Ciudad,

                    Telefono,

                    idEmpleado,

                    @fec,

                    Hora,

                    Referencia,

                    Cancelado,

                    Credito,

                    idCompania,

                    SubTotal,

                    Itbis,

                    Descuento,

                    Total,

                    REPLACE(Nota, '<MES>', dbo.cbsNombreMes(@fec)),

                    @usuario,

                    idClienteObra,

                    PagaItbis,

                    idOrdComp,

                    OrdComp,

                    Fax,

                    eMail,

                    PorcDesc,

                    Condicion,

                    FechaCancelado,

                    @ncf,

                    idCondicion,

                    idMoneda,

                    dbo.fTasaActual(idMoneda, @fec),

                    @idfr,

                    @VencimientoNCF,

                    @idTipoIngreso

            FROM    frFactura

            WHERE   idfrFactura = @idfr  

  

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

             idCargo  

            )

            SELECT  NEWID() AS idFacturaDet,

                    @idFact,

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

                    idCargo

            FROM    frFacturaDet

            WHERE   idfrFactura = @idfr  

  

    EXEC Factura2CxC @idFact  

  

    RETURN 0  

  


GO
