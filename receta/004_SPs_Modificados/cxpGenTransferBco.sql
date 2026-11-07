CREATE OR ALTER PROCEDURE cxpGenTransferBco

  @IdSolicitud int,

  @idDoc int output

as

declare @Err int,

		@nid int,

		@CtaOrigen varchar(16),

		@CtaDest varchar(16),

		@AuxOrigen varchar(16),

		@AuxDest varchar(16),

		@TotalNeto decimal(19,2),

	    @GUIDDoc uniqueidentifier,

	    @Fec datetime



set @GUIDDoc = newid()		

set @fec = convert(datetime,floor(convert(float, getdate())))



declare @IdTrDB int,

		@idTrCR int



select @IdTrDB = convert(int,valor)

from defaults

where clave = 'BCO_TR_DB_TRANS'



select @IdTrCR = convert(int,valor)

from defaults

where clave = 'BCO_TR_CR_TRANS'



begin transaction 

if exists (select 1 from bcoDocumentos 

	   where TipoDocOrigen = 'SOL'

		 and DocOrigen = @idSolicitud)

begin

  delete from bcoDocumentos 

	   where TipoDocOrigen = 'SOL'

		 and DocOrigen = @idSolicitud

end

insert into bcoDocumentos (IdTrans, Referencia, Status, Fecha, 

                           FechaStatus, idCuentaBanco, TipoDocOrigen, 

                           DocOrigen, Valor, DebCre, Concepto, GUIDDocumento,

						   idMoneda, Tasa, Contabilizar) 

select 	@idTrDB,

	t.Numero,

	'$' as Status,

	@Fec, 

	@Fec,

	t.idCuentaBanco,

	'SOL',

	t.idSolicitud,

	t.Total,

	1,

	substring(t.Concepto,1,500) as Concepto,

  	@GUIDDoc,

	t.idMoneda,

	t.Tasa,

	1 as Contabilizar

from cxpSolicitudes t 

where t.IdSolicitud = @idSolicitud



set @Err = @@ERROR

if @Err > 0

begin

  rollback transaction

  return @err

end

set @nid = @@IDENTITY



select 	@CtaOrigen = b.idCuentaMayor,

		@AuxOrigen = b.idAuxiliar,

		@TotalNeto = d.Total,

		@CtaDest = b2.idCuentaMayor,

		@AuxDest = b2.idAuxiliar 

from cxpSolicitudes d join cxpBancos b on d.idCuentaBanco = b.idCuentaBanco

     join cxpBancos b2 on d.idCuentaBancoDestino = b2.idCuentaBanco

where d.idSolicitud = @idSolicitud



insert into bcoDocumentosDtl

 (idCuenta, idAuxiliar, DebCre, Valor, Automatica, GUIDDocumento)

values

 (@CtaOrigen, @AuxOrigen, 1, @TotalNeto, 1, @GUIDDoc)



set @Err = @@ERROR

if @Err > 0

begin

  rollback transaction

  return @err

end



insert into bcoDocumentosDtl

 (idCuenta, idAuxiliar, DebCre, Valor, Automatica, GUIDDocumento)

values

 (@CtaDest, @AuxDest, 2, @TotalNeto, 1, @GUIDDoc)



set @Err = @@ERROR

if @Err > 0

begin

  rollback transaction

  return @err

end



set @idDoc = @nid



---- ahora el credito de la transferencia !



set @GUIDDoc = newid()		



insert into bcoDocumentos (IdTrans, Referencia, Status, Fecha, 

                           FechaStatus, idCuentaBanco, TipoDocOrigen, 

                           DocOrigen, Valor, DebCre, Concepto, GUIDDocumento,

						   idMoneda, Tasa, Contabilizar) 

select 	@idTrCR,

	t.Numero,

	'$' as Status,

	@Fec, 

	@Fec,

	t.idCuentaBancoDestino,

	'SOL',

	t.idSolicitud,

	t.Total,

	2,

	substring(t.Concepto,1,500) as Concepto,

  	@GUIDDoc,

	t.idMoneda,

	t.Tasa ,

	1 as Contabilizar

from cxpSolicitudes t 

where t.IdSolicitud = @idSolicitud 



set @Err = @@ERROR

if @Err > 0

begin

  rollback transaction

  return @err

end

set @nid = @@IDENTITY



insert into bcoDocumentosDtl

 (idCuenta, idAuxiliar, DebCre, Valor, Automatica, GUIDDocumento)

values

 (@CtaOrigen, @AuxOrigen, 2, @TotalNeto, 1, @GUIDDoc)



set @Err = @@ERROR

if @Err > 0

begin

  rollback transaction

  return @err

end



insert into bcoDocumentosDtl

 (idCuenta, idAuxiliar, DebCre, Valor, Automatica, GUIDDocumento)

values

 (@CtaDest, @AuxDest, 1, @TotalNeto, 1, @GUIDDoc)



set @Err = @@ERROR

if @Err > 0

begin

  rollback transaction

  return @err

end  



commit transaction

return 0


GO
