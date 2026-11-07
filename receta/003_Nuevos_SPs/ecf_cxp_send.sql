CREATE OR ALTER PROCEDURE [dbo].[ecf_cxp_send]                
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
  from cxpdocumentos h 
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
    end ,
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
  e.MontoItbis1,              
  @bos,              
  '1',              
  IsrRetenido = @isRRetenido * (e.SubTotal1 / (e.SubTotal1 + e.SubTotal2 + e.SubTotal3)),              
  ItbisRetenido = @ItbisRetenido * (e.SubTotal1 / (e.SubTotal1 + e.SubTotal2 + e.SubTotal3))              
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
    PRINT 'ERROR OCCURRED: ' + @msg;
    raiserror (@msg,16,6)          
  end catch     


GO
