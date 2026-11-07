
CREATE OR ALTER PROCEDURE cxpBuscarChkDtl 

 @idDoc int

as

  select d.*,

	 da.Fecha as FechaDoc,

	 da.Total,

	 da.Referencia,

         tt.Abrev,

	 case da.BienesServicio when 1 then 'Bienes' else 'Servicios profesionales' end as TipoFactura,

	 dr.Retencion,

	 dr.Porcentaje,

	 (dr.Porcentaje / 100.00) * d.Valor as Retenido 

  from cxpDocumentosDtl d join cxpDocumentos da

   on d.idDocXPagar = da.idDocumento 

   left join TiposTrans tt on da.idTrans = tt.idTrans and tt.Sistema = 'CXP'

   left join cxpDocRetencion dr on da.idDocumento = dr.idDocumento

  where d.idDocumento = @idDoc

return @@ERROR




GO
