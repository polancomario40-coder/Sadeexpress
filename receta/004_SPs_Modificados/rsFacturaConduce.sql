
CREATE OR ALTER PROCEDURE rsFacturaConduce(@idFactura uniqueidentifier) AS



  Select * From facturaconduce where idfactura = @idFactura


GO
