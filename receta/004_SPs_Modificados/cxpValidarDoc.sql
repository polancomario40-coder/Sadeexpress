
CREATE OR ALTER PROCEDURE cxpValidarDoc

 @idTr int,

 @Ref varchar(20),

 @idSup int,

 @idDoc int,

 @OtroDoc int output

as

 select top 1 @OtroDoc = idDocumento

   from cxpDocumentos 

   where idTrans = @idTr 

	 and Referencia = @Ref 

	 and idSuplidor = @idSup

	 and idDocumento <> @idDoc

if @@ROWCOUNT < 1 

  set @OtroDoc = -1

return 0




GO
