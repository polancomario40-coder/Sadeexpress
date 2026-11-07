
------------ final de:eduListCursoCliente ------------



------------ inicio de:eduRsCliente ------------





CREATE OR ALTER PROCEDURE [dbo].[eduRsCliente](@idCliente int) AS

  Select *

  From Cliente c

       join eduEstudiante e on c.idCliente = e.idCliente

  where c.idCliente = @idCliente




GO
