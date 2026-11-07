------------ final de:cxpGuardarSolicitudRet ------------



------------ inicio de:cxpInsCostoDocumento ------------



CREATE OR ALTER PROCEDURE cxpInsCostoDocumento

 @IdDocumento uniqueidentifier,

 @idCostoDocumento uniqueidentifier,

 @idCentroCosto uniqueidentifier,

 @CentroCosto varchar(16),

 @CentroCostoGasto varchar(200),

 @Fecha datetime,

 @idpartida varchar(16),

 @Referencia varchar(16),

 @idTipoDoc varchar(10),

 @Cantidad float,

 @Gasto decimal(19,2),

 @idUnidad varchar(16),

 @Notas varchar(500),

 @TipoGasto varchar(16),

 @DebCre tinyint  

as

 insert into costCostoDocumento

    (idDocumento, idCostoDocumento, idCentroCosto, CentroCosto, CentroCostoGasto,

	 Fecha, IdPartida, Referencia, IdTipoDoc, Cantidad, Gasto, idUnidad, Notas,

     TipoGasto, DebCre)

  values 

    (@idDocumento, @idCostoDocumento, @idCentroCosto, @CentroCosto, @CentroCostoGasto,

	 @Fecha, @IdPartida, @Referencia, @IdTipoDoc, @Cantidad, @Gasto, @idUnidad, @Notas,

     @TipoGasto, @debCre)

return @@ERROR


GO
