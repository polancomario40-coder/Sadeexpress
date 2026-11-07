









 

CREATE OR ALTER PROCEDURE [dbo].[ecf_cxp_validate]    

 @id int,      

 @trackId varchar(30),      

 @hash varchar(20),  

 @fechaFirma datetime,   

 @error varchar(200)      

as      



 declare @ecf varchar(20), @guiddoc uniqueidentifier 

 

 select @ecf = Compfiscal, @guiddoc = guiddocumento 

 from cxpDocumentos with (NOLOCK) 

 where iddocumento = @id 



 if isnull(@error,'') <> '' begin      

   update cxpDocumentos

     set UltError = @error, HoraEnvio = getdate()      

   where IdDocumento = @id       

 end      

 else begin      

   if isnull(@trackId,'') <> '' begin       

     update cxpDocumentos

        set UltError = null, HoraEnvio = getdate(), TrackId = @trackId, PendValidacion = 0,  

      CodigoSeguridadEcf = left(@hash,6), FechaFirmaDigital = @fechaFirma  

  where idDocumento = @id       

   end      

end      



exec ecf_logEnvio @guiddoc, @ecf, 'CXP', @trackId, @hash, @fechaFirma, @error

      

return @@error       


GO
