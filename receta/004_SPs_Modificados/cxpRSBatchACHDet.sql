CREATE OR ALTER PROCEDURE cxpRSBatchACHDet

 @idBatchACH uniqueidentifier

as

 select * from cxpBatchACHDet

 where idBatchACH = @idBatchACH

return 0 
GO
