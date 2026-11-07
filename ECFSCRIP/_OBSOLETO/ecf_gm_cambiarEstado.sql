





CREATE procedure [dbo].[ecf_gm_cambiarEstado]

 @id uniqueidentifier, 

 @st varchar(16),

 @usuario varchar(30)

as

 declare @pendEnvio bit = 1,

		 @pendVal bit = 1



select @pendEnvio = PendEnvio, @pendVal = PendValidacion from ecf_status_envio where Id = @st 

		  

 update bcoGastosMenores

   set StatusEcf = @st,

	   PendEnvioEcf = @pendEnvio,

	   PendValidacion = @pendVal

 where GUIDDocumento = @id 

