
CREATE OR ALTER PROCEDURE cxpRepAplicaciones

 @idSup int,

 @fec datetime

as

--set @idSup = 645

--set @fec = '06/04/2005'

select 	h.idDocumento,

	h.Fecha,

	tt.Abrev + '-' + h.Referencia as Referencia,

	h.Total,

	p.Fecha as FechaPago,

	p.Referencia as Pago,

	tt2.Abrev as TipoPago,

	d.Valor as MontoPago

from cxpDocumentos h join TiposTrans tt

  on tt.Sistema = 'CXP' and h.idTrans = tt.idTrans

  left join cxpDocumentosDtl d 

  on h.idDocumento = d.idDocXPagar

  left join cxpDocumentos p on d.idDocumento = p.idDocumento

  left join TiposTrans tt2 on tt2.Sistema = 'CXP' and p.idTrans = tt2.idTrans

where 	h.idSuplidor = @idSup 

	and h.Fecha <= @fec

	and h.Status <> 'C'

	and tt.DebCre = 2 

	and isnull(p.Status,'T') <> 'C' 

	and h.Total <> isnull((select sum(docdtl.Valor) 

				from cxpDocumentos doc join cxpDocumentosDtl docdtl 

					on doc.idDocumento = docdtl.idDocumento

				where doc.Status <> 'C' 

					and docdtl.idDocXPagar = h.idDocumento),0.00)

order by h.Fecha, h.Referencia, p.Fecha, p.Referencia




GO
