CREATE OR ALTER PROCEDURE Clienteinact (@Activo bit) AS



  Select 

    idCliente, 

    Cliente, 

    Contacto, 

    Activo, 

    Direccion,

    Sector,

    Ciudad,

    Telefono,

    Fax,

    eMail,

    Condicion

    

  from 

    cliente c 

    join clientestatus cs on c.idClienteStatus = cs.idClienteStatus

    join ClienteTipo ct on c.idClienteTipo = ct.idClienteTipo

  where 

    Activo = @Activo




GO
