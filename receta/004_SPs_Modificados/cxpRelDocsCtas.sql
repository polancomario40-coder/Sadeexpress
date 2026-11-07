

 ------------ final de:cxpRelacionDocumentos ------------



------------ inicio de:cxpRelDocsCtas ------------



CREATE OR ALTER PROCEDURE cxpRelDocsCtas

  @inicio datetime,

  @final datetime,

  @idTr int,

  @idMoneda int,

  @idSuplidor int,

  @MostrarEnCXP int

as



select  h.idDocumento,

 h.idTrans,

 h.Referencia,

 Abrev = tt.Abrev + case when h.MostrarEnCXP = 1 then '' else '* Abierto *' end,

 h.Fecha,

 case h.Status when 'C' then 0.00 else h.Total end as Total,

 h.idSuplidor,

 case h.status when 'C' then '**NULO** ' ELSE '' END + h.Nombre as Nombre,

 dc.idCuenta,

 cat.Descripcion,

 Debito = case dc.DebCre when 1 then dc.Valor else 0.00 end,

 Credito = case dc.DebCre when 2 then dc.Valor else 0.00 end,

 Movimiento = case dc.DebCre when 1 then dc.Valor else -dc.Valor end,

    h.rnc,

 m.Moneda,

 h.CompFiscal ,

 cg.ClaseGasto,

  tt.DebCre   , h.Concepto ,

  h.Tasa,

 h.Total - (dbo.cxpTotalItbisDoc(h.idDocumento) / h.tasa) as Neto

from cxpDocumentos h join TiposTrans tt

  on h.idtrans = tt.idTrans and tt.Sistema = 'CXP'

  join cxpSuplidores e on h.idSuplidor = e.idSuplidor

  join Moneda m on h.idMoneda = m.idMoneda

  left join cxpDocCuentas dc on (h.idDocumento = dc.idDocumento and h.status <> 'C')

  left join cgCatalogoCuentas cat on dc.idCuenta = cat.idCuenta

  left join cxpClaseGasto cg on h.idClaseGasto = cg.idClaseGasto

where  h.Fecha between @inicio and @final

  and (@idTr = 0 or h.idTrans = @idTr)

  and (@MostrarEnCXP = -1 or h.MostrarEnCXP = convert(bit, @mostrarEnCXP))

  and ((@idMoneda = 0) or (@idMoneda = h.idMoneda))

        and ((@idSuplidor = 0) or (@idSuplidor = h.idSuplidor))

order by h.fecha, h.referencia

return 0



 


GO
