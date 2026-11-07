
------------ final de:RPTVentasdeProductosResumenPorMoneda ------------



------------ inicio de:rsOrdCompDetalle ------------





CREATE OR ALTER PROCEDURE rsOrdCompDetalle(@idOrdComp uniqueidentifier) AS

  Select 

    od.*, 

    p.ubicacion,

    Entregado = isnull((select sum(Despachado) from OrdCompEntDet where idOrdComp = od.idOrdComp and idOrdCompdet = od.idOrdCompDet),0),

    Pendiente = od.Cantidad - isnull((select sum(Despachado) from OrdCompEntDet where idOrdComp = od.idOrdComp and idOrdCompdet = od.idOrdCompDet),0)     

  from 

    OrdCompDet od

    join producto p on od.idproducto = p.idproducto

  Where 

    idOrdComp = @idOrdComp

  order by

    linea




GO
