
CREATE OR ALTER PROCEDURE [dbo].[svFactura2ProMov](@idFactura uniqueidentifier) AS



Declare 

  @TipoMov int,

  @Secuencia Varchar(16),

  @RecCount int,

  @Error int,

  @CCVentas uniqueidentifier,

  @CCCVenta varchar(16),

  @idAlmacen varchar(16),

  @contador varchar(16),

  @id Uniqueidentifier

  

-- si existen mov debe borrarse para generarse nuevamente

  delete promovdet

  from promovdet pd join promov p on p.idpromov = pd.idpromov

  where p.idReferencia = @idfactura



if Not Exists (Select top 1 1 from facturadet fd join producto p on p.idproducto = fd.idproducto where idfactura = @idFactura and p.calcexistencia = 1) begin

  Return 0

end



Set @Error = 0

Set @TipoMov = null

Set @TipoMov = convert(varchar,(Select Valor from Defaults where clave = 'Def_Tipo_MovInv'))



Declare Almacenes Cursor for

  Select distinct 

  fd.idAlmacen

  from 

    facturadet fd 

  where 

    idFactura = @idFactura

Open Almacenes

Fetch next from Almacenes Into @idAlmacen



  

Set @Error = @@Error

if (@Error <> 0) or (@TipoMov is null)  begin

  rollback tran

  Return -1

end          

begin tran

While @@Fetch_Status = 0 Begin

 set @secuencia = null   

Select @Secuencia = Promov From Promov where idReferencia =@idfactura and idAlmacen = @idAlmacen

if @Secuencia is null begin

    select @contador=isnull(ContadorSalidas,'MovimientoAlm') from Almacen where idAlmacen=@idAlmacen

    Exec spGetNextCounterSTR @contador ,@OutPut = @Secuencia OutPut

end



  delete from promov where idReferencia = @idFactura and idAlmacen =@idAlmacen



--Set @CCCVenta = convert(varchar(16),(Select Valor from Defaults where clave = 'CENTROCOSTOVENTA'))

--Set @CCVentas = (Select top 1 idCentroCosto from centrocosto where centrocosto = @CCCVenta)

Set @CCCVenta = (Select top 1 CentroCosto from centrocosto where centrocosto = @idAlmacen)

Set @CCVentas = (Select top 1 idCentroCosto from centrocosto where centrocosto = @idAlmacen)



--select * from almacen

--select * from centrocosto where centrocosto='9110CB40-858A-46A2-AEBF-89BE278B4091'



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

	  idAlmacenDestino)

	Select 

	  @id, 

	  @TipoMov, 

	  @Secuencia, 

	  Fecha, 

	  1, 

	  NULL, 

	  Factura, 

	  Usuario, 

	  Null, 

	  Null, 

	  Usuario, 

	  Null, 

	  @idAlmacen,

	  'Salida Fact.' + Factura,

	  Convert(varchar(30),Cliente),

	  Null,

	  Null,

	  0,

	  Null,

	  Null,

	  Null,

	  idFactura,

	  Null

	From 

	  Factura

	Where

	  idFactura = @idFactura and Cancelado = 0

	Set @Error = @@Error

	if (@Error <> 0)   begin

	  rollback tran

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

	idPartida)

	Select

--	  fd.idFacturaDet,

          NewId(),

	  @id,

	  substring(fd.Producto,1,60),

	  fd.idProducto,

	  fd.Producto,

	  fd.Cantidad,

	  dbo.InvProdCosto(fd.idProducto, f.Fecha, fd.idAlmacen) * fd.Cantidad,

	  fd.idUnidad,

	  0,

	  Null,

	  Null,

	  fd.Linea,

	  Null,

	  @CCCVenta,

	  @CCVentas, --CentroCosto

	  Null  -- Partida

	from

	  FacturaDet fd

	  join Factura f on fd.idFactura = f.idFactura join

          producto p on p.idproducto = fd.idproducto

	Where

	  fd.idFactura = @idFactura 

          and f.Cancelado = 0

          and fd.idAlmacen = @idAlmacen

          and p.calcexistencia = 1

	Set @Error = @@Error

	if (@Error <> 0)  begin

	  rollback tran

	  Return -3

	end





--******************

Fetch next from Almacenes Into @idAlmacen

end -- While

CLOSE Almacenes

DEALLOCATE Almacenes

Commit Tran






GO
