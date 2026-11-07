CREATE OR ALTER PROCEDURE cxpRSBatchACH

 @idBatchACH uniqueidentifier

as

 select * from cxpBatchACH

 where idBatchACH = @idBatchACH

return 0 
GO
