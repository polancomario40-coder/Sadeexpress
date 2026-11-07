

CREATE OR ALTER PROCEDURE svrsFacturaCobro(@idFactura uniqueidentifier) AS



Select 

  *   

from 

  FacturaCobro

where 

  idFactura = @idFactura






GO
