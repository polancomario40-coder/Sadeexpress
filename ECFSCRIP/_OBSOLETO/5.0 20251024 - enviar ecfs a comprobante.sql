alter table factura add computer varchar(100)
Go

Go

/****** Object:  StoredProcedure [dbo].[ecf_gm_send]    Script Date: 16/11/2025 11:16:26 a.m. ******/
DROP PROCEDURE [dbo].RSEcfStatus
GO
 

Create procedure RSEcfStatus (@id uniqueidentifier,@Emisor varchar(16))
as
select StatusEcf,UltError,CodigoSeguridadEcf from ECFWorker..ecf_comprobante ecf 
where ecf.Referencia=@id  

Go

/****** Object:  StoredProcedure [dbo].[ecf_gm_send]    Script Date: 16/11/2025 11:16:26 a.m. ******/
DROP Function [dbo].[LimpiarRnc]
GO
 

create function [dbo].[LimpiarRnc] (@str varchar(20))  
returns varchar(20)  
as  
begin  
 declare @instr varchar(20), @outstr varchar(20)  
 set @outstr = ''  
 declare @j int  
 set @j = 1  
  
 set @instr = @str  
 while @j <= len(@instr) begin  
   if substring(@instr,@j,1) in ('0','1','2','3','4','5','6','7','8','9','N','n','A','a','/') begin     
      set @outstr = @outstr + substring(@instr,@j,1)        
      set @j = @j + 1  
   end  
   else  
      set @j = len(@instr) + 1  
 end  
  
 return @outstr  
end

go


GO

/****** Object:  StoredProcedure [dbo].[ecf_gm_send]    Script Date: 16/11/2025 11:16:26 a.m. ******/
DROP PROCEDURE [dbo].[ecf_gm_send]
GO

/****** Object:  StoredProcedure [dbo].[ecf_fact_send]    Script Date: 16/11/2025 11:16:26 a.m. ******/
DROP PROCEDURE [dbo].[ecf_fact_send]
GO

/****** Object:  StoredProcedure [dbo].[ecf_dev_send]    Script Date: 16/11/2025 11:16:26 a.m. ******/
DROP PROCEDURE [dbo].[ecf_dev_send]
GO

/****** Object:  StoredProcedure [dbo].[ecf_cxp_send]    Script Date: 16/11/2025 11:16:26 a.m. ******/
DROP PROCEDURE [dbo].[ecf_cxp_send]
GO

/****** Object:  StoredProcedure [dbo].[ecf_cxc_send]    Script Date: 16/11/2025 11:16:26 a.m. ******/
DROP PROCEDURE [dbo].[ecf_cxc_send]
GO

/****** Object:  StoredProcedure [dbo].[ecf_cxc_cambiarEstado]    Script Date: 16/11/2025 11:16:26 a.m. ******/
DROP PROCEDURE [dbo].[ecf_cxc_cambiarEstado]
GO

/****** Object:  StoredProcedure [dbo].[ecf_cxc_cambiarEstado]    Script Date: 16/11/2025 11:16:26 a.m. ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO






CREATE procedure [dbo].[ecf_cxc_cambiarEstado]
 @id uniqueidentifier, 
 @st varchar(16),
 @usuario varchar(30)
as
 declare @pendEnvio bit = 1,
		 @pendVal bit = 1

select @pendEnvio = PendEnvio, @pendVal = PendValidacion from ecf_status_envio where Id = @st 

 update cxc 
   set StatusEcf = @st,
	   PendEnvioEcf = isnull(@pendEnvio,0), 
	   PendValidacion = isnull(@pendVal,0)
 where idcxc = @id 
GO

/****** Object:  StoredProcedure [dbo].[ecf_cxc_send]    Script Date: 16/11/2025 11:16:27 a.m. ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO






CREATE   procedure [dbo].[ecf_cxc_send]            
 @id uniqueidentifier        
as                 
 declare @nuId int         
  
 if exists (select 1 from devolucion where iddevolucion = @id)  begin
   --print 'dev!'
   return 0   
 end

 declare @rncEmisor varchar(20), @emisorId uniqueidentifier
 select @rncEmisor = LTRIM(rtrim(replace(rnc,'-',''))),
		@emisorId = UConfiguracion
 from Configuracion       
        
 if exists (select 1 from ecfworker..ecf_comprobante where Referencia = @id and StatusEcf <> 'CANCELADO') begin 
   return -1          
 end

 declare @itbis decimal(19,2)    
    
select @itbis = isnull((SELECT a.Valor    
      FROM cgCodificacion a    
       JOIN Defaults b    
        ON CAST(b.Valor AS VARCHAR(16)) = a.idCuenta    
      WHERE b.Clave = 'CuentaITBIS'    
      AND a.GUIDDocumento = @id),0)    

 declare @subtotal1 decimal(19,2) = 0
  if @itbis > 0 
    set @subtotal1 = @itbis / 0.18
    
 begin try    
 begin tran     
 insert into ecfworker..ecf_comprobante          
 (  RncEmisor,
	EmisorId,
	Referencia,       
	TipoReferencia,  
    Fecha,          
    Numero,                  
    TipoNcf,          
    DocumentoIdentidad,          
    TipoDocIdentidad,          
    Sucursal,          
    RazonSocialComprador,                  
    TipoIngresos,          
    SubTotal1,                  
    SubTotal3,          
    Itbis1,                          
    MontoItbis1,                  
    MontoDescuento,          
    MontoRecargo,                   
    StatusEcf,          
    EmailComprador,          
    CompradorId,          
    ContactoComprador,                  
    DireccionComprador,          
    PedidoNumero,          
    NumeroOrdenCompra,          
    IndicadorMontoGravado,                  
    FormaPago,                  
    Moneda,          
    TasaCambio,          
    Ncf,          
    VencimientoNcf,        
	NcfModificado,        
	FechaNcfModificado,    
	IndNotaCredito,
	CodigoModificacion)          
 select @rncEmisor,
		@emisorId,
 h.idcxc,           
 'CXC',  
  h.Fecha,                
  h.CompFiscal as Numero,                  
  TipoNcf = substring(h.compfiscal,2,2),                
  replace(ft.ClienteRNC,'-','') as Rnc,          
  '' as idTipoIdentificacion,             
  '1',          
  h.Cliente as Nombre,          
  '',          
  SubTotal1 = @subtotal1,         
  SubTotal3 = ((h.Total * h.Tasa) - @itbis) - @subtotal1,        
  case when @itbis > 0 then '18' else '' end,          
  @itbis as MontoImpuestos,          
  0,          
  0,          
  'PENDIENTE',          
  '',          
  null,          
  '',          
  '',          
  h.CompFiscal,          
  '' OrdenCompra,          
  '0',           
  '1',          
  'DOP',          
  1,          
  h.CompFiscal,          
  h.FechaVenceNCF,        
  h.ncfModificado,        
  h.FechaNcfModificado,    
  IndNotaCredito = case when h.TipoNcf = '34' then case when datediff(day, ft.Fecha, h.Fecha) > 30 then '1' else '0' end else '' end    ,
  '3'
 from cxc h join factura ft on h.ncfModificado = ft.CompFiscal        
 where h.idcxc = @id        
   and isnull(h.CompFiscal,'') <> ''       
   and not exists (select 1 from Devolucion where idDevolucion = h.idcxc)  
   and h.StatusEcf ='PENDIENTE'--, 'NUEVO'           

 set @nuId = SCOPE_IDENTITY()          
 if @nuId is not null begin 
 
 insert into ecfworker..ecf_comprobante_detalle
  (ComprobanteId, ReferenciaId, ProductoId, NombreProducto, Descripcion, Unidad, Cantidad, precio,  
   Itbis, Descuento, IndicadorBienOServicio, IndicadorFacturacion)
  select Id, @id, ncf, 'GRAVADO','GRAVADO','43',1, SubTotal1, MontoItbis1,0, '2','1'
  from ecfworker..ecf_comprobante
  where Id = @nuId and SubTotal1 > 0
  union all
  select Id, @id, ncf, 'EXENTO','EXENTO','43',1, SubTotal3, 0,0, '2', '4'
  from ecfworker..ecf_comprobante
  where Id = @nuId and SubTotal3 > 0
                
    update cxc           
      set StatusEcf = 'ENVIADO'--'PENDIENTE'          
    where idcxc = @id     
  end    
    
  commit tran    
    
  end try    
  begin catch     
    declare @msg varchar(2000) = 'Error enviando ECF: ' + error_message()    
    rollback tran     
	print @msg 
	raiserror (@msg,16,6)    
  end catch    
      
return 0    
GO

/****** Object:  StoredProcedure [dbo].[ecf_cxp_send]    Script Date: 16/11/2025 11:16:27 a.m. ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO



CREATE procedure [dbo].[ecf_cxp_send]                
 @idDoc integer            
as                     
  declare @nuId int, @isrRetenido decimal(19,2),         
   @itbisRetenido decimal(19,2)  ,             
   @itbis decimal(19,2),         
   @id uniqueidentifier,            
   @msg varchar(2000),            
   @valor decimal(19,2),         
   @subtotal1 decimal(19,2),        
   @subtotal3 decimal(19,2) = 0      ,  
   @bos char(1) = '2'  
            
 select @id = guiddocumento,  
        @bos = case when montoFacturadoBienes > 0 then '1' else '2' end     
 from cxpdocumentos with (NOLOCK)             
 where iddocumento = @idDoc             
              
 if exists (select 1 from ecfworker..ecf_comprobante where Referencia = @id and statusEcf <> 'CANCELADO')               
   return -1              
          
 declare @rncEmisor varchar(20), @emisorId uniqueidentifier          
 select @rncEmisor = LTRIM(rtrim(replace(rnc,'-',''))),          
  @emisorId = UConfiguracion          
 from Configuracion              
        
 select @ItbisRetenido = convert(decimal(19,2), isnulL((select h.Tasa * (h.Total * (sum(r.porcentaje) / 100.00))            
        from cxpDocRetencion r join cxpRetencion tr on r.idRetencion = tr.idRetencion                   
        where r.iddocumento = h.iddocumento and tr.Clase = 'ITBIS'),0.00)),                  
   @IsrRetenido = convert(decimal(19,2), isnulL((select h.Tasa * (h.Total * (sum(r.porcentaje) / 100.00))            
        from cxpDocRetencion r join cxpRetencion tr on r.idRetencion = tr.idRetencion                   
        where r.iddocumento = h.iddocumento and tr.Clase = 'ISR'),0.00)),        
   @itbis = h.Tasa * h.MontoImpuestos,        
   @valor = h.Tasa * h.Valor         
  from cxpdocumentos h --left join cxpsuplidores s on h.idsuplidor = s.idsuplidor                       
  where h.idDocumento = @idDoc             
        
  select @subtotal1 = @itbis / 0.18        
  if abs(@subtotal1 - @valor) <= 0.5 begin         
    set @subtotal1 = @valor          
  end        
  else begin        
    set @subtotal3 = @valor - @subtotal1        
  end            
        
          
 begin try          
 begin tran           
              
  insert into ecfworker..ecf_comprobante              
  (  RncEmisor,          
  EmisorId,          
  Referencia,              
  TipoReferencia,           
  Fecha,              
  Numero,                      
  TipoNcf,              
  DocumentoIdentidad,              
  TipoDocIdentidad,              
  Sucursal,              
  RazonSocialComprador,                      
  TipoIngresos,              
  SubTotal1,                      
  SubTotal3,              
  Itbis1,         
  Itbis2,        
  Itbis3,        
  MontoItbis1,                      
  MontoDescuento,              
  MontoRecargo,                       
  StatusEcf,              
  EmailComprador,              
  CompradorId,              
  ContactoComprador,                      
  DireccionComprador,              
  PedidoNumero,              
  NumeroOrdenCompra,              
  IndicadorMontoGravado,                      
  FormaPago,                      
  Moneda,              
  TasaCambio,              
  Ncf,              
  VencimientoNcf,  
  ItbisRetenido,  
  IsrRetenido)              
  select @rncEmisor,          
  @emisorId,          
  h.GUIDDocumento,              
   'CXP',          
   h.Fecha,                    
   h.Referencia as Numero,                      
   TipoNcf = substring(h.compfiscal,2,2),                    
   dbo.LimpiarRNC(h.Rnc),              
   case len(dbo.LimpiarRnc(h.Rnc))           
     when 9 then '1'          
     when 11 then '2'          
     else ''          
    end ,--,    h.idTipoIdentificacion,                 
   '1',              
   h.Nombre,              
   '',              
   SubTotal1 = @subtotal1,                
   SubTotal3 = @subtotal3,                
   case when h.MontoImpuestos > 0 then '18' else '' end,              
   '',        
   '',        
   @itbis,              
   0,              
   0,              
   'PENDIENTE',              
   '',              
   h.idSuplidor,              
   '',              
   '',              
   h.Referencia,              
   h.OrdenCompra,              
   '0',               
   h.idPagoForma,              
   'DOP',              
   1,              
   h.CompFiscal,              
   h.FechaVenceNCF,  
   @itbisRetenido,  
   @isrRetenido  
from cxpdocumentos h left join cxpsuplidores s on h.idsuplidor = s.idsuplidor                     
  where h.idDocumento = @idDoc                 
    and isnull(h.CompFiscal,'') <> ''              
    and h.StatusEcf = 'PENDIENTE'--'NUEVO'               
           
  set @nuId = SCOPE_IDENTITY()              
                  
  insert into ecfworker..ecf_comprobante_detalle              
  (ReferenciaId, ComprobanteId, ProductoId, NombreProducto, Descripcion, Unidad, Cantidad, Precio,               
   Itbis, IndicadorBienOServicio, IndicadorFacturacion, IsrRetenidoItem, ItbisRetenidoItem)                
                  
  select h.GUIDDocumento,              
  @nuId,               
  '', left(h.Concepto,70),              
  '',              
  '43' as Unidad,              
  1,              
  e.SubTotal1,              
  e.Itbis1,              
  @bos,              
  '1',              
  IsrRetenido = @IsrRetenido * (e.SubTotal1 / (e.SubTotal1 + e.SubTotal2 + e.SubTotal3)),              
  @itbisRetenido              
  from ecfworker..ecf_comprobante e join cxpdocumentos h on e.Referencia = h.Guiddocumento               
  where e.Id = @nuId and e.SubTotal1 > 0               
              
  insert into ecfworker..ecf_comprobante_detalle              
  (ReferenciaId, ComprobanteId, ProductoId, NombreProducto, Descripcion, Unidad, Cantidad, Precio,               
   Itbis, IndicadorBienOServicio, IndicadorFacturacion, IsrRetenidoItem, ItbisRetenidoItem)                 
  select h.GUIDDocumento,              
  @nuId,               
  '', left(h.Concepto,70),              
  '',              
  '43' as Unidad,              
  1,              
  e.SubTotal3,              
  0,              
  @bos,              
  '4',              
  IsrRetenido = @isRRetenido - (@IsrRetenido * (e.SubTotal1 / (e.SubTotal1 + e.SubTotal2 + e.SubTotal3))),              
  0              
  from ecfworker..ecf_comprobante e join cxpdocumentos h on e.Referencia = h.Guiddocumento               
  where e.Id = @nuId and e.SubTotal3 > 0               
              
  if @nuId > 0 begin           
   update cxpDocumentos               
     set StatusEcf = 'ENVIADO'              
  where iddocumento = @idDoc               
  end          
          
  commit tran           
  end try          
  begin catch          
    set @msg = ERROR_MESSAGE()          
 rollback tran          
 raiserror (@msg,16,6)          
  end catch     
GO

/****** Object:  StoredProcedure [dbo].[ecf_dev_send]    Script Date: 16/11/2025 11:16:27 a.m. ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO








  
CREATE   procedure [dbo].[ecf_dev_send]  
 @id uniqueidentifier        
as                 
 declare @nuId int         
        
 if exists (select 1 from ecfworker..ecf_comprobante where Referencia = @id and StatusEcf <> 'CANCELADO')           
   return -1    
   
 declare @rncEmisor varchar(20), @emisorId uniqueidentifier
 select @rncEmisor = LTRIM(rtrim(replace(rnc,'-',''))),
		@emisorId = UConfiguracion
 from Configuracion  
 
  declare @itbis decimal(19,2)    
    
select @itbis = isnull((SELECT a.Valor    
      FROM cgCodificacion a    
       JOIN Defaults b    
        ON CAST(b.Valor AS VARCHAR(16)) = a.idCuenta    
      WHERE b.Clave = 'CuentaITBIS'    
      AND a.GUIDDocumento = @id),0) 
 
  declare @subtotal1 decimal(19,2) = 0
  if @itbis > 0 
    set @subtotal1 = @itbis / 0.18

 begin try    
 begin tran     
 insert into ecfworker..ecf_comprobante          
 (  RncEmisor,
	EmisorId,Referencia,       
	TipoReferencia,  
    Fecha,          
    Numero,                  
    TipoNcf,          
    DocumentoIdentidad,          
    TipoDocIdentidad,          
    Sucursal,          
    RazonSocialComprador,                  
    TipoIngresos,          
    SubTotal1,                  
    SubTotal3,          
    Itbis1,                          
    MontoItbis1,                  
    MontoDescuento,          
    MontoRecargo,                   
    StatusEcf,          
    EmailComprador,          
    CompradorId,          
    ContactoComprador,                  
    DireccionComprador,          
    PedidoNumero,          
    NumeroOrdenCompra,          
    IndicadorMontoGravado,                  
    FormaPago,                  
    Moneda,          
    TasaCambio,          
    Ncf,          
    VencimientoNcf,        
    NcfModificado,        
    FechaNcfModificado,    
    IndNotaCredito,
	CodigoModificacion)          
 select @rncEmisor,
		@emisorId,
		h.iddevolucion,           
  'DEV',  
  h.Fecha,                
  h.CompFiscal as Numero,                  
  TipoNcf = substring(h.compfiscal,2,2),                
  replace(ft.ClienteRNC,'-','') as Rnc,          
  '' as idTipoIdentificacion,             
  '1',          
  h.Cliente as Nombre,          
  '',    
  SubTotal1 = @subtotal1,         
  SubTotal3 = ((h.Total * h.Tasa) - @itbis) - @subtotal1,        
 -- SubTotal1 = h.Tasa * isnull((select sum(DevLIneTotal) from devolucionDet with (NOLOCK) where iddevolucion = h.IdDevolucion and DevItbis > 0),0),
  --SubTotal3 = h.Tasa * isnull((select sum(DevLIneTotal) from devolucionDet with (NOLOCK) where iddevolucion = h.IdDevolucion and DevItbis = 0),0),
  case when h.itbis > 0 then '18' else '' end,          
  MontoImpuestos = h.Tasa * isnull((select sum(DevItbis) from devolucionDet with (NOLOCK) where iddevolucion = h.IdDevolucion and DevItbis > 0),0),          
  0,          
  0,          
  'PENDIENTE',          
  '',          
  null,          
  '',          
  '',          
  h.CompFiscal,          
  '' OrdenCompra,          
  '0',           
  '1',          
  'DOP',          
  1,          
  h.CompFiscal,          
  h.FechaVenceNCF,        
  h.ncfModificado,        
  h.FechaNcfModificado,    
  IndNotaCredito = case when h.TipoNcf = '34' then case when datediff(day, ft.Fecha, h.Fecha) > 30 then '1' else '0' end else '' end,
  '3'
 from devolucion h join factura ft on h.idfactura = ft.idfactura  
 where h.iddevolucion = @id        
   and isnull(h.CompFiscal,'') <> ''          
   and h.StatusEcf = 'PENDIENTE'--'NUEVO'           
              
 set @nuId = SCOPE_IDENTITY()          
 if @nuId is not null begin 
 
 insert into ecfworker..ecf_comprobante_detalle
  (ComprobanteId, ReferenciaId, ProductoId, NombreProducto, Descripcion, Unidad, Cantidad, precio,  
   Itbis, Descuento, IndicadorBienOServicio, IndicadorFacturacion)
  select Id, @id, ncf, 'GRAVADO','GRAVADO','43',1, SubTotal1, MontoItbis1,0, '2','1'
  from ecfworker..ecf_comprobante
  where Id = @nuId and SubTotal1 > 0
  union all
  select Id, @id, ncf, 'EXENTO','EXENTO','43',1, SubTotal3, 0,0, '2', '4'
  from ecfworker..ecf_comprobante
  where Id = @nuId and SubTotal3 > 0
  
    update devolucion     
      set StatusEcf = 'ENVIADO'          
    where iddevolucion = @id and statusEcf = 'PENDIENTE'--'NUEVO'         
	update cxc
      set StatusEcf = 'ENVIADO'          
    where idcxc = @id and statusEcf = 'PENDIENTE'--'NUEVO'         
  end    
    
  commit tran    
    
  end try    
  begin catch     
    declare @msg varchar(2000) = 'Error enviando ECF: ' + error_message()    
    rollback tran     
 raiserror (@msg,16,6)    
  end catch    
      
return 0    
GO

/****** Object:  StoredProcedure [dbo].[ecf_fact_send]    Script Date: 16/11/2025 11:16:27 a.m. ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO


CREATE procedure [dbo].[ecf_fact_send]         
 @id uniqueidentifier        
as                 
 declare @nuId int, @msg varchar(2000)         
        
 if exists (select 1 from ecfworker..ecf_comprobante where Referencia = @id and StatusEcf <> 'CANCELADO')           
   return -1          
    
 if exists (select 1 from factura where idfactura = @id and cancelado = 1)    
   return -1    
       
 declare @rncEmisor varchar(20), @emisorId uniqueidentifier      
 select @rncEmisor = LTRIM(rtrim(replace(rnc,'-',''))),      
  @emisorId = UConfiguracion      
 from Configuracion          
      
 begin try        
 begin tran         
          
 insert into ecfworker..ecf_comprobante          
 (  RncEmisor,      
    EmisorId,      
    Referencia,          
    TipoReferencia,        
    Fecha,          
    Numero,                  
    TipoNcf,          
    DocumentoIdentidad,          
    TipoDocIdentidad,          
    Sucursal,          
    RazonSocialComprador,                  
    TipoIngresos,          
    SubTotal1,                  
    SubTotal3,          
    Itbis1,                
    Itbis2,        
    Itbis3,        
    MontoItbis1,                  
    MontoDescuento,          
    MontoRecargo,                   
    StatusEcf,          
    EmailComprador,          
    CompradorId,          
    ContactoComprador,                  
    DireccionComprador,          
    PedidoNumero,          
    NumeroOrdenCompra,          
    IndicadorMontoGravado,                  
    FormaPago,                  
    Moneda,          
    TasaCambio,          
    Ncf,          
    VencimientoNcf)          
 select @rncEmisor,      
  @emisorId,      
  h.idfactura,           
  'FT',        
  h.Fecha,                
  h.CompFiscal as Numero,                  
  TipoNcf = substring(h.compfiscal,2,2),                
  dbo.LimpiarRNC(h.ClienteRNC) as Rnc,          
  '' as idTipoIdentificacion,             
  '1',          
  h.Cliente as Nombre,          
  '',          
  SubTotal1 = h.Tasa * sum( case when fd.Itbis > 0 then ((fd.precio * fd.cantidad) - fd.descuento) else 0.00 end),         
  SubTotal3 = h.Tasa * sum( case when fd.Itbis > 0 then 0 else ((fd.precio * fd.cantidad) - fd.descuento) end),         
  case when h.Itbis > 0 then '18' else '' end,          
  '',        
  '',        
  h.Itbis * h.tasa as MontoImpuestos,          
  0,          
  0,          
  'PENDIENTE',          
  '',          
  null,          
  '',          
  '',          
  h.CompFiscal,          
  '' OrdenCompra,          
  '0',           
  '1',          
  'DOP',          
  1,          
  h.CompFiscal,          
  h.FechaVenceNCF        
 from factura h with (NOLOCK) join facturadet fd with (NOLOCK) on h.idFactura = fd.idfactura         
 where h.idfactura = @id        
   and isnull(h.CompFiscal,'') <> ''          
   and h.StatusEcf = 'PENDIENTE'--'NUEVO'           
   group by h.idfactura,           
  h.Fecha,                
  h.CompFiscal,                  
  substring(h.compfiscal,2,2),                
  h.ClienteRNC,            
  h.Cliente,            
  h.Itbis,        
  h.tasa,         
  h.CompFiscal,            
  h.CompFiscal,          
  h.FechaVenceNCF        
        
 set @nuId = scope_identity()        
        
 if @nuId is not null begin         
        
 insert into ecfworker..ecf_comprobante_detalle          
    (ReferenciaId, ComprobanteId, ProductoId, NombreProducto, Descripcion, Unidad, Cantidad, Precio,           
     Itbis, IndicadorBienOServicio, IndicadorFacturacion, IsrRetenidoItem, ItbisRetenidoItem)          
 select d.idfactura, 
        @nuId, 
        d.IdProducto, 
        d.idProducto, 
        Left(producto,50), 
        '31', 
        1 as cantidad,       
        ((d.Precio * d.Cantidad) - d.Descuento) * f.Tasa,  
        d.Itbis * f.Tasa,         
        '2',         
        case when d.itbis > 0 then '1' else '4' end,        
        0,        
        0        
  from factura f join facturadet d  on f.idfactura = d.idfactura       
  where f.idfactura = @id         
          
 --set @nuId = SCOPE_IDENTITY()          
        
     update factura         
       set StatusEcf = 'ENVIADO'--'PENDIENTE'          
     where idFactura = @id           
   end         
        
 commit tran        
 end try        
 begin catch        
   set @msg = ERROR_MESSAGE()        
   rollback tran        
   raiserror (@msg,16,6)        
 end catch 
GO

/****** Object:  StoredProcedure [dbo].[ecf_gm_send]    Script Date: 16/11/2025 11:16:28 a.m. ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO



CREATE procedure [dbo].[ecf_gm_send]      
 @id uniqueidentifier  
as           
 declare @nuId int = 0, @msg varchar(2000) ---, @isrRetenido decimal(19,2), @itbisRetenido decimal(19,2)    
  
 if exists (select 1 from ecfworker..ecf_comprobante where Referencia = @id and StatusEcf <> 'CANCELADO')     
   return -1    
  
 declare @rncEmisor varchar(20), @emisorId uniqueidentifier  
 select @rncEmisor = LTRIM(rtrim(replace(rnc,'-',''))),  
  @emisorId = UConfiguracion  
 from Configuracion      
    
 begin try  
 begin tran   
  
 insert into ecfworker..ecf_comprobante    
 (  RncEmisor,  
 EmisorId,  
 Referencia,    
 TipoReferencia,  
    Fecha,    
    Numero,            
    TipoNcf,    
    DocumentoIdentidad,    
    TipoDocIdentidad,    
    Sucursal,    
    RazonSocialComprador,            
    TipoIngresos,    
    SubTotal1,            
    SubTotal3,    
    Itbis1,                    
    MontoItbis1,            
    MontoDescuento,    
    MontoRecargo,             
    StatusEcf,    
    EmailComprador,    
    CompradorId,    
    ContactoComprador,            
    DireccionComprador,    
    PedidoNumero,    
    NumeroOrdenCompra,    
    IndicadorMontoGravado,            
    FormaPago,            
    Moneda,    
    TasaCambio,    
    Ncf,    
    VencimientoNcf)    
 select @rncEmisor,  
  @emisorId,  
  h.GUIDDocumento,  
  'GM',  
  h.Fecha,          
  h.CompFiscal as Numero,            
  TipoNcf = substring(h.compfiscal,2,2),          
  '' as Rnc,    
  '' as idTipoIdentificacion,       
  '1',    
  '' as Nombre,    
  '',    
  SubTotal1 = 0,  
  SubTotal3 = convert(decimal(19,2), sum(d.Importe)),       
  '' ,    
  0 as MontoImpuestos,    
  0,    
  0,    
  'PENDIENTE',    
  '',    
  null,    
  '',    
  '',    
  h.CompFiscal,    
  '' OrdenCompra,    
  '0',     
  isnull(h.idPagoForma,'1'),
  'DOP',    
  1,    
  h.CompFiscal,    
  h.FechaVenceNCF    
 from bcoGastosMenores h join bcoGastosMenoresDet d on h.GUIDDocumento = d.GUIDDocumento  
 where h.GuidDocumento = @id  
   and isnull(h.CompFiscal,'') <> ''    
   and h.StatusEcf ='PENDIENTE' --'NUEVO'     
 group by h.GUIDDocumento,     
    h.Fecha,          
    h.CompFiscal,            
    substring(h.compfiscal,1,2),          
    h.StatusEcf,  
    h.CompFiscal,  
    h.idPagoForma,  
    h.CompFiscal,    
    h.FechaVenceNCF    
    
 set @nuId = SCOPE_IDENTITY()    
 if @nuId > 0 begin    
 insert into ecfworker..ecf_comprobante_detalle    
 (ReferenciaId, ComprobanteId, ProductoId, NombreProducto, Descripcion, Unidad, Cantidad, Precio,     
  Itbis, IndicadorBienOServicio, IndicadorFacturacion, IsrRetenidoItem, ItbisRetenidoItem)      
   
 select h.GUIDDocumento,    
 @nuId,     
    '',   
 'Gastos Menores Electronicos',    
 '',    
 '43' as Unidad,    
 1,    
 e.SubTotal3,    
 0,    
 '2',    
 '4',    
 IsrRetenido = 0,--@isRRetenido - (@IsrRetenido * (e.SubTotal1 / (e.SubTotal1 + e.SubTotal2 + e.SubTotal3))),    
 0    
 from ecfworker..ecf_comprobante e join bcoGastosMenores h on e.Referencia = h.Guiddocumento    
 where e.Id = @nuId   
   
   
   update bcoGastosMenores     
     set StatusEcf = 'ENVIADO'    
   where Guiddocumento = @id     
 end  
  
 commit tran  
 end try  
 begin catch  
   set @msg = ERROR_MESSAGE()  
   rollback tran  
   raiserror (@msg,16,6)  
 end catch  
GO

