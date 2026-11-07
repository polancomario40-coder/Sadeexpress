



CREATE OR ALTER PROCEDURE RSClienteOpcion

 @idCliente int

as

 select * from ClienteOpcion

 where idCliente = @idCliente

 order by idClienteOpciontipo




GO
