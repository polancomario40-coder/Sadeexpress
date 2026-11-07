
CREATE OR ALTER PROCEDURE cxpBuscarImpsDoc

 @idDocumento int

as

select 	di.TipoImpuesto,

	i.Descripcion,

	i.Porcentaje,

	(i.Porcentaje / 100) * (d.Valor - d.MontoDescuento) as MontoImpuesto,

	i.idCuenta

from cxpDocumentos d join cxpDocImpuestos di 

  on d.idDocumento = di.idDocumento

  join ocTiposImpuestos i on di.TipoImpuesto = i.TipoImpuesto

where d.idDocumento = @idDocumento




GO
