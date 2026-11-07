



CREATE OR ALTER PROCEDURE [dbo].[ecf_factura_selectParaEnviar]                      

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
