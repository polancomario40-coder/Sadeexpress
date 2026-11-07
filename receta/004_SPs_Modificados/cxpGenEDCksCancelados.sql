


CREATE OR ALTER PROCEDURE [dbo].[cxpGenEDCksCancelados]

 @Desde datetime,

 @Hasta datetime,

 @Usuario varchar(30),

 @ED varchar(4)

as

declare @numed varchar(12) --set @numed = '09C'

declare @idTr int set @idTr = 20



 select @numed = @ED --convert(varchar,valor)

 --from defaults

 --where clave = 'NUMED_CKCAN'



exec cgLimpiarIntermedio @NumED, @Hasta



insert into cgEDIntermedio

 (EntradaNum, Fecha, idCuenta, DebCre, Valor, Referencia, Descripcion)

select 	

	@numed,

    @Hasta,

    d.idCuenta,

    case d.DebCre when 2 then 1 else 2 end as DebCre,

	d.Valor,

	tt.Abrev + '-' + convert(varchar(15), h.Referencia),

	convert(varchar(50), s.nombre)

from 

   cxpDocumentos h 

   join cxpDocCuentas d on h.idDocumento = d.idDocumento

   left join cxpsuplidores s on h.idsuplidor = s.idsuplidor

  left join TiposTrans tt on h.idTrans = tt.idTrans and tt.Sistema = 'CXP' 

where h.fecha < @desde 

	  and h.idTrans = @idTr

	  and h.Status = 'C'

	  and h.FechaStatus between @desde and @hasta



 exec cgImportarEntradaDiario @numed, @Hasta, @Usuario 

return @@ERROR






GO
