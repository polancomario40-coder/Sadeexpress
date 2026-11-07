CREATE OR ALTER PROCEDURE [dbo].[svBuscarNumFactCliente]  --1, 'CLIENTE DE CONTADO', '04/21/2011', @num output, @ncf output  

    @idCliente INT,

    @Cliente VARCHAR(100),

    @fec DATETIME,

    @num VARCHAR(16) OUTPUT,

    @ncf VARCHAR(19) OUTPUT

AS

    DECLARE @contado INT,

        @ultimo VARCHAR(16),

        @Cuenta INT,

        @reps INT,

        @host VARCHAR(50),

        @VencimientoNCF DATETIME,

        @reorden BIT     

    

    SET @ultimo = NULL    

    

    SELECT  @contado = CONVERT(INT, Valor)

    FROM    Defaults

    WHERE   Clave = 'CLIENTEDEFECTO'    

    

    DECLARE @cte VARCHAR(100)    

    SELECT  @cte = Cliente

    FROM    Cliente

    WHERE   idCliente = @contado    

  

    SELECT  @reps = CONVERT(INT, Valor)

    FROM    Defaults

    WHERE   Clave = 'CYCLES'    

    

    IF @reps IS NULL

        SET @reps = 0  

    

    IF @contado = @idCliente

        AND @Cliente = @cte

        BEGIN    

    

            SELECT TOP 1

                    @ultimo = f.Factura

            FROM    (SELECT Factura,

                            COUNT(*) AS Cuenta

                     FROM   Factura

                     WHERE  idCliente = @idCliente

                            AND Fecha = @fec

                            AND Credito = 0

                            AND Cliente = @cte

                     GROUP BY Factura

                     HAVING COUNT(*) <= @reps

                    ) f

            ORDER BY f.Cuenta    

    

            SELECT TOP 1

                    @ncf = CompFiscal

            FROM    Factura

            WHERE   Factura = @ultimo

            ORDER BY Factura     

        END    

    

    IF @reps <= 1

        OR @ultimo IS NULL

        BEGIN     

            EXEC spGetNextCounterSTR 'FACTURA', @ultimo OUTPUT  

    

            SELECT  @host = HOST_NAME()    

            EXEC svCompFiscal @ncf OUTPUT, @host, 'FT', @idcliente,

                @VencimientoNCF OUTPUT, @reorden OUTPUT       

        END    

    

    SET @num = @ultimo    

    

    RETURN 0     


GO
