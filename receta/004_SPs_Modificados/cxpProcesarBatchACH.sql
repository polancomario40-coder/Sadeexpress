CREATE OR ALTER PROCEDURE cxpProcesarBatchACH

 @idBatchACH uniqueidentifier

as

 update cxpBatchACH set status = 'PROCESADO', fechastatus = getdate()

 where idBatchACH = @idBatchACH

return @@ERROR 
GO
