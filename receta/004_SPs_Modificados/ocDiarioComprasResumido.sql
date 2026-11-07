





------------ final de:ocDiarioComprasDetallado ------------



------------ inicio de:ocDiarioComprasResumido ------------



CREATE OR ALTER PROCEDURE [dbo].[ocDiarioComprasResumido]

 @desde datetime,

 @hasta datetime

as

declare @tbl table (

 idLiquidacion uniqueidentifier,

 idLiquidacionDet uniqueidentifier, 

 idProducto varchar(30),

 Producto varchar(500),

 Tasa float, 

 ValorFOB decimal(19,2),

 Partida varchar(30),

 PorcArancel float,

 Cantidad float,

 Flete decimal(19,2),

 Seguro decimal(19,2),

 ValorCIF as Flete + Seguro + ValorFOB,

 Gravamen decimal(19,2),

 ServAduana decimal(19,2),

 Portuaria decimal(19,2),

 ITBIS decimal(19,2),

 Gestion decimal(19,2),

 OtrosAduana decimal(19,2),

 Transporte decimal(19,2),

 Impuestos as (Gravamen + ServAduana + Portuaria + ITBIS),

 Importacion as (Gestion + OtrosAduana + Transporte),

 Total as ((Flete + Seguro + (ValorFOB )) * Tasa) + (Gravamen + ServAduana + Portuaria) + (Gestion + OtrosAduana + Transporte)

)

insert into @tbl 

 (idLiquidacion, idLiquidacionDet, idProducto, Producto, Tasa, ValorFOB, Partida, PorcArancel, Cantidad, Flete,

  Seguro, Gravamen, ServAduana, Portuaria, Itbis, Gestion, OtrosAduana, Transporte)

select  l.idLiquidacion,

		d.idLiquidacionDet, 

		d.idproducto,

		d.Producto,

		l.Tasa, 

		d.ValorFOB * Cantidad,

		p.partidaArancel as Partida,

		p.porcArancel as porcArancel,

		d.Cantidad,

		FleteUS = dbo.ocTotalCargoLiqPesos('FLETE',d.idLiquidacionDet) / l.Tasa,

		Seguro = dbo.ocTotalCargoLiqPesos('SEGURO',d.idLiquidacionDet) / l.Tasa,

		Gravamen = dbo.ocTotalCargoLiqPesos('ARANCELES',d.idLiquidacionDet),

		ServAduana = dbo.ocTotalCargoLiqPesos('SERVADUANA',d.idLiquidacionDet),

		Portuaria = dbo.ocTotalCargoLiqPesos('PORTUARIA',d.idLiquidacionDet),

		ITBIS = dbo.ocTotalCargoLiqPesos('ITBIS',d.idLiquidacionDet),

		Gestion = dbo.ocTotalCargoLiqPesos('GESTION',d.idLiquidacionDet),

		OtrosAduana = dbo.ocTotalCargoLiqPesos('OTROS',d.idLiquidacionDet),

		Transporte = dbo.ocTotalCargoLiqPesos('TRANSPORTE',d.idLiquidacionDet)	    

from ocLiquidacion l join ocLiquidacionDet d 

  on l.idLiquidacion = d.idLiquidacion

  join producto p on d.idProducto = p.idProducto 

where l.fecha between @desde and @hasta 

select	l.idLiquidacion, 	    

		l.Liquidacion,

		l.Suplidor,

		l.Fecha,

		l.OrdenCompra as Orden,

		l.Tasa,		

		o.GranTotal as TotalOrdenUS, 

		o.GranTotal * l.Tasa as TotalOrdenRD, 

		TotalLiquidacionRD = (select sum(Total) from @tbl where idLiquidacion = l.idLiquidacion),

		TotalLiquidacionUS = (select sum(Total) from @tbl where idLiquidacion = l.idLiquidacion) / l.Tasa	

from ocLiquidacion l left join ocOrdenes o on l.idOrdenCompra = o.idOrden 

where l.fecha between @desde and @hasta 

order by l.fecha, l.liquidacion 








GO
