
------------ final de:cxcReporteRemisiones ------------



------------ inicio de:cxpBorrarCostoDocumento ------------



CREATE OR ALTER PROCEDURE cxpBorrarCostoDocumento

 @IdDocumento uniqueidentifier

as

 delete from costCostoDocumento

  where idDocumento = @idDocumento

return @@ERROR


GO
