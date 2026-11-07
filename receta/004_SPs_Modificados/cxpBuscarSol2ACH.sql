

CREATE OR ALTER PROCEDURE cxpBuscarSol2ACH 

 @numero int

as

select 	s.*,	

		e.Nombre,

		e.Telefono1,

		e.Telefono2,

		e.RNC,	

		e.Direccion,

	    e.email, 

		'CC' as CuentaTipo,

	    'CC' as CuentaOrigenTipo, 

		b2.Nombre as CuentaTransfer,

		TotalNeto = s.Total - dbo.cxpRetencionXSolicitud(s.idSolicitud),

	    b.NumCuenta as CuentaOrigen ,

		b.BancoCodigo as BancoOrigen

from cxpSolicitudes s left join cxpSuplidores e

  on s.idSuplidor = e.idSuplidor 

  join cxpBancos b on s.idCuentaBanco = b.idCuentaBanco 

left join cxpBancos b2 on idCuentaBancoDestino = b2.idCuentaBanco 

where s.Numero = @numero 

return 0


GO
