
CREATE OR ALTER PROCEDURE cxpGuardarDocDtl

 @idDocumento int,

 @idDocXPagar int,

 @Fec datetime,

 @Valor decimal(19,2),

 @Tasa decimal(19,2)

as

  insert into cxpDocumentosDtl (Iddocumento, idDocXPagar, Fecha, Valor, Tasa)

  values(@idDocumento, @idDocXPagar, @fec, @Valor, @Tasa)

return @@ERROR






GO
