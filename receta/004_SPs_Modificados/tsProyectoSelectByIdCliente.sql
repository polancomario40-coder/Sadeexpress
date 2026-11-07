

CREATE OR ALTER PROCEDURE tsProyectoSelectByIdCliente

 @idCliente int 

as

 select idProyecto, Proyecto, idCliente, Referencia, HorasEstimadas, TarifaHoras, idMoneda

 from tsProyecto

 where idCliente = idCliente 

return


GO
