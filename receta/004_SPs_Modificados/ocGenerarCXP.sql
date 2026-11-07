





------------ final de:ocDiarioCompras ------------



------------ inicio de:ocGenerarCXP ------------



CREATE OR ALTER PROCEDURE [dbo].[ocGenerarCXP]

 @idOrd int,

 @fec datetime

as

declare @idEnt int,	

	@total decimal(19,2),

	@itbis decimal(19,2),

	@ctaitbis varchar(16),

	@ctaRet varchar(16),

	@MtoRet decimal(19,2),

	@CtaProv varchar(16),

	@idTr int,

	@Err int, 

	@St char(1), 

	@Porc decimal(8,4)

set @idTr = 14

/*

select 	@idEnt = o.idSuplidor,

	@total = sum(d.costo * d.Cantidad),

	@itbis = o.itbis,

	@St = o.Status 

from ocOrdenes o join ocDetalleOrden d

  on o.idOrden = d.idOrden

where o.idOrden = @idOrd

group by o.idSuplidor, o.itbis, o.Status 

begin tran 

if @st = 'R' 

  delete from TransaccionCXP 

	where 	idTrans = @idTr 

		and idDocumento = @idOrd 

exec cxpBuscarRetencion @idEnt, @ctaRet output, @Porc output

if isnull(@Porc,0) > 0

  set @MtoRet = (@Total + @itbis) * (@Porc / 100)

else

  set @MtoRet = 0.00

insert into Transaccioncxp (idTrans, IdDocumento, idOrden, Fecha, Relacion, idEntidad, Total)

values (@idTr, @idOrd, 1, @Fec, @idOrd, @idEnt, (@total + @itbis) - @MtoRet)

if @@ERROR > 0 

begin

  rollback tran

  return 1

end

insert into detalleTranscxp (idTrans, idDocumento, idOrden, idCuenta, Debcre, Valor)

select 	@idTr,

	@idOrd,

	1, 

	d.idCuenta,

	1 as DebCre,

	sum(d.Costo * d.Cantidad)

from ocDetalleOrden d

where d.idOrden = @idOrd

group by d.idCuenta

if @@ERROR > 0 

begin

  rollback tran

  return 1

end

if @itbis > 0

begin

  insert into detalleTranscxp (idTrans, idDocumento, idOrden, idCuenta, Debcre, Valor)

    values (@idTr, @idOrd, 1, @CtaITBIS, 1, @itbis)

  if @@ERROR > 0 

  begin

    rollback tran

    return 1

  end

end

if @MtoRet > 0 

begin

  insert into detalleTranscxp (idTrans, idDocumento, idOrden, idCuenta, Debcre, Valor)

    values (@idTr, @idOrd, 1, @CtaRet, 2, @MtoRet)

  if @@ERROR > 0 

  begin

    rollback tran

    return 1

  end

end

insert into detalleTranscxp (idTrans, idDocumento, idOrden, idCuenta, Debcre, Valor)

  values (@idTr, @idOrd, 1, @CtaProv, 2, (@Total + @itbis) - isnull(@MtoRet,0.00))

if @@ERROR > 0 

begin

  rollback tran

  return 1

end

update ocOrdenes

  set status = 'R'

where idOrden = @idOrd

if @@ERROR > 0 

begin

  rollback tran

  return 1

end

commit tran 

*/

return 0








GO
