alter table cxc add FechaFirmaDigital datetime
go
alter table cxc add CodigoSeguridadEcf varchar(19)
go
alter table FacturaDet add referencia varchar(100)
go
alter table FacturaDet add fecha datetime
go
--DGII real : update defaults set valor='https://ecf.dgii.gov.do/ecf/consultatimbre'  where clave = 'URL_VALQR'  
--DGII Prueba : 
--update defaults set valor='https://fc.dgii.gov.do/testecf/ConsultaTimbreFC'  where clave = 'URL_VALQR'
GO

Alter table CXC add itbi numeric(18,2)
go

/****** Object:  UserDefinedFunction [dbo].[ecf_buildQRFacturaConsumo]    Script Date: 15/11/2025 11:40:09 a.m. ******/
DROP FUNCTION [dbo].[ecf_buildQRFacturaConsumo]
GO

/****** Object:  UserDefinedFunction [dbo].[ecf_buildQRFacturaConsumo]    Script Date: 15/11/2025 11:40:09 a.m. ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE function [dbo].[ecf_buildQRFacturaConsumo]      
 (@ncf varchar(20),     
  @rncEmisor varchar(20),    
  @codSeg varchar(50),     
  @total decimal(19,2)) returns varchar(1000)      
as begin       
      
 declare @url varchar(200)        
    
 select @url = convert(varchar(200), valor) from defaults where clave = 'ECF_URLQR_FC'    
 if @url is null       
   select @url= 'https://fc.dgii.gov.do/testecf/ConsultaTimbreFC';      
     
 if isnull(@codSeg,'') = ''       
   return ''      
      
return @url + '?RncEmisor=' + @rncEmisor +        
  '&ENCF=' + @ncf +         
  '&MontoTotal=' + convert(varchar(20), @total) +         
  '&CodigoSeguridad=' + dbo.urlEncode(@codSeg)    
    
end
GO




/****** Object:  UserDefinedFunction [dbo].[ecf_buildQR]    Script Date: 14/11/2025 11:26:48 a.m. ******/
DROP FUNCTION [dbo].[ecf_buildQR]
GO

Go  
  
CREATE function [dbo].[ecf_buildQR]    
 (    
  @ncf varchar(20),     
  @tipoEcf varchar(2),     
  @rncEmisor varchar(20),    
  @rncComprador varchar(20),     
  @emision datetime,     
  @codSeg varchar(50),     
  @fechaFirma datetime,    
  @total decimal(19,2)    
 )     
 returns varchar(1000)    
as begin     
     
 declare @url varchar(200)      
    
 select @url= convert(varchar(200), valor) from defaults where clave = 'URL_VALQR'    
    
 if isnull(@codSeg,'') = ''     
   return ''    
  
 if @tipoEcf in ('47', '43')    
   set @rncComprador = ''    
    
 --if @tipoEcf in ('47', '43')    
 --  set @rncComprador = ''     
    
 return @url + '?RncEmisor=' + @rncEmisor +    
  case when isnull(@rncComprador,'') = '' then '' else '&RncComprador=' + @rncComprador end +    
  '&ENCF=' + @ncf +     
  '&FechaEmision=' + convert(varchar(20), @emision, 105) +     
  '&MontoTotal=' + convert(varchar(20), @total) +     
  '&FechaFirma=' + convert(varchar(20), @fechaFirma, 105) + '%20' + convert(varchar(20), @fechaFirma, 108) +       
  '&CodigoSeguridad=' + dbo.UrlEncode(@codSeg)    
end    
  
GO


/****** Object:  StoredProcedure [dbo].[RPTFactura]    Script Date: 14/11/2025 11:21:46 a.m. ******/
DROP PROCEDURE [dbo].[RPTFactura]
GO

/****** Object:  StoredProcedure [dbo].[RPTCxc]    Script Date: 14/11/2025 11:21:46 a.m. ******/
DROP PROCEDURE [dbo].[RPTCxc]
GO

/****** Object:  StoredProcedure [dbo].[RPTCxc]    Script Date: 14/11/2025 11:21:46 a.m. ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

GO
/****** Object:  StoredProcedure [dbo].[RPTCxc]    Script Date: 14/11/2025 04:12:00 p.m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

Create PROCEDURE [dbo].[RPTCxc] -- '64A8C1A2-81D2-4FA9-9FB9-71572704146A'
    (  
     @idCxc UNIQUEIDENTIFIER  
    )  
AS  
 declare @rncEmisor varchar(20)      
      
 select @rncEmisor = replace(RNC, '-','')       
 from configuracion       

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
            d.Valor AplicadoValor,  
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
            c.Itbi,  
            c.ncfModificado as CompFiscalAplica  ,
            c.ncfModificado, 
            QrUrl = dbo.ecf_buildQR(ecf.ncf, ecf.TipoNcf, co.RNC, ecf.DocumentoIdentidad, ecf.fecha, ecf.CodigoSeguridadEcf, ecf.FechaFirmaDigital, ecf.Total) ,
            c.CodigoSeguridadEcf, 
            c.FechaFirmaDigital
    FROM    Cxc c  
            INNER JOIN CxcTipo ct ON (c.idCxcTipo = ct.idCxcTipo)  
            INNER JOIN Moneda m ON c.idMoneda = m.idMoneda  
			left join ECFWorker..ecf_comprobante ecf on c.idcxc = ecf.Referencia  
            LEFT  JOIN CxcDet d ON c.idCxc = d.idCxc  
            LEFT  JOIN Cxc f ON d.idCxcDebito = f.idCxc  
            LEFT JOIN Moneda m2 ON f.idMoneda = m2.idMoneda  
            CROSS JOIN Configuracion co  
    WHERE   c.idCxc = @idCxc      



GO

/****** Object:  StoredProcedure [dbo].[RPTFactura]    Script Date: 14/11/2025 11:21:47 a.m. ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO
--select * from Factura  order by fecha desc where factura = '00000430'
 
--RPTFactura '956BF8C3-61C9-40F2-B3BF-A28A2011F1B7'    
Create PROCEDURE [dbo].[RPTFactura]      
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
            CROSS JOIN dbo.Configuracion co      
    WHERE   c.idFactura = @idFactura      
    ORDER BY cd.Linea 
GO

