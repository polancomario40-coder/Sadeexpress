





CREATE PROCEDURE [dbo].[svDevolucion2ProMov]

  @idDevolucion uniqueidentifier,

  @idPromov uniqueidentifier output

AS



Declare 

  @TipoMov int,

  @Secuencia Varchar(16),

  @RecCount int,

  @Error int,

  @id uniqueidentifier



Set @Error = 0



--begin tran



Set @TipoMov = convert(varchar,(Select Valor from Defaults where clave = 'TipoMovInvDevolu'))



select @Secuencia = ProMov from promov where idProMov = @idDevolucion 



if @Secuencia is null

  exec spGetNextCounterSTR 'MovimientoAlm',@OutPut = @Secuencia OutPut



else begin



  delete from promovdet

  where idPromov = @idDevolucion

  delete from promov

  where idProMov = @idDevolucion

end

Set @Error = @@Error

if (@Error <> 0) or (@TipoMov is null)  begin

  --rollback tran

  Return -1

end



Set @id = newid()



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

  idAlmacenDestino,

  devolucion)

Select 

  @id, 

  @TipoMov,  

  @Secuencia, 

  d.Fecha, 

  0,  -- Entrada por devoulion

  NULL, 

  d.Devolucion, 

  d.Usuario, 

  Null, 

  Null, 

  d.Usuario, 

  Null, 

  f.idAlmacen,

  'Entra Generada por Devolucion',

  'Cod.Cliente :' + Convert(varchar(30),d.idCliente) +' \ Nombre :'+ Convert(varchar(40),d.Cliente) +'\ Factura :'+ Convert(varchar(30),d.factura),

  Null,

  Null,

  0,

  Null,

  Null,

  Null,

  d.idDevolucion,

  Null,

  1

From 

  Devolucion d

  join Factura f on d.idFactura = f.idFactura   

Where

  idDevolucion = @idDevolucion 

  and d.Cancelado = 0

Set @Error = @@Error

if (@Error <> 0)   begin

  --rollback tran

  Return -2

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

idPartida,

idDevolucionDet)

Select

  newid(),

 @id,

  SUBSTRING(dd.Producto, 1, 60),

  dd.idProducto,

  dd.Producto,

  dd.DevCantidad,

  CASE 

    WHEN 

      isnull((select pd.costo

            from promov p join promovdet pd on p.idpromov = pd.idpromov

            where idProMovDet = fd.idFacturaDet and p.posteado = 1),0) = 0 

    THEN

      dbo.InvProdCosto(dd.idProducto, d.Fecha, f.idAlmacen) * dd.DevCantidad

    ELSE

      (((select pd.costo

            from promov p join promovdet pd on p.idpromov = pd.idpromov

            where idProMovDet = fd.idFacturaDet and p.posteado = 1) / fd.Cantidad) * dd.DevCantidad)

  END,

  fd.idUnidad,

  0,

  Null,

  Null,

  dd.Linea,

  Null,

  NULL,

  Null,

  Null,    -- Partida

  dd.idDevolucionDet

from

  Devolucion d

  join DevolucionDet dd on d.idDevolucion = dd.idDevolucion

  join FacturaDet fd  on fd.idFacturaDet = dd.idFacturaDet

  join Factura f on fd.idFactura = f.idFactura

Where

  d.idDevolucion = @idDevolucion 

  and d.cancelado = 0

Set @Error = @@Error

if (@Error <> 0)  begin

  --rollback tran

  Return -3

end

--Commit Tran

  Set @idPromov = @id

return 0 



