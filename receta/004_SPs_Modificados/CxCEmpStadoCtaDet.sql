

CREATE OR ALTER PROCEDURE [dbo].[CxCEmpStadoCtaDet](@CxCEmpID integer, @fecha datetime) AS  

  Select   

    T.TransaccionId,  

    T.Transaccion  

  From  

    Transaccion T   

    JOIN Nomina N ON T.NominaID = N.NominaID  

  Where  

    T.CxCEmpId = @CxCEmpID  

    and n.Fecha <= @fecha 

    AND N.Cerrada = 1   




GO
