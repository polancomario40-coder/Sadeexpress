CREATE OR ALTER PROCEDURE svOrdCompPendiente(@idOrdCompStatus varchar(16)) AS



select 

  c.idOrdComp, 

  c.OrdComp, 

  c.Fecha, 

  c.Cliente,

  c.idCliente,

  c.Sector, 

  c.Ciudad, 

  c.Telefono, 

  c.Usuario, 

  c.Observacion,

  c.idCondicion,

  s.OrdCompStatus,

  s.Facturable

from 

  ordcomp c

  INNER JOIN OrdCompStatus s ON s.idOrdCompStatus = c.idOrdCompStatus

where 

  c.idordcompstatus = @idOrdCompStatus

order by

  fecha desc


GO
