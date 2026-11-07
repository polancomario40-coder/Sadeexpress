CREATE OR ALTER PROCEDURE [dbo].[cxpMovCKAuxiliar]

  @IdDoc int

as

declare @Err int,

	@nid int

begin transaction 

if exists (select 'T' from bcoDocumentos 

	   where TipoDocOrigen = 'CK'

		 and DocOrigen = @idDoc)

begin

  delete from bcoDocumentos 

	   where TipoDocOrigen = 'CK'

		 and DocOrigen = @idDoc

end

insert into bcoDocumentos (IdTrans, Referencia, Status, Fecha, 

                           FechaStatus, idCuentaBanco, TipoDocOrigen, 

                           DocOrigen, Valor, DebCre, Concepto, GUIDDocumento,

			   idMoneda, Tasa ) 

select 	2 as IdTrans,

	t.Referencia,

	case t.Status when 'P' then 'T' else t.status end,

	t.Fecha, 

	t.FechaStatus,

	t.idCuentaBanco,

	'CK',

	t.idDocumento,

	t.TotalNeto, 

	2,

	substring(e.Nombre + ' - ' + isnull(t.Concepto,''),1,500) as Concepto,

  	GUIDDocumento,

	t.idMoneda,

	t.Tasa 

from cxpDocumentos t join cxpSuplidores e on t.idSuplidor = e.idSuplidor 

where t.Iddocumento = @iddoc 



set @Err = @@ERROR

if @Err > 0

begin

  rollback transaction

  return @err

end

set @nid = @@IDENTITY

insert into bcoDocumentosDtl

 (idCuenta, idAuxiliar, DebCre, Valor, Automatica, GUIDDocumento)

select 	c.idCuenta,

  	c.idAuxiliar,

	c.DebCre,

	c.valor,

	isnull(c.Automatica,0) as Automatica,

	d.GUIDDocumento

from cxpDocumentos d join cxpDocCuentas c on d.idDocumento = c.idDocumento

where d.idDocumento = @iddoc



-- si el cheque ya no esta cancelado, hay que borrar la tr de CK/CAN del banco,

-- si aun esta cancelado, hay que revisar la fecha de cancelacion

declare @st char(1),

	@fecha datetime,

	@fecst datetime	

select  @st = status,

	@fecha = fecha,

	@fecst = FechaStatus

from cxpDocumentos

where idDocumento = @iddoc

if (@st <> 'C') or (@fecha = @fecst)

begin

  delete from bcoDocumentos

  where TipoDocOrigen = 'CC' and DocOrigen = @iddoc

end

else begin

  update bcoDocumentos

   set fecha = @fecst

  where TipoDocOrigen = 'CC' and DocOrigen = @iddoc

end

commit transaction

return 0








GO
