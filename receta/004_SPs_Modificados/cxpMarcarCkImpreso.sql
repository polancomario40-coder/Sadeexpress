
CREATE OR ALTER PROCEDURE cxpMarcarCkImpreso

 @idDoc int,

 @Fec datetime

as

 declare @st char(1),

	 @rc int

 select @st = Status

  from cxpDocumentos

  where idDocumento = @idDoc

 if @st = 'P' 

 begin

  EXEC @RC = cxpGuardarStatusDoc @idDoc, 'T', @Fec

 end

return isnull(@rc,0)




GO
