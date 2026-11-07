------------ inicio de:cxpChequesXImprimir ------------



CREATE OR ALTER PROCEDURE cxpChequesXImprimir

 @cta int

as

select  d.idDocumento,

	d.Referencia as Numero,

	e.Nombre,

	d.Fecha,

	d.Total

from cxpDocumentos d join cxpSuplidores e

  on d.idSuplidor = e.idSuplidor

where d.idTrans = 20 

	  and d.Status = 'P'

	  and (@cta = 0 or d.idCuentaBanco = @cta)

order by d.Referencia

return 0




GO
