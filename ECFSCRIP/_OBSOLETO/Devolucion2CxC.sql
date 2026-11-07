



CREATE PROCEDURE [dbo].[Devolucion2CxC]

    (

     @idDevolucion UNIQUEIDENTIFIER

    )

AS

    DECLARE @TipoDoc VARCHAR(16),

        @Errores INT,

        @Resultado INT,

        @NCF VARCHAR(19),

        @hostname VARCHAR(40),

        @IdCliente INT,

        @VencimientoNCF DATETIME,

        @reorden BIT 



    SET @TipoDoc = 'NC' --select valor from defaults where clave = 'TIPO.DOC.FACTURA'

    SET @Errores = 0

    SET @Resultado = 0

    SET @hostname = HOST_NAME()

    SET @IdCliente = (SELECT    idCliente

                      FROM      Devolucion

                      WHERE     idDevolucion = @idDevolucion

                     )



    BEGIN TRAN

    EXEC svCompFiscal @NCF OUTPUT, @hostname, 'NC', @IdCliente,

        @VencimientoNCF OUTPUT, @reorden OUTPUT



    INSERT  INTO Cxc

            (idCxc,

             Cxc,

             idCliente,

             Cliente,

             idTipoDocumento,

             Valor,

             Fecha,

             Concepto,

             idCxcTipo,

             esCredito,

             Cancelado,

             Referencia,

             Usuario,

             Descuento,

             Condicion,

             Vencimiento,

             Tasa,

             idMoneda,

             CompFiscal

            )

            SELECT  f.idDevolucion,

                    f.Devolucion,

                    f.idCliente,

                    f.Cliente,

                    @TipoDoc,

                    f.Total,

                    f.Fecha,

                    'DEVOLUCION ' + f.Devolucion,

                    1, --idcxcTipo

                    1, --esCredito

                    0, --cancelado

                    f.idDevolucion,

                    f.Usuario,

                    0.00,

                    0,

                    f.Fecha,

                    f.Tasa,

                    f.idMoneda,

                    @NCF

            FROM    Devolucion f

            WHERE   f.idDevolucion = @idDevolucion



    SET @Errores = @@Error

    IF @Errores <> 0

        BEGIN

            ROLLBACK TRAN

            RETURN @Errores

        END





    DECLARE @NOAPP VARCHAR(16)

    SELECT  CONVERT(VARCHAR(16), Valor)

    FROM    Defaults

    WHERE   Clave = 'NO_APP_DEV'



    IF ISNULL(@NOAPP, '0') <> '1'

        BEGIN 

            INSERT  INTO CxcDet

                    (idCxcDet,

                     idCxc,

                     idCxcDebito,

                     Valor,

                     Fecha

                    )

                    SELECT  NEWID(),

                            f.idDevolucion,

                            f.idFactura,

                            f.Total,

                            f.Fecha

                    FROM    Devolucion f

                            JOIN Factura ff ON f.idFactura = ff.idFactura

                    WHERE   f.idDevolucion = @idDevolucion

                            AND ff.Credito = 1 



            SET @Errores = @@Error

            IF @Errores <> 0

                BEGIN

                    ROLLBACK TRAN

                    RETURN @Errores

                END

        END





    EXEC @Resultado = DevolucionDetCuenta @idDevolucion



    IF @Resultado <> 0

        BEGIN

            ROLLBACK TRAN

            RETURN @Resultado

        END



    IF @Errores <> 0

        BEGIN

            ROLLBACK TRAN

            RETURN 1

        END  



    COMMIT TRAN



    RETURN 0





/****** Object:  StoredProcedure [dbo].[FindDevolucion]    Script Date: 10/11/2025 01:16:36 p.m. ******/

DROP PROCEDURE [dbo].[FindDevolucion]

