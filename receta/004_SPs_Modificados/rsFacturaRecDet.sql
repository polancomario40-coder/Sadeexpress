







CREATE OR ALTER PROCEDURE rsFacturaRecDet(@idFactura uniqueidentifier) AS



  Select * From frFacturaDet 

  Where idfrFactura = @idFactura

  order by linea








GO
