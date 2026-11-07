CREATE OR ALTER PROCEDURE svOrdCompSetStatus(@idOrdCompEnt uniqueidentifier, @status varchar(16)) as

if @Status = 'ENVIADO' 

begin

  Update 

    OrdCompEnt

  Set 

    Status = @Status,

    FechaEnviado = getdate()

  where

    idOrdCompEnt = @idOrdCompEnt

end else begin

  Update 

    OrdCompEnt

  Set 

    Status = @Status,

    fechacompletado = getdate()

  where

    idOrdCompEnt = @idOrdCompEnt

end
GO
