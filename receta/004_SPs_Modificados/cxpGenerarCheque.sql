

CREATE OR ALTER PROCEDURE dbo.cxpGenerarCheque

    @idSol INT,

    @ctabanco INT,

    @fecha DATETIME,

    @iddoc INT OUTPUT

AS

    DECLARE @CTASUP VARCHAR(16)    

    DECLARE @idTrans INT

    SET @idTrans = 20    

    DECLARE @st CHAR(1)    

    DECLARE @total_ret DECIMAL(19, 2)    

    DECLARE @MONEDA_LEGAL INT    

    DECLARE @err INT,

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

        @tasa FLOAT,

        @RNC VARCHAR(20),

        @Nombre VARCHAR(100),

        @TipoGasto VARCHAR(16),

        @idTipoIdent VARCHAR(2),

        @idFormaPago INT

	    

    SELECT TOP 1

            @MONEDA_LEGAL = idMoneda

    FROM    Moneda

    WHERE   CursoLegal = 1    

   

    SELECT  @conc = SUBSTRING(Concepto, 1, 600),

            @Valr = Total,

            @ident = idSuplidor,

            @st = Status,

            @NotaAdicional = NotaAdicional,

            @cxp = mostrarEncxp,

			@idFormaPago = IdPagoForma, 

            @GUIDSol = GUIDSolicitud,

            @tasa = Tasa,

            @TipoGasto = TipoGasto

    FROM    cxpSolicitudes

    WHERE   idSolicitud = @idSol    

     

    IF @cxp = 1

        SET @total_ret = dbo.cxpRetencionXSolicitud(@idSol)    

    ELSE

        SET @total_ret = 0.00    

    SET @iddoc = 0    

    

    SELECT  @CTASUP = idCuenta,

            @idAuxSup = idAuxiliar,

            @Nombre = Nombre,

            @idTipoIdent = idTipoIdentificacion,

            @RNC = RNC

    FROM    cxpSuplidores

    WHERE   idSuplidor = @ident    

  

    IF (@Valr > 0)

        AND (@st = 'A')

        BEGIN    

            BEGIN TRANSACTION    

      

            UPDATE  cxpBancos

            SET     UltimoCheque = UltimoCheque + 1

            WHERE   idCuentaBanco = @ctabanco       

      

            SELECT  @numck = UltimoCheque,

                    @idCuenta = idCuentaMayor,

                    @idAuxBco = idAuxiliar,

                    @idMoneda = idMoneda

            FROM    cxpBancos

            WHERE   idCuentaBanco = @ctabanco    

       

    -- ... y generar el header     

            EXEC @err = cxpGuardarDocumento 0, @idTrans, @Fecha, @ident,

                @numck, @Valr, 0.00, 0.00, @total_ret, @conc, @idMoneda, 1,

                @idCuenta, @idAuxBco, 'P', @Fecha, @Ctabanco, 'S', @idSol, 0,

                @cxp, NULL, @NotaAdicional, 0, 0, @idFormaPago, @idDoc OUTPUT,

                NULL, NULL, @tasa, @idTipoIdent, @RNC, @Nombre, @Fecha, @Fecha,

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

                                    SUM(ROUND(((dd.Valor * d.Tasa) / s.Tasa),

                                              2))

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

            EXEC @err = cxpMovCKAuxiliar @iddoc    

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
