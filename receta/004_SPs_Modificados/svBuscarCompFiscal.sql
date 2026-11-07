CREATE OR ALTER PROCEDURE svBuscarCompFiscal

 @NCF varchar(19),

 @idFactura uniqueidentifier output

as

 select top 1 @idFactura = idFactura

 from factura

 where CompFiscal = @NCF



return @@ROWCOUNT
GO
