CREATE OR ALTER PROCEDURE CXCTipoList (@esCredito bit, @Fijo Bit)

as





if @Fijo =1 

begin

  select 

    * 

  from 

    cxcTipo

  where

    escredito = @esCredito

    and idcxctipo < 0

  order by 

    cxcTipo 

end

else

begin

  select 

    * 

  from 

    cxcTipo

  where

    escredito = @esCredito

    and idcxctipo >= 0

  order by 

    cxcTipo 

end



return 0
GO
