
CREATE OR ALTER PROCEDURE ClienteObraList(@idCliente int) AS



  Select 

    *

  From 

    ClienteObra

  Where

    ActivoObra = 1 and idCliente = @idCliente


GO
