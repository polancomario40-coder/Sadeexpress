

CREATE OR ALTER PROCEDURE cxpGuardarCtasDoc

 @IdDocumento int,

 @Cta varchar(16),

 @Aux varchar(16),

 @dbcr smallint,

 @Valor money,

 @Automatica bit,

 @idCentroCosto uniqueidentifier = null,

 @CentroCosto varchar(16) = null,

 @idPartida varchar(16) = null

AS

if (isnull(@Cta,'') <> '') and (@Valor <> 0) 

 insert into cxpDocCuentas (idDocumento, idCuenta, DebCre, Valor, Automatica, idAuxiliar,

							idCentroCosto, CentroCosto, idPartida)

   values (@idDocumento, @Cta, @dbcr, @Valor, @Automatica, @Aux,

			@idCentroCosto, @CentroCosto, @idPartida)

			

return @@ERROR








GO
