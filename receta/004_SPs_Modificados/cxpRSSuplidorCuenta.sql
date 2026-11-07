CREATE OR ALTER PROCEDURE cxpRSSuplidorCuenta

 @idSuplidor int 

as

  select * from cxpSuplidorCuenta

  where idSuplidor = @idSuplidor

  order by idCuenta

return 0 


GO
