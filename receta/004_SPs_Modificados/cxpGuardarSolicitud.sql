

CREATE OR ALTER PROCEDURE dbo.cxpGuardarSolicitud

 @idSol int,

 @Num int output,

 @Fec datetime,

 @IdEnt int,

 @Nombre varchar(100), 

 @Valr money,

 @Conc varchar(6000),

 @St char(1),

 @Usuario varchar(30),

 @FechaReg datetime,

 @ValidadoPor varchar(30),

 @validadoEn datetime,

 @revpor varchar(30),

 @reven datetime,

 @valfinal varchar(30),

 @valfinalen datetime,

 @NotaAdicional varchar(100),

 @MostrarEnCXP bit,

 @GUIDSolicitud uniqueidentifier,

 @nid int output,

 @tasa decimal(18,2) ,

 @idCuentaBanco int,

 @idMoneda int,

 @TipoAbono char(1),

 @BancoDestino varchar(5),

 @CuentaDestino varchar(20),

 @TipoSolicitud int,

 @idCuentaBancoDestino int,

 @idOrden uniqueidentifier,

 @OrdenCompra varchar(16),

 @idPagoForma INT = 2 

AS



 declare @idSuplidor int,

	    -- @idMoneda int,

         @TipoProveedor int



 Set @TipoProveedor = (select convert(int,valor) from defaults where clave = '#PROVEEDORLOCAL')



 /*

select top 1 @idMoneda = idMoneda

 from moneda 

 where cursolegal = 1

*/

 if @idEnt <= 0

   begin

	 insert into cxpSuplidores (Nombre,TipoSuplidor, idMoneda, MostrarEnCXP,Estatus)

	   values (@Nombre, @TipoProveedor, @idMoneda, @MostrarEnCXP,1)

	 set @idSuplidor = @@IDENTITY

   end

 else

   set @idSuplidor = @idEnt



 if (coalesce(@idSol,0) = 0)

 begin

   set @Num = coalesce((select max(Numero) 

			from cxpSolicitudes),0) + 1

   insert into cxpSolicitudes (	Numero, 				

				Fecha,

				idSuplidor,

				Total,

				Concepto,

				Status,

				Usuario, FechaRegistro, ValidadaPor, ValidadaEn,

				RevisadaPor, RevisadaEn, ValidadaFinalPor, ValidadaFinalEn,

				NotaAdicional,

				MostrarEnCXP,

	        		GUIDSolicitud,

				Tasa,

				idCuentabanco, idMoneda,

			    TipoAbono, BancoDestino, 

				CuentaDestino, TipoSolicitud, idCuentaBancoDestino, OrdenCompra, idOrden,

				IdPagoForma)

   values (@Num, @Fec, @idSuplidor, @Valr, @Conc, @St, @usuario, @fechaReg,

	         @ValidadoPor, @ValidadoEn, @RevPor, @RevEn, @ValFinal, @ValFinalEn,

           @NotaAdicional, @MostrarEnCXP, @GUIDSolicitud, @Tasa, @idCuentabanco, @idMoneda,

	       @TipoAbono, @BancoDestino, @CuentaDestino, @TipoSolicitud, @idCuentaBancoDestino, 

		   @OrdenCompra, @idOrden, @IdPagoForma)

   set @nid = @@IDENTITY

 end

 else 

 begin

   update cxpSolicitudes

     set Fecha = @Fec,

 	       idSuplidor = @idSuplidor,

	       Total = @Valr,

	       Concepto = @Conc,

	       Status = @st,

	       Usuario = @usuario,

	       FechaRegistro = @FechaReg,

	       ValidadaPor = @ValidadoPor,

	       ValidadaEn = @ValidadoEn,

	       RevisadaPor = @RevPor,

	       RevisadaEn = @RevEn,

	       ValidadaFinalPor = @ValFinal,

	       ValidadaFinalEn = @ValFinalEn,

	       NotaAdicional = @NotaAdicional,

 		   MostrarEnCXP = @MostrarEnCXP,

	       GUIDSolicitud = @GUIDSolicitud,

		Tasa = @Tasa ,

		idCuentabanco = @idCuentabanco,

		idMoneda = @idMoneda,

		TipoAbono = @TipoAbono, 

		BancoDestino = @BancoDestino, 

		CuentaDestino = @CuentaDestino, 

		TipoSolicitud = @TipoSolicitud,

	    idCuentaBancoDestino = @idCuentaBancoDestino,

               OrdenCompra= @OrdenCompra,

               idOrden = @idOrden, 

			   IdPagoForma = @idPagoForma

   where idSolicitud = @idSol

   set @nid = @idSol

 end

return @@ERROR






GO
