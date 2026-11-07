
CREATE OR ALTER PROCEDURE cxpCRNoDistribAll 

  @final datetime

as

declare @estado table (

 LineaNo int not null identity,

 idSuplidor int,

 Suplidor varchar(100), 

 Tipo varchar(10),

 idTrans int,

 IdDocumento int,

 Fecha datetime,

 Referencia varchar(20),

 Status varchar(20), 

 Total decimal(19,2),

 Aplicado decimal(19,2)

)

insert into @estado

(idSuplidor, Suplidor, Tipo, IdTrans, IdDocumento, Fecha, Referencia, Total, Aplicado)

select 	h.idSuplidor,

	e.Nombre as Suplidor,

	tt.Abrev,

	h.idTrans,

	h.idDocumento,

	h.Fecha,

	h.Referencia,

/*	Status = case 

		  when (t.Status = 'C' and t.FechaStatus <= @final) then '**CANCELADO**'

		  else ''

	end, */

	h.Total,

	isnull(sum(d.Valor),0) as Aplicado

from cxpDocumentos h join TiposTrans tt

  on h.idTrans = tt.idTrans and tt.Sistema = 'CXP'

join cxpSuplidores e on h.idSuplidor = e.idSuplidor 

left join cxpDocumentosDtl d

  on h.idDocumento = d.idDocumento and d.Fecha <= @final   

where 	h.MostrarEnCXP = 1 

	--and h.idSuplidor = @idEnt

 	--and h.idMoneda = @idMon

	and h.Fecha <= @final

	and tt.debcre = 1

	and h.Status <> 'C'

group by h.idSuplidor, e.Nombre, tt.Abrev, h.idtrans, h.idDocumento, 

         h.Fecha, h.Referencia, h.Total

having h.Total <> isnull(sum(d.valor),0)

	

select 	e.*, 

	Pendiente = (isnull(Total,0.00) - Aplicado) 

from @estado e 

order by Suplidor, Fecha, idDocumento

return 0




GO
