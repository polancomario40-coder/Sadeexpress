

CREATE OR ALTER PROCEDURE cxpBuscarSolicitudXNumero

 @Numero int

as

select 	s.*,

	e.Nombre,

	e.Telefono1,

	e.Telefono2,

	e.RNC,	

	e.Direccion,

	b2.Nombre as CuentaTransfer,	

	TotalNeto = s.Total - dbo.cxpRetencionXSolicitud(s.idSolicitud)    

from cxpSolicitudes s join cxpSuplidores e

  on s.idSuplidor = e.idSuplidor 

  left join cxpBancos b2 on idCuentaBancoDestino = b2.idCuentaBanco 

where s.Numero = @Numero

return 0


GO
