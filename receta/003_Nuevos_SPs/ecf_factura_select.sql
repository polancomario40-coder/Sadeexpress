





CREATE OR ALTER PROCEDURE [dbo].[ecf_factura_select]                     

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
