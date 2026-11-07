
CREATE OR ALTER PROCEDURE svOrdCompEntDet(@idOrdCompEnt uniqueidentifier) AS

  Select  

    *

  from

    OrdCompEntDet

  where

    idOrdCompEnt = @idOrdCompEnt


GO
