







CREATE OR ALTER PROCEDURE [dbo].[ecf_cxp_cambiarEstado]

 @id uniqueidentifier, 

 @st varchar(16),

 @usuario varchar(30)

as

 declare @pendEnvio bit = 1,

		 @pendVal bit = 1



select @pendEnvio = PendEnvio, @pendVal = PendValidacion from ecf_status_envio where Id = @st 

		  

 update cxpdocumentos 

   set StatusEcf = @st,

	   PendEnvioEcf = isnull(@pendEnvio,0),

	   PendValidacion = isnull(@pendVal,0)

 where GUIDDocumento = @id 


GO
