 alter table devolucion add  CompFiscal varchar(19)          
 go
 alter table devolucion add ncfModificado varchar(19)         
 go

/****** Object:  StoredProcedure [dbo].[ecf_selectPendEnvio]    Script Date: 03/05/2026 10:15:41 a.m. ******/
DROP PROCEDURE [dbo].[ecf_selectPendEnvio]
GO

/****** Object:  StoredProcedure [dbo].[ecf_marcar_procesado]    Script Date: 03/05/2026 10:15:41 a.m. ******/
DROP PROCEDURE [dbo].[ecf_marcar_procesado]
GO

/****** Object:  StoredProcedure [dbo].[ecf_marcar_cxp_Enviado]    Script Date: 03/05/2026 10:15:41 a.m. ******/
DROP PROCEDURE [dbo].[ecf_marcar_cxp_Enviado]
GO

/****** Object:  StoredProcedure [dbo].[ecf_logEnvio]    Script Date: 03/05/2026 10:15:41 a.m. ******/
DROP PROCEDURE [dbo].[ecf_logEnvio]
GO

/****** Object:  StoredProcedure [dbo].[ecf_gm_validate]    Script Date: 03/05/2026 10:15:41 a.m. ******/
DROP PROCEDURE [dbo].[ecf_gm_validate]
GO

/****** Object:  StoredProcedure [dbo].[ecf_gm_send]    Script Date: 03/05/2026 10:15:41 a.m. ******/
DROP PROCEDURE [dbo].[ecf_gm_send]
GO

/****** Object:  StoredProcedure [dbo].[ecf_gastomenor_select]    Script Date: 03/05/2026 10:15:41 a.m. ******/
DROP PROCEDURE [dbo].[ecf_gastomenor_select]
GO

/****** Object:  StoredProcedure [dbo].[ecf_facturas_pendEnvio]    Script Date: 03/05/2026 10:15:41 a.m. ******/
DROP PROCEDURE [dbo].[ecf_facturas_pendEnvio]
GO

/****** Object:  StoredProcedure [dbo].[ecf_facturadet_select]    Script Date: 03/05/2026 10:15:41 a.m. ******/
DROP PROCEDURE [dbo].[ecf_facturadet_select]
GO

/****** Object:  StoredProcedure [dbo].[ecf_factura_selectParaEnviar]    Script Date: 03/05/2026 10:15:41 a.m. ******/
DROP PROCEDURE [dbo].[ecf_factura_selectParaEnviar]
GO

/****** Object:  StoredProcedure [dbo].[ecf_factura_select]    Script Date: 03/05/2026 10:15:41 a.m. ******/
DROP PROCEDURE [dbo].[ecf_factura_select]
GO

/****** Object:  StoredProcedure [dbo].[ecf_factura_cambiarEstado]    Script Date: 03/05/2026 10:15:41 a.m. ******/
DROP PROCEDURE [dbo].[ecf_factura_cambiarEstado]
GO

/****** Object:  StoredProcedure [dbo].[ecf_fact_send]    Script Date: 03/05/2026 10:15:41 a.m. ******/
DROP PROCEDURE [dbo].[ecf_fact_send]
GO

/****** Object:  StoredProcedure [dbo].[ecf_emisor_select]    Script Date: 03/05/2026 10:15:41 a.m. ******/
DROP PROCEDURE [dbo].[ecf_emisor_select]
GO

/****** Object:  StoredProcedure [dbo].[ecf_devolucion_cambiarEstado]    Script Date: 03/05/2026 10:15:41 a.m. ******/
DROP PROCEDURE [dbo].[ecf_devolucion_cambiarEstado]
GO

/****** Object:  StoredProcedure [dbo].[ecf_dev_send]    Script Date: 03/05/2026 10:15:41 a.m. ******/
DROP PROCEDURE [dbo].[ecf_dev_send]
GO

/****** Object:  StoredProcedure [dbo].[ecf_desglocePago_select]    Script Date: 03/05/2026 10:15:41 a.m. ******/
DROP PROCEDURE [dbo].[ecf_desglocePago_select]
GO

/****** Object:  StoredProcedure [dbo].[ecf_cxp_validate]    Script Date: 03/05/2026 10:15:41 a.m. ******/
DROP PROCEDURE [dbo].[ecf_cxp_validate]
GO

/****** Object:  StoredProcedure [dbo].[ecf_cxp_send]    Script Date: 03/05/2026 10:15:41 a.m. ******/
DROP PROCEDURE [dbo].[ecf_cxp_send]
GO

/****** Object:  StoredProcedure [dbo].[ecf_cxp_select]    Script Date: 03/05/2026 10:15:41 a.m. ******/
DROP PROCEDURE [dbo].[ecf_cxp_select]
GO

/****** Object:  StoredProcedure [dbo].[ecf_cxp_cambiarEstado]    Script Date: 03/05/2026 10:15:41 a.m. ******/
DROP PROCEDURE [dbo].[ecf_cxp_cambiarEstado]
GO

/****** Object:  StoredProcedure [dbo].[ecf_cxc_send]    Script Date: 03/05/2026 10:15:41 a.m. ******/
DROP PROCEDURE [dbo].[ecf_cxc_send]
GO

/****** Object:  StoredProcedure [dbo].[ecf_cxc_cambiarEstado]    Script Date: 03/05/2026 10:15:41 a.m. ******/
DROP PROCEDURE [dbo].[ecf_cxc_cambiarEstado]
GO

/****** Object:  StoredProcedure [dbo].[ecf_comprobante_markSent]    Script Date: 03/05/2026 10:15:41 a.m. ******/
DROP PROCEDURE [dbo].[ecf_comprobante_markSent]
GO

/****** Object:  StoredProcedure [dbo].[ecf_comprobante_markSent]    Script Date: 03/05/2026 10:15:41 a.m. ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO



  
    
CREATE procedure [dbo].[ecf_comprobante_markSent]  
 @id uniqueidentifier,  
 @tipoNcf varchar(2)  
as  
      
  declare @st varchar(20) = 'ENVIADO'       
    
  if (@tipoNcf in ('31','32','44','45','46')) begin  
    update Factura set StatusEcf = @st,HoraEnvio = getdate() 
    where idFactura = @id and statusecf = 'ENVIANDO'
 return 0  
  end  
  
  if (@tipoNcf in ('33','34')) begin  
    update cxc set StatusEcf = @st where idcxc = @id   
 update Devolucion set StatusEcf = @st,HoraEnvio = getdate() where idDevolucion = @id and statusecf = 'ENVIANDO'  
 return 0  
  end  
  
  if (@tipoNcf in ('41','47')) begin  
    update cxpDocumentos set StatusEcf = @st,HoraEnvio = getdate() where GUIDDocumento = @id and statusecf = 'ENVIANDO'   
 return 0  
  end  
  
  if (@tipoNcf in ('43')) begin  
    update bcoGastosMenores set StatusEcf = @st,HoraEnvio = getdate() where GUIDDocumento = @id and statusecf = 'ENVIANDO'   
 return 0  
end  
GO

/****** Object:  StoredProcedure [dbo].[ecf_cxc_cambiarEstado]    Script Date: 03/05/2026 10:15:42 a.m. ******/
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

/****** Object:  StoredProcedure [dbo].[ecf_cxc_send]    Script Date: 03/05/2026 10:15:42 a.m. ******/
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

/****** Object:  StoredProcedure [dbo].[ecf_cxp_cambiarEstado]    Script Date: 03/05/2026 10:15:42 a.m. ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO




CREATE procedure [dbo].[ecf_cxp_cambiarEstado]
 @id uniqueidentifier, 
 @st varchar(16),
 @usuario varchar(30)
as
 declare @pendEnvio bit = 1,
		 @pendVal bit = 1

select @pendEnvio = PendEnvio, @pendVal = PendValidacion from ecf_status_envio where Id = @st 
		  
 update cxpdocumentos 
   set StatusEcf = @st,
	   PendEnvioEcf = isnull(@pendEnvio,0),
	   PendValidacion = isnull(@pendVal,0)
 where GUIDDocumento = @id 
GO

/****** Object:  StoredProcedure [dbo].[ecf_cxp_select]    Script Date: 03/05/2026 10:15:42 a.m. ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO


 
--exec updateDefault 'VOXEL_PRUEBAS', '1','Estamos en ambiente de pruebas?','S'      
--- ecf_cxp_select '21061B7C-C828-49E4-A57D-C4E2CC6CC1C1'           
CREATE procedure [dbo].[ecf_cxp_select]        
 @id uniqueidentifier        
as                 
  declare @pruebas varchar(10)      
  select @pruebas = convert(varchar(10), valor) from defaults where clave = 'VOXEL_PRUEBAS'      
  if @pruebas is null  
    set @pruebas = '0'  
      
  declare @rnc varchar(20), @razonSocial varchar(100)      
  select @rnc = replace(rnc,'-',''),      
   @razonSocial = compania      
  from configuracion       
      
 select h.GuidDocumento as Id,         
  convert(decimal(19,2), h.valor * h.Tasa) as SubTotal,        
  convert (varchar(16), h.IdDocumento) as Numero,            
  h.Fecha,                
  h.compfiscal as Ncf,                
  case when isnull(left(h.Concepto,75),'') = '' then 'Compras' else left(h.concepto,75) end as Concepto,           
  h.FechaVenceNCF as VencimientoNcf,                
  --case when h.idmoneda = 1 then 'DOP' else 'USD' end as Moneda,                
  'DOP' as Moneda,    
  1 as tasa,    
  --h.tasa,                
  case when left(h.compfiscal,3) = 'E47' then 'FacturaPagoExteriorDOM' else 'FacturaProveedorInformal' end as TipoDocumento,                
  h.idSuplidor,                
  case when @pruebas = '1' then @razonSocial else h.Nombre end as Nombre,                
  h.CodigoSeguridadEcf,        
  h.PendValidacion,        
  h.HoraEnvio,        
  TipoNcf = SUBSTRING(h.compfiscal,2,2),        
  h.TrackId,        
  case when @pruebas = '1' then @rnc else dbo.ecf_clean_rnc(h.Rnc) end as Rnc,                
  convert(decimal(19,2), h.montoFacturadoBienes * h.Tasa) as MontoFacturadoBienes,              
  convert(decimal(19,2), h.montoFacturadoServicios * h.Tasa) as MontoFacturadoServicios,                
  Direccion = case when isnull(s.Direccion,'') = '' then 'n/a' else s.Direccion end,          
  Pais = case when isnull(s.Pais,'') = '' then 'DOM' else s.Pais end,                
  Ciudad = case when isnull(s.Ciudad,'') = '' then 'n/a' else s.Ciudad end,                
  Provincia = case when isnull(s.Provincia,'') = '' then 'n/a' else s.Provincia end,                
  Email = case when isnull(s.Email,'') = '' then 'n/a' else s.Email end,                  
  convert(decimal(19,2), (h.Valor + h.MontoImpuestos)  * h.Tasa) as Total,                      
  convert(decimal(19,2), h.MontoImpuestos * h.Tasa) as MontoItbis,            
  MontoExento = convert(decimal(19,2), case when h.MontoImpuestos = 0 then valor     
                                            else     
                                                case when abs(Valor - (h.MontoImpuestos / 0.18)) > 1     
                                                         then Valor - (h.MontoImpuestos / 0.18)    
                                                      else 0    
                                                end    
                                       end  * h.Tasa),            
  TipoItbis = case when h.MontoImpuestos > 0 then 'ITBIS' else 'Exento' end,            
  RateItbis = case when h.MontoImpuestos > 0 then 18 else 0 end,            
  ItbisRetenido = convert(decimal(19,2), isnulL((select h.MontoImpuestos * (sum(r.porcentaje) / 100.00)            
         from cxpDocRetencion r join cxpRetencion tr on r.idRetencion = tr.idRetencion             
         where r.iddocumento = h.iddocumento and tr.Clase = 'ITBIS'),0.00)  * h.Tasa),            
  IsrRetenido = convert(decimal(19,2), isnulL((select h.Valor * (sum(r.porcentaje) / 100.00)            
         from cxpDocRetencion r join cxpRetencion tr on r.idRetencion = tr.idRetencion             
         where r.iddocumento = h.iddocumento and tr.Clase = 'ISR'),0.00) * h.Tasa)            
 from cxpdocumentos h left join cxpsuplidores s on h.idsuplidor = s.idsuplidor                 
 where h.guidDocumento = @id 
GO

/****** Object:  StoredProcedure [dbo].[ecf_cxp_send]    Script Date: 03/05/2026 10:15:43 a.m. ******/
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

/****** Object:  StoredProcedure [dbo].[ecf_cxp_validate]    Script Date: 03/05/2026 10:15:43 a.m. ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO





 
create   procedure [dbo].[ecf_cxp_validate]    
 @id int,      
 @trackId varchar(30),      
 @hash varchar(20),  
 @fechaFirma datetime,   
 @error varchar(200)      
as      

 declare @ecf varchar(20), @guiddoc uniqueidentifier 
 
 select @ecf = Compfiscal, @guiddoc = guiddocumento 
 from cxpDocumentos with (NOLOCK) 
 where iddocumento = @id 

 if isnull(@error,'') <> '' begin      
   update cxpDocumentos
     set UltError = @error, HoraEnvio = getdate()      
   where IdDocumento = @id       
 end      
 else begin      
   if isnull(@trackId,'') <> '' begin       
     update cxpDocumentos
        set UltError = null, HoraEnvio = getdate(), TrackId = @trackId, PendValidacion = 0,  
      CodigoSeguridadEcf = left(@hash,6), FechaFirmaDigital = @fechaFirma  
  where idDocumento = @id       
   end      
end      

exec ecf_logEnvio @guiddoc, @ecf, 'CXP', @trackId, @hash, @fechaFirma, @error
      
return @@error       
GO

/****** Object:  StoredProcedure [dbo].[ecf_desglocePago_select]    Script Date: 03/05/2026 10:15:43 a.m. ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO








create   procedure [dbo].[ecf_desglocePago_select]
 @id uniqueidentifier
as
  declare @result table (Tipo varchar(16), Monto decimal(19,2))

  declare @ef decimal(19,2), @ck decimal(19,2), @tarj decimal(19,2), @ncr decimal(19,2),
  @otros  decimal(19,2), @credito bit, @total decimal(19,2)

  select @credito = credito, @total = Total
  from factura with (NOLOCK)
  where idfactura = @id

  if @credito = 1 begin
    select '4' as Tipo, @total as Monto
	return 0 
  end

  select @ef = Efectivo, @ck = Cheque, @tarj = Tarjeta, @ncr = 0, @otros = Otros 
  from facturaCobro fc with (NOLOCK) 
  where fc.IdFactura = @id 

  insert into @result values ('1', @ef), ('2', @ck), ('3',@tarj), ('7',@ncr),('8',@otros)

  select * from @result where monto > 0   
GO

/****** Object:  StoredProcedure [dbo].[ecf_dev_send]    Script Date: 03/05/2026 10:15:44 a.m. ******/
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
  SubTotal1 = h.Tasa * isnull((select sum(DevLIneTotal) from devolucionDet with (NOLOCK) where iddevolucion = h.IdDevolucion and DevItbis > 0),0),  
  SubTotal3 = h.Tasa * isnull((select sum(DevLIneTotal) from devolucionDet with (NOLOCK) where iddevolucion = h.IdDevolucion and DevItbis = 0),0),  
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
   and h.StatusEcf = 'PENDIENTE'              
                
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
      set StatusEcf = 'ENVIADO'--'PENDIENTE'            
    where iddevolucion = @id and statusEcf ='PENDIENTE'-- 'NUEVO'           
 update cxc  
      set StatusEcf = 'ENVIADO'--'PENDIENTE'            
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

/****** Object:  StoredProcedure [dbo].[ecf_devolucion_cambiarEstado]    Script Date: 03/05/2026 10:15:44 a.m. ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO





create procedure [dbo].[ecf_devolucion_cambiarEstado]
 @id uniqueidentifier, 
 @st varchar(16),
 @usuario varchar(30)
as
 declare @pendEnvio bit = 1,
		 @pendVal bit = 1

select @pendEnvio = PendEnvio, @pendVal = PendValidacion from ecf_status_envio where Id = @st 
		  
 update devolucion
   set StatusEcf = @st,
	   PendEnvioEcf = @pendEnvio,
	   PendValidacion = @pendVal
 where idDevolucion = @id 
GO

/****** Object:  StoredProcedure [dbo].[ecf_emisor_select]    Script Date: 03/05/2026 10:15:44 a.m. ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO





CREATE   procedure [dbo].[ecf_emisor_select] 
as
  
  select replace(rnc,'-','') as Rnc,
		 Compania as Nombre,
		 Direccion,
		 'DOM' as Pais,
		 Ciudad,
		 'DN' as Provincia
  from configuracion
  /*

  select replace(rnc,'-','') as Rnc,
		 'Body Shop Athletic Club' as Compania,
		 'Calle Fantino Falco #42' as Direccion,
		 'DOM' as Pais,
		 'Plaza Body Shop 4to, Nivel Ens. Naco, Santo Domingo' as Ciudad,
		 'DN' as Provincia
  from configuracion
  */
GO

/****** Object:  StoredProcedure [dbo].[ecf_fact_send]    Script Date: 03/05/2026 10:15:45 a.m. ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO



CREATE procedure [dbo].[ecf_fact_send]         
 @id uniqueidentifier        
as                 
 declare @nuId int, @msg varchar(2000), @SumITBis bit        

 IF (SELECT valor FROM Defaults WHERE clave = 'SUMARITBIS') = 1
BEGIN
    SET @SumITBis = 0;
END
ELSE
BEGIN
    SET @SumITBis = 1;
END
        
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
  h.Factura,--h.CompFiscal,          
  '' OrdenCompra,          
  @SumITBis,--'0',           
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
  h.CompFiscal,h.Factura,                  
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

/****** Object:  StoredProcedure [dbo].[ecf_factura_cambiarEstado]    Script Date: 03/05/2026 10:15:45 a.m. ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO





create procedure [dbo].[ecf_factura_cambiarEstado]
 @id uniqueidentifier, 
 @st varchar(16),
 @usuario varchar(30)
as
 declare @pendEnvio bit = 1,
		 @pendVal bit = 1

select @pendEnvio = PendEnvio, @pendVal = PendValidacion from ecf_status_envio where Id = @st 
		  
 update factura 
   set StatusEcf = @st,
	   PendEnvioEcf = @pendEnvio,
	   PendValidacion = @pendVal
 where idfactura = @id 
GO

/****** Object:  StoredProcedure [dbo].[ecf_factura_select]    Script Date: 03/05/2026 10:15:45 a.m. ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO



CREATE procedure [dbo].[ecf_factura_select]                     
 @id uniqueidentifier                    
as                    
 declare @ocNum varchar(20) = '', --'4500352238',          
   @ocFec datetime, --'2018-11-10',          
   @fecEnt datetime -- = '2020-10-10'          
          
 select     
  convert(decimal(19,2), (f.SubTotal - f.Descuento) * f.Tasa) as SubTotal,                   
  convert(decimal(19,2), f.Itbis * f.Tasa) as MontoItbis,                  
  convert(decimal(19,2), 0) as SubTotalOtraMoneda,                   
  convert(decimal(19,2), 0) as MontoItbisOtraMoneda,                  
  --convert(decimal(19,2), f.SubTotal- f.Descuento) as SubTotalOtraMoneda,                   
  --convert(decimal(19,2), f.Itbis) as MontoItbisOtraMoneda,                  
  0.00 as MontoDescuento,                  
  f.Factura as Numero,   
  1 as TipoPago, 
  f.IdFactura as Id,                    
  f.Fecha,                    
  f.Cliente,                    
  /*
  case len(replace(replace(f.ClienteRNC,'-',''),' ',''))   
    when 9 then replace(replace(f.ClienteRNC,'-',''),' ','')
    when 11 then replace(replace(f.ClienteRNC,'-',''),' ','') 
    else f.ClienteRnc     
  end as RNC,    
  case len(replace(replace(f.ClienteRNC,'-',''),' ',''))    */
  case len(dbo.ecf_clean_rnc(f.ClienteRnc))   
    when 9 then dbo.ecf_clean_rnc(f.ClienteRnc)
    when 11 then dbo.ecf_clean_rnc(f.ClienteRnc) 
    else f.ClienteRnc     
  end as RNC,    
  case len(dbo.ecf_clean_rnc(f.ClienteRnc))    
    when 9 then ''    
    when 11 then ''    
    when 0 then ''    
    else f.ClienteRNC
  end as IdentificadorExtranjero,    
  --ltrim(rtrim(f.ClienteRNC)) as Rnc,                    
  f.CompFiscal as Ncf,                    
  isnull(f.TipoNcf, Substring(f.Compfiscal,2,2)) as TipoNcf,            
  convert(varchar(16), f.idTipoIngreso) as TipoIngresos,                    
  '' as Sucursal,                    
  Direccion = isnull(f.Direccion,'') + '.',           
  f.FechaVenceNCF as VencimientoNcf ,                    
  f.Credito,                    
  f.Cancelado,                    
  f.TipoAnulacion,                    
  f.FechaCancelado,                
  f.TrackId,                
  f.HoraEnvio,                
  f.PendValidacion,                
  f.CodigoSeguridadEcf      ,          
  ltrim(rtrim(f.Contacto)) as Contacto,          
  f.Factura as PedidoNumero,          
  @ocNum as NumeroOrdenCompra,          
  @ocFec as FechaOrdenCompra,          
  @fecEnt as FechaEntrega,          
  c.Fax as ClienteId,          
  c.Email as Email,          
  '' as ZonaVenta  ,        
  IndicadorMontoGravado = '0',    
  Moneda = 'DOP',    
  --Moneda = case f.idMoneda when 1 then 'DOP' else 'USD' end,    
  --f.Tasa as TasaCambio    
  1.0 as TasaCambio    
  from factura f with (NOLOCK)  join cliente c on f.idcliente = c.idcliente            
  where f.IdFactura = @id and cancelado = 0                  
GO

/****** Object:  StoredProcedure [dbo].[ecf_factura_selectParaEnviar]    Script Date: 03/05/2026 10:15:45 a.m. ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO


CREATE procedure [dbo].[ecf_factura_selectParaEnviar]                      
as                    
          
 select     
  convert(decimal(19,2), (f.SubTotal - f.Descuento) * f.Tasa) as SubTotal,                   
  convert(decimal(19,2), f.Itbis * f.Tasa) as MontoItbis,                  
  convert(decimal(19,2), f.SubTotal- f.Descuento) as SubTotalOtraMoneda,                   
  convert(decimal(19,2), f.Itbis) as MontoItbisOtraMoneda,                  
  0.00 as MontoDescuento,                  
  f.Factura as Numero,                    
  f.IdFactura as Id,                    
  f.Fecha,                    
  f.Cliente,                    
  case len(ltrim(rtrim(f.ClienteRNC)))    
    when 9 then ltrim(rtrim(f.ClienteRNC))      
 when 11 then ltrim(rtrim(f.ClienteRNC))    
 when 0 then ltrim(rtrim(f.ClienteRNC))    
 else ''     
  end as RNC,    
  case len(ltrim(rtrim(f.ClienteRNC)))    
    when 9 then ''    
 when 11 then ''    
 when 0 then ''    
 else ltrim(rtrim(f.ClienteRNC))    
  end as IdentificadorExtranjero,    
  --ltrim(rtrim(f.ClienteRNC)) as Rnc,                    
  f.CompFiscal as Ncf,                    
  isnull(f.TipoNcf, Substring(f.Compfiscal,2,2)) as TipoNcf,            
  convert(varchar(16), f.idTipoIngreso) as TipoIngresos,                    
  '' as Sucursal,                    
  Direccion = isnull(f.Direccion,'') + '.',           
  f.FechaVenceNCF as VencimientoNcf ,                    
  f.Credito,                    
  f.Cancelado,                    
  f.TipoAnulacion,                    
  f.FechaCancelado,                
  f.TrackId,                
  f.HoraEnvio,                
  f.PendValidacion,                
  f.CodigoSeguridadEcf      ,          
  ltrim(rtrim(f.Contacto)) as Contacto,          
  f.Factura as PedidoNumero,          
  f.Referencia as NumeroOrdenCompra,          
  f.fecha as FechaOrdenCompra,          
  null as FechaEntrega,          
  c.Fax as ClienteId,          
  c.Email as Email,          
  '' as ZonaVenta  ,        
  IndicadorMontoGravado = '0',    
  Moneda = 'DOP',    
  --Moneda = case f.idMoneda when 1 then 'DOP' else 'USD' end,    
  --f.Tasa as TasaCambio    
  1.0 as TasaCambio    
  from factura f with (NOLOCK)  join cliente c on f.idcliente = c.idcliente            
  where f.cancelado = 0                  
  and f.StatusEcf = 'ENVIANDO'   
  and f.CompFiscal like 'E%'
  order by f.CompFiscal  
GO

/****** Object:  StoredProcedure [dbo].[ecf_facturadet_select]    Script Date: 03/05/2026 10:15:46 a.m. ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO


    
    
CREATE procedure [dbo].[ecf_facturadet_select]        
 @id uniqueidentifier        
as          
  
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
 Linea int         
  )        
        
  insert into @det         
  (IdFactura, idFacturaDet, idProducto, Producto, Cantidad, Precio, idUnidad,         
   Descuento, Itbis, LineTotal, idCargo, dias, PrecioDia, idAlmacen, Linea)        
  select idFactura, idFacturaDet, idProducto, Producto, Cantidad, Precio, idUnidad,         
   Descuento, Itbis, LineTotal, idCargo, dias, PrecioDia, idAlmacen, Linea        
  from FacturaDet         
  where idFactura = @id and idCargo is null         
        
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
  
  
  select fd.Idproducto as ProductoId,        
   left(fd.Producto, 70) as Producto,       
   left(p.Observacion,70) as Descripcion,            
   convert(decimal(19,2), fd.Cantidad) as Cantidad,        
   convert(decimal(19,2), fd.LineTotal * f.tasa) as LineTotal,        
   convert(decimal(19,2), f.tasa * fd.Precio) as Precio,        
   convert(decimal(19,2), fd.Itbis * f.Tasa) as Itbis,        
   convert(decimal(19,2), 0) as PrecioOtraMoneda,        
   convert(decimal(19,2), 0) as ItbisOtraMoneda,        
   convert(decimal(19,4), case when fd.Itbis = 0 then 0 else 18 end) as PorcItbis,        
   convert(decimal(19,2), f.Tasa * fd.Descuento) as Descuento,        
   convert(decimal(19,4), 0) as PorcDescuento,        
   fd.idFacturaDet as Id        
  from factura f with (NOLOCK) join @det fd on f.idfactura = fd.idFactura      
  join producto p on fd.idProducto = p.idProducto         
  where f.idFactura = @id 
GO

/****** Object:  StoredProcedure [dbo].[ecf_facturas_pendEnvio]    Script Date: 03/05/2026 10:15:46 a.m. ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO





CREATE PROCEDURE [dbo].[ecf_facturas_pendEnvio]      
 @Desde datetime, @Hasta datetime, @filtro varchar(20) = '*'            
as              
SELECT       
  idFactura,               
  Factura,               
  idCliente,               
  Fecha,               
  Hora,            
  Referencia,               
  Cancelado,               
  FechaCancelado,              
  (CASE WHEN Cancelado = 1 THEN 0.00 ELSE SubTotal END) as SubTotal,               
  (CASE WHEN Cancelado = 1 THEN 0.00 ELSE Itbis END) as Itbis,               
  (CASE WHEN Cancelado = 1 THEN 0.00 ELSE Descuento END) as Descuento,               
  (CASE WHEN Cancelado = 1 THEN 0.00 ELSE Total END) as Total,               
  (CASE WHEN Cancelado = 1 THEN 0.00 ELSE (CASE WHEN Credito = 1 THEN Total ELSE 0.00 END) END) as TotalCR,               
  (CASE WHEN Cancelado = 1 THEN 0.00 ELSE (CASE WHEN Credito = 0 THEN Total ELSE 0.00 END) END) as TotalCO,               
  (CASE WHEN Cancelado = 1 THEN 'NULO' ELSE Cliente END) as Cliente,              
  (CASE WHEN f.credito =1 THEN (dbo.cxcbalancedocumento(f.idfactura, @Hasta, null)) ELSE f.total END) as Pagado,              
  f.Usuario,              
  Condicion,              
  Credito,                
  idCondicion,              
  e.idEmpleado,              
  e.Empleado,              
  m.idMoneda,              
  m.Moneda,              
  f.CompFiscal,          
  f.Tasa,      
  f.PendValidacion,        
  f.PendEnvioEcf,       
  f.CodigoSeguridadEcf,        
  f.UltError,
  f.StatusEcf
FROM                       
  Factura f with (NOLOCK)         
  join svEmpleado e with (NOLOCK) on f.idEmpleado = e.idEmpleado              
  join Moneda m with (NOLOCK) on f.idMoneda = m.idMoneda              
WHERE              
  Fecha BETWEEN @Desde AND @Hasta              
  and Cancelado = 0      
  and f.CompFiscal like 'E%'  
  and @filtro in ('*', f.StatusEcf)    
ORDER BY               
  m.idMoneda,              
  f.Fecha,              
  f.Factura 
GO

/****** Object:  StoredProcedure [dbo].[ecf_gastomenor_select]    Script Date: 03/05/2026 10:15:46 a.m. ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO







CREATE procedure [dbo].[ecf_gastomenor_select]   
 @id uniqueidentifier  
as  
 select g.GUIDDocumento as Id,  
  g.Fecha,  
  g.CompFiscal as Ncf,  
  g.Compfiscal as Concepto,  
  g.CompFiscal as Numero,  
  g.PendValidacion,  
  g.TrackId,  
  g.UltError,  
  g.HoraEnvio,  
  g.CodigoSeguridadEcf,  
  g.FechaFirmaDigital,  
  g.TipoNCF,  
  g.FechaVenceNCF as VencimientoNcf,  
  isnull(sum(d.Importe),0.00) as SubTotal  
 from bcoGastosMenores g left join bcoGastosMenoresDet d on g.guiddocumento = d.guiddocumento   
 where g.Guiddocumento = @id --and g.PendEnvioEcf = 1 and g.Cancelado = 0   
 group by g.GUIDDocumento,  
  g.Fecha,  
  g.CompFiscal,  
  ---g.Numero,  
  g.PendValidacion,  
  g.TrackId,  
  g.UltError,  
  g.HoraEnvio,  
  g.CodigoSeguridadEcf,  
  g.FechaFirmaDigital,  
  g.TipoNCF,  
  g.FechaVenceNCF  
  
GO

/****** Object:  StoredProcedure [dbo].[ecf_gm_send]    Script Date: 03/05/2026 10:15:47 a.m. ******/
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

/****** Object:  StoredProcedure [dbo].[ecf_gm_validate]    Script Date: 03/05/2026 10:15:47 a.m. ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO






create   procedure [dbo].[ecf_gm_validate]    
 @id uniqueidentifier,      
 @trackId varchar(30),      
 @hash varchar(20),  
 @fechaFirma datetime,   
 @error varchar(200)      
as      

 declare @ecf varchar(20)
 
 select @ecf = Compfiscal
 from bcoGastosMenores with (NOLOCK) 
 where guiddocumento = @id 

 if isnull(@error,'') <> '' begin      
   update bcoGastosMenores
     set UltError = @error, HoraEnvio = getdate()      
   where GUIdDocumento = @id       
 end      
 else begin      
   if isnull(@trackId,'') <> '' begin       
     update bcoGastosMenores
        set UltError = null, HoraEnvio = getdate(), TrackId = @trackId, PendValidacion = 0,  
      CodigoSeguridadEcf = left(@hash,6), FechaFirmaDigital = @fechaFirma  
  where guidDocumento = @id       
   end      
end      

exec ecf_logEnvio @id, @ecf, 'GM', @trackId, @hash, @fechaFirma, @error
      
return @@error       
GO

/****** Object:  StoredProcedure [dbo].[ecf_logEnvio]    Script Date: 03/05/2026 10:15:47 a.m. ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO




  
create   procedure [dbo].[ecf_logEnvio] 
 @id uniqueidentifier, 
 @ncf varchar(20),
 @tipo varchar(16), 
 @trackId varchar(100),      
 @hash varchar(20),  
 @fechaFirma datetime,   
 @error varchar(200)      
 as
 if isnull(@error ,'') = '' set @error = 'OK'

 insert into ecf_compfiscal_log (Compfiscal, trackId, Hashval, Descripcion, ReferenciaId, TipoRef, FechaFirma)
 values (@ncf, @trackId, @hash, @error, @id, @tipo, @fechaFirma)
GO

/****** Object:  StoredProcedure [dbo].[ecf_marcar_cxp_Enviado]    Script Date: 03/05/2026 10:15:47 a.m. ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO






create   procedure [dbo].[ecf_marcar_cxp_Enviado]
 @id int, @pend bit, @error varchar(100)
as 
 update cxpdocumentos
   set PendEnvioEcf = @pend, UltError = case when @pend = 1 then @error else '' end
 where idDocumento = @id and PendEnvioEcf = 1 
GO

/****** Object:  StoredProcedure [dbo].[ecf_marcar_procesado]    Script Date: 03/05/2026 10:15:48 a.m. ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO





  
CREATE procedure [dbo].[ecf_marcar_procesado]
 @numero varchar(20), @trackId varchar(50), @codSeg varchar(20), @fecFirma datetime, @status varchar(50), @mensaje varchar(2000)
as  
 insert into ecf_compfiscal_log
 (CompFiscal, tipoRef, trackId, Hashval, Descripcion, FechaFirma)
 values (@numero, substring(@numero, 2,2), @trackId, @codSeg, left((@status + '|' + @mensaje),2000), @fecFirma)
  
 if @numero like 'E43%' begin  
   update bcoGastosMenores  
     set PendValidacion = 0, 
		 StatusEcf = @status, 
		 UltError = case when @status like '%acept%' then '' else @mensaje end, 
		 CodigoSeguridadEcf = @codSeg, 
		 TrackId = @trackId, 
		 FechaFirmaDigital = @fecFirma
 where CompFiscal = @numero and PendValidacion = 1 
 
 return @@ERROR

 end  
 
 if @numero like 'E4[1,7]%' begin      
   update cxpDocumentos  
     set PendValidacion = 0, 
		 StatusEcf = @status, 
		 UltError = case when @status like '%acept%' then '' else @mensaje end, 
		 CodigoSeguridadEcf = @codSeg, 
		 TrackId = @trackId, 
		 FechaFirmaDigital = @fecFirma
 where CompFiscal = @numero and PendValidacion = 1 and idTrans = 1 

 return @@error 
 end  
 
 if @numero like 'E3[3,4]%' begin  
   update cxc  
     set PendValidacion = 0, 
		 StatusEcf = @status, 
		 UltError = case when @status like '%acept%' then '' else @mensaje end, 
		 CodigoSeguridadEcf = @codSeg, 
		 TrackId = @trackId, 
		 FechaFirmaDigital = @fecFirma
   where CompFiscal = @numero and PendValidacion = 1 and cancelado = 0  
   return @@ERROR
 end  

 if substring(@numero,2,2) in ('31','32','44','45','46') begin 
   update factura
     set PendValidacion = 0, 
		 StatusEcf = @status, 
		 UltError = case when @status like '%acept%' then '' else @mensaje end, 
		 CodigoSeguridadEcf = @codSeg, 
		 TrackId = @trackId, 
		 FechaFirmaDigital = @fecFirma
   where CompFiscal = @numero and PendValidacion = 1 and cancelado = 0  
   return @@ERROR
  end  

  return 1
GO

/****** Object:  StoredProcedure [dbo].[ecf_selectPendEnvio]    Script Date: 03/05/2026 10:15:48 a.m. ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO




  
CREATE procedure [dbo].[ecf_selectPendEnvio]    
as    
  declare @st varchar(20) = 'ENVIANDO'     
      
  select Compfiscal as Ncf, IdFactura as Id    
  from factura with (nolock)    
  where statusEcf = @st and CompFiscal like 'E%'
  union all    
  select Compfiscal as Ncf, IdCXC as Id    
  from cxc with (nolock)    
  where statusEcf = @st and CompFiscal like 'E3[3,4]%' 
  union all    
  select Compfiscal as Ncf, GuidDocumento as Id    
  from cxpDocumentos with (nolock)    
  where statusEcf = @st and CompFiscal like 'E4[1,7]%'
  union all    
  select Compfiscal as Ncf, GuidDocumento as Id    
  from bcoGastosMenores with (nolock)    
  where statusEcf = @st and CompFiscal like 'E43%' 
  order by 1    
GO


