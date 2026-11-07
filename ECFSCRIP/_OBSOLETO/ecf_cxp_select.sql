



 

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

