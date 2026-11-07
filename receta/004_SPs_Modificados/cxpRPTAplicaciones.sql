CREATE OR ALTER PROCEDURE cxpRPTAplicaciones

  @desde datetime, @hasta datetime

as

--set @desde = '10/01/2009'

--set @hasta = '10/31/2009'



select h.idDocumento,

	   h.Nombre as Proveedor,

	   h.Fecha as FechaFact, 

	   h.Referencia as Factura ,

	   h.Total as TotalFact, 

	   tt.Abrev as Tipo, 

	   ck.Referencia as Cheque,

	   ck.Fecha as FechaCKS,

	   ck.Total as TotalCk,

	   d.Valor as Aplicado

from cxpDocumentos h join cxpDocumentosDtl d on h.idDocumento = d.idDocXPagar

join cxpDocumentos ck on d.idDocumento = ck.idDocumento 

join tipostrans tt on ck.idTrans = tt.idTrans and tt.sistema = 'CXP'

where h.idTrans = 1 and ck.fecha between @desde and @hasta 

order by ck.Fecha, h.Nombre, h.Referencia

return 
GO
