

 ------------ inicio de:svRSClienteContacto ------------  

  

CREATE OR ALTER PROCEDURE svRSClienteContacto  

 @idCliente int  

as  

 select * from svclienteContacto  

 where idCliente = @idCliente  

 order by Nombre  

return 0   

  


GO
