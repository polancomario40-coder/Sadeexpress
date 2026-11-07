
CREATE OR ALTER PROCEDURE cxpGuardarDocItem

 @iddocumentoItem uniqueidentifier,

 @idDocumento int,

 @idProducto varchar(30),

 @descripcion varchar(500),

 @Cantidad float, 

 @idUnidad varchar(16),

 @Costo decimal(19,2),

 @IdCuenta varchar(16),

 @Itbis decimal(19,2),

 @descuento decimal(5,2),

 @TipoItem char(1)

as

 insert into cxpDocumentoItems 

  (idDocumentoItem, idDocumento, idProducto, Descripcion, Cantidad, IdUnidad,

   Costo, Idcuenta, Itbis, Descuento, TipoItem)

values

  (@idDocumentoItem,@idDocumento, @idProducto, @Descripcion, @Cantidad, @IdUnidad,

   @Costo, @Idcuenta, @Itbis, @Descuento, @TipoItem)

return @@ERROR




GO
