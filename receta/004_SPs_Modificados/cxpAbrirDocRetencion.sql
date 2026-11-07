

CREATE OR ALTER PROCEDURE dbo.cxpAbrirDocRetencion

 @idDocumento int

as

 select * from cxpDocRetencion

  where idDocumento = @idDocumento

return @@ERROR




GO
