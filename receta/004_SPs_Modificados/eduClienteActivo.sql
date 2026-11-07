
------------ final de:cxpTotalItbisDoc ------------



------------ inicio de:eduClienteActivo ------------





CREATE OR ALTER PROCEDURE [dbo].[eduClienteActivo](@idCliente int) AS

Select  

  c.*,

  cc.Cliente as Familia

From

  Cliente c 

  left join eduEstudiante e ON e.idCliente = c.idCliente

  left join Cliente cc on c.idClienteParent = cc.idCliente

where

  c.idCliente = @idCliente




GO
