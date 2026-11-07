


CREATE OR ALTER PROCEDURE rsOrdComp(@idOrdComp uniqueidentifier) AS



  Select 

    * 

  from 

    OrdComp

  Where 

    idOrdComp = @idOrdComp


GO
