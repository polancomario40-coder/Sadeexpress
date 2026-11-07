
CREATE OR ALTER PROCEDURE cxpSolicitudesPendientes

as

select	s.Numero,

		s.idSolicitud,

		s.Fecha,	

		s.Total,

		s.Concepto,

		case s.tipoSolicitud when 3 then b2.Nombre 

							 else e.Nombre 

		end as Nombre,

		s.TipoSolicitud,

		case s.TipoSolicitud 

			when 1 then 'Cheque'

			when 2 then 'ACH'

			when 3 then 'Transferencia'

			else 'Cheque'

		end as Tipo, 

		s.idCuentaBanco,		

		b.Nombre as CuentaBanco 

from cxpSolicitudes s left join cxpSuplidores e

  on s.idSuplidor = e.idSuplidor

  left join cxpBancos b on s.idCuentaBanco = b.idCuentaBanco

  left join cxpBancos b2 on s.idCuentaBancoDestino = b2.idCuentaBanco 

where s.Status = 'A'

order by s.Fecha desc

return 0


GO
