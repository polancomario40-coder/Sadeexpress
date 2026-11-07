CREATE OR ALTER PROCEDURE svSubClientesCliente

 @idClienteParent int 

as

 select idCliente, Cliente

 from Cliente

 where idClienteParent = @idClienteParent

 order by Cliente

return


GO
