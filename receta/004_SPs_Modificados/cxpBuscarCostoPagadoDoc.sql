



CREATE OR ALTER PROCEDURE cxpBuscarCostoPagadoDoc

 @docxpagar int,

 @valor decimal(19,2)

as



select 

	co.idCentroCosto,

	co.CentroCosto,

	co.idPartida, 

	(co.Gasto / d2.Total) * @valor as CostoPagado

from cxpDocumentos d2 join costCostoDocumento co on d2.Guiddocumento = co.iddocumento 

where d2.iddocumento = @docxpagar 	  

return @@ERROR 
GO
