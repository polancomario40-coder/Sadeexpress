CREATE OR ALTER PROCEDURE [dbo].[presClienteAct](@idCliente int) as



Select 

  c.* , s.activo

from 

  presCliente c

  join presClienteStatus s on c.Status = s.Status

where 

  idCliente = @idCliente


GO
