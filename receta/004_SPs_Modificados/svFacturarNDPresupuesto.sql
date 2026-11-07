CREATE OR ALTER PROCEDURE svFacturarNDPresupuesto

 @idCotizacion uniqueidentifier,

 @Usuario varchar(30),

 @idFactura uniqueidentifier output

as

declare @err int

declare @Fecha Datetime



Set @Fecha =(Select Convert(DateTime,Round(Convert(Float,GetDate()),0,1)))



begin tran



exec @err = svGenFacturaNDPresupuesto @idcotizacion, @usuario, @idfactura output



if (@err <> 0 or @idFactura is null)

begin

  rollback tran

  return -1

end



update cxcdet

set idcxcdebito = @idFactura, fecha = @fecha 

where idcxcdebito = @idcotizacion

if @@ERROR <> 0

begin

  rollback tran

  return -2

end



declare @nota varchar(100), @ncf varchar(20)

select @nota = '** FACTURADO: FACT. NUMERO ' + Factura, @ncf = CompFiscal

from factura

where idFactura = @idFactura



update cxc

set cancelado = 1, fechacancelado = @fecha, Concepto = @nota, Compfiscal = @ncf

where idcxc = @idcotizacion

if @@ERROR <> 0

begin

  rollback tran

  return -3

end



declare @st_facturada varchar(16)



select @st_facturada = convert(varchar(16), valor)

from defaults 

where clave = 'COT_FACTURADA'



if @st_facturada is not null

begin

  update Cotizacion

  set idCotizacionStatus = @ST_FACTURADA

  where idcotizacion = @idcotizacion



  if @@ERROR <> 0

  begin

    rollback tran

    return -4

  end

end



commit tran

return 0
GO
