-- ============================================================================
-- SCRIPT DE CORRECCIÓN e-CF (ERP -> EcfWorker)
-- 1. Corrige dbo.LimpiarRnc para no truncar RNCs con guiones/espacios
-- 2. Deja PedidoNumero vacío ('') en ecf_fact_send, ecf_dev_send, ecf_cxc_send,
--    ecf_gm_send y ecf_cxp_send para evitar "Aceptado Condicional" (Código 1333)
-- ============================================================================

-- 1. LimpiarRnc
CREATE OR ALTER FUNCTION [dbo].[LimpiarRnc] (@str varchar(20))  
RETURNS varchar(20)  
AS  
BEGIN  
    DECLARE @instr varchar(20), @outstr varchar(20), @ch char(1)  
    SET @outstr = ''  
    DECLARE @j int = 1  
    SET @instr = LTRIM(RTRIM(ISNULL(@str, '')))  
    WHILE @j <= LEN(@instr) 
    BEGIN  
        SET @ch = SUBSTRING(@instr, @j, 1)
        IF @ch IN ('0','1','2','3','4','5','6','7','8','9') 
        BEGIN     
            SET @outstr = @outstr + @ch        
            SET @j = @j + 1  
        END  
        ELSE IF @ch IN ('-', ' ', '.')
        BEGIN
            SET @j = @j + 1
        END
        ELSE  
            SET @j = LEN(@instr) + 1  
    END  
    RETURN @outstr  
END
GO

-- 2. ecf_fact_send
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

 declare @sumarItbis int = 0
 select @sumarItbis = cast(isnull(Valor, '0') as int) from Defaults where Clave = 'SUMARITBIS'
      
 begin try        
 begin tran         
          
 insert into ecfworker..ecf_comprobante          
 (  RncEmisor, EmisorId, Referencia, TipoReferencia, Fecha, Numero, TipoNcf,          
    DocumentoIdentidad, TipoDocIdentidad, Sucursal, RazonSocialComprador, TipoIngresos,          
    SubTotal1, SubTotal3, Itbis1, Itbis2, Itbis3, MontoItbis1, MontoDescuento, MontoRecargo,                   
    StatusEcf, EmailComprador, CompradorId, ContactoComprador, DireccionComprador,          
    PedidoNumero, NumeroOrdenCompra, IndicadorMontoGravado, FormaPago, Moneda, TasaCambio,          
    Ncf, VencimientoNcf)          
 select @rncEmisor, @emisorId, h.idfactura, 'FT', h.Fecha, h.CompFiscal as Numero,                  
  TipoNcf = substring(h.compfiscal,2,2), dbo.LimpiarRNC(h.ClienteRNC) as Rnc, '' as idTipoIdentificacion,             
  '1', h.Cliente as Nombre, '',          
  SubTotal1 = h.Tasa * sum( case when fd.Itbis > 0 then 
                              case when @sumarItbis = 1 
                                   then ((fd.precio * fd.cantidad) - fd.descuento)
                                   else ((fd.precio * fd.cantidad) - fd.descuento) - fd.itbis
                              end
                            else 0.00 end),         
  SubTotal3 = h.Tasa * sum( case when fd.Itbis > 0 then 0.00 
                            else ((fd.precio * fd.cantidad) - fd.descuento) end),         
  case when h.Itbis > 0 then '18' else '' end, '', '', h.Itbis * h.tasa as MontoImpuestos,          
  0, 0, 'PENDIENTE', '', null, '', '',          
  '' as PedidoNumero,          
  '' OrdenCompra, '0', '1', 'DOP', 1, h.CompFiscal, h.FechaVenceNCF        
 from factura h with (NOLOCK) join facturadet fd with (NOLOCK) on h.idFactura = fd.idfactura      
 where h.idfactura = @id        
   and isnull(h.CompFiscal,'') <> ''          
   and (h.StatusEcf in ('PENDIENTE', 'ERROR', 'ENVIANDO', 'ENVIADO') or isnull(h.StatusEcf,'') = '')           
 group by h.idfactura, h.Fecha, h.CompFiscal, substring(h.compfiscal,2,2),                
  h.ClienteRNC, h.Cliente, h.Itbis, h.tasa, h.FechaVenceNCF        
        
 set @nuId = SCOPE_IDENTITY()          
 if @nuId is not null begin          
   insert into ecfworker..ecf_comprobante_detalle          
   (ComprobanteId, ReferenciaId, ProductoId, NombreProducto, Descripcion, Unidad, Cantidad, precio,           
    Itbis, Descuento, IndicadorBienOServicio, IndicadorFacturacion)          
   select Id, @id, ncf, 'GRAVADO','GRAVADO','43',1, SubTotal1, MontoItbis1,0, '1','1'          
   from ecfworker..ecf_comprobante where Id = @nuId and SubTotal1 > 0          
   union all          
   select Id, @id, ncf, 'EXENTO','EXENTO','43',1, SubTotal3, 0,0, '1', '4'          
   from ecfworker..ecf_comprobante where Id = @nuId and SubTotal3 > 0          
          
   update factura set StatusEcf = 'ENVIADO' where idfactura = @id
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

-- 3. ecf_dev_send
CREATE OR ALTER PROCEDURE [dbo].[ecf_dev_send]  
 @id uniqueidentifier        
as                 
 declare @nuId int         
        
 if exists (select 1 from ecfworker..ecf_comprobante where Referencia = @id and StatusEcf = 'VALIDADO') begin 
   return -1    
 end

 declare @ncfModificado varchar(19), @fechaNcfModificado datetime
 select @ncfModificado = isnull(h.ncfModificado,''), @fechaNcfModificado = h.FechaNcfModificado
 from devolucion h where h.iddevolucion = @id

 if @ncfModificado = ''
 begin
   select top 1 @ncfModificado = CompFiscal, @fechaNcfModificado = Fecha
   from Factura where idFactura = (select idFactura from devolucion where iddevolucion = @id)
 end

 declare @tipoNcf varchar(2) = substring(isnull((select CompFiscal from devolucion where iddevolucion = @id),''), 2, 2)
 if @tipoNcf = '34' and isnull(@ncfModificado, '') = ''
 begin
   raiserror('Error: La Devolución / Nota de Crédito no tiene asignado el comprobante modificado (Factura / NCF Modificado).', 16, 1)
   return -1
 end

 if isnull(@ncfModificado,'') <> '' and exists (select 1 from devolucion where iddevolucion = @id and isnull(ncfModificado,'') = '')
 begin
   update devolucion
   set ncfModificado = @ncfModificado,
       FechaNcfModificado = @fechaNcfModificado,
       TipoNcf = substring(@ncfModificado, 2, 2)
   where iddevolucion = @id
 end

 if exists (select 1 from ecfworker..ecf_comprobante where Referencia = @id and StatusEcf not in ('VALIDADO', 'ENCOLA')) begin
   delete from ecfworker..ecf_comprobante_detalle where ComprobanteId in (select Id from ecfworker..ecf_comprobante where Referencia = @id and StatusEcf not in ('VALIDADO', 'ENCOLA'))
   delete from ecfworker..ecf_comprobante where Referencia = @id and StatusEcf not in ('VALIDADO', 'ENCOLA')
 end
   
 declare @rncEmisor varchar(20), @emisorId uniqueidentifier
 select @rncEmisor = LTRIM(rtrim(replace(rnc,'-',''))), @emisorId = UConfiguracion from Configuracion  
 
 declare @itbis decimal(19,2)    
 select @itbis = isnull((SELECT a.Valor FROM cgCodificacion a JOIN Defaults b ON CAST(b.Valor AS VARCHAR(16)) = a.idCuenta WHERE b.Clave = 'CuentaITBIS' AND a.GUIDDocumento = @id),0) 
 
 declare @subtotal1 decimal(19,2) = 0
 if @itbis > 0 set @subtotal1 = @itbis / 0.18

 begin try    
 begin tran     
 insert into ecfworker..ecf_comprobante          
 (  RncEmisor, EmisorId, Referencia, TipoReferencia, Fecha, Numero, TipoNcf,          
    DocumentoIdentidad, TipoDocIdentidad, Sucursal, RazonSocialComprador, TipoIngresos,          
    SubTotal1, SubTotal3, Itbis1, MontoItbis1, MontoDescuento, MontoRecargo,                   
    StatusEcf, EmailComprador, CompradorId, ContactoComprador, DireccionComprador,          
    PedidoNumero, NumeroOrdenCompra, IndicadorMontoGravado, FormaPago, Moneda, TasaCambio,          
    Ncf, VencimientoNcf, NcfModificado, FechaNcfModificado, IndNotaCredito, CodigoModificacion)          
 select @rncEmisor, @emisorId, h.iddevolucion, 'DEV', h.Fecha, h.CompFiscal as Numero,                  
  TipoNcf = substring(h.compfiscal,2,2),                
  dbo.LimpiarRNC(isnull(ft.ClienteRNC, (SELECT TOP 1 RNC_Cedula FROM Cliente c WHERE c.idCliente = h.idCliente))) as Rnc,          
  '' as idTipoIdentificacion, '1', h.Cliente as Nombre, '',    
  SubTotal1 = @subtotal1, SubTotal3 = ((h.Total * h.Tasa) - @itbis) - @subtotal1,        
  case when h.itbis > 0 then '18' else '' end,          
  MontoImpuestos = h.Tasa * isnull((select sum(DevItbis) from devolucionDet with (NOLOCK) where iddevolucion = h.IdDevolucion and DevItbis > 0),0),          
  0, 0, 'PENDIENTE', '', null, '', '',          
  '' as PedidoNumero, '' OrdenCompra, '0', '1', 'DOP', 1, h.CompFiscal, h.FechaVenceNCF,        
  isnull(nullif(h.ncfModificado,''), @ncfModificado),        
  isnull(h.FechaNcfModificado, isnull(@fechaNcfModificado, ft.Fecha)),    
  IndNotaCredito = case 
    when substring(isnull(h.compfiscal,''),2,2) = '34' or isnull(h.TipoNcf,'') = '34' then 
      case when isnull(datediff(day, isnull(ft.Fecha, isnull(h.FechaNcfModificado, @fechaNcfModificado)), h.Fecha), 0) > 30 then '1' else '0' end 
    else '' 
  end, '3'
 from devolucion h 
 left join factura ft on isnull(nullif(h.ncfModificado,''), @ncfModificado) = ft.CompFiscal  
 where h.iddevolucion = @id and isnull(h.CompFiscal,'') <> ''          
   and (h.StatusEcf in ('PENDIENTE', 'ERROR', 'ENVIANDO', 'ENVIADO') or isnull(h.StatusEcf,'') = '')
              
 set @nuId = SCOPE_IDENTITY()          
 if @nuId is not null begin 
   insert into ecfworker..ecf_comprobante_detalle
   (ComprobanteId, ReferenciaId, ProductoId, NombreProducto, Descripcion, Unidad, Cantidad, precio,  
    Itbis, Descuento, IndicadorBienOServicio, IndicadorFacturacion)
   select Id, @id, ncf, 'GRAVADO','GRAVADO','43',1, SubTotal1, MontoItbis1,0, '2','1'
   from ecfworker..ecf_comprobante where Id = @nuId and SubTotal1 > 0
   union all
   select Id, @id, ncf, 'EXENTO','EXENTO','43',1, SubTotal3, 0,0, '2', '4'
   from ecfworker..ecf_comprobante where Id = @nuId and SubTotal3 > 0
  
   update devolucion set StatusEcf = 'ENVIADO' where iddevolucion = @id
   update cxc set StatusEcf = 'ENVIADO' where idcxc = @id
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

-- 4. ecf_cxc_send
CREATE OR ALTER PROCEDURE [dbo].[ecf_cxc_send]            
 @id uniqueidentifier        
as                 
 declare @nuId int         
 if exists (select 1 from devolucion where iddevolucion = @id) return 0   

 declare @rncEmisor varchar(20), @emisorId uniqueidentifier
 select @rncEmisor = LTRIM(rtrim(replace(rnc,'-',''))), @emisorId = UConfiguracion from Configuracion       
        
 if exists (select 1 from ecfworker..ecf_comprobante where Referencia = @id and StatusEcf = 'VALIDADO') return -1          

 declare @ncfModificado varchar(19), @fechaNcfModificado datetime
 select @ncfModificado = isnull(h.ncfModificado,''), @fechaNcfModificado = h.FechaNcfModificado from cxc h where h.idcxc = @id

 if @ncfModificado = ''
 begin
   select top 1 @ncfModificado = CompFiscal, @fechaNcfModificado = Fecha
   from (
     select CompFiscal, Fecha from Factura where idFactura = (select Referencia from cxc where idcxc = @id)
     union all
     select CompFiscal, Fecha from Cxc where idcxc = (select Referencia from cxc where idcxc = @id)
   ) t1
 end

 if @ncfModificado = ''
 begin
   select top 1 @ncfModificado = CompFiscal, @fechaNcfModificado = Fecha
   from (
     select CompFiscal, Fecha from Factura where Factura = (select idDocumento from cxc where idcxc = @id)
     union all
     select CompFiscal, Fecha from Cxc where Cxc = (select idDocumento from cxc where idcxc = @id)
   ) t2
 end

 if @ncfModificado = ''
 begin
   select top 1 @ncfModificado = CompFiscal, @fechaNcfModificado = Fecha
   from (
     select f.CompFiscal, f.Fecha from cxcdet d join Factura f on d.idCxcDebito = f.idFactura where d.idCxc = @id and d.Valor > 0
     union all
     select c.CompFiscal, c.Fecha from cxcdet d join Cxc c on d.idCxcDebito = c.idCxc where d.idCxc = @id and d.Valor > 0
   ) t3
 end

 declare @tipoNcf varchar(2) = substring(isnull((select CompFiscal from cxc where idcxc = @id),''), 2, 2)
 if @tipoNcf = '34' and isnull(@ncfModificado, '') = ''
 begin
   raiserror('Error: La Nota de Crédito no tiene asignado el comprobante modificado (Aplica A / NCF Modificado). Por favor seleccione la factura que modifica antes de enviar el ECF.', 16, 1)
   return -1
 end

 if isnull(@ncfModificado,'') <> '' and exists (select 1 from cxc where idcxc = @id and isnull(ncfModificado,'') = '')
 begin
   update cxc
   set ncfModificado = @ncfModificado,
       FechaNcfModificado = @fechaNcfModificado,
       TipoNcfModificado = substring(@ncfModificado, 2, 2)
   where idcxc = @id
 end

 if exists (select 1 from ecfworker..ecf_comprobante where Referencia = @id and StatusEcf not in ('VALIDADO', 'ENCOLA')) begin
   delete from ecfworker..ecf_comprobante_detalle where ComprobanteId in (select Id from ecfworker..ecf_comprobante where Referencia = @id and StatusEcf not in ('VALIDADO', 'ENCOLA'))
   delete from ecfworker..ecf_comprobante where Referencia = @id and StatusEcf not in ('VALIDADO', 'ENCOLA')
 end

 declare @itbis decimal(19,2)    
 select @itbis = isnull((SELECT a.Valor FROM cgCodificacion a JOIN Defaults b ON CAST(b.Valor AS VARCHAR(16)) = a.idCuenta WHERE b.Clave = 'CuentaITBIS' AND a.GUIDDocumento = @id),0)    

 declare @subtotal1 decimal(19,2) = 0
 if @itbis > 0 set @subtotal1 = @itbis / 0.18
    
 begin try    
 begin tran     
 insert into ecfworker..ecf_comprobante          
 (  RncEmisor, EmisorId, Referencia, TipoReferencia, Fecha, Numero, TipoNcf,          
    DocumentoIdentidad, TipoDocIdentidad, Sucursal, RazonSocialComprador, TipoIngresos,          
    SubTotal1, SubTotal3, Itbis1, MontoItbis1, MontoDescuento, MontoRecargo,                   
    StatusEcf, EmailComprador, CompradorId, ContactoComprador, DireccionComprador,          
    PedidoNumero, NumeroOrdenCompra, IndicadorMontoGravado, FormaPago, Moneda, TasaCambio,          
    Ncf, VencimientoNcf, NcfModificado, FechaNcfModificado, IndNotaCredito, CodigoModificacion)          
 select @rncEmisor, @emisorId, h.idcxc, 'CXC', h.Fecha, h.CompFiscal as Numero,                  
  TipoNcf = substring(h.compfiscal,2,2),                
  dbo.LimpiarRNC(isnull(ft.ClienteRNC, (SELECT TOP 1 RNC_Cedula FROM Cliente c WHERE c.idCliente = h.idCliente))) as Rnc,          
  '' as idTipoIdentificacion, '1', h.Cliente as Nombre, '',          
  SubTotal1 = @subtotal1, SubTotal3 = ((h.Total * h.Tasa) - @itbis) - @subtotal1,        
  case when @itbis > 0 then '18' else '' end, @itbis as MontoImpuestos,          
  0, 0, 'PENDIENTE', '', null, '', '',          
  '' as PedidoNumero, '' OrdenCompra, '0', '1', 'DOP', 1, h.CompFiscal, h.FechaVenceNCF,        
  isnull(nullif(h.ncfModificado,''), @ncfModificado),        
  isnull(h.FechaNcfModificado, isnull(@fechaNcfModificado, ft.Fecha)),    
  IndNotaCredito = case 
    when substring(isnull(h.compfiscal,''),2,2) = '34' or isnull(h.TipoNcf,'') = '34' then 
      case when isnull(datediff(day, isnull(ft.Fecha, isnull(h.FechaNcfModificado, @fechaNcfModificado)), h.Fecha), 0) > 30 then '1' else '0' end 
    else '' 
  end, '3'
 from cxc h 
 left join factura ft on isnull(nullif(h.ncfModificado,''), @ncfModificado) = ft.CompFiscal        
 where h.idcxc = @id and isnull(h.CompFiscal,'') <> ''       
   and not exists (select 1 from Devolucion where idDevolucion = h.idcxc)  
   and (h.StatusEcf in ('PENDIENTE', 'ERROR', 'ENVIANDO', 'ENVIADO') or isnull(h.StatusEcf,'') = '')

 set @nuId = SCOPE_IDENTITY()          
 if @nuId is not null begin 
   insert into ecfworker..ecf_comprobante_detalle
   (ComprobanteId, ReferenciaId, ProductoId, NombreProducto, Descripcion, Unidad, Cantidad, precio,  
    Itbis, Descuento, IndicadorBienOServicio, IndicadorFacturacion)
   select Id, @id, ncf, 'GRAVADO','GRAVADO','43',1, SubTotal1, MontoItbis1,0, '2','1'
   from ecfworker..ecf_comprobante where Id = @nuId and SubTotal1 > 0
   union all
   select Id, @id, ncf, 'EXENTO','EXENTO','43',1, SubTotal3, 0,0, '2', '4'
   from ecfworker..ecf_comprobante where Id = @nuId and SubTotal3 > 0
                
   update cxc set StatusEcf = 'ENVIADO' where idcxc = @id     
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