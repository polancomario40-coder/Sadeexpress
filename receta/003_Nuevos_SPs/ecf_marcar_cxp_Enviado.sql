











CREATE OR ALTER PROCEDURE [dbo].[ecf_marcar_cxp_Enviado]

 @id int, @pend bit, @error varchar(100)

as 

 update cxpdocumentos

   set PendEnvioEcf = @pend, UltError = case when @pend = 1 then @error else '' end

 where idDocumento = @id and PendEnvioEcf = 1 


GO
