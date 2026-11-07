CREATE OR ALTER PROCEDURE svMarcarFacturaCobrada

  @idfactura uniqueidentifier

as

 update factura set Cobrada = 1 where idFactura = @idFactura

return


GO
