
CREATE OR ALTER PROCEDURE rsClienteDet(@idCliente int) AS



  Select 

    *

  From 

    ClienteObra

  Where

    idCliente = @idCliente


GO
