
CREATE OR ALTER PROCEDURE cxpEstadoCuenta 

  @idEnt int,

  @final datetime

as

declare @estado table (

 LineaNo int not null identity,

 Tipo varchar(10),

 idTrans int,

 IdDocumento int,

 Fecha datetime,

 Referencia varchar(20),

 Status varchar(20), 

 Debito decimal(19,2),

 Credito decimal(19,2)

)

insert into @estado

(Tipo, IdTrans, IdDocumento, Fecha, Referencia, Status, Debito, Credito)

select 	tt.Abrev,

	t.idTrans,

	t.idDocumento,

	t.Fecha,

	t.Referencia,

	Status = case 

		  when (t.Status = 'C' and t.FechaStatus <= @final) then '**CANCELADO**'

		  else ''

	end, 

	case tt.DebCre 

	  when 2 then 

		case 

		  when (t.Status <> 'C' or t.FechaStatus > @final) then t.Total

		  else 0.00

		end

	  else 0.00

	end as Debito,

	case tt.DebCre 

	  when 1 then 

		case 

		  when (t.Status <> 'C' or t.FechaStatus > @final) then t.Total

		  else 0.00

		end

	  else 0.00

	end as Credito

 from cxpDocumentos t 

  join TiposTrans tt on t.idTrans = tt.IdTrans and tt.Sistema = 'CXP'

  where t.idSuplidor = @idEnt 	

	and t.Fecha <= @final  

	and t.MostrarEnCXP = 1

order by t.Fecha, t.idDocumento

select 	e.*,

	Balance = isnull((select sum(Debito - Credito) from @estado

			 where LineaNo <= e.LineaNo),0.00)

from @estado e 

return 0




GO
