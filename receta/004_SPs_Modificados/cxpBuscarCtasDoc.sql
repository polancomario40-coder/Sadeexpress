



CREATE OR ALTER PROCEDURE cxpBuscarCtasDoc 

 @idDocumento int

as

 select d.idCuenta,

	d.idAuxiliar, 

	c.Descripcion,

	d.DebCre,

	d.Automatica,

	d.idCentroCosto,

	d.CentroCosto,

	d.Idpartida,

	case d.debcre

   		when 1 then valor

		else 0.00

	end as Debito,

	case d.debcre 

		when 2 then valor

		else 0.00

	end as Credito

 from cxpDocCuentas d left join cgCatalogoCuentas c

  on d.idCuenta = c.idCuenta

 where d.idDocumento = @idDocumento

return @@ERROR






GO
