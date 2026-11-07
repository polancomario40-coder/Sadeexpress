
CREATE OR ALTER PROCEDURE cxpEstadoCuentaVencidos

  @idEnt int,

  @final datetime,

  @venc bit = 0

as

declare @estado table (

 LineaNo int not null identity,

 Tipo varchar(10),

 idTrans int,

 IdDocumento int,

 Fecha datetime,

 Referencia varchar(20),

 Status varchar(20), 

 Total decimal(19,2),

 Pagado decimal(19,2),

 Dias int 

)

insert into @estado

(Tipo, IdTrans, IdDocumento, Fecha, Referencia, Status, Total, Pagado, Dias)

select 	tt.Abrev,

	t.idTrans,

	t.idDocumento,

	t.Fecha,

	t.Referencia,

	Status = case 

		  when (t.Status = 'C' and t.FechaStatus <= @final) then '**CANCELADO**'

		  else ''

	end, 

	case 

	  when (t.Status <> 'C' or t.FechaStatus > @final) then t.Total

	  else 0.00

	end as Total,

	Pagado = isnull((select sum(d.Valor) from cxpDocumentosDtl d

			   join cxpDocumentos s on d.idDocumento = s.idDocumento

			   where d.idDocXPagar = t.idDocumento 

				 and s.Fecha <= @final

				 and s.Status <> 'C'

				 and s.MostrarEnCXP = 1),$0),

	Dias = (datediff(day, t.Fecha, getdate()))

 from cxpDocumentos t 

  join TiposTrans tt on t.idTrans = tt.IdTrans and tt.Sistema = 'CXP'

  join cxpSuplidores s on t.idSuplidor = s.idSuplidor 

  where t.idSuplidor = @idEnt 	

	and t.Fecha <= @final  

	and tt.DebCre = 2

	and (@venc = 0 or (datediff(day, t.Fecha, getdate()) > s.DiasCredito))

	and t.MostrarEnCXP = 1 

	and isnull((select sum(d.Valor) from cxpDocumentosDtl d

			   join cxpDocumentos s on d.idDocumento = s.idDocumento

			   where d.idDocXPagar = t.idDocumento 

				 and s.Fecha <= @final

				 and s.Status <> 'C'

				 and s.MostrarEnCXP = 1),$0) <> t.Total

--order by t.Fecha, t.idDocumento

select 	e.*, 

	Balance = (isnull(Total,0.00) - Pagado) 

from @estado e 

order by Fecha, idDocumento

return 0




GO
