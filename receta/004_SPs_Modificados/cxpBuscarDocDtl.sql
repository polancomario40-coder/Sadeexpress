



CREATE OR ALTER PROCEDURE cxpBuscarDocDtl 

 @idDoc int

as

  select d.*,

	 da.Fecha as FechaDoc,

	 da.Total,

	 da.Referencia,

     tt.Abrev,

	 da.idMoneda,

	 da.idCuenta 

  from cxpDocumentosDtl d join cxpDocumentos da

  on d.idDocXPagar = da.idDocumento 

  left join TiposTrans tt on da.idTrans = tt.idTrans and tt.Sistema = 'CXP'

  where d.idDocumento = @idDoc

return @@ERROR








GO
