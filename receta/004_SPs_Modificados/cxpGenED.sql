

CREATE OR ALTER PROCEDURE cxpGenED

 @Desde datetime,

 @Hasta datetime,

 @NumED varchar(3),

 @idTr int,

 @usuario varchar(30)

as

--declare @numed varchar(3) set @numed = 'CP'

exec cgLimpiarIntermedio @NumED, @Hasta



insert into cgEDIntermedio

 (EntradaNum, Fecha, idCuenta, idAuxiliar, DebCre, Valor, Referencia, Descripcion)

select 	@numed,

       	@Hasta,

       	d.idCuenta,

		d.idAuxiliar,

      	d.DebCre,

		d.Valor,

		tt.Abrev + '-' + convert(varchar(15), h.Referencia),

		convert(varchar(50), s.nombre)

from 

   cxpDocumentos h 

   join cxpDocCuentas d on h.idDocumento = d.idDocumento

   left join cxpsuplidores s on h.idsuplidor = s.idsuplidor

   left join TiposTrans tt on h.idTrans = tt.idTrans and tt.Sistema = 'CXP' 

where h.fecha between @desde and @Hasta

	  and h.idTrans = @idTr

	  and ((isnull(h.Status,'A') <> 'C') or ((isnull(h.Status,'A') = 'C') and (h.fechastatus > @hasta)))

       

exec cgImportarEntradaDiario @numed, @Hasta, @Usuario



return @@ERROR




GO
