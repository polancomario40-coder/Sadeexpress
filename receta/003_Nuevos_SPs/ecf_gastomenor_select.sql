













CREATE OR ALTER PROCEDURE [dbo].[ecf_gastomenor_select]   

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
