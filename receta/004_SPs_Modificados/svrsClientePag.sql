
CREATE OR ALTER PROCEDURE svrsClientePag(@idCliente int) as



  Select 

    *

  From

    Cliente c

    left join ClienteData cd on c.idCliente = cd.idClienteData

  where

    c.idCliente = @idCliente




GO
