
CREATE OR ALTER PROCEDURE SPCxCAnular(@idCxc uniqueidentifier, @Anulado bit output) AS





declare @err int



Set     @err = 0



Set @Anulado = 0  --retornar false



BEGIN TRAN  



IF not exists (

  SELECT Top 1 -- si no existen pago para la cxc de esta factura

    1

  FROM

    Cxcdet    

  WHERE

   (idCxc  = @idcxc or idCxcDebito = @idCxc))

begin



  Update 

    Cxc 

  set 

    cancelado = 1, 

    fechacancelado = round(convert(float, getdate()),0,1)

  where 

    idCxc = @idCxc --marcar factura como cancelado

    and idCxcTipo  >= 0



  set @err = @@Error   

  

  if @@Rowcount > 0

  begin

    Set @Anulado = 1  -- retornar true

  end

end





if @err <> 0 

begin

  ROLLBACK TRAN

  Set @Anulado = 0

end

else

begin

  COMMIT TRAN

end








GO
