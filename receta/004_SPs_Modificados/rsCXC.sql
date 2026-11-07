

CREATE OR ALTER PROCEDURE rsCXC

 @idCXC uniqueidentifier

as

 select 

   * 

 from 

   cxc

 where 

   idCXC = @idCXC

return 0
GO
