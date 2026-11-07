

CREATE OR ALTER PROCEDURE dbo.cxpInsDocRetencion

 @idDocumento int,

 @idRetencion int,

 @Descr varchar(50),

 @Porc FLOAT,

 @idTipoRetencionDGII INT 

as

 insert into cxpdocRetencion

   (idDocumento, idRetencion, Retencion, Porcentaje, idTipoRetencionDGII)

 values

   (@idDocumento, @idRetencion, @Descr, @Porc, @idTipoRetencionDGII)

return @@ERROR


GO
