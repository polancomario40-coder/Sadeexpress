CREATE OR ALTER PROCEDURE cxpDocumentoFind

 @desde datetime, @hasta datetime, @mask varchar(100), @idTrans int 

as

  select d.idDocumento,

	 d.Referencia,

	 d.Fecha,

	 d.Total,

	 s.Telefono1,

	 d.Nombre,

	 d.RNC,

	 d.Concepto,

	 d.Compfiscal 

  from cxpDocumentos d left join cxpSuplidores s 

   on d.idSuplidor = s.idSuplidor

  where d.fecha between @desde and @hasta 

	and d.idTrans = @idTrans

	and (d.Referencia like '%' + @mask + '%'

	     or d.Nombre like '%' + @mask + '%'

	     or d.RNC like '%' + @mask + '%'

	     or d.Concepto like '%' + @mask + '%'

	     or d.Compfiscal like '%' + @mask + '%'

	     or s.Telefono1 like '%' + @mask + '%')

  order by d.Fecha desc    

return 


GO
