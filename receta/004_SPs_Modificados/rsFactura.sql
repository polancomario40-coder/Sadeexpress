



CREATE OR ALTER PROCEDURE [dbo].[rsFactura](@idFactura uniqueidentifier) AS



  Select * from Factura Where idFactura = @idFactura


GO
