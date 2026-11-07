


------------ final de:cxpBorrarSolRet ------------



------------ inicio de:cxpBuscarChequesRango ------------



CREATE OR ALTER PROCEDURE cxpBuscarChequesRango

 @orden varchar(10), 

 @desde datetime,

 @hasta datetime

as

 select h.idDocumento,

		h.Referencia,

		h.Fecha,

		h.Nombre as Beneficiario,

		h.TotalNeto,		

		h.Status as ST,

		b.Nombre as Banco,

		h.Concepto

 from cxpDocumentos h join cxpSuplidores e

  on h.idSuplidor = e.idSuplidor

  join cxpBancos b on h.idCuentaBanco = b.idCuentaBanco 

 where h.fecha between @desde and @hasta

 order by h.Referencia

return 0 




GO
