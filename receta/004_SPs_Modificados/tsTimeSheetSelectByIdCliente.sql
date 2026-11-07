

CREATE OR ALTER PROCEDURE tsTimeSheetSelectByIdCliente

 @idCliente int,

 @desde datetime,

 @Hasta datetime 

as

 select idTimeSheet, TimeSheet, FechaRegistro, idCliente, idConsultor, idTimeSheetTipo, Status, Referencia

 from tsTimeSheet

 where idCliente = @idCliente and FechaRegistro between @desde and @hasta 

return 


GO
