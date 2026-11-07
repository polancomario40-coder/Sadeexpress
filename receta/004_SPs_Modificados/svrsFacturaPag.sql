


CREATE OR ALTER PROCEDURE svrsFacturaPag(@idFactura uniqueidentifier) AS



  Select 

    * 

  From 

    FacturaPag 

  where 

    idfactura = @idFactura

  Order by

    Fecha








GO
