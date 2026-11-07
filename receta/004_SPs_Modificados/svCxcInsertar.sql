

CREATE OR ALTER PROCEDURE svCxcInsertar(

@idcxc uniqueidentifier, 

@cxc varchar(1), 

@idcliente int, 

@idtipodocumento varchar(16), 

@valor decimal(19,2), 

@fecha datetime, 

@concepto varchar(100), 

@idcxctipo int, 

@escredito bit, 

@cancelado bit, 

@referencia uniqueidentifier, 

@Cliente varchar(50), 

@usuario varchar(30), 

@idDocumento varchar(20), 

@Descuento decimal(19,2), 

@Condicion int, 

@Vencimiento datetime, 

@idMoneda int, 

@FechaCancelado datetime)

AS





begin tran



 insert into cxc (idCxc,   Cxc,  idCliente,  idTipoDocumento,  Valor,  Fecha,  Concepto,  idCxcTipo,  esCredito,  Cancelado,  Referencia,  Cliente,  Usuario,  idDocumento,  Descuento,  Condicion,  Vencimiento,  idMoneda,  FechaCancelado)

          values (@idcxc, @cxc, @idcliente, @idtipodocumento, @valor, @fecha, @concepto, @idcxctipo, @escredito, @cancelado, @referencia, @Cliente, @usuario, @idDocumento, @Descuento, @Condicion, @Vencimiento, @idMoneda, @FechaCancelado)





if @@Error <> 0 

begin

  rollback tran

  Return -1

end



if @@Rowcount = 0 

begin

  rollback tran

  Return -2

end



commit tran






GO
