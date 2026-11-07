


CREATE OR ALTER PROCEDURE cxpBuscarCheque

 @idCta int,

 @num int

as

select 	h.*,

	--s.Nombre,

	DescStatus = case h.Status 

	  when 'P' then 'No impreso'

	  when 'T' then 'En transito'

	  when '$' then 'Pagado en fecha: ' + convert(varchar(14), h.FechaStatus,103)

	  when 'C' then 'Cancelado en fecha: ' + convert(varchar(14), h.FechaStatus,103)

	  else 'Error'

	end

from cxpDocumentos h join cxpSuplidores s 

  on h.idSuplidor = s.idSuplidor

where 	h.idTrans = 20 

	and h.idCuentaBanco = @idCta

	and h.Referencia = convert(varchar(20), @Num)

return @@ERROr






GO
