



CREATE OR ALTER PROCEDURE cxpAplicadoADoc

 @idDoc int

as

select 	t.Abrev as Tipo,

	dd.LineaNum, 

	d.Referencia, 

	d.Fecha, 

	dd.Valor 

from cxpDocumentos d join cxpDocumentosdtl dd

  on d.idDocumento = dd.idDocumento 

  left join TiposTrans t on d.idTrans = t.idTrans 

     and t.Sistema = 'CXP'

where dd.idDocXPagar = @idDoc and d.status<>'C'






GO
