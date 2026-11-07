
------------ final de:cxpBuscarFechaPago ------------



------------ inicio de:cxpBuscarSolicitud ------------





CREATE OR ALTER PROCEDURE cxpBuscarSolicitud

 @idSolicitud int

as

declare @TT_CHEQUE int set @TT_CHEQUE = 20

declare @TT_ACH int set @TT_ACH = 29

select 	s.*,

	case s.Status 

	  when 'A' then 'Aprobada'

	  when '1' then 'No revisada'

	  when '3' then 'Primera Aprob.'

	  when '4' then 'Revisada'

	  when 'P' then 'Pagada: #' + (select top 1 isnull(referencia,'') from cxpDocumentos

					 where 	idTrans = case s.tipoSolicitud when 1 then @TT_CHEQUE else @TT_ACH end 

						and TipoDocOrigen = 'S' 

						and DocOrigen = @idSolicitud 

						and Status <> 'C')

	  when 'C' then 'Anulada'

	end as DescrStatus, 

	e.Nombre,

	e.Telefono1,

	e.Telefono2,

	e.RNC,	

	e.Direccion,

	b2.Nombre as CuentaTransfer,

	TotalNeto = s.Total - dbo.cxpRetencionXSolicitud(s.idSolicitud)

from cxpSolicitudes s left join cxpSuplidores e

  on s.idSuplidor = e.idSuplidor 

left join cxpBancos b2 on idCuentaBancoDestino = b2.idCuentaBanco 

where s.idSolicitud = @idSolicitud

return 0




GO
