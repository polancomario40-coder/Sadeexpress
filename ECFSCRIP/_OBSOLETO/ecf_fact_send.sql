



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

