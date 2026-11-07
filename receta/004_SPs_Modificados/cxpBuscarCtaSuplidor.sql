CREATE OR ALTER PROCEDURE cxpBuscarCtaSuplidor

 @idSuplidor int ,

 @idMoneda int 

as

  select * from cxpSuplidorCuenta

  where idSuplidor = @idSuplidor and idMoneda = @idMoneda  

return 0 


GO
