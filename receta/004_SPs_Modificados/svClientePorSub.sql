CREATE OR ALTER PROCEDURE svClientePorSub 

 @idSubCliente int

as



 declare @idcliente int

 

 select @idCliente = c.idClienteParent

 from cliente c

 where c.idCliente = @idSubCliente 

 

 if @idCliente is null

   set @idCliente = @idSubCliente

   

 select * from cliente

 where idCliente = @idCliente 

 

return 


GO
