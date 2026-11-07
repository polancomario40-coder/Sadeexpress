

CREATE OR ALTER PROCEDURE [dbo].[cxcRSNotasGestionCobros]

 @idNota uniqueidentifier

as

 select * from cxcNotasGestionCobros

 where idNota = @idNota

return 0




GO
