



CREATE OR ALTER PROCEDURE [dbo].[cxpRelacionDocumentos]--  '01/01/2009','01/01/2010',99,0,0

  @inicio datetime,

  @final datetime,

  @idTr int,

  @idMoneda int,

  @idSuplidor int  ,

  @MostrarEnCXP int

as

declare @ctaImp varchar(16)

SET @ctaImp = (select top 1 convert(varchar(16), valor) from defaults where clave = 'CTAITBIS')



select  h.idDocumento,

 h.idTrans,

 h.Referencia,

 Abrev = tt.Abrev + case when h.MostrarEnCXP = 1 then '' else '* Abierto *' end,

 h.Fecha,

 case h.Status when 'C' then 0.00 else h.Total end as Total,

 h.idSuplidor,

 e.Nombre as Nombre,

 case h.Status when 'C' then 0.00 else dbo.cxpTotalItbisDoc(h.idDocumento) end as MontoImpuestos,

        h.BienesServicio,

 h.rnc,

        h.Concepto,

 m.Moneda,

 h.CompFiscal ,

 cg.ClaseGasto,

  tt.DebCre

from

  cxpDocumentos h

  join TiposTrans tt on h.idtrans = tt.idTrans and tt.Sistema = 'CXP'

  join cxpSuplidores e on h.idSuplidor = e.idSuplidor

  join Moneda m on h.idMoneda = m.idMoneda

  left join cxpClaseGasto cg on h.idClaseGasto = cg.idClaseGasto

where  h.Fecha between @inicio and @final

 and (@idTr = 0 or h.idTrans = @idTr)

  and (@MostrarEnCXP = -1 or h.MostrarEnCXP = convert(bit, @mostrarEnCXP))

 and ((@idMoneda = 0) or (@idMoneda = h.idMoneda))

        and ((@idSuplidor = 0) or (@idSuplidor = h.idSuplidor))

order by

  e.Nombre,

  h.Fecha,

  h.idDocumento



return 0


GO
