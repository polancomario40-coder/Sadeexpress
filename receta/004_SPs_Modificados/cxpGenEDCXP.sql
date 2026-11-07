



CREATE OR ALTER PROCEDURE [dbo].[cxpGenEDCXP]

 @Desde datetime,

 @Hasta datetime,

 @usuario varchar(30),

 @ED varchar(16) 

as

declare @numed varchar(10) --set @numed = '11'



 select @numed = @ED --convert(varchar,valor)

 --from defaults

 --where clave = 'NUMED_CXP'



exec cgLimpiarIntermedio @NumED, @Hasta



insert into cgEDIntermedio

 (EntradaNum, Fecha, idCuenta, DebCre, Valor, Referencia, Descripcion)

select 	@numed,

       	@Hasta,

       	d.idCuenta,

       	d.DebCre,

	d.Valor,

	h.Referencia,

	SUBSTRING(s.Nombre,1,25) + '[' + SUBSTRING(h.Concepto,1,23)+']'

from 

  cxpDocumentos h 

  join cxpDocCuentas d on h.idDocumento = d.idDocumento

  join cxpsuplidores s on h.idsuplidor = s.idsuplidor

  left join TiposTrans tt on h.idTrans = tt.idTrans and tt.Sistema = 'CXP'

where h.fecha between @desde and @Hasta

	  and h.idTrans <> 20

	  and isnull(h.Status,'A') <> 'C'



 exec cgImportarEntradaDiario @numed, @Hasta, @usuario



exec

  cxpPostearCostos @Desde, @Hasta



return @@ERROR






GO
