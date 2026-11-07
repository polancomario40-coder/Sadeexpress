




CREATE OR ALTER PROCEDURE rsOrdCompDet(@idOrdComp uniqueidentifier) AS



  Select 

    * 

  from 

    OrdCompDet

  Where 

    idOrdComp = @idOrdComp

  order by

    linea


GO
