
CREATE OR ALTER PROCEDURE cxpDocumentoRecPendiente

 @fecha datetime,

 @todos bit 

as

 select h.iddocumento,

	h.idSuplidor,

	h.Suplidor,

	h.Valor,

	h.idMoneda,

	m.Moneda,

	h.Concepto,

	h.Referencia,

	h.GenerarDia,

	h.Desde, 

	h.Hasta

 from cxpDocumentoRec h join moneda m on h.idmoneda = m.idMoneda

 where h.Status = 'ACTIVO'

	and @fecha between h.Desde and h.Hasta

	and (@todos = 1 or 

		(h.GenerarDia <= Day(@fecha) 

		 and not exists (select 1 from cxpdocumentorecHist

			          where iddocumento = h.iddocumento

					and Month(Fecha) = Month(@Fecha)

					and Year(Fecha) = Year(@Fecha))))

 order by h.GenerarDia

return 




GO
