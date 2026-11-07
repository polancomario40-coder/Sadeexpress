CREATE OR ALTER PROCEDURE [dbo].[svOrdCompEnt2ProMov](@idOrdCompEnt uniqueidentifier) AS



--declare @idOrdCompEnt uniqueidentifier

--set @idOrdCompEnt = '3C6AD17D-4C48-4EFA-9F99-C1B4975A04D6'



Declare 

  @TipoMov int,

  @Secuencia Varchar(16),

  @RecCount int,

  @Error int,

  @CCVentas uniqueidentifier,

  @CCCVenta varchar(16)





Set @CCCVenta = convert(varchar(16),(Select Valor from Defaults where clave = 'CENTROCOSTOVENTA'))

Set @CCVentas = (Select top 1 idCentroCosto from centrocosto where centrocosto = @CCCVenta)



Set @Error = 0

Set @TipoMov = null



begin tran

  

Set @TipoMov = convert(varchar,(Select Valor from Defaults where clave = 'Def_Tipo_MovInv'))



select @Secuencia = ProMov

from promov

where idProMov = @idOrdCompEnt



if @Secuencia is null

  Exec spGetNextCounterSTR 'MovimientoAlm',@OutPut = @Secuencia OutPut

else begin

  delete from promovdet

  where idPromov = @idOrdCompEnt



  delete from promov

  where idProMov = @idOrdCompEnt

end



Set @Error = @@Error

if (@Error <> 0) or (@TipoMov is null)  begin

  rollback tran

--  Return -1

end



--if not exists (select top 1 1 from promov where idpromov = @idFactura)

--begin



insert into promov (

  idProMov, 

  idProMovTipo, 

  ProMov, 

  Fecha, 

  Salida, 

  idCompania, 

  Referencia, 

  Usuario, 

  idOrdComp, 

  OrdComp, 

  EntregadoPor, 

  RecibidoPor, 

  idAlmacen, 

  Concepto, 

  Nota, 

  idConduce, 

  Conduce, 

  Posteado, 

  PosteadoFecha, 

  idOrdenTrab, 

  OrdenTrab, 

  idReferencia, 

  idAlmacenDestino)

Select 

  e.idOrdCompEnt, 

  @TipoMov, 

  @Secuencia, 

  e.Fecha, 

  1, 

  NULL, 

  e.OrdCompEnt, 

  e.Usuario, 

  Null, 

  Null, 

  e.Usuario, 

  Null, 

  e.idAlmacen,

  'Salida Generada por Despacho Alm.',

  Convert(varchar(30), oc.idCliente),

  Null,

  Null,

  0,

  Null,

  Null,

  Null,

  e.idOrdCompEnt,

  Null

From 

  OrdCompEnt e

  join OrdComp oc on e.idOrdComp = oc.idOrdComp  

Where

  idOrdCompEnt = @idOrdCompEnt 

  and e.Cancelado = 0



Set @Error = @@Error



if (@Error <> 0)   begin

  rollback tran

--  Return -2

end





Insert into promovdet(

idProMovDet, 

idProMov, 

ProMovDet, 

idProducto, 

Producto, 

Cantidad, 

Costo, 

idUnidad, 

Posteado, 

XCosto, 

XCantidad, 

Linea, 

CC, 

Referencia, 

idCentroCosto, 

idPartida)

Select

  fd.idOrdCompEntDet,

  fd.idOrdCompEnt,

  substring(fd.Producto,1,60),

  fd.idProducto,

  fd.Producto,

  fd.Despachado,

  dbo.InvProdCosto(fd.idProducto, f.Fecha, f.idAlmacen) * fd.Despachado,

  od.idUnidad,

  0,

  Null,

  Null,

  fd.Linea,

  Null,

  @CCCVenta,

  @CCVentas, --CentroCosto

  Null  -- Partida

from

  OrdCompEntDet fd

  join OrdCompEnt f on fd.idOrdCompEnt = f.idOrdCompEnt

  join OrdCompDet od on fd.idOrdCompDet = od.idOrdCompDet

Where

  fd.idOrdCompEnt = @idOrdCompEnt

  and f.Cancelado = 0



--end



Set @Error = @@Error



if (@Error <> 0)  begin

  rollback tran

--  Return -3

end





Commit Tran






GO
