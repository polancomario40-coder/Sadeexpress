CREATE OR ALTER PROCEDURE [dbo].[presRSCliente](@idCliente int) AS



  Select 

    *

  From

    presCliente

  Where

    idCliente = @idCliente


GO
