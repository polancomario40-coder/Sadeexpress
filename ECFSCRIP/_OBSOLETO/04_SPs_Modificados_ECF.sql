-- ============================================================================
-- SCRIPT 04: STORED PROCEDURES DEL SISTEMA MODIFICADOS PARA ECF
-- Sistema: SADE Express ECF
-- Descripcion: Actualiza procedimientos existentes (RPTFactura, RPTCxc, Secuencias,
--              Comprobantes Fiscales, Anulaciones, etc.) para soporte de ECF
-- ============================================================================

PRINT '------------------------------------------------------------';
PRINT 'INICIANDO PASO 04: Stored Procedures Modificados para ECF';
PRINT '------------------------------------------------------------';
GO

-- >>> PROCEDURE: dbo.spGetNextCounterNCF <<<
CREATE OR ALTER PROCEDURE [dbo].[spGetNextCounterNCF]    
    (    
     @XContador VARCHAR(3),    
     @OutPut VARCHAR(16) OUTPUT,    
     @OutVenceNCF DATETIME OUTPUT,    
     @reorden BIT OUTPUT    
    )    
AS    
    DECLARE @id UNIQUEIDENTIFIER  
     
    SELECT TOP 1    
            @OutPut = (REPLICATE('0',    
                                 (a.Longitud - (LEN(CONVERT(VARCHAR, b.Secuencia)))))    
                       + CONVERT(VARCHAR, b.Secuencia)),    
            @OutVenceNCF = b.ValidoHasta,    
            @id = b.idCompFiscalSecuencia,    
            @reorden = CAST(CASE WHEN (ISNULL(b.Reorden, 0) >= (b.SecuenciaFinal    
                                                              - b.Secuencia))    
                                 THEN 1    
                                 ELSE 0    
                            END AS BIT)    
    FROM    CompFiscal a    
            JOIN CompFiscalSecuencia b ON b.uidCompFiscal = a.uidCompFiscal    
    WHERE   (a.Serie + a.TipoNCF) = @XContador    
            AND b.ValidoHasta >= dbo.dateOf(GETDATE())    
            AND b.Secuencia <= b.SecuenciaFinal    
            AND b.Inactivo = 0    
    ORDER BY b.ValidoHasta    
                
 --si ya se han ejecutado todos los NCF inactivo la secuencia          
    UPDATE  CompFiscalSecuencia    
    SET     Inactivo = 1    
    WHERE   idCompFiscalSecuencia = @id    
            AND Secuencia = SecuenciaFinal    
    
    --si aun no quedan secuencia    
    UPDATE  CompFiscalSecuencia    
    SET     Secuencia = Secuencia + 1    
    WHERE   idCompFiscalSecuencia = @id    
            AND Secuencia < SecuenciaFinal
GO
PRINT 'Procedimiento creado/actualizado: dbo.spGetNextCounterNCF';
GO

-- >>> PROCEDURE: dbo.svCompFiscal <<<
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
PRINT 'Procedimiento creado/actualizado: dbo.svCompFiscal';
GO

-- >>> PROCEDURE: dbo.svCompFiscal2018 <<<
--/****** Object:  StoredProcedure [dbo].[svCompFiscal2018]    Script Date: 09/11/2025 12:58:22 p.m. ******/
--SET ANSI_NULLS ON
--GO

--SET QUOTED_IDENTIFIER ON
--GO
CREATE OR ALTER PROCEDURE [dbo].[svCompFiscal2018]  
 @OutPut VARCHAR(19) OUTPUT,       
 @TipoDoc VARCHAR(2),  
 @idCliente INT,  
 @VencimientoNCF DATETIME OUTPUT,  
 @reorden BIT OUTPUT  
AS BEGIN   
  
declare  
  @TipoCompFiscal char(2),  
  @NCF varchar(19),  
  @SCF varchar(19),    
  @RC INT,  
  @VENCE DATETIME,  
  @RORDEN BIT  
  
IF @TipoDoc = 'FT'  
BEGIN  
  Set @TipoCompFiscal = (Select   
              TipoCompFiscal  
                  from    
             ClienteTipo ct    
             join Cliente c on ct.idClienteTipo = c.idClienteTipo  
    where   
      c.idcliente = @idcliente)  
END  
ELSE BEGIN  
  SET @TipoCompFiscal =  @TipoDoc  
END  
  
SELECT TOP 1 @NCF = Serie + @TipoCompFiscal  
FROM CompFiscal cf  
WHERE Terminal = 'Default'  
      AND TipoNCF = @TipoCompFiscal  
  
EXEC @RC = spGetNextCounterNCF @NCF, @SCF OUTPUT, @VENCE OUTPUT, @RORDEN OUTPUT  
SET @VencimientoNCF = @VENCE  
SET @reorden = @RORDEN  
  
SET @OutPut = ISNULL(@NCF + @SCF, '')  
  
RETURN 0  
  
END
GO
PRINT 'Procedimiento creado/actualizado: dbo.svCompFiscal2018';
GO

-- >>> PROCEDURE: dbo.RPTFactura <<<
CREATE OR ALTER PROCEDURE [dbo].[RPTFactura]      

    (      

	 @idFactura UNIQUEIDENTIFIER,@balance decimal(19,2)

    )      

AS      

  declare @det table (    

    IdFactura uniqueidentifier,     

    idFacturaDet uniqueidentifier,    

    idProducto varchar(25),    

    Producto varchar(2000),     

    Cantidad float,    

    Precio decimal(19,2),     

    idUnidad varchar(16),    

    Descuento decimal(19,2),    

    Itbis decimal(19,2),    

    LineTotal decimal(19,2),     

    idCargo uniqueidentifier,    

    dias decimal(19,2),    

    PrecioDia decimal(19,2),    

    idAlmacen varchar(16),    

    Linea int,

    referencia varchar(16),

    fecha datetime

  )    

    

  insert into @det     

  (IdFactura, idFacturaDet, idProducto, Producto, Cantidad, Precio, idUnidad,     

   Descuento, Itbis, LineTotal, idCargo, dias, PrecioDia, idAlmacen, Linea,referencia ,	fecha )    

  select idFactura, idFacturaDet, idProducto, Producto, Cantidad, Precio, idUnidad,     

   Descuento, Itbis, LineTotal, idCargo, dias, PrecioDia, idAlmacen, Linea  ,referencia ,	fecha  

  from FacturaDet     

  where idFactura = @idFactura and idCargo is null     

    

  update e    

    set e.producto = e.Producto + ISNULL(char(13) + char(10) + ' (' + strs.CommaStr + ')', '') ,    

  e.Precio = e.Precio + ISNULL(totales.TPrecio,0),    

  e.PrecioDia = e.PrecioDia + ISNULL(totales.TPrecioDia,0),    

  e.Descuento = e.Descuento + ISNULL(totales.TDescuento,0),    

  e.Itbis = e.Itbis + ISNULL(totales.TItbis,0),    

  e.LineTotal = e.LineTotal + ISNULL(totales.TLineTotal,0)    

  FROM @det e outer apply (SELECT  idfacturadet,STUFF((SELECT  ',' + producto FROM Facturadet EE    

        WHERE  EE.idcargo=E.IdFacturaDet     

       FOR XML PATH('')), 1, 1, '') AS 'CommaStr') strs    

   outer apply (SELECT  SUM(precio) as TPrecio, SUM(descuento) as TDescuento,     

         SUM(itbis) as TItbis, SUM(linetotal) as TLineTotal,    

         SUM(PrecioDia) as TPrecioDia    

          from FacturaDet where idFactura = e.IdFactura and idCargo = e.idFacturaDet) totales    

       

 SELECT  c.idFactura,      

            c.Factura,      

            c.idCliente,      

            c.Cliente,      

            c.Contacto,      

            c.Direccion,      

            c.Sector,      

            c.Ciudad,      

            c.Telefono,      

            e.Empleado,      

            c.Fecha,      

            c.Referencia,      

            c.Cancelado,      

            c.Credito,                

            cc.Condicion AS Condicion,      

            c.Fecha + ISNULL(c.Condicion, 0) AS Vencimiento,      

            c.SubTotal,      

            c.Itbis,      

            c.OrdComp,      

            c.Descuento,      

            c.Total,      

            c.Nota,      

            c.nota2,      

            c.idClienteObra,      

            c.CompFiscal,      

            c.ClienteRNC,      

            m.idMoneda,      

            m.Moneda,      

            cd.idFacturaDet,      

            cd.idProducto AS DetidProducto,      

            cd.Producto AS DetProducto,      

            cd.Cantidad AS DetCantidad,      

            cd.Precio AS DetPrecio,      

            cd.Descuento AS DetDescuento,      

            cd.Itbis AS DetITBIS,      

            cd.LineTotal AS DetLineTotal,      

            cd.idUnidad,      

            cd.dias,      

            cd.PrecioDia,      

            Esp.Especificacion,      

            co.Compania AS coCompania,      

            co.Direccion AS coDireccion,      

            co.Telefono AS coTelefono,    

			(select valor from ConfiguracionPC pc where NombrePC=c.computer and Configuracion='Sucursaldireccion') as SUCURSARDireccion,

			(select valor from ConfiguracionPC pc where NombrePC=c.computer and Configuracion='SucursalTelefono') as SUCURSARLTelefono,

			(select valor from ConfiguracionPC pc where NombrePC=c.computer and Configuracion='Sucursal') as SUCURSARL,

            co.Fax AS coFax,      

            co.RNC AS coRNC,      

            tncf.TipoNCF as TipoNcfDesc,      

            cl.Fax,      

            cd.Linea,      

            cl.NumeroSuplidor,      

            cl.Beeper AS Celular,      

            c.Hora,      

            c.eMail,      

            c.Observacion,      

            c.FechaVenceNCF    , 

			cd.referencia as ReferenciaDet,

			cd.fecha as fechadet,

   c.TipoNcf,   

   ecf.CodigoSeguridadEcf,      

  ecf.FechaFirmaDigital, 

   LTRIM(

        CONCAT(

            CASE WHEN ISNULL(fc.Efectivo,0) > 0 THEN 'Efectivo, ' ELSE '' END,

            CASE WHEN ISNULL(fc.Tarjeta,0) > 0 THEN 'Tarjeta, ' ELSE '' END,

            CASE WHEN ISNULL(fc.Cheque,0) > 0 THEN 'Cheque, ' ELSE '' END,

            CASE WHEN ISNULL(fc.Otros,0) > 0 THEN 'Otros, ' ELSE '' END

        )

    ) AS FormaPago,

  case         

      when ecf.TipoNcf = '32' and ecf.Total < 250000 then dbo.ecf_buildQRFacturaConsumo(ecf.ncf, co.RNC, ecf.CodigoSeguridadEcf, ecf.Total)            

      else dbo.ecf_buildQR(ecf.ncf, ecf.TipoNcf, co.RNC, ecf.DocumentoIdentidad, ecf.fecha, ecf.CodigoSeguridadEcf, ecf.FechaFirmaDigital, ecf.Total)              

  end as ValUrl ,     

  @balance as Balance,

  (case when c.TipoDocumento='Factura' and isnull(c.FecSaldo,'')='' then c.Fecha end) Fecsaldo

    FROM    dbo.Factura c      

            INNER JOIN @det cd ON c.idFactura = cd.idFactura      

            INNER JOIN Cliente cl ON (cl.idCliente = c.idCliente)      

            INNER JOIN Moneda m ON c.idMoneda = m.idMoneda 

			left join ECFWorker..ecf_comprobante ecf on c.idFactura = ecf.Referencia  

            LEFT JOIN FacturaDetEspec Esp ON cd.idFacturaDet = Esp.idFacturaDet      

            LEFT JOIN dbo.svEmpleado e ON c.idEmpleado = e.idEmpleado      

            LEFT JOIN svCondicion cc ON (cc.idCondicion = c.idCondicion)      

            LEFT JOIN svTipoNCF tncf ON CASE WHEN LEN(c.CompFiscal) = 19 THEN SUBSTRING(CompFiscal, 10, 2) ELSE SUBSTRING(CompFiscal, 2, 2) END = tncf.idTipoNCF      

            left join facturaCobro fc on C.idfactura = fc.idfactura    

			CROSS JOIN dbo.Configuracion co      

    WHERE   c.idFactura = @idFactura      

    ORDER BY cd.Linea
GO
PRINT 'Procedimiento creado/actualizado: dbo.RPTFactura';
GO

-- >>> PROCEDURE: dbo.RPTCxc <<<
CREATE OR ALTER PROCEDURE [dbo].[RPTCxc] -- '3346040f-095e-40a3-b577-6f4ded3a766f'
    (  
     @idCxc UNIQUEIDENTIFIER  
    )  
AS  
BEGIN
    SET NOCOUNT ON;

    DECLARE @rncEmisor VARCHAR(20);

    SELECT @rncEmisor = REPLACE(RNC, '-', '')       
    FROM Configuracion;

    SELECT  c.idCxc,  
            c.Cxc,  
            c.idCliente,  
            c.idTipoDocumento,  
            c.Valor,  
            c.Fecha,  
            c.Concepto,  
            c.idCxcTipo,  
            c.esCredito,  
            c.Cancelado,  
            c.Referencia,  
            c.Cliente,  
            c.Usuario,  
            c.idDocumento,  
            c.Descuento,  
            c.Total,  
            c.Condicion,  
            c.Vencimiento,  
            d.idCxcDet,  
            d.Valor AS AplicadoValor,  
            d.Fecha AS AplicacionFecha,  
            d.Descuento AS AplicadoDescuento,  
            d.TotalAplicado AS AplicadoTotal,  
            f.idCxc AS DebitoidCxc,  
            f.Cxc AS DebitoCxc,  
            f.idTipoDocumento AS DebitoidTipoDoc,  
            f.Valor AS DebitoValor,  
            f.Fecha AS DebitoFecha,  
            f.Concepto AS DebitoConcepto,  
            c.CompFiscal,  
            co.Compania,  
            co.Direccion,  
            co.Telefono,  
            co.Fax,  
            co.RNC,  
            ct.CxcTipo,  
            m.Moneda,  
            m2.Moneda AS MonedaFact,  
            ISNULL(f.CompFiscal, ISNULL(c.ncfModificado, '')) AS DebitoNCF,
            ISNULL((SELECT valor FROM ConfiguracionPC pc WHERE pc.NombrePC = c.computer AND pc.Configuracion = 'Sucursaldireccion'), '') AS SUCURSARDireccion,
            ISNULL((SELECT valor FROM ConfiguracionPC pc WHERE pc.NombrePC = c.computer AND pc.Configuracion = 'SucursalTelefono'), '') AS SUCURSARLTelefono,
            c.Itbi,  
            ISNULL(c.ncfModificado, '') AS CompFiscalAplica,
            ISNULL(c.ncfModificado, '') AS ncfModificado, 
            QrUrl = dbo.ecf_buildQR(
                ISNULL(ecf.ncf, c.CompFiscal),
                ISNULL(ecf.TipoNcf, SUBSTRING(c.CompFiscal, 2, 2)),
                co.RNC,
                ISNULL(ecf.DocumentoIdentidad, (SELECT TOP 1 REPLACE(REPLACE(RNC_Cedula, '-', ''), ' ', '') FROM cliente clt WHERE clt.idCliente = c.idCliente)),
                ISNULL(ecf.fecha, c.Fecha),
                ISNULL(c.CodigoSeguridadEcf, ecf.CodigoSeguridadEcf),
                ISNULL(c.FechaFirmaDigital, ecf.FechaFirmaDigital),
                ISNULL(ecf.Total, c.Total)
            ),
            ISNULL(c.CodigoSeguridadEcf, ecf.CodigoSeguridadEcf) AS CodigoSeguridadEcf, 
            ISNULL(c.FechaFirmaDigital, ecf.FechaFirmaDigital) AS FechaFirmaDigital
    FROM    Cxc c  
            INNER JOIN CxcTipo ct ON (c.idCxcTipo = ct.idCxcTipo)  
            INNER JOIN Moneda m ON c.idMoneda = m.idMoneda  
            LEFT JOIN ECFWorker..ecf_comprobante ecf ON c.idCxc = ecf.Referencia  
            LEFT JOIN CxcDet d ON c.idCxc = d.idCxc  
            LEFT JOIN Cxc f ON d.idCxcDebito = f.idCxc  
            LEFT JOIN Moneda m2 ON f.idMoneda = m2.idMoneda  
            CROSS JOIN Configuracion co  
    WHERE   c.idCxc = @idCxc;
END
GO
GO
PRINT 'Procedimiento creado/actualizado: dbo.RPTCxc';
GO

-- >>> PROCEDURE: dbo.SPFacturaAnular <<<
CREATE OR ALTER PROCEDURE [dbo].[SPFacturaAnular]
 @idFactura uniqueidentifier, 
 @Anulado bit output, 
 @TipoAnulacion VarChar(2) = 04
AS      

declare @err int      
Set     @err = 0      
Set @Anulado = 0  --retornar false      
IF exists (      
  SELECT Top 1 -- si no existen pago para la cxc de esta factura      
    1      
  FROM      
    Cxc p      
    INNER JOIN Cxcdet Pd ON p.idCxc = pd.idCxc      
    INNER JOIN Cxc f ON pd.idCxcDebito = f.idCxc      
  WHERE      
    f.idcxc  = @idFactura and p.cancelado = 0)      
BEGIN      
  RETURN -1      
END      
  
IF exists (      
  SELECT Top 1 -- si no se ha cerrado el almacen para los movimientos generados por esta factura      
    1      
  FROM      
    ProMov p        
  WHERE      
    p.IdReferencia = @idFactura and p.posteado = 1)      
BEGIN      
  RETURN -2      
END      
  
BEGIN TRAN        
  
Update       
    factura       
  set       
    cancelado = 1,       
    fechacancelado =  round(convert(float, fecha),0,1),      
    TipoAnulacion = @TipoAnulacion      
  where       
    idfactura = @idFactura --marcar factura como cancelado      
  set @err = @@Error         
    
  Delete       
  from cxc       
  where idcxc = @idFactura  -- borrar la cxc de la factura      
    
  Set @Err = @@Error      
    
  Delete       
    promovdet      
  from       
    Promov p      
    join promovdet pd on p.idpromov = pd.idpromov      
  where       
    p.idReferencia = @idFactura      
      
  set @err = @@Error         
  Delete       
  from       
    Promov       
  where       
    idreferencia = @idFactura      
      
  set @err = @@Error         
  Set @Anulado = 1  -- retornar true      
  
if isnull(@err,0)  <> 0       
begin      
  ROLLBACK TRAN      
  RETURN 1      
end      
  
COMMIT TRAN      
RETURN 0
GO
PRINT 'Procedimiento creado/actualizado: dbo.SPFacturaAnular';
GO

-- >>> PROCEDURE: dbo.Factura2Dev <<<
CREATE OR ALTER PROCEDURE [dbo].[Factura2Dev](@idFactura uniqueidentifier, @idDevolucion uniqueidentifier) AS    
    
  SELECT         
    c.idFactura,     
    c.Factura,     
    c.idCliente,     
    c.Cliente,     
    c.Fecha,     
    c.Nota,     
    c.PorcDesc,    
    c.condicion,     
    c.idMoneda,    
    c.tasa,    
    cd.idFacturaDet,     
    cd.idProducto,     
    cd.Producto,     
    cd.Cantidad,     
    cd.Precio,     
    cd.Descuento,     
    cd.Itbis,     
    cd.LineTotal,   
    c.idAlmacen,
	c.CompFiscal as NCFModificar,
    isnull((Select sum(dd.devCantidad) 
     from devoluciondet dd join devolucion d on d.iddevolucion = dd.iddevolucion 
     where dd.idFacturadet = cd.idfacturadet and d.cancelado = 0 and d.iddevolucion <> isnull(@idDevolucion,'00000000-0000-0000-0000-000000000000')),0.00)  as CantidadDev     
  FROM             
    dbo.Factura c     
    INNER JOIN dbo.FacturaDet cd ON c.idFactura = cd.idFactura    
  WHERE    
    c.idFactura = @idFactura    
    and c.Cancelado = 0    
  


/****** Object:  StoredProcedure [dbo].[svDevolucion2ProMov]    Script Date: 11/11/2025 06:31:56 a.m. ******/
SET ANSI_NULLS ON
GO
PRINT 'Procedimiento creado/actualizado: dbo.Factura2Dev';
GO

-- >>> PROCEDURE: dbo.Devolucion2CxC <<<
CREATE OR ALTER PROCEDURE [dbo].[Devolucion2CxC]
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
GO
PRINT 'Procedimiento creado/actualizado: dbo.Devolucion2CxC';
GO

-- >>> PROCEDURE: dbo.svDevolucion2ProMov <<<
CREATE OR ALTER PROCEDURE [dbo].[svDevolucion2ProMov]
  @idDevolucion uniqueidentifier,
  @idPromov uniqueidentifier output
AS

Declare 
  @TipoMov int,
  @Secuencia Varchar(16),
  @RecCount int,
  @Error int,
  @id uniqueidentifier

Set @Error = 0

--begin tran

Set @TipoMov = convert(varchar,(Select Valor from Defaults where clave = 'TipoMovInvDevolu'))

select @Secuencia = ProMov from promov where idProMov = @idDevolucion 

if @Secuencia is null
  exec spGetNextCounterSTR 'MovimientoAlm',@OutPut = @Secuencia OutPut

else begin

  delete from promovdet
  where idPromov = @idDevolucion
  delete from promov
  where idProMov = @idDevolucion
end
Set @Error = @@Error
if (@Error <> 0) or (@TipoMov is null)  begin
  --rollback tran
  Return -1
end

Set @id = newid()

insert into promov (
  idProMov, 
  idProMovTipo, 
  ProMov, 
  Fecha, 
  Salida, 
  idCompania, 
  Referencia, 
  Usuario, 
  idOrdComp, 
  OrdComp, 
  EntregadoPor, 
  RecibidoPor, 
  idAlmacen, 
  Concepto, 
  Nota, 
  idConduce, 
  Conduce, 
  Posteado, 
  PosteadoFecha, 
  idOrdenTrab, 
  OrdenTrab, 
  idReferencia, 
  idAlmacenDestino,
  devolucion)
Select 
  @id, 
  @TipoMov,  
  @Secuencia, 
  d.Fecha, 
  0,  -- Entrada por devoulion
  NULL, 
  d.Devolucion, 
  d.Usuario, 
  Null, 
  Null, 
  d.Usuario, 
  Null, 
  f.idAlmacen,
  'Entra Generada por Devolucion',
  'Cod.Cliente :' + Convert(varchar(30),d.idCliente) +' \ Nombre :'+ Convert(varchar(40),d.Cliente) +'\ Factura :'+ Convert(varchar(30),d.factura),
  Null,
  Null,
  0,
  Null,
  Null,
  Null,
  d.idDevolucion,
  Null,
  1
From 
  Devolucion d
  join Factura f on d.idFactura = f.idFactura   
Where
  idDevolucion = @idDevolucion 
  and d.Cancelado = 0
Set @Error = @@Error
if (@Error <> 0)   begin
  --rollback tran
  Return -2
end

Insert into promovdet(
idProMovDet, 
idProMov, 
ProMovDet, 
idProducto, 
Producto, 
Cantidad, 
Costo, 
idUnidad, 
Posteado, 
XCosto, 
XCantidad, 
Linea, 
CC, 
Referencia, 
idCentroCosto, 
idPartida,
idDevolucionDet)
Select
  newid(),
 @id,
  SUBSTRING(dd.Producto, 1, 60),
  dd.idProducto,
  dd.Producto,
  dd.DevCantidad,
  CASE 
    WHEN 
      isnull((select pd.costo
            from promov p join promovdet pd on p.idpromov = pd.idpromov
            where idProMovDet = fd.idFacturaDet and p.posteado = 1),0) = 0 
    THEN
      dbo.InvProdCosto(dd.idProducto, d.Fecha, f.idAlmacen) * dd.DevCantidad
    ELSE
      (((select pd.costo
            from promov p join promovdet pd on p.idpromov = pd.idpromov
            where idProMovDet = fd.idFacturaDet and p.posteado = 1) / fd.Cantidad) * dd.DevCantidad)
  END,
  fd.idUnidad,
  0,
  Null,
  Null,
  dd.Linea,
  Null,
  NULL,
  Null,
  Null,    -- Partida
  dd.idDevolucionDet
from
  Devolucion d
  join DevolucionDet dd on d.idDevolucion = dd.idDevolucion
  join FacturaDet fd  on fd.idFacturaDet = dd.idFacturaDet
  join Factura f on fd.idFactura = f.idFactura
Where
  d.idDevolucion = @idDevolucion 
  and d.cancelado = 0
Set @Error = @@Error
if (@Error <> 0)  begin
  --rollback tran
  Return -3
end
--Commit Tran
  Set @idPromov = @id
return 0
GO
PRINT 'Procedimiento creado/actualizado: dbo.svDevolucion2ProMov';
GO

-- >>> PROCEDURE: dbo.FindFactura <<<
--sp_helptext'findfactura'
CREATE OR ALTER PROCEDURE [dbo].[FindFactura](@Orden varchar(100), @Desde Datetime, @Hasta Datetime, @Credito bit) AS  
  
Select   
  idFactura,   
  Factura,   
  Fecha,   
  Referencia,   
  idCliente,   
  Total,   
  convert(varchar(25), cliente) as Cliente   
From   
  Factura   
Where   
  Fecha between @Desde and @Hasta  
  --and Credito = @Credito  
  --and 	  (Cliente like '%' + @Orden + '%'  
  --             or Factura like '%' + isnull(@Orden,'') + '%'  
  --             or Referencia like '%' + isnull(@Orden,'') + '%'  
  --             or convert(varchar(20),idCliente) like '%' + isnull(@Orden,'')
		--	   + '%'
		--	   )  
Order by  
  Fecha, Factura
GO
PRINT 'Procedimiento creado/actualizado: dbo.FindFactura';
GO

-- >>> PROCEDURE: dbo.FindCliente <<<
CREATE OR ALTER PROCEDURE [dbo].[FindCliente](@Orden varchar(100)) AS  
SELECT    
  c.Telefono,   
  SUBSTRING(c.Cliente, 1, 50) AS Cliente,   
  c.idCliente,   
  c.RNC_Cedula,  
  (CASE WHEN cs.activo > 0 THEN 'Activo' ELSE 'Inactivo' END) AS Activo,   
  (CASE WHEN c.limiteCredito > 0 THEN 'Credito' ELSE 'No Credito' END) AS Credito,  
  CONVERT(varchar(20), Notas) AS Notas  
FROM Cliente c   
JOIN ClienteStatus cs ON c.idClienteStatus = cs.idClienteStatus   
ORDER BY 1;
GO
PRINT 'Procedimiento creado/actualizado: dbo.FindCliente';
GO

-- >>> PROCEDURE: dbo.FindDevolucion <<<
CREATE OR ALTER PROCEDURE [dbo].[FindDevolucion](@Orden varchar(10)) AS

Select 
  idDevolucion,
  Devolucion,
  Fecha, 
  Factura,
  convert(varchar(25), cliente) as Cliente 
From 
  Devolucion
Order by
  Fecha Desc
GO
PRINT 'Procedimiento creado/actualizado: dbo.FindDevolucion';
GO

-- >>> PROCEDURE: dbo.ClienteAct <<<
CREATE OR ALTER PROCEDURE [dbo].[ClienteAct] ( @idCliente INT )      
AS      
    SELECT  idCliente ,      
            Cliente ,      
            Contacto ,      
            LimiteCredito ,      
            Activo ,      
            idEmpleado ,      
            Direccion ,      
            Sector ,      
            Ciudad ,      
            Telefono ,      
            NoPagaItbis ,      
            Descuento ,      
            Fax ,      
            EMail ,      
            idListaPrecio ,      
            Condicion ,      
            idCuenta ,      
            idAuxiliar ,      
            RNC_Cedula ,      
            idCondicion ,      
            c.Notas ,      
            c.idMoneda ,      
            c.OCRequerida ,      
            c.Monto_Bono_Mortero  ,  
   c.NoRecibirConduces,  
   ct.TipoCompFiscal,
   c.RequiereOrdenCliente
    FROM    Cliente c      
            JOIN ClienteStatus cs ON c.idClienteStatus = cs.idClienteStatus      
            JOIN ClienteTipo ct ON c.idClienteTipo = ct.idClienteTipo      
    WHERE   idCliente = @idCliente
GO
PRINT 'Procedimiento creado/actualizado: dbo.ClienteAct';
GO

-- >>> PROCEDURE: dbo.Almacenes <<<
CREATE OR ALTER PROCEDURE [dbo].[Almacenes] AS    
    
  Select     
    idAlmacen,     
    Almacen , ContadorEntradas,  
    ContadorSalidas   , CerrarAlmacen 
  From    
    Almacen    
  Where    
    Activo = 1 --and idCompania = @idCompania    
  Order by    
    Almacen
GO
PRINT 'Procedimiento creado/actualizado: dbo.Almacenes';
GO

-- >>> PROCEDURE: dbo.bcoGastosMenoresRPT <<<
CREATE OR ALTER PROCEDURE [dbo].[bcoGastosMenoresRPT]  
 @GUIDDocumento uniqueidentifier  
as  
 select h.*,  
 QrUrl = dbo.ecf_buildQRGM(h.Guiddocumento),
 d.idCuenta,  
 d.Descripcion,  
 d.Importe  
 from bcoGastosMenores h left join bcoGastosMenoresDet d   
  on h.Guiddocumento = d.guIDDocumento  
 where h.GUIDDocumento = @guiddocumento   
 order by d.Lineanum  
return 0
GO
PRINT 'Procedimiento creado/actualizado: dbo.bcoGastosMenoresRPT';
GO

-- >>> PROCEDURE: dbo.bcoRPTDocumento <<<
CREATE OR ALTER PROCEDURE [dbo].[bcoRPTDocumento] --'158017CB-CC83-4770-A8DA-002BD234CDCC'  
 @GuidDocumento uniqueidentifier  
as  
 select *,  
 (select Nombre from cxpBancos b where b.idCuentaBanco=d.idCuentaBanco ) as Banco,  
 (select Descripcion from cgCatalogoCuentas c where c.idcuenta=dd.idcuenta) as descripcion,  
 (case when dd.debcre=1 then dd.Valor end) as Debito,  
 (case when dd.debcre=2 then dd.Valor end) as Credito  
 from bcodocumentos d  
 left join bcoDocumentosDtl dd on dd.Guiddocumento=d.Guiddocumento  
 where d.Guiddocumento = @Guiddocumento   -- d.idDocumento=63399  
 order by LineaNum  
return 0
GO
PRINT 'Procedimiento creado/actualizado: dbo.bcoRPTDocumento';
GO

-- >>> PROCEDURE: dbo.cxpGuardarDocumento <<<
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
	@itbisCosto DECIMAL(19,2) = 0
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
					 itbisCosto
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
					 @itbisCosto
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
					ItbisCosto = @itbisCosto 
            WHERE   idDocumento = @idDocumento  

            SET @nid = @idDocumento  
        END  

    RETURN @@ERROR
GO
PRINT 'Procedimiento creado/actualizado: dbo.cxpGuardarDocumento';
GO

-- >>> PROCEDURE: dbo.RPTCotizacion <<<
--select * from cotizacion order by fecha desc
--[RPTCotizacion] '0CB6A1EE-FF6C-4F0D-87D1-CABAE1FAF005'
CREATE OR ALTER PROCEDURE [dbo].[RPTCotizacion]
    (
     @idCotizacion UNIQUEIDENTIFIER
    )
AS
    DECLARE @RptCotizacion TABLE
        (
         IdCotizacion UNIQUEIDENTIFIER,
         Cotizacion VARCHAR(16),
         IdCotizacionStatus VARCHAR(32),
         CotizacionStatus VARCHAR(50),
         RNC_Cedula VARCHAR(20),
         Cliente VARCHAR(200),---------
         Email VARCHAR(100),
         IdVendedor INT,
         Contacto VARCHAR(200),
         Direccion VARCHAR(500),--------
         Sector VARCHAR(100),
         Ciudad VARCHAR(100),
         Telefono VARCHAR(20),
         Celular VARCHAR(29),
         SolicitadoPor VARCHAR(100),
         Empleado VARCHAR(80),
         TelefonoEmpleado VARCHAR(20),
         Fecha DATETIME,
         Referencia VARCHAR(50),
         Cancelado BIT,
         Credito BIT,
         Condicion VARCHAR(30),
         SubTotal NUMERIC(18, 2),
         Itbis NUMERIC(18, 2),
         Descuento NUMERIC(18, 2),
         Total NUMERIC(18, 2),
         Nota VARCHAR(2000),
         ValidoHasta DATETIME,
         IdClienteObra VARCHAR(50),----------
         IdMoneda INT,
         Moneda VARCHAR(20),
         IdCotizacionDet UNIQUEIDENTIFIER,
         DetIdProducto VARCHAR(25),
         DetProducto VARCHAR(120),
         DetCantidad NUMERIC(18, 2),
         DetPrecio NUMERIC(18, 2),
         DetServicioBombeo NUMERIC(18, 2),
         DetDescuento NUMERIC(18, 2),
         detDescuentoAdd DECIMAL(19, 2),
         detPrecioNeto DECIMAL(19, 2),
         DetItbis NUMERIC(18, 2),
         DetLineTotal NUMERIC(18, 2),
         NetLineTotal DECIMAL(19, 2),
         Dias INT,
         PrecioDia NUMERIC(18, 2),
         Especificacion VARCHAR(3000),
         coCompania VARCHAR(200),
         coDireccion VARCHAR(200),
         coTelefono VARCHAR(15),
         coFax VARCHAR(15),
         coEmail VARCHAR(100),
         coRNC VARCHAR(20),
         Fax VARCHAR(25),
         Linea INT,
         NumeroSuplidor VARCHAR(16),
         IdUnidad VARCHAR(16),
         SecuenciaDet INT IDENTITY(1, 1),
         Usuario VARCHAR(100),
         DireccionObra VARCHAR(500),
         SectorObra VARCHAR(100),
         TelefonoObra VARCHAR(10),
         Foto IMAGE,
         NotaReferencia VARCHAR(2000),
         CotizadoPor VARCHAR(100)
        )
	
    INSERT  INTO @RptCotizacion
            (IdCotizacion,
             Cotizacion,
             idCotizacionStatus,
             CotizacionStatus,
             RNC_Cedula,
             Cliente,
             EMail,
             IdVendedor,
             Contacto,
             Direccion,
             Sector,
             Ciudad,
             Telefono,
             Celular,
             SolicitadoPor,
             Empleado,
             TelefonoEmpleado,
             Fecha,
             Referencia,
             Cancelado,
             Credito,
             Condicion,
             SubTotal,
             Itbis,
             Descuento,
             Total,
             Nota,
             ValidoHasta,
             idClienteObra,
             idMoneda,
             Moneda,
             IdCotizacionDet,
             DetIdProducto,
             DetProducto,
             DetCantidad,
             DetServicioBombeo,
             DetPrecio,
             DetDescuento,
             detPrecioNeto,
             detDescuentoAdd,
             DetItbis,
             DetLineTotal,
             NetLineTotal,
             Dias,
             PrecioDia,
             Especificacion,
             coCompania,
             coDireccion,
             coTelefono,
             coFax,
             coEmail,
             coRNC,
             Fax,
             Linea,
             NumeroSuplidor,
             IdUnidad,
             Usuario,
             DireccionObra,
             SectorObra,
             TelefonoObra,
             NotaReferencia,
             CotizadoPor
	        )
            SELECT  c.idCotizacion,
                    c.Cotizacion,
                    cs.idCotizacionStatus,
                    cs.CotizacionStatus,
                    cl.RNC_Cedula,
                    CONVERT(VARCHAR(8), c.idCliente) + ' - ' + c.Cliente AS Cliente,
                    c.eMail,
                    c.idEmpleado AS idVendedor,
                    c.Contacto,
                    c.Direccion,
                    c.Sector,
                    c.Ciudad,
                    c.Telefono,
                    cl.Beeper,
                    c.SolicitadoPor,
                    e.Empleado,
                    e.Telefono,
                    c.Fecha,
                    c.Referencia,
                    c.Cancelado,
                    c.Credito,
					cl.idCondicion as condicion,
                    --(CASE WHEN c.Condicion <> 0 THEN 'CREDITO' ELSE 'CONTADO' END) AS Condicion,
                    c.SubTotal,
                    c.Itbis,
                    c.Descuento,
                    c.Total,
                    c.Nota,
                    c.ValidoHasta,
                    c.idClienteObra,
                    m.idMoneda,
                    m.Moneda,
                    cd.idCotizacionDet,
                    cd.idProducto AS DetidProducto,
                    cd.Producto AS DetProducto,
                    cd.Cantidad AS DetCantidad,
                    cd.ServicioBombeo AS DetServicioBombeo,
                    cd.Precio AS DetPrecio,
                    cd.Descuento AS DetDescuento,
                    DetPrecioNeto = CASE WHEN cd.Cantidad > 0
                                         THEN cd.Precio - (cd.Descuento
                                                           / cd.Cantidad)
                                         ELSE 0.00
                                    END,
                    cd.DescuentoAdd AS DetDescuentoAdd,
                    cd.Itbis AS DetITBIS,
                    cd.LineTotal AS DetLineTotal,
                    cd.LineTotal + (cd.Itbis) AS NetLineTotal,
                    cd.dias,
                    cd.PrecioDia,
                    LEFT(Esp.Especificacion, 2000),
                    co.Compania AS coCompania,
                    co.Direccion AS coDireccion,
                    co.Telefono AS coTelefono,
                    co.Fax AS coFax,
                    co.Email AS coEmail,
                    co.RNC AS coRNC,
                    c.Fax,
                    cd.Linea,
                    cl.NumeroSuplidor,
                    cd.idUnidad,
                    c.Usuario,
                    clo.DireccionObra,
                    clo.SectorObra,
                    clo.TelefonoObra,
                    c.NotaReferencia,
                    c.CotizadoPor
            FROM    dbo.Cotizacion c
                    INNER JOIN Moneda m ON c.idMoneda = m.idMoneda
                    INNER JOIN dbo.CotizacionDet cd ON c.idCotizacion = cd.idCotizacion
                    INNER JOIN Cliente cl ON (cl.idCliente = c.idCliente)
                    LEFT JOIN FacturaDetEspec Esp ON cd.idCotizacionDet = Esp.idFacturaDet
                    INNER JOIN dbo.CotizacionStatus cs ON c.idCotizacionStatus = cs.idCotizacionStatus
                    LEFT JOIN dbo.svEmpleado e ON c.idEmpleado = e.idEmpleado
                    CROSS JOIN dbo.Configuracion co --ON c.idCompania = co.idCompania     
                    LEFT JOIN ClienteObra clo ON clo.idClienteObra = c.idClienteObra
            WHERE   (c.idCotizacion = @idCotizacion)
            ORDER BY cd.Linea
	
    SELECT  IdCotizacion,
            Cotizacion,
            IdCotizacionStatus,
            CotizacionStatus,
            RNC_Cedula,
            Cliente,
            Email,
            Contacto,
            Direccion,
            Sector,
            Ciudad,
            Telefono,
            Celular,
            SolicitadoPor,
            Empleado,
            TelefonoEmpleado,
            Fecha,
            Referencia,
            Cancelado,
            Credito,
            Condicion,
            SubTotal,
            Itbis,
            Descuento,
            Total,
            Nota,
            ValidoHasta,
            IdClienteObra,
            IdMoneda,
            Moneda,
            IdCotizacionDet,
            DetIdProducto,
            DetProducto,
            DetCantidad,
            DetPrecio,
            DetDescuento,
            detDescuentoAdd,
            DetServicioBombeo,
            PrecioNeto = DetPrecio - ((DetDescuento + detDescuentoAdd)
                                      / DetCantidad),
            CASE WHEN DetLineTotal > 0
                 THEN (DetDescuento / DetLineTotal) * 100.00
                 ELSE 0.00
            END AS DetPorcDescuento,
            CASE WHEN DetLineTotal > 0
                 THEN (detDescuentoAdd / (DetLineTotal - DetDescuento))
                      * 100.00
                 ELSE 0.00
            END AS DetPorcDescuentoAdd,
            DetNeto = DetLineTotal - (DetDescuento + detDescuentoAdd),
            DetItbis,
            DetLineTotal,
            Dias,
            PrecioDia,
            Especificacion,
            coCompania,
            coDireccion,
            coTelefono,
            coFax,
            coEmail,
            coRNC,
            Fax,
            SecuenciaDet AS Linea,
            NumeroSuplidor,
            IdUnidad,
            NetLineTotal,
            Usuario,
            DireccionObra,
            SectorObra,
            TelefonoObra,
            Foto,
            NotaReferencia,
            CotizadoPor
    FROM    @RptCotizacion
GO
PRINT 'Procedimiento creado/actualizado: dbo.RPTCotizacion';
GO

-- >>> PROCEDURE: dbo.nomToBancoACHPopular <<<
CREATE OR ALTER PROCEDURE [dbo].[nomToBancoACHPopular] ( @NominaId INT )
AS
    DECLARE @Ene TABLE
        (
          IdEne INT IDENTITY(1, 1) ,
          Cadena VARCHAR(320)
        )    

    DECLARE @RNC VARCHAR(15) ,
        @Secuencia INT ,
        @CodigoOperacion VARCHAR(2) ,
        @TotalDebito INT ,
        @MontoDebito NUMERIC(18, 2) ,
        @eMail VARCHAR(40) ,
        @NombreCompania VARCHAR(35) ,
        @NombreArchivo VARCHAR(40) ,
        @NomCodigoParaBanco VARCHAR(5) ,
        @Hasta DATETIME

    EXEC nomNextCounter 'BCOSECUENCIA'

    SET @Hasta = ( SELECT   Hasta
                   FROM     Nomina
                   WHERE    NominaID = @NominaID
                 )

    SET @NomCodigoParaBanco = ISNULL(( SELECT   CONVERT(VARCHAR, Valor)
                                       FROM     Defaults
                                       WHERE    Clave = 'NomCodParaBanco'
                                     ), 'XXXXX')    

    SET @NombreCompania = ( SELECT  Compania
                            FROM    Configuracion
                          )    

    SET @RNC = REPLACE(( SELECT TOP 1
                                RNC
                         FROM   Configuracion
                       ), '-', '')    

    SET @Secuencia = ISNULL(( SELECT    Valor
                              FROM      Contador
                              WHERE     Contador = 'BCOSECUENCIA'
                            ), 1001)   
							 
    SET @CodigoOperacion = ISNULL(( SELECT  CONVERT(VARCHAR, Valor)
                                    FROM    Defaults
                                    WHERE   Clave = 'CodigoOperacion'
                                  ), '32')   
								   
    SET @eMail = ISNULL(( SELECT    CONVERT(VARCHAR, Valor)
                          FROM      Defaults
                          WHERE     Clave = 'eMailParaNomina'
                        ), '****@*****.com')    

    SELECT  @MontoDebito = SUM(x.Neto) ,
            @TotalDebito = COUNT(*)
    FROM    ( SELECT    COUNT(*) AS Cantidad ,
                        SUM(ne.Neto) AS Neto
              FROM      ( SELECT    *
                          FROM      NominaEmp
                          WHERE     NominaId = @NominaId
                                    AND Neto > 0
                        ) AS ne
                        INNER JOIN Empleado em ON ( em.EmpleadoId = ne.EmpleadoId )
                        LEFT OUTER JOIN nomBancoDestino bd ON ( bd.IdBancoDestino = em.IdBancoDestino )
              WHERE     ISNULL(em.NumeroCuenta, '') <> ''
              GROUP BY  em.EmpleadoId
            ) AS x    

    SET @NombreArchivo = ( SELECT   'PE' + @NomCodigoParaBanco + '01'
                                    + REPLICATE('0',
                                                2
                                                - DATALENGTH(CONVERT(VARCHAR(2), MONTH(GETDATE()))))
                                    + CONVERT(VARCHAR(2), MONTH(GETDATE()))
                                    + REPLICATE('0',
                                                2
                                                - DATALENGTH(CONVERT(VARCHAR(2), DAY(GETDATE()))))
                                    + CONVERT(VARCHAR(2), DAY(GETDATE()))
                                    + REPLICATE('0',
                                                7
                                                - DATALENGTH(CONVERT(VARCHAR(7), CONVERT(INT, @Secuencia))))
                                    + CONVERT(VARCHAR(7), CONVERT(INT, @Secuencia))
                                    + 'E.txt'
                         )    

    INSERT  INTO @Ene
            ( Cadena
            )
            SELECT  ( 'N' + @RNC + REPLICATE(' ', 15 - DATALENGTH(@RNC))
                      + REPLICATE('0',
                                  7
                                  - DATALENGTH(CONVERT(VARCHAR(7), CONVERT(INT, @Secuencia))))
                      + CONVERT(VARCHAR(7), CONVERT(INT, @Secuencia))
                      + --Replicate('0', 7 - DataLength(Convert(VarChar(7), Convert(Int, 0)))) + Convert(VarChar(7), Convert(Int, 0)) +    
                      '0000000' + CONVERT(VARCHAR(20), em.NumeroCuenta)
                      + REPLICATE(' ',
                                  20
                                  - DATALENGTH(CONVERT(VARCHAR(20), em.NumeroCuenta)))
                      + ISNULL(em.TipoCuentaDestino, '*') + '214'
                      + -- Moneda Destino Pesos    
                      ISNULL(CONVERT(VARCHAR(8), em.IdBancoDestino), '101010708')
                      + ISNULL(CONVERT(VARCHAR(1), bd.DigitoVerificacion), '8')
                      + ISNULL(@CodigoOperacion, '**') + REPLICATE('0',
                                                              13
                                                              - DATALENGTH(REPLACE(CONVERT(VARCHAR(13), CONVERT(NUMERIC(18,
                                                              2), SUM(av.Neto))),
                                                              '.', '')))
                      + REPLACE(CONVERT(VARCHAR(13), CONVERT(NUMERIC(18, 2), SUM(av.Neto))),
                                '.', '') 
					--+ REPLICATE(' ', 2) + REPLICATE(' ',15)
                    
					  +'CE'                                      
                      + ISNULL(CONVERT(VARCHAR(15), REPLACE(em.cedula, ',','')), ' ')
                      + REPLICATE(' ',15 - DATALENGTH(ISNULL(CONVERT(VARCHAR(15), REPLACE(em.cedula,',', '')), ' ')))

                      + ISNULL(CONVERT(VARCHAR(35), REPLACE(em.Empleado, ',',
                                                            '')), ' ')
                      + REPLICATE(' ',
                                  35
                                  - DATALENGTH(ISNULL(CONVERT(VARCHAR(35), REPLACE(em.Empleado,
                                                              ',', '')), ' ')))
                      + ISNULL('NumReferenci', ' ') + REPLICATE(' ',
                                                              12
                                                              - DATALENGTH(ISNULL('NumReferenci',
                                                              ' ')))
                      + --  IsNull('PAGO AVANCES POR COMISION', ' ') + Replicate(' ', 40 - DataLength(IsNull('PAGO AVANCE POR COMISION', ' '))) +    
                      'PAGO NOMINA                             '
                      + REPLICATE(' ', 4)
                      + CASE WHEN ISNULL(em.TipoNotificacionBanco, ' ') = '0'
                             THEN ' '
                             ELSE ISNULL(em.TipoNotificacionBanco, ' ')
                        END
                      + CASE WHEN ISNULL(em.TipoNotificacionBanco, 0) <> 0
                             THEN CASE WHEN em.TipoNotificacionBanco = 1
                                       THEN ISNULL(em.DireccionNotificacionBanco,
                                                   ' ') + REPLICATE(' ',
                                                              40
                                                              - DATALENGTH(ISNULL(em.DireccionNotificacionBanco,
                                                              ' ')))
                                       ELSE REPLICATE(' ', 40)
                                  END
                             ELSE REPLICATE(' ', 40)
                        END
                      + CASE WHEN ISNULL(em.TipoNotificacionBanco, 0) <> 0
                             THEN CASE WHEN em.TipoNotificacionBanco = 2
                                       THEN ISNULL(em.DireccionNotificacionBanco,
                                                   ' ') + REPLICATE(' ',
                                                              12
                                                              - DATALENGTH(ISNULL(em.DireccionNotificacionBanco,
                                                              ' ')))
                                       ELSE REPLICATE(' ', 12)
                                  END
                             ELSE REPLICATE(' ', 12)
                        END
                      + --  Replicate('0', 2) + El filler que dice en la especificaciones que lo le pongan 0   
  REPLICATE(' ', 2) + REPLICATE(' ', 15) + REPLICATE(' ', 3) + REPLICATE(' ',
                                                              3)
                      + REPLICATE(' ', 3) + REPLICATE(' ', 1) + REPLICATE(' ',
                                                              2)
                      + REPLICATE(' ', 52) ) AS Cadena
            FROM    ( SELECT    *
                      FROM      NominaEmp
                      WHERE     NominaId = @NominaId
                                AND Neto > 0
                    ) AS av
                    INNER JOIN Empleado em ON ( em.EmpleadoId = av.EmpleadoId )
                    LEFT OUTER JOIN nomBancoDestino bd ON ( bd.IdBancoDestino = em.IdBancoDestino )
            WHERE   ISNULL(em.NumeroCuenta, '') <> ''
            GROUP BY em.NumeroCuenta ,
                    em.TipoCuentaDestino ,
                    em.IdBancoDestino ,
                    bd.DigitoVerificacion ,
                    em.Empleado ,
                    em.TipoNotificacionBanco ,
                    em.DireccionNotificacionBanco ,
                    em.TipoNotificacionBanco  ,
					em.cedula  
--------------------    
    SELECT  ( 'H' + @RNC + REPLICATE(' ', 15 - DATALENGTH(@Rnc))
              + ISNULL(CONVERT(VARCHAR(35), @NombreCompania), ' ')
              + REPLICATE(' ',
                          35
                          - DATALENGTH(ISNULL(CONVERT(VARCHAR(35), @NombreCompania),
                                              ' '))) + REPLICATE('0',
                                                              7
                                                              - DATALENGTH(CONVERT(VARCHAR(7), CONVERT(INT, @Secuencia))))
              + CONVERT(VARCHAR(7), CONVERT(INT, @Secuencia)) + '01'
              + CONVERT(VARCHAR(8), @Hasta, 112) + '00000000000'
              + '0000000000000' + REPLICATE('0',
                                            11
                                            - DATALENGTH(CONVERT(VARCHAR(11), CONVERT(INT, @TotalDebito))))
              + CONVERT(VARCHAR(11), CONVERT(INT, @TotalDebito))
              + REPLICATE('0',
                          13
                          - DATALENGTH(REPLACE(CONVERT(VARCHAR(13), CONVERT(NUMERIC(18,
                                                              2), @MontoDebito)),
                                               '.', '')))
              + REPLACE(CONVERT(VARCHAR(13), CONVERT(NUMERIC(18, 2), @MontoDebito)),
                        '.', '') + '000000000000000'
              + CONVERT(VARCHAR(8), GETDATE(), 112)
              + REPLACE(CONVERT(VARCHAR(5), GETDATE(), 108), ':', '')
              + ISNULL(@eMail, ' ') + REPLICATE(' ',
                                                40 - DATALENGTH(ISNULL(@eMail,
                                                              ' '))) + ' '
              + REPLICATE(' ', 136) ) AS Cadena ,
            @NombreArchivo AS NombreArchivo
    UNION
    SELECT  SUBSTRING(Cadena, 1, 23) + REPLICATE('0',
                                                 7
                                                 - DATALENGTH(CONVERT(VARCHAR(7), IdEne)))
            + CONVERT(VARCHAR(7), IdEne) + SUBSTRING(Cadena, 31, 320) ,
            @NombreArchivo
    FROM    @Ene
GO
PRINT 'Procedimiento creado/actualizado: dbo.nomToBancoACHPopular';
GO

PRINT '------------------------------------------------------------';
PRINT 'PASO 04 COMPLETADO SATISFACTORIAMENTE';
PRINT '------------------------------------------------------------';
GO