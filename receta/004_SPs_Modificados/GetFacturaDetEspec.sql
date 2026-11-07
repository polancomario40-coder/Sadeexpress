CREATE OR ALTER PROCEDURE GetFacturaDetEspec(@idFacturaDet uniqueidentifier) as



  Select

    Especificacion,

    FechaEspec

  from

    FacturaDetEspec

  Where

    idFacturaDet = @idFacturaDet


GO
