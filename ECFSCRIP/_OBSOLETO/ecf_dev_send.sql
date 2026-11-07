















  

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

