CREATE OR ALTER PROCEDURE rsCompFiscalSecuencia

    (

     @uidCompFiscal UNIQUEIDENTIFIER

    )

AS

    SELECT  *

    FROM    CompFiscalSecuencia

    WHERE   uidCompFiscal = @uidCompFiscal

    ORDER BY ValidoHasta DESC


GO
