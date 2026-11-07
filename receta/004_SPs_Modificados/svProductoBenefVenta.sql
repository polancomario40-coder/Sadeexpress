CREATE OR ALTER PROCEDURE svProductoBenefVenta(@Desde datetime, @Hasta datetime) as    

    

Select     

  f.idFactura,    

  f.Factura,    

  f.Fecha,    

  f.idCliente,    

  f.Cliente,    

  (Case When f.Credito = 1 then 'Credito' else 'Contado' end) Credito,    

  fd.idFacturadet,    

  fd.idProducto,    

  fd.Producto,    

  fd.Cantidad,    

  Co.Precio,    

  co.Costo,    

  co.Precio - Co.Costo as Beneficio,    

  co.Precio * fd.Cantidad as ValorTotal,    

  co.Costo  * fd.Cantidad as CostoTotal,    

  (Co.Precio*fd.Cantidad) - (Co.Costo*fd.Cantidad) as BeneficioTotal,    

  (Case when co.costo <> 0 then (((Co.Precio*fd.Cantidad) - (Co.Costo*fd.Cantidad)) / (Co.Precio*fd.Cantidad))*100 else 100.00 end) as Porcentaje,    

  G.Grupo as ProdGrupo,    

  L.Linea,    

  e.Empleado,    

  c.idZona,    

  c.Grupo,    

  cg.ClienteGrupo as Categoria,  

  (Select Top 1 CostoBase From ProductoCostoBase Where IdMoneda = f.IdMoneda And IdProducto = p.IdProducto) As CostoBase,  

  (Select Top 1 (Costo / Cantidad) From ProMov m Inner Join ProMovDet d On (m.IdProMov = d.IdProMov) Where d.IdProducto = fd.IdProducto And m.Salida = 0 And m.Posteado = 1 Order By Fecha Desc) As UltCosto  

  Into #Beneficio  

from    

  Factura f    

  join Facturadet fd on f.idfactura = fd.idfactura    

  join     

    (Select fd.idfacturadet, (((fd.LineTotal - fd.Descuento)*f.tasa) / fd.Cantidad) as Precio, dbo.invProdCosto(fd.idProducto, f.Fecha, f.idAlmacen) as Costo  

     from  Factura f join Facturadet fd on f.idfactura = fd.idfactura) Co     

  on fd.idFacturadet = co.idFacturadet    

  join Producto p on p.idProducto = fd.idproducto    

  join grupo g on p.idgrupo = g.idgrupo    

  join linea l on g.idlinea = l.idlinea    

  join svEmpleado e on f.idEmpleado = e.idempleado    

  join Cliente c on f.idCliente = c.idCliente    

  left join ClienteGrupo cg on c.idClienteGrupo = cg.idClienteGrupo    

where    

  f.cancelado = 0    

  and f.fecha between @Desde and @Hasta    

order by    

  f.fecha, f.factura    

  

SELECT  

  *,  

  (CostoBase - UltCosto)As DifMontUltCosto,  

  (CostoBase - Costo) As DifMontCostoProm,  

  Case

    When CostoBase = 0 Then

      1

    Else

      ((CostoBase - UltCosto) / CostoBase) 

  End As DifPorcUltCosto,

  Case

    When CostoBase = 0 Then

      1

    Else

      ((CostoBase - Costo) / CostoBase)

  End As DifPorcCostoProm

FROM  

  #Beneficio  

      


GO
