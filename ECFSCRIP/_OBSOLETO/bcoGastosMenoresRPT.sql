  

  



CREATE procedure [dbo].[bcoGastosMenoresRPT]  

 @GUIDDocumento uniqueidentifier  

as  

 select h.*,  

 QrUrl = dbo.ecf_buildQRGM(h.Guiddocumento),

 d.idCuenta,  

 d.Descripcion,  

 d.Importe  

 from bcoGastosMenores h left join bcoGastosMenoresDet d   

  on h.Guiddocumento = d.guIDDocumento  

 where h.GUIDDocumento = @guiddocumento   

 order by d.Lineanum  

return 0  

  

  



  

