
CREATE OR ALTER PROCEDURE cxpGuardarSolDtl

 @idSolicitud int,

 @IdDocumento int,

 @Valor decimal(19,2),

 @Tasa decimal(18,2) 

as

 insert into cxpSolicitudesDtl (idSolicitud, IdDocumento, Valor,Tasa)

  values (@idSolicitud, @idDocumento, @Valor, @Tasa)

return @@ERROR






GO
