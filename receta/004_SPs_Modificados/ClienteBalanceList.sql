CREATE OR ALTER PROCEDURE ClienteBalanceList(@Fecha datetime) AS





Select

  idCliente,

  Cliente,

  Balance = dbo.cxcBalanceCliente(idCliente, @Fecha)

into 

  #tmp

from

  cliente





Select 

  *

from

  #tmp

where

  Balance <> 0.00  

order by

  cliente



drop table #tmp
GO
