

                                                                                                                                                                                                                                                             

CREATE OR ALTER PROCEDURE dbo.cxpGuardarDocumento

                                                                                                                                                                                                                     

    @idDocumento INT,

                                                                                                                                                                                                                                        

    @idTrans INT,

                                                                                                                                                                                                                                            

    @Fecha DATETIME,

                                                                                                                                                                                                                                         

    @idSuplidor INT,

                                                                                                                                                                                                                                         

    @Referencia VARCHAR(20),

                                                                                                                                                                                                                                 

    @Valor DECIMAL(19, 2),

                                                                                                                                                                                                                                   

    @MontoImpuestos DECIMAL(19, 2),

                                                                                                                                                                                                                          

    @MontoDescuento DECIMAL(19, 2),

                                                                                                                                                                                                                          

    @MontoRetenciones DECIMAL(19, 2),

                                                                                                                                                                                                                        

    @Concepto VARCHAR(6000),

                                                                                                                                                                                                                                 

    @IdMoneda INT,

                                                                                                                                                                                                                                           

    @CodifManual BIT,

                                                                                                                                                                                                                                        

    @idCuenta VARCHAR(16),

                                                                                                                                                                                                                                   

    @idAuxiliar VARCHAR(16),

                                                                                                                                                                                                                                 

    @Status CHAR(1),

                                                                                                                                                                                                                                         

    @FechaStatus DATETIME,

                                                                                                                                                                                                                                   

    @idCuentaBanco INT,

                                                                                                                                                                                                                                      

    @TipoDocOrigen VARCHAR(3),

                                                                                                                                                                                                                               

    @DocOrigen INT,

                                                                                                                                                                                                                                          

    @Dias SMALLINT,

                                                                                                                                                                                                                                          

    @MostrarEnCXP BIT,

                                                                                                                                                                                                                                       

    @idClaseGasto VARCHAR(2),

                                                                                                                                                                                                                                

    @NotaAdicional VARCHAR(100),

                                                                                                                                                                                                                             

    @facturadoServicios DECIMAL(19, 2),

                                                                                                                                                                                                                      

    @facturadoBienes DECIMAL(19, 2),

                                                                                                                                                                                                                         

    @idFormaPago INT,

                                                                                                                                                                                                                                        

    @nid INT OUTPUT,

                                                                                                                                                                                                                                         

    @NCF VARCHAR(19) = NULL,

                                                                                                                                                                                                                                 

    @GuidDocumento UNIQUEIDENTIFIER = NULL,

                                                                                                                                                                                                                  

    @Tasa DECIMAL(19, 2) = NULL,

                                                                                                                                                                                                                             

    @idTipoIdentificacion VARCHAR(2) = NULL,

                                                                                                                                                                                                                 

    @RNC VARCHAR(20) = NULL,

                                                                                                                                                                                                                                 

    @Nombre VARCHAR(100) = NULL,

                                                                                                                                                                                                                             

    @FechaEmision DATETIME = NULL,

                                                                                                                                                                                                                           

    @Vencimiento DATETIME = NULL,

                                                                                                                                                                                                                            

    @TipoGasto VARCHAR(16) = 'COSTO',

                                                                                                                                                                                                                        

    @OrdenCompra VARCHAR(16) = NULL,

                                                                                                                                                                                                                         

    @idOrden UNIQUEIDENTIFIER = NULL,

                                                                                                                                                                                                                        

	@montoIsc DECIMAL(19,2) = 0, 

                                                                                                                                                                                                                               

	@propina DECIMAL(19,2) = 0,

                                                                                                                                                                                                                                 

	@otrosImp DECIMAL(19,2) = 0,

                                                                                                                                                                                                                                

	@itbisCosto DECIMAL(19,2) = 0,

    @PendEnvioEcf BIT = NULL,

    @TipoNcf VARCHAR(2) = NULL,

    @CodigoSeguridadEcf VARCHAR(6) = NULL,

    @FechaFirmaDigital DATETIME = NULL,

    @FechaVenceNCF DATETIME = NULL,

    @CompFiscalModificado VARCHAR(19) = NULL,

    @FechaCompFiscalModificado DATETIME = NULL,

    @IdClaseGastoModificado VARCHAR(2) = NULL,

    @StatusEcf VARCHAR(30) = NULL

                                                                                                                                                                                                                               

AS

                                                                                                                                                                                                                                                           

    DECLARE @Bco INT  

                                                                                                                                                                                                                                       



                                                                                                                                                                                                                                                             

    IF @idCuentaBanco = 0

                                                                                                                                                                                                                                    

        SET @Bco = NULL  

                                                                                                                                                                                                                                    

    ELSE

                                                                                                                                                                                                                                                     

        SET @Bco = @idCuentaBanco  

                                                                                                                                                                                                                          



                                                                                                                                                                                                                                                             

    IF ISNULL(@idDocumento, 0) = 0

                                                                                                                                                                                                                           

        BEGIN  

                                                                                                                                                                                                                                              

  -- select @num = max(Numero)  

                                                                                                                                                                                                                             

  --  from cxpDocumentos  

                                                                                                                                                                                                                                   

  --  where idTrans = @idTrans    

                                                                                                                                                                                                                           

            INSERT  INTO cxpDocumentos

                                                                                                                                                                                                                       

                    (idTrans,

                                                                                                                                                                                                                                

                     Fecha,

                                                                                                                                                                                                                                  

                     idSuplidor,

                                                                                                                                                                                                                             

                     Referencia,

                                                                                                                                                                                                                             

                     Valor,

                                                                                                                                                                                                                                  

                     MontoImpuestos,

                                                                                                                                                                                                                         

                     MontoDescuento,

                                                                                                                                                                                                                         

                     MontoRetenciones,

                                                                                                                                                                                                                       

                     Concepto,

                                                                                                                                                                                                                               

                     idMoneda,

                                                                                                                                                                                                                               

                     CodifManual,

                                                                                                                                                                                                                            

                     idCuenta,

                                                                                                                                                                                                                               

                     Status,

                                                                                                                                                                                                                                 

                     FechaStatus,

                                                                                                                                                                                                                            

                     idCuentaBanco,

                                                                                                                                                                                                                          

                     TipoDocOrigen,

                                                                                                                                                                                                                          

                     DocOrigen,

                                                                                                                                                                                                                              

                     MostrarEnCXP,

                                                                                                                                                                                                                           

                     idClaseGasto,

                                                                                                                                                                                                                           

                     Dias,

                                                                                                                                                                                                                                   

                     NotaAdicional,

                                                                                                                                                                                                                          

                     idAuxiliar,

                                                                                                                                                                                                                             

                     CompFiscal,

                                                                                                                                                                                                                             

                     GUIDDocumento,

                                                                                                                                                                                                                          

                     Tasa,

                                                                                                                                                                                                                                   

                     idTipoIdentificacion,

                                                                                                                                                                                                                   

                     RNC,

                                                                                                                                                                                                                                    

                     Nombre,

                                                                                                                                                                                                                                 

                     FechaEmision,

                                                                                                                                                                                                                           

                     Vencimiento,

                                                                                                                                                                                                                            

                     TipoGasto,

                                                                                                                                                                                                                              

                     OrdenCompra,

                                                                                                                                                                                                                            

                     idOrden,

                                                                                                                                                                                                                                

                     montoFacturadoServicios,

                                                                                                                                                                                                                

                     montoFacturadoBienes,

                                                                                                                                                                                                                   

                     idPagoForma,

                                                                                                                                                                                                                            

					 MontoIsc,

                                                                                                                                                                                                                                              

					 PropinaLegal,

                                                                                                                                                                                                                                          

					 OtrosImpuestos,

                                                                                                                                                                                                                                        

					 itbisCosto,

                     PendEnvioEcf,

                     TipoNcf,

                     CodigoSeguridadEcf,

                     FechaFirmaDigital,

                     FechaVenceNCF,

                     CompFiscalModificado,

                     FechaCompFiscalModificado,

                     IdClaseGastoModificado,

                     StatusEcf

                    )

                                                                                                                                                                                                                                        

            VALUES  (@idTrans,

                                                                                                                                                                                                                               

                     @Fecha,

                                                                                                                                                                                                                                 

                     @idSuplidor,

                                                                                                                                                                                                                            

                     @Referencia,

                                                                                                                                                                                                                            

                     @Valor,

                                                                                                                                                                                                                                 

                     @MontoImpuestos,

                                                                                                                                                                                                                        

                     @MontoDescuento,

                                                                                                                                                                                                                        

                     @MontoRetenciones,

                                                                                                                                                                                                                      

                     @Concepto,

                                                                                                                                                                                                                              

                     @IdMoneda,

                                                                                                                                                                                                                              

                     @CodifManual,

                                                                                                                                                                                                                           

                     @idCuenta,

                                                                                                                                                                                                                              

                     @Status,

                                                                                                                                                                                                                                

                     @FechaStatus,

                                                                                                                                                                                                                           

                     @Bco,

                                                                                                                                                                                                                                   

                     @TipoDocOrigen,

                                                                                                                                                                                                                         

                     @DocOrigen,

                                                                                                                                                                                                                             

                     @MostrarEnCXP,

                                                                                                                                                                                                                          

                     @idClaseGasto,

                                                                                                                                                                                                                          

                     @Dias,

                                                                                                                                                                                                                                  

                     @NotaAdicional,

                                                                                                                                                                                                                         

                     @idAuxiliar,

                                                                                                                                                                                                                            

                     @NCF,

                                                                                                                                                                                                                                   

                     ISNULL(@GuidDocumento, NEWID()),

                                                                                                                                                                                                        

                     ISNULL(@Tasa, 1.00),

                                                                                                                                                                                                                    

                     @idTipoIdentificacion,

                                                                                                                                                                                                                  

                     @RNC,

                                                                                                                                                                                                                                   

                     @Nombre,

                                                                                                                                                                                                                                

    @FechaEmision,

                                                                                                                                                                                                                                           

                     @Vencimiento,

                                                                                                                                                                                                                           

                     @TipoGasto,

                                                                                                                                                                                                                             

                     @OrdenCompra,

                                                                                                                                                                                                                           

                     @idOrden,

                                                                                                                                                                                                                               

                     @facturadoServicios,

                                                                                                                                                                                                                    

                     @facturadoBienes,

                                                                                                                                                                                                                       

                     @idFormaPago,

                                                                                                                                                                                                                           

					 @MontoIsc,

                                                                                                                                                                                                                                             

					 @propina,

                                                                                                                                                                                                                                              

					 @otrosImp,

                                                                                                                                                                                                                                             

					 @itbisCosto,

                     @PendEnvioEcf,

                     @TipoNcf,

                     @CodigoSeguridadEcf,

                     @FechaFirmaDigital,

                     @FechaVenceNCF,

                     @CompFiscalModificado,

                     @FechaCompFiscalModificado,

                     @IdClaseGastoModificado,

                     @StatusEcf

                    )  

                                                                                                                                                                                                                                      



                                                                                                                                                                                                                                                             

            SET @nid = @@IDENTITY  

                                                                                                                                                                                                                          

        END  

                                                                                                                                                                                                                                                

    ELSE

                                                                                                                                                                                                                                                     

        BEGIN  

                                                                                                                                                                                                                                              

--   if @Status not in ('A','T','C','$')  

                                                                                                                                                                                                                   

--     print 'Error en el status'  

                                                                                                                                                                                                                          

            UPDATE  cxpDocumentos

                                                                                                                                                                                                                            

            SET     idTrans = @idTrans,

                                                                                                                                                                                                                      

                    Fecha = @Fecha,

                                                                                                                                                                                                                          

                    idSuplidor = @idSuplidor,

                                                                                                                                                                                                                

                    Referencia = @Referencia,

                                                                                                                                                                                                                

                    Valor = @Valor,

                                                                                                                                                                                                                          

                    MontoImpuestos = @MontoImpuestos,

                                                                                                                                                                                                        

                    MontoDescuento = @MontoDescuento,

                                                                                                                                                                                                        

                    MontoRetenciones = @MontoRetenciones,

                                                                                                                                                                                                    

                    Concepto = @Concepto,

                                                                                                                                                                                                                    

                    idMoneda = @IdMoneda,

                                                                                                                                                                                                                    

                    CodifManual = @CodifManual,

                                                                                                                                                                                                              

                    idCuenta = @idCuenta,

                                                                                                                                                                                                                    

                    Status = @Status,

                                                                                                                                                                                                                        

                    FechaStatus = @FechaStatus,

                                                                                                                                                                                                              

                    idCuentaBanco = @Bco,

                                                                                                                                                                                                                    

                    TipoDocOrigen = @TipoDocOrigen,

                                                                                                                                                                                                          

                    DocOrigen = @DocOrigen,

                                                                                                                                                                                                                  

                    Dias = @Dias,

                                                                                                                                                                                                                            

                    MostrarEnCXP = @MostrarEnCXP,

                                                                                                                                                                                                            

                    idClaseGasto = @idClaseGasto,

                                                                                                                                                                                                            

                    NotaAdicional = @NotaAdicional,

                                                                                                                                                                                                          

                    idAuxiliar = @idAuxiliar,

                                                                                                                                                                                                                

                    CompFiscal = @NCF,

                                                                                                                                                                                                                       

                    Tasa = ISNULL(@Tasa, 1.00),

                                                                                                                                                                                                              

                    idTipoIdentificacion = @idTipoIdentificacion,

                                                                                                                                                                                            

                    RNC = @RNC,

                                                                                                                                                                                                                              

                    Nombre = @Nombre,

                                                                                                                                                                                                                        

                    FechaEmision = @FechaEmision,

                                                                                                                                                                                                            

                    Vencimiento = @Vencimiento,

                                                                                                                                                                                                              

                    TipoGasto = @TipoGasto,

                                                                                                                                                                                                                  

                    OrdenCompra = @OrdenCompra,

                                                                                                                                                                                                              

                    idOrden = @idOrden,

                                                                                                                                                                                                                      

                    montoFacturadoServicios = @facturadoServicios,

                                                                                                                                                                                           

                    montoFacturadoBienes = @facturadoBienes,

                                                                                                                                                                                                 

                    idPagoForma = @idFormaPago,

                                                                                                                                                                                                              

					MontoIsc = @montoIsc,

                                                                                                                                                                                                                                   

					PropinaLegal = @propina,

                                                                                                                                                                                                                                

					OtrosImpuestos = @otrosImp,

                                                                                                                                                                                                                             

					itbisCosto = @itbisCosto,

                    PendEnvioEcf = @PendEnvioEcf,

                    TipoNcf = @TipoNcf,

                    CodigoSeguridadEcf = @CodigoSeguridadEcf,

                    FechaFirmaDigital = @FechaFirmaDigital,

                    FechaVenceNCF = @FechaVenceNCF,

                    CompFiscalModificado = @CompFiscalModificado,

                    FechaCompFiscalModificado = @FechaCompFiscalModificado,

                    IdClaseGastoModificado = @IdClaseGastoModificado,

                    StatusEcf = @StatusEcf 

                                                                                                                                                                                                                               

            WHERE   idDocumento = @idDocumento  

                                                                                                                                                                                                             



                                                                                                                                                                                                                                                             

            SET @nid = @idDocumento  

                                                                                                                                                                                                                        

        END  

                                                                                                                                                                                                                                                



                                                                                                                                                                                                                                                             

    RETURN @@ERROR  

                                                                                                                                                                                                                                         






GO
