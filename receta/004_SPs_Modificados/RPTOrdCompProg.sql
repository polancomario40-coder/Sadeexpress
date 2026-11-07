CREATE OR ALTER PROCEDURE RPTOrdCompProg(@idPlanta varchar(16), @Desde Datetime, @Hasta Datetime) AS





Select 

    Datos.* , 

    (Datos.Cantidad - Datos.despachado) as Pendiente

from (

  Select 

    op.* , 

    o.OrdComp,

    o.Cliente,

    isnull((

        SELECT     

            SUM(pd.Cantidad)

        FROM         

            Conduce p INNER JOIN

            ConduceDet pd ON p.idConduce = pd.idConduce

        WHERE     

            (pd.idProducto = op.idProducto)

            AND (p.idOrdComp = o.idOrdComp)

            AND (p.idOrdCompProg = op.idOrdCompProg)

    ),0.00) as Despachado



  from 

    OrdCompProg op 

    join OrdComp o on o.idOrdComp = op.idOrdComp

  where 

    (op.fecha between @Desde and @Hasta) and (op.idPlanta = @idPlanta or @idPlanta = 'Todos')

) Datos

Order by

   Datos.Fecha, Datos.OrdComp, Datos.OrdCompProg


GO
