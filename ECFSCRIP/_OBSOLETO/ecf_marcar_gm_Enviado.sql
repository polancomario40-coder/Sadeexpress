











create   procedure [dbo].[ecf_marcar_gm_Enviado]

 @id uniqueidentifier, @pend bit, @error varchar(100)

as 

 update bcoGastosMenores

   set PendEnvioEcf = @pend, UltError = case when @pend = 1 then @error else '' end

 where GuidDocumento = @id and PendEnvioEcf = 1 

