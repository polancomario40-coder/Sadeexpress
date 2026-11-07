



CREATE OR ALTER PROCEDURE cxpDocsPendientes

 --@idTr int,

 @idEnt int

AS

 select	t.idTrans,

	t.idDocumento,

	t.Referencia,  

	t.Fecha,

	t.Total as Valor,

	tt.Abrev,

	t.idMoneda, 

	t.tasa, 

	Pagado = isnull((select sum(d.valor) from cxpDocumentosDtl d

		   join cxpDocumentos s on d.idDocumento = s.idDocumento 

		 where 	d.idDocXPagar = t.idDocumento 

			and s.Status <> 'C'),$0),

	TotalRetenciones = isnull((select sum(porcentaje) from cxpDocRetencion where idDocumento = t.idDocumento),0.0000),

	t.idCuenta 

 from cxpDocumentos t join TiposTrans tt

  on t.idTrans = tt.idTrans and tt.Sistema = 'CXP'

 where t.idSuplidor = @idEnt 

	and tt.DebCre = 2

	and t.Status <> 'C'

 --group by t.idTrans, t.idDocumento, t.Relacion, t.Fecha, t.Total

 and isnull((select sum(d.valor) from cxpDocumentosDtl d

		   join cxpDocumentos s on d.idDocumento = s.idDocumento 

		 where 	d.idDocXPagar = t.idDocumento

			and s.Status <> 'C'),$0) < t.Total

return 0








GO
