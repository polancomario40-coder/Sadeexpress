

CREATE OR ALTER PROCEDURE dbo.cxpGuardarSolicitudRet

 @idSolicitud int,

 @idSolicitudRet uniqueidentifier,

 @idDocumento int,

 @Porc float,

 @Valor decimal(19,2),

 @idRetencion int,

 @Retencion varchar(100),

 @idTipoRetencionDGII INT 

as

 insert into cxpSolicitudRet 

  (idSolicitudRet, idSolicitud, IdDocumento, Porcentaje, Valor, idRetencion, Retencion, idTipoRetencionDGII)

 values

  (@idSolicitudRet, @idSolicitud, @idDocumento, @Porc, @Valor, @idRetencion, @Retencion, @idTipoRetencionDGII)

return 0 




GO
