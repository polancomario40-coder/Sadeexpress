

CREATE OR ALTER PROCEDURE [dbo].[svCompFiscal]

    (

     @OutPut VARCHAR(19) OUTPUT,

     @Terminal VARCHAR(50),

     @TipoDoc VARCHAR(2),

     @idCliente INT,

     @VencimientoNCF DATETIME OUTPUT,

     @reorden BIT OUTPUT

    )

AS

    DECLARE @TipoCompFiscal CHAR(2),

        @NCF VARCHAR(19),

        @SCF VARCHAR(19),

        @XContador VARCHAR(16),

        @RC INT,

        @NEW_VER_NCF BIT,

        @VENCE DATETIME,

        @RORDEN BIT,

		@UsarECF BIT



    SET @NEW_VER_NCF = ISNULL((SELECT   CAST(Valor AS BIT)

                               FROM     Defaults

                               WHERE    Clave = 'NEW_VER_NCF'

                              ), 0)

    SET @UsarECF = ISNULL((SELECT   CAST(Valor AS BIT)

                               FROM     Defaults

                               WHERE    Clave = 'UsarECF'

                              ), 0)

    SET @OutPut = NULL



    IF @TipoDoc = 'ND'

        BEGIN

            --SET @TipoCompFiscal = '03'

			IF @UsarECF=1 SET @TipoCompFiscal = '33' ELSE SET @TipoCompFiscal = '03' 

        END

    ELSE

        IF @TipoDoc = 'NC'

            BEGIN

                --SET @TipoCompFiscal = '04'

				IF @UsarECF=1 SET @TipoCompFiscal = '34' ELSE SET @TipoCompFiscal = '04' 

            END

        ELSE

            IF @TipoDoc = 'GM' 

                BEGIN

					--SET @TipoCompFiscal = '13'

				    IF @UsarECF=1 SET @TipoCompFiscal = '43' ELSE SET @TipoCompFiscal = '13'           

			   

			   END

            ELSE

                IF @TipoDoc = 'PI'

                    BEGIN

                        --SET @TipoCompFiscal = '11'

						IF @UsarECF=1 SET @TipoCompFiscal = '41' ELSE SET @TipoCompFiscal = '11' 

                    END

                ELSE

                    IF @TipoDoc = 'FT'

                        BEGIN

                            SET @TipoCompFiscal = (SELECT   TipoCompFiscal

                                                   FROM     ClienteTipo ct

                                                            JOIN Cliente c ON ct.idClienteTipo = c.idClienteTipo

                                                   WHERE    c.idCliente = @idCliente

                                                  )
                            
                            IF @UsarECF = 1
                            BEGIN
                                IF @TipoCompFiscal = '01' SET @TipoCompFiscal = '31'
                                ELSE IF @TipoCompFiscal = '02' SET @TipoCompFiscal = '32'
                                ELSE IF @TipoCompFiscal = '14' SET @TipoCompFiscal = '44'
                                ELSE IF @TipoCompFiscal = '15' SET @TipoCompFiscal = '45'
                            END

                        END



    IF ISNULL(RTRIM(LTRIM(@TipoCompFiscal)), '') = ''

        BEGIN

            SET @OutPut = ''

            RETURN 0

        END

  

    SELECT  @NCF = Serie + CASE WHEN @NEW_VER_NCF = 1 THEN ''

                                ELSE (Division + Sucursal + Caja)

                           END + @TipoCompFiscal,

            @XContador = Contador

    FROM    CompFiscal cf

    WHERE   ((Terminal = @Terminal

              AND TipoNCF = @TipoCompFiscal

             )

             OR (Terminal = 'Default'

                 AND TipoNCF = @TipoCompFiscal

                )

            )



    IF @XContador IS NULL

        BEGIN

            SET @OutPut = NULL

            RETURN -1

        END



    IF (@NEW_VER_NCF = 1)

        BEGIN

            EXEC @RC = spGetNextCounterNCF @NCF, @SCF OUTPUT, @VENCE OUTPUT,

                @RORDEN OUTPUT

            SET @VencimientoNCF = @VENCE

            SET @reorden = @RORDEN

        END

    ELSE

        EXEC @RC = spGetNextCounterSTR @XContador, @SCF OUTPUT



    SET @OutPut = ISNULL(@NCF + @SCF, '')	



    RETURN 0




GO
