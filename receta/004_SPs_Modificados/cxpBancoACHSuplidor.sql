CREATE OR ALTER PROCEDURE cxpBancoACHSuplidor

 @idSuplidor int,

 @idMoneda int

as

 select * from cxpBancoSuplidor

 where idSuplidor = @idSuplidor and idMoneda = @idMoneda

 order by BancoDefault desc 


GO
