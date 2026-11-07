CREATE OR ALTER PROCEDURE cxpBuscarDocXNCF

 @RNC varchar(20),

 @NCF varchar(20),

 @idDocumento int 

as

 select top 1 idDocumento, Concepto, Fecha, Total, Referencia 

 from cxpDocumentos 

 where idDocumento <> @idDocumento

       and idTrans = 1

       and replace(RNC,'-','') = replace(@RNC,'-','')

       and CompFiscal = @NCF

return 


GO
