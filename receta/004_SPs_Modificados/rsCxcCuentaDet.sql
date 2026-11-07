CREATE OR ALTER PROCEDURE rsCxcCuentaDet(@idCxc uniqueidentifier) AS



  Select

    *

  From

    CxcCuentaDet

  where

    idCxc = @idCxc

  order by

    credito
GO
