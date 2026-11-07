CREATE OR ALTER PROCEDURE [dbo].[cxpBuscarCostoDocumento](@idDocumento uniqueidentifier) AS

  Select 

    c.*,

    cc.CentroCostoDesc as CentroCostoDesc

    --cc.CentroCosto + '-' + cc.CentroCostoDesc as CentroCostoDesc

  From

    costCostoDocumento c join CentroCosto cc on c.idCentroCosto = cc.idCentroCosto

  where

    idDocumento = @idDocumento

    

return 0 
GO
