
CREATE OR ALTER PROCEDURE cxpListaSuplidoresStatus

 @Todos bit

as

 select idSuplidor, RNC, Nombre, Telefono1 

from cxpSuplidores

 where @Todos = 1 or Estatus = 1

 order by Nombre

return 0 

 




GO
