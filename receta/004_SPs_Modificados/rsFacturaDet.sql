




CREATE OR ALTER PROCEDURE rsFacturaDet(@idFactura uniqueidentifier) AS



  Select * From FacturaDet 

  Where idFactura = @idFactura

  order by linea


GO
