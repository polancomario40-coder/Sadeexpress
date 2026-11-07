--select * from defaults where clave='UsarEcfs'
insert into defaults (valor,clave,Descripcion,Categoria,Tipo)
values ('1','UsarEcfs','Generar comprobante electronicos','Cxp','S')



--update CompFiscal set Longitud=10 where Longitud is null


GO


GO

/****** Object:  StoredProcedure [dbo].[RPTFactura]    Script Date: 28/01/2026 02:47:39 p.m. ******/
DROP PROCEDURE [dbo].[RPTFactura]
GO

/****** Object:  StoredProcedure [dbo].[RPTFactura]    Script Date: 28/01/2026 02:47:39 p.m. ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO


--select * from Factura  order by fecha desc where factura = '00000430'
 
--RPTFactura '956BF8C3-61C9-40F2-B3BF-A28A2011F1B7'    
CREATE PROCEDURE [dbo].[RPTFactura]      
    (      
     @idFactura UNIQUEIDENTIFIER      
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
  end as ValUrl            
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


GO



/****** Object:  StoredProcedure [dbo].[svCompFiscal2018]    Script Date: 15/01/2026 04:57:40 a.m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
ALTER   PROCEDURE [dbo].[svCompFiscal2018] --null, 'VIRTUALTITO' ,02,0,null,null
--declare
 --@OutPut VARCHAR(19),-- OUTPUT,       
 --@Terminal VARCHAR(50),
 --@TipoDoc VARCHAR(2),  
 --@idCliente INT,  
 --@VencimientoNCF DATETIME, --OUTPUT,  
 --@reorden BIT --OUTPUT
 @OutPut VARCHAR(19) OUTPUT,       
 @Terminal VARCHAR(50),
 @TipoDoc VARCHAR(2),  
 @idCliente INT,  
 @VencimientoNCF DATETIME OUTPUT,  
 @reorden BIT OUTPUT
 
AS 
--set @OutPut=null
--set @Terminal='Santiago'--'laptomaster'--'LIBRERIA'--'DESKTOP-26T8IRE'-
--set @TipoDoc='02'
--set @idCliente=0
--set @VencimientoNCF=null
--set @reorden=null

BEGIN   
  
declare  
  @TipoCompFiscal char(2),  
  @NCF varchar(19),  
  @CF varchar(19), 
  @SCF varchar(19),    
  @RC INT,  
  @VENCE DATETIME,  
  @RORDEN BIT  
  
If not exists(select 1 from compfiscal where terminal=@Terminal)
    SET @Terminal = 'Default';
  
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
  
SELECT TOP 1 @NCF = Serie + @TipoCompFiscal + Sucursal ,@CF=Serie + @TipoCompFiscal
FROM CompFiscal cf  
WHERE  (Terminal = @Terminal AND TipoNCF = @TipoCompFiscal)
 
if @NCF is null
begin
SELECT TOP 1 @NCF = Serie + @TipoCompFiscal + Sucursal ,@CF=Serie + @TipoCompFiscal
FROM CompFiscal cf  
WHERE  (Terminal = 'Default' AND TipoNCF = @TipoCompFiscal)
end
--select @NCF 
  
EXEC @RC = spGetNextCounterNCF @NCF, @SCF OUTPUT, @VENCE OUTPUT, @RORDEN OUTPUT  
SET @VencimientoNCF = @VENCE  
SET @reorden = @RORDEN  
  
SET @OutPut = ISNULL(@CF + @SCF, '')  
  
RETURN 0  
  
END  


