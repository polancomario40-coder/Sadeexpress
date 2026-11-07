
GO

/****** Object:  StoredProcedure [dbo].[svCompFiscal2018]    Script Date: 04/05/2026 10:15:17 p.m. ******/
DROP PROCEDURE [dbo].[svCompFiscal2018]
GO

/****** Object:  StoredProcedure [dbo].[spGetNextCounterNCF]    Script Date: 04/05/2026 10:15:17 p.m. ******/
DROP PROCEDURE [dbo].[spGetNextCounterNCF]
GO

/****** Object:  StoredProcedure [dbo].[ClienteAct]    Script Date: 04/05/2026 10:15:17 p.m. ******/
DROP PROCEDURE [dbo].[ClienteAct]
GO

/****** Object:  StoredProcedure [dbo].[RPTFactura]    Script Date: 04/05/2026 10:15:17 p.m. ******/
DROP PROCEDURE [dbo].[RPTFactura]
GO

/****** Object:  StoredProcedure [dbo].[FindCliente]    Script Date: 04/05/2026 10:15:17 p.m. ******/
DROP PROCEDURE [dbo].[FindCliente]
GO

/****** Object:  StoredProcedure [dbo].[FindCliente]    Script Date: 04/05/2026 10:15:17 p.m. ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

  
  
CREATE  PROCEDURE [dbo].[FindCliente](@Orden varchar(100)) AS  
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

/****** Object:  StoredProcedure [dbo].[RPTFactura]    Script Date: 04/05/2026 10:15:18 p.m. ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO




--select * from Factura  order by fecha desc where factura = '00000430'
 
--RPTFactura '956BF8C3-61C9-40F2-B3BF-A28A2011F1B7'    
CREATE PROCEDURE [dbo].[RPTFactura]      
    (      
        
	 @idFactura UNIQUEIDENTIFIER,@balance decimal(19,2)

    )      
AS      
    
  --set @idFactura = 'BD0847D1-5F03-4A40-ABE8-C87F0199D287'

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
 Linea int    ,
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
   --  (CASE WHEN c.Condicion = 0 THEN 'CONTADO' ELSE convert(varchar,condicion)+' Dias' END) as Condicion,                
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
   --c.CodigoSeguridadEcf,  
   --c.FechaFirmaDigital,  
   c.TipoNcf,   
   --ValUrl = case c.TipoNCF when '32' then dbo.ecf_buildQRFacturaConsumo(c.IdFactura) else dbo.ecf_buildQRFactura(c.IdFactura) end              
   ecf.CodigoSeguridadEcf,      
  ecf.FechaFirmaDigital, 
   LTRIM(
        CONCAT(
            CASE WHEN ISNULL(Efectivo,0) > 0 THEN 'Efectivo, ' ELSE '' END,
            CASE WHEN ISNULL(Tarjeta,0) > 0 THEN 'Tarjeta, ' ELSE '' END,
            CASE WHEN ISNULL(Cheque,0) > 0 THEN 'Cheque, ' ELSE '' END,
            CASE WHEN ISNULL(Otros,0) > 0 THEN 'Otros, ' ELSE '' END
        )
    ) AS FormaPago,
  case         
      when ecf.TipoNcf = '32' and ecf.Total < 250000 then dbo.ecf_buildQRFacturaConsumo(ecf.ncf, co.RNC, ecf.CodigoSeguridadEcf, ecf.Total)            
      else dbo.ecf_buildQR(ecf.ncf, ecf.TipoNcf, co.RNC, ecf.DocumentoIdentidad, ecf.fecha, ecf.CodigoSeguridadEcf, ecf.FechaFirmaDigital, ecf.Total)              
  end as ValUrl ,     
  @balance as Balance,
  (case when TipoDocumento='Factura' and isnull(FecSaldo,'')='' then c.Fecha end) Fecsaldo
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

/****** Object:  StoredProcedure [dbo].[ClienteAct]    Script Date: 04/05/2026 10:15:18 p.m. ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

  
CREATE PROCEDURE [dbo].[ClienteAct] (@idCliente int) AS        
        
  Select         
    c.idCliente,         
    c.Cliente,         
    c.Contacto,         
    c.LimiteCredito,         
    cs.Activo,         
    c.idEmpleado,        
    c.Direccion,        
    c.Sector,        
    c.Ciudad,        
    c.Telefono,        
    ct.ClienteTipo,   
    ct.NoPagaItbis,        
    c.Descuento,        
    c.Fax,        
    c.eMail,        
    c.idListaPrecio,        
    c.Condicion,        
    c.idCuenta,        
    c.idAuxiliar,      
    c.RNC_Cedula,      
    c.idCondicion,    
    c.Notas,    
    c.IdMoneda,  
    c.idClienteParent,  
    c2.Cliente as ClienteParent,  
   c.TipoNCFEmp,  
 c.Empresa,  
 c.RNCEmP,
 ct.TipoCompFiscal
    
  from         
    cliente c         
    join clientestatus cs on c.idClienteStatus = cs.idClienteStatus        
    join ClienteTipo ct on c.idClienteTipo = ct.idClienteTipo        
    left join Cliente c2 on c.idClienteParent = c2.idCliente   
  where         
    c.idCliente = @idCliente      
return  
GO

/****** Object:  StoredProcedure [dbo].[spGetNextCounterNCF]    Script Date: 04/05/2026 10:15:18 p.m. ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[spGetNextCounterNCF]      
(
 @XContador VARCHAR(16),      
 @OutPut VARCHAR(16) OUTPUT,      
 @OutVenceNCF DATETIME OUTPUT,      
 @reorden BIT OUTPUT      
)      
AS      

DECLARE @DebugMsg VARCHAR(500) = ''
DECLARE @id UNIQUEIDENTIFIER    

BEGIN TRY

    SET @DebugMsg = 'Buscando contador: ' + ISNULL(@XContador,'NULL')
    PRINT @DebugMsg
    SELECT @DebugMsg AS Debug

    SELECT TOP 1      
        @OutPut = (
            REPLICATE('0', (a.Longitud - LEN(CONVERT(VARCHAR, b.Secuencia))))
            + CONVERT(VARCHAR, b.Secuencia)
        ),      
        @OutVenceNCF = b.ValidoHasta,      
        @id = b.idCompFiscalSecuencia,      
        @reorden = CAST(
            CASE 
                WHEN ISNULL(b.Reorden, 0) >= (b.SecuenciaFinal - b.Secuencia) 
                THEN 1 ELSE 0 
            END AS BIT
        )      
    FROM CompFiscal a      
    JOIN CompFiscalSecuencia b 
        ON b.uidCompFiscal = a.uidCompFiscal      
    WHERE (a.Serie + a.TipoNCF + CAST(a.Sucursal AS VARCHAR)) = @XContador      
      AND b.ValidoHasta >= GETDATE()      
      AND b.Secuencia <= b.SecuenciaFinal      
      AND b.Inactivo = 0      
    ORDER BY b.ValidoHasta      

    IF @OutPut IS NULL
    BEGIN
        SET @DebugMsg = 'ERROR: No se encontró secuencia válida'
        PRINT @DebugMsg
        SELECT @DebugMsg AS Debug
        RETURN
    END

    SET @DebugMsg = 'Secuencia encontrada: ' + @OutPut
    PRINT @DebugMsg
    SELECT @DebugMsg AS Debug

    UPDATE CompFiscalSecuencia      
    SET Inactivo = 1      
    WHERE idCompFiscalSecuencia = @id      
      AND Secuencia = SecuenciaFinal      

    UPDATE CompFiscalSecuencia      
    SET Secuencia = Secuencia + 1      
    WHERE idCompFiscalSecuencia = @id      
      AND Secuencia < SecuenciaFinal      

END TRY
BEGIN CATCH
    SET @DebugMsg = 'ERROR: ' + ERROR_MESSAGE()
    PRINT @DebugMsg
    SELECT @DebugMsg AS Debug
END CATCH
GO

/****** Object:  StoredProcedure [dbo].[svCompFiscal2018]    Script Date: 04/05/2026 10:15:18 p.m. ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[svCompFiscal2018]
 @OutPut VARCHAR(19) OUTPUT,         
 @Terminal VARCHAR(50),  
 @TipoDoc VARCHAR(2),    
 @idCliente INT,    
 @VencimientoNCF DATETIME OUTPUT,    
 @reorden BIT OUTPUT  

AS   
BEGIN     

DECLARE @DebugMsg VARCHAR(500) = ''

BEGIN TRY

    DECLARE    
      @TipoCompFiscal char(2),    
      @NCF varchar(19),    
      @CF varchar(19),   
      @SCF varchar(19),      
      @RC INT,    
      @VENCE DATETIME,    
      @RORDEN BIT    

    SET @DebugMsg = 'Inicio SP'
    PRINT @DebugMsg
    SELECT @DebugMsg AS Debug

    IF NOT EXISTS(select 1 from compfiscal where terminal=@Terminal)  
    BEGIN
        SET @Terminal = 'Default'
        SET @DebugMsg = 'Terminal no existe, usando Default'
        PRINT @DebugMsg
        SELECT @DebugMsg AS Debug
    END

    IF @TipoDoc = 'FT'    
    BEGIN    
        SELECT @TipoCompFiscal = TipoCompFiscal    
        FROM ClienteTipo ct      
        JOIN Cliente c on ct.idClienteTipo = c.idClienteTipo    
        WHERE c.idcliente = @idcliente    

        SET @DebugMsg = 'TipoCompFiscal obtenido: ' + ISNULL(@TipoCompFiscal,'NULL')
        PRINT @DebugMsg
        SELECT @DebugMsg AS Debug
    END    
    ELSE 
    BEGIN    
        SET @TipoCompFiscal = @TipoDoc    
    END    

    SELECT TOP 1 
        @NCF = Serie + @TipoCompFiscal + CAST(Sucursal AS VARCHAR),
        @CF  = Serie + @TipoCompFiscal  
    FROM CompFiscal     
    WHERE Terminal = @Terminal 
      AND TipoNCF = @TipoCompFiscal  

    SET @DebugMsg = 'NCF generado: ' + ISNULL(@NCF,'NULL')
    PRINT @DebugMsg
    SELECT @DebugMsg AS Debug

    IF @NCF IS NULL  
    BEGIN  
        SET @DebugMsg = 'NCF NULL, intentando Default'
        PRINT @DebugMsg
        SELECT @DebugMsg AS Debug

        SELECT TOP 1 
            @NCF = Serie + @TipoCompFiscal + CAST(Sucursal AS VARCHAR),
            @CF  = Serie + @TipoCompFiscal  
        FROM CompFiscal     
        WHERE Terminal = 'Default' 
          AND TipoNCF = @TipoCompFiscal  
    END  

    IF @NCF IS NULL
    BEGIN
        SET @DebugMsg = 'ERROR: No se encontró NCF'
        PRINT @DebugMsg
        SELECT @DebugMsg AS Debug
        RETURN
    END

    EXEC @RC = spGetNextCounterNCF 
        @NCF, 
        @SCF OUTPUT, 
        @VENCE OUTPUT, 
        @RORDEN OUTPUT    

    SET @DebugMsg = 'Resultado Secuencia: ' + ISNULL(@SCF,'NULL')
    PRINT @DebugMsg
    SELECT @DebugMsg AS Debug

    SET @VencimientoNCF = @VENCE    
    SET @reorden = @RORDEN    

    SET @OutPut = ISNULL(@CF + @SCF, '')    

    SET @DebugMsg = 'NCF FINAL: ' + ISNULL(@OutPut,'NULL')
    PRINT @DebugMsg
    SELECT @DebugMsg AS Debug

END TRY
BEGIN CATCH
    SET @DebugMsg = 'ERROR: ' + ERROR_MESSAGE()
    PRINT @DebugMsg
    SELECT @DebugMsg AS Debug
END CATCH

END
GO


