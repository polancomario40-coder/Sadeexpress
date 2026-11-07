

CREATE OR ALTER PROCEDURE RPTCobrosMensuales (@Desde datetime) as





SELECT     -- la fact se saca de factura para incluir factura al contado sin cxc

  (isnull((SELECT     

	    SUM(c.Total)

	  FROM         

	    dbo.Factura c

	  WHERE

	    (Month(c.Fecha) = Month(@Desde) 

	    and Year(c.Fecha)= Year(@Desde))  

	    and (c.Cancelado = 0))

	,0))  AS Facturacion,



  (isnull((SELECT     -- los pagos al contado se sacan de las factura que no son a credito

	     SUM(c.Total)

 	   FROM         

 	     dbo.Factura c

	   WHERE

    	     (Month(c.Fecha) = Month(@Desde) 

             and Year(c.Fecha)= Year(@Desde))  

             AND (c.Cancelado = 0)

             AND (Credito = 0))

	,0))  AS Contado,



  SUM(pd.Valor) as TotalCobrado,

  SUM(CASE WHEN pd.Fecha BETWEEN @Desde AND @Desde + 29 THEN pd.Valor ELSE 0.00 END) as Cobrado30,

  SUM(CASE WHEN pd.Fecha BETWEEN @Desde+30 AND @Desde+59 THEN pd.Valor ELSE 0.00 END) as Cobrado60,

  SUM(CASE WHEN pd.Fecha BETWEEN @Desde+60 AND @Desde+89 THEN pd.Valor ELSE 0.00 END) as Cobrado90,

  SUM(CASE WHEN pd.Fecha BETWEEN @Desde+90 AND @Desde+119 THEN pd.Valor ELSE 0.00 END) as Cobrado120,

  SUM(CASE WHEN pd.Fecha BETWEEN @Desde+120 AND @Desde+149 THEN pd.Valor ELSE 0.00 END) as Cobrado150,

  SUM(CASE WHEN pd.Fecha BETWEEN @Desde+150 AND Getdate() THEN pd.Valor ELSE 0.00 END) as CobradoMas

INTO

  #TMP

FROM         

  dbo.Cxc p 

  INNER JOIN dbo.CxcDet pd ON p.idCxc = pd.idCxc 

  INNER JOIN dbo.Cxc f ON pd.idCxcDebito = f.idCxc

WHERE       

  (Month(f.Fecha) = Month(@Desde) and Year(f.Fecha)= Year(@Desde))  

  AND (f.esCredito = 0) 

  AND (p.Cancelado = 0) 

  AND (f.Cancelado = 0)



Select

  Compania,

  DateName(m,@Desde) as Mes,

  Year(@Desde) as Ano,	

  Facturacion,

  Contado,

  convert(decimal(19,2),(Contado    / Facturacion)) as ContadoPorc,  

  Cobrado30,

  convert(decimal(19,2),(Cobrado30  / Facturacion)) as Cobrado30Porc,

  Cobrado60,

  convert(decimal(19,2),(Cobrado60  / Facturacion)) as Cobrado60Porc,

  Cobrado90,

  convert(decimal(19,2),(Cobrado90  / Facturacion)) as Cobrado90Porc,

  Cobrado120,

  convert(decimal(19,2),(Cobrado120  / Facturacion)) as Cobrado120Porc,

  Cobrado150,

  convert(decimal(19,2),(Cobrado150  / Facturacion)) as Cobrado150Porc,

  CobradoMas,

  convert(decimal(19,2),(CobradoMas  / Facturacion)) as CobradoMasPorc,

  (TotalCobrado + Contado) as TotalCobrado,

  convert(decimal(19,2),((TotalCobrado+Contado) / Facturacion)) as TotalCobradoPorc

    

From

  #TMP t

    cross join configuracion f
GO
