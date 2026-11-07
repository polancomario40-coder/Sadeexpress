CREATE OR ALTER PROCEDURE rsCxcDetCreditos(@idCxc uniqueidentifier) AS



  Select    

    p.idTipoDocumento as Tipo,

    p.Cxc as Documento,

    pd.idCxcDet,

    pd.Valor as MontoAplicado,

    pd.Fecha as FechaAplicado

  From

    Cxc p

    INNER JOIN CxcDet pd on p.idCxc = pd.idCxc

  Where

    pd.idCxcDebito = @idCxc and p.cancelado = 0
GO
