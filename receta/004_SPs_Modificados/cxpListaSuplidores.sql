
CREATE OR ALTER PROCEDURE cxpListaSuplidores

as

 select idSuplidor, RNC, Nombre, Telefono1 from cxpSuplidores

 order by Nombre

return 0 

 

 




GO
