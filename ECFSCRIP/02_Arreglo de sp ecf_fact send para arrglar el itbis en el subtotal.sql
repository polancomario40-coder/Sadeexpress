--use Hyl
go

CREATE OR ALTER PROCEDURE [dbo].[ecf_fact_send]         
 @id uniqueidentifier        
as                 
 declare @nuId int, @msg varchar(2000)         
        
 if exists (select 1 from ecfworker..ecf_comprobante where Referencia = @id and StatusEcf = 'VALIDADO')           
   return -1          

 if exists (select 1 from ecfworker..ecf_comprobante where Referencia = @id and StatusEcf not in ('VALIDADO', 'ENCOLA')) begin
   delete from ecfworker..ecf_comprobante_detalle where ComprobanteId in (select Id from ecfworker..ecf_comprobante where Referencia = @id and StatusEcf not in ('VALIDADO', 'ENCOLA'))
   delete from ecfworker..ecf_comprobante where Referencia = @id and StatusEcf not in ('VALIDADO', 'ENCOLA')
 end
    
 if exists (select 1 from factura where idfactura = @id and cancelado = 1)    
   return -1    
       
 declare @rncEmisor varchar(20), @emisorId uniqueidentifier      
 select @rncEmisor = LTRIM(rtrim(replace(rnc,'-',''))),      
  @emisorId = UConfiguracion      
 from Configuracion          

 -- Parametro de Facturacion / Ventas:
 -- SUMARITBIS = 1 -> Los precios no incluyen ITBIS (el ITBIS se suma al precio). Base = (precio * cant) - desc.
 -- SUMARITBIS = 0 (o <> 1) -> Los precios incluyen ITBIS. Base gravada = (precio * cant) - desc - itbis.
 declare @sumarItbis int = 0
 select @sumarItbis = cast(isnull(Valor, '0') as int) from Defaults where Clave = 'SUMARITBIS'
      
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
  SubTotal1 = h.Tasa * sum( case when fd.Itbis > 0 then 
                              case when @sumarItbis = 1 
                                   then ((fd.precio * fd.cantidad) - fd.descuento)
                                   else ((fd.precio * fd.cantidad) - fd.descuento) - fd.itbis
                              end
                            else 0.00 end),         
  SubTotal3 = h.Tasa * sum( case when fd.Itbis > 0 then 0.00 
                            else ((fd.precio * fd.cantidad) - fd.descuento) end),         
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
   and (h.StatusEcf in ('PENDIENTE', 'ERROR', 'ENVIANDO', 'ENVIADO') or isnull(h.StatusEcf,'') = '')           
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
        
 set @nuId = SCOPE_IDENTITY()          
 if @nuId is not null begin          
   insert into ecfworker..ecf_comprobante_detalle          
   (ComprobanteId, ReferenciaId, ProductoId, NombreProducto, Descripcion, Unidad, Cantidad, precio,           
    Itbis, Descuento, IndicadorBienOServicio, IndicadorFacturacion)          
   select Id, @id, ncf, 'GRAVADO','GRAVADO','43',1, SubTotal1, MontoItbis1,0, '1','1'          
   from ecfworker..ecf_comprobante          
   where Id = @nuId and SubTotal1 > 0          
   union all          
   select Id, @id, ncf, 'EXENTO','EXENTO','43',1, SubTotal3, 0,0, '1', '4'          
   from ecfworker..ecf_comprobante          
   where Id = @nuId and SubTotal3 > 0          
          
   update factura           
     set StatusEcf = 'ENVIADO'
   where idfactura = @id
 end          
          
 commit tran          
 end try          
 begin catch          
   set @msg = 'Error enviando ECF: ' + ERROR_MESSAGE()          
   rollback tran          
   PRINT @msg;
   raiserror (@msg,16,6)          
 end catch          
        
return 0 
GO
