

-- cxpGuardarChequeAbierto 76226, 'JORGE MONTAS', '05/06/2008', 100, 'TEST', 187, '','2','','COSTO'



CREATE OR ALTER PROCEDURE cxpGuardarChequeAbierto

 @idSuplidor int,

 @Nombre varchar(100),

 @Fecha datetime,

 @Valor decimal(19,2),

 @Concepto varchar(6000),

 @CtaBanco int,

 @NotaAdicional varchar(100), 

 @idDoc int output,

 @idTipoIdent varchar(2),

 @RNC varchar(20),

 @TipoGasto varchar(16) = 'COSTO',

 @Tasa decimal(19,4) = 1

as

 

 declare @Err int,

	 @idMoneda int,

	 @idCuenta varchar(16),

	 @numck int,

	 @idTrans int,

	 @idEnt int,

 	 @TipoProveedor int --agregado por tito

--el tipo de proveedor local debe ponerse en la tabla de defaults

 Set @TipoProveedor = (select convert(int,valor) from defaults where clave = '#PROVEEDORLOCAL')

 set @idTrans = 20

 

 begin transaction

  update cxpBancos 

   set UltimoCheque = UltimoCheque + 1

  where idCuentaBanco = @ctaBanco   

  select @numck = UltimoCheque,

	 @idCuenta = idCuentaMayor,

	 @idMoneda = idMoneda

   from cxpBancos  

   where idCuentaBanco = @ctaBanco

  if @idSuplidor <= 0

  begin

    insert into cxpSuplidores (Nombre,TipoSuplidor, idMoneda, MostrarEnCXP,Estatus)

      values (@Nombre, @TipoProveedor, @idMoneda, 0,1)

    set @idEnt = @@IDENTITY

  end

  else

    set @idEnt = @idSuplidor

  -- ... y generar el header 

  

  EXEC @err = cxpGuardarDocumento 0, @idTrans, @Fecha, @idEnt, @numck, @Valor, 0.00, 0.00, 0.00, @Concepto, @IdMoneda, 1, 

                                  @idCuenta, null, 'P', @Fecha, @Ctabanco, null, null, 0, 0, null, @NotaAdicional, @idDoc OUTPUT, null, null,

				  @Tasa, @idTipoIdent, @RNC, @Nombre, @Fecha, @Fecha, @TipoGasto  

--  set @err = @@ERROR

  if @err > 0

  begin

    rollback transaction 

    return @err

  end

  

  commit transaction

return 0
















GO
