
CREATE OR ALTER PROCEDURE InventarioList AS





Select 

  '-1' as idInventario,

  'Todos los Inventarios' as Inventario

Union all



Select 

  idInventario, 

  Inventario

From

  Inventario

Order by

 1






GO
