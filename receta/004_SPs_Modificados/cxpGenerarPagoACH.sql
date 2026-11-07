

CREATE OR ALTER PROCEDURE dbo.cxpGenerarPagoACH

    @idSol INT,

    @iddoc INT OUTPUT

AS

    DECLARE @ctabanco INT,

        @fecha DATETIME,

        @TipoSol INT 

    DECLARE @CTASUP VARCHAR(16)

    DECLARE @idTrans INT 

    DECLARE @st CHAR(1)

    DECLARE @total_ret DECIMAL(19, 2)

    DECLARE @MONEDA_LEGAL INT

    DECLARE @idTipoIdent VARCHAR(2),

        @RNC VARCHAR(20),

        @Nombre VARCHAR(100),

        @idFormaPago INT

		

-- exec LeerParametro 'CTASUPLIDORES', @CTASUP output

    SELECT  @idTrans = CONVERT(INT, Valor)

    FROM    Defaults

    WHERE   Clave = 'CXP_TR_PAGOACH'	  	

    IF @idTrans IS NULL

        SET @idTrans = 29 

    DECLARE @err INT,

	-- @bl varchar(8000),

        @conc VARCHAR(6000),

        @ident INT,

        @numck INT,

        @idMoneda INT,

        @NotaAdicional VARCHAR(100),

        @idCuenta VARCHAR(16),		

        @Valr DECIMAL(19, 2),

        @idAuxBco VARCHAR(16),

        @idAuxSup VARCHAR(16),

        @cxp BIT,

        @GUIDSol UNIQUEIDENTIFIER,

        @TipoGasto VARCHAR(16),

        @tasa FLOAT

	 

    SELECT TOP 1

            @MONEDA_LEGAL = idMoneda

    FROM    Moneda

    WHERE   CursoLegal = 1

    SELECT  @fecha = CONVERT(DATETIME, FLOOR(CONVERT(FLOAT, GETDATE())))

    SELECT  @conc = Concepto,

            @Valr = Total,

            @ident = idSuplidor,

            @st = Status,

			@idFormaPago = idPagoForma, 

            @NotaAdicional = NotaAdicional,

            @cxp = mostrarEncxp,

            @GUIDSol = GUIDSolicitud,

            @tasa = Tasa,

            @ctabanco = idCuentaBanco,

            @TipoSol = TipoSolicitud,

            @TipoGasto = TipoGasto

    FROM    cxpSolicitudes

    WHERE   idSolicitud = @idSol

    IF @TipoSol = 3

        RETURN -98

    IF @st <> 'A'

        RETURN -99

    IF @cxp = 1

        SET @total_ret = dbo.cxpRetencionXSolicitud(@idSol)

    ELSE

        SET @total_ret = 0.00

    SET @iddoc = 0

    SELECT  @CTASUP = idCuenta,

            @idAuxSup = idAuxiliar,

            @idTipoIdent = idTipoIdentificacion,

            @RNC = RNC,

            @Nombre = Nombre

    FROM    cxpSuplidores

    WHERE   idSuplidor = @ident

    IF (@Valr > 0)

        AND (@st = 'A')

        BEGIN

            BEGIN TRANSACTION

            SELECT  @idCuenta = idCuentaMayor,

                    @idAuxBco = idAuxiliar,

                    @idMoneda = idMoneda

            FROM    cxpBancos

            WHERE   idCuentaBanco = @ctabanco

    -- ... y generar el header 

            EXEC spGetNextCounterINT 'PAGO_ACH', @numck OUTPUT

            EXEC @err = cxpGuardarDocumento 0, @idTrans, @fecha, @ident,

                @numck, @Valr, 0.00, 0.00, @total_ret, @conc, @idMoneda, 1,

                @idCuenta, @idAuxBco, 'P', @fecha, @ctabanco, 'S', @idSol, 0,

                @cxp, NULL, @NotaAdicional, 0, 0, @idFormaPago, @idDoc OUTPUT,

                NULL, NULL, @tasa, @idTipoIdent, @RNC, @Nombre, @fecha, @fecha,

                @TipoGasto 

    --  set @err = @@ERROR

            IF @err > 0

                BEGIN

                    ROLLBACK TRANSACTION 

                    RETURN @err

                END

            IF @cxp = 0

                BEGIN

                    INSERT  INTO cxpDocCuentas

                            (idDocumento,

                             DebCre,

                             idCuenta,

                             idAuxiliar,

                             Valor,

                             idCentroCosto,

                             CentroCosto,

                             idPartida

                            )

                            SELECT  @iddoc AS IdDocumento,

                                    DebCre,

                                    idCuenta,

                                    idAuxiliar,

                                    Valor,

                                    idCentroCosto,

                                    CentroCosto,

                                    idPartida

                            FROM    cgCodificacion

                            WHERE   GUIDDocumento = @GUIDSol

                END

            ELSE

                BEGIN

	    

	    --insert into cxpDocCuentas (Iddocumento, DebCre, IdCuenta, idAuxiliar, Valor)

	    --values (@iddoc, 1, @ctasup, @idAuxSup, @valr)

	    --set @err = @@ERROR

	    --if @err > 0

	    --begin

	      --rollback transaction 

	      --return @err

	    --end

	    --

                    INSERT  INTO cxpDocCuentas

                            (idDocumento,

                             DebCre,

                             idCuenta,

                             idAuxiliar,

                             Valor

                            )

                    VALUES  (@iddoc,

                             2,

                             @idCuenta,

                             @idAuxBco,

                             @Valr - @total_ret

                            )

                    SET @err = @@ERROR

                    IF @err > 0

                        BEGIN

                            ROLLBACK TRANSACTION 

                            RETURN @err

                        END

	    

                    INSERT  INTO cxpDocCuentas

                            (idDocumento,

                             DebCre,

                             idCuenta,

                             Valor

                            )

                            SELECT  @iddoc,

                                    2,

                                    tr.idCuenta,

                                    SUM(dd.Valor)

                            FROM    cxpSolicitudes s

                                    JOIN cxpSolicitudesDtl d ON s.idSolicitud = d.idSolicitud

                                    JOIN cxpDocumentos doc ON d.idDocumento = doc.idDocumento

                                    JOIN cxpSolicitudRet dd ON s.idSolicitud = dd.idSolicitud

                                                              AND d.idDocumento = dd.idDocumento

                                    JOIN cxpRetencion tr ON dd.idRetencion = tr.idRetencion

                            WHERE   s.idSolicitud = @idSol

                            GROUP BY tr.idCuenta

	   

                    IF ISNULL(@tasa, 0) > 1

                        AND (@idMoneda <> @MONEDA_LEGAL)

                        BEGIN

                            INSERT  INTO cxpDocCuentas

                                    (idDocumento,

                                     DebCre,

                                     idCuenta,

                                     Valor

                                    )

                                    SELECT  @iddoc,

                                            c.DebCre,

                                            p.idCuentaPrima,

                                            c.Valor * (@tasa - 1)

                                    FROM    cxpDocCuentas c

                                            JOIN cgCuentaPrima p ON c.idCuenta = p.idCuenta

                                                              AND p.idMoneda = @idMoneda

                                    WHERE   c.idDocumento = @iddoc

                        END 

	   

                    INSERT  INTO cxpDocCuentas

                            (idDocumento,

                             DebCre,

                             idCuenta,

                             Valor

                            )

                            SELECT  @iddoc,

                                    1 AS DebCre,

                                    idCuenta,

                                    Debito

                            FROM    dbo.cxpCodificarPagoDocs(@idSol)



	    -- Registrar documentos a los que se aplica el cheque

                    INSERT  INTO cxpDocumentosDtl

                            (idDocumento,

                             IdDocXPagar,

                             Fecha,

                             Valor,

                             Tasa

                            )

                            SELECT  @iddoc,

                                    d.idDocumento,

                                    @fecha,

                                    d.Valor,

                                    d.Tasa

                            FROM    cxpSolicitudesDtl d

                            WHERE   d.idSolicitud = @idSol

                    SET @err = @@ERROR

                    IF @err > 0

                        BEGIN

                            ROLLBACK TRANSACTION 

                            RETURN @err

                        END

                    INSERT  INTO cxpPagoRetencion

                            (idDocumento,

                             idDocXPagar,

                             Valor,

                             Porcentaje,

                             idRetencion,

                             Retencion,

                             idPagoRetencion,

                             idTipoRetencionDGII

                            )

                            SELECT  @iddoc,

                                    idDocumento,

                                    Valor,

                                    Porcentaje,

                                    idRetencion,

                                    Retencion,

                                    NEWID(),

                                    idTipoRetencionDGII

                            FROM    cxpSolicitudRet

                            WHERE   idSolicitud = @idSol

                    SET @err = @@ERROR

                    IF @err > 0

                        BEGIN

                            ROLLBACK TRANSACTION 

                            RETURN @err

                        END

                END

  -- Actualizar las solicitudes con el cheque que las pago

            UPDATE  cxpSolicitudes

            SET     Status = 'P' --, FechaStatus = @fecha

            WHERE   idSolicitud = @idSol

            SET @err = @@ERROR

            IF @err > 0

                BEGIN

                    ROLLBACK TRANSACTION 

                    RETURN @err

                END

    -- mover el cheque al auxiliar de efectivo para que salga en la disponibilidad

            EXEC @err = cxpMovPagoAuxiliar @iddoc

            IF @err > 0

                BEGIN

                    ROLLBACK TRANSACTION 

                    RETURN @err

                END



            IF @cxp = 0

                BEGIN 	

                    EXEC @err = cxpGenerarCostoChequeAbierto @iddoc 

                END

    

            COMMIT TRANSACTION

        END

    RETURN 0


GO
