



CREATE OR ALTER PROCEDURE [dbo].[cxcNotasGestionCobrosCliente](@idCliente INT)

AS

 select *

  from cxcNotasGestionCobros

 WHERE idcliente = @idCliente

 order by FechaRegistro desc




GO
