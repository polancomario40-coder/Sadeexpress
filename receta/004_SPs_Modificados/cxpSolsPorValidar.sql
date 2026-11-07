
------------ final de:cxpRSSolicitudRet ------------



------------ inicio de:cxpSolsPorValidar ------------





CREATE OR ALTER PROCEDURE cxpSolsPorValidar

 @st char(1)

as

 select s.idSolicitud,

	s.Numero,

	s.Fecha,

	s.Usuario,

	s.Total,

	e.Nombre,

 	s.Concepto,

	s.status,

	case s.TipoSolicitud 

		when 1 then 'Cheque'

		when 2 then 'Pago ACH'

		when 3 then 'Transferencia'

	end as Tipo,

	b.Nombre as CtaBanco

 from cxpSolicitudes s join cxpSuplidores e

  on s.idSuplidor = e.idSuplidor

  join cxpBancos b on s.idCuentaBanco = b.idCuentaBanco

 where s.Status = @st

 order by s.Fecha, s.Numero

return 0




GO
