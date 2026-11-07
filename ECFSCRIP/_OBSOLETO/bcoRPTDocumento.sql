



CREATE procedure [dbo].[bcoRPTDocumento] --'158017CB-CC83-4770-A8DA-002BD234CDCC'  

 @GuidDocumento uniqueidentifier  

as  

 select *,  

 (select Nombre from cxpBancos b where b.idCuentaBanco=d.idCuentaBanco ) as Banco,  

 (select Descripcion from cgCatalogoCuentas c where c.idcuenta=dd.idcuenta) as descripcion,  

 (case when dd.debcre=1 then dd.Valor end) as Debito,  

 (case when dd.debcre=2 then dd.Valor end) as Credito  

 from bcodocumentos d  

 left join bcoDocumentosDtl dd on dd.Guiddocumento=d.Guiddocumento  

 where d.Guiddocumento = @Guiddocumento   -- d.idDocumento=63399  

 order by LineaNum  

return 0  



