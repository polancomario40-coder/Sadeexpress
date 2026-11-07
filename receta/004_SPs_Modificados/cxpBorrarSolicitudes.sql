
CREATE OR ALTER PROCEDURE cxpBorrarSolicitudes

 @idSol int

as

 delete from cxpSolicitudes

  where idSolicitud = @idSol

return @@ERROR




GO
