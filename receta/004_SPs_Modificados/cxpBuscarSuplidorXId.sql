
CREATE OR ALTER PROCEDURE cxpBuscarSuplidorXId

 @sid int

as

 select * from cxpSuplidores

 where idSuplidor = @sid

return 0 

 

 




GO
