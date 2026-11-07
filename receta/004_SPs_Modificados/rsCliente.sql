
CREATE OR ALTER PROCEDURE rsCliente(@idCliente int) AS



select * from cliente where idCliente = @idCliente


GO
