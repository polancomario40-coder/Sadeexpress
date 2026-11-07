





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

