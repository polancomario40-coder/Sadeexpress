CREATE OR ALTER PROCEDURE [dbo].[svRenumerarFactura]

    @idfact UNIQUEIDENTIFIER,

    @ultimo VARCHAR(16) OUTPUT,

    @ncf VARCHAR(19) OUTPUT

AS

    DECLARE @host VARCHAR(200)  

  

    DECLARE @idCliente INT,

        @actual VARCHAR(16),

        @ncfactual VARCHAR(19),

        @VencimientoNCF DATETIME,

        @reorden BIT

      

    SELECT  @idCliente = idCliente,

            @actual = Factura,

            @ncfactual = CompFiscal

    FROM    Factura

    WHERE   idFactura = @idfact  

  

    IF EXISTS ( SELECT  1

                FROM    Factura

                WHERE   Factura = @actual

                        AND idFactura <> @idfact )

        BEGIN  

            EXEC spGetNextCounterSTR 'FACTURA', @ultimo OUTPUT   

       

            SELECT  @host = HOST_NAME()  

            EXEC svCompFiscal @ncf OUTPUT, @host, 'FT', @idCliente,

                @VencimientoNCF OUTPUT, @reorden OUTPUT

      

            UPDATE  Factura

            SET     Factura = @ultimo,

                    CompFiscal = @ncf

            WHERE   idFactura = @idfact        

        END  

    ELSE

        BEGIN  

            SET @ultimo = @actual  

            SET @ncf = @ncfactual   

        END   

  

    RETURN @@ERROR   


GO
