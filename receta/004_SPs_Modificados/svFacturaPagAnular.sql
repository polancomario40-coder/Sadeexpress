

CREATE OR ALTER PROCEDURE svFacturaPagAnular(@idFactura uniqueidentifier, @Anulado bit output) AS



declare @err int



Set     @err = 0

Set @Anulado = 0  --retornar false



BEGIN TRAN  





IF exists (

  SELECT Top 1 -- si no existen pago para la cxc de esta factura

    1

  FROM

    Cxc p

    INNER JOIN Cxcdet Pd ON p.idCxc = pd.idCxc

    INNER JOIN Cxc f ON pd.idCxcDebito = f.idCxc

  WHERE

    f.Referencia  = @idFactura and p.cancelado = 0)

BEGIN

  RETURN -1

END





IF exists (

  SELECT Top 1 -- si no se ha cerrado el almacen para los movimientos generados por esta factura

    1

  FROM

    ProMov p  

  WHERE

    p.idPromov = @idFactura and p.posteado = 1)

BEGIN

  RETURN -2

END





  Update 

    factura 

  set 

    cancelado = 1, 

    fechacancelado = Getdate()

  where 

    idfactura = @idFactura --marcar factura como cancelado



  set @err = @@Error   



  Delete 

  from cxc 

  where referencia = @idFactura  -- borrar la cxc de la factura



  Set @Err = @@Error



  Delete 

    promovdet

  from 

    Promov p

    join promovdet pd on p.idpromov = pd.idpromov

  where 

    p.idpromov = @idFactura



  set @err = @@Error   

  

  Delete 

  from 

    Promov 

  where 

    idpromov = @idFactura



  set @err = @@Error   



  Set @Anulado = 1  -- retornar true





if @err <> 0 

begin

  ROLLBACK TRAN

end

else

begin

  COMMIT TRAN

end

RETURN 0






GO
