
CREATE OR ALTER PROCEDURE cxpMovPagoAuxiliar

  @IdDoc int

as

declare @Err int,

	    @nid INT,

	    @idTr INT



select @idTr = convert(INT, valor)

from defaults

where Clave = 'BCO_TR_PAGOACH'	  	



if @idTr is null  

  set @idTr = 29 



begin transaction 

if exists (select 1 from bcoDocumentos 

	   where TipoDocOrigen = 'ACH'

		 and DocOrigen = @idDoc)

begin

  delete from bcoDocumentos 

	   where TipoDocOrigen = 'ACH'

		 and DocOrigen = @idDoc

end

insert into bcoDocumentos (IdTrans, Referencia, Status, Fecha, 

                           FechaStatus, idCuentaBanco, TipoDocOrigen, 

                           DocOrigen, Valor, DebCre, Concepto, GUIDDocumento,

						   idMoneda, Tasa, Contabilizar ) 

select	@idTr as IdTrans,

		t.Referencia,

		case t.Status when 'P' then 'T' else t.status end,

		t.Fecha, 

		t.FechaStatus,

		t.idCuentaBanco,

		'ACH',

		t.idDocumento,

		t.TotalNeto,

		2,

		substring(e.Nombre + ' - ' + isnull(t.Concepto,''),1,500) as Concepto,

  		GUIDDocumento,

		t.idMoneda,

		t.Tasa,

	    0

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



commit transaction

return 0


GO
