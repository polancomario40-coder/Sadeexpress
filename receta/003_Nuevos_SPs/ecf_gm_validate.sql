











CREATE OR ALTER PROCEDURE [dbo].[ecf_gm_validate]    

 @id uniqueidentifier,      

 @trackId varchar(30),      

 @hash varchar(20),  

 @fechaFirma datetime,   

 @error varchar(200)      

as      



 declare @ecf varchar(20)

 

 select @ecf = Compfiscal

 from bcoGastosMenores with (NOLOCK) 

 where guiddocumento = @id 



 if isnull(@error,'') <> '' begin      

   update bcoGastosMenores

     set UltError = @error, HoraEnvio = getdate()      

   where GUIdDocumento = @id       

 end      

 else begin      

   if isnull(@trackId,'') <> '' begin       

     update bcoGastosMenores

        set UltError = null, HoraEnvio = getdate(), TrackId = @trackId, PendValidacion = 0,  

      CodigoSeguridadEcf = left(@hash,6), FechaFirmaDigital = @fechaFirma  

  where guidDocumento = @id       

   end      

end      



exec ecf_logEnvio @id, @ecf, 'GM', @trackId, @hash, @fechaFirma, @error

      

return @@error       


GO
