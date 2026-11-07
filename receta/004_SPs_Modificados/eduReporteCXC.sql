  

CREATE OR ALTER PROCEDURE [dbo].[eduReporteCXC]  

 @final datetime  

as  

--set @final = '09/30/2007'  

  

declare @data table (  

 idCliente int,  

 idcxc uniqueidentifier,  

 Tipo varchar(30),   

 CXC varchar(30),  

 Fecha datetime,  

 Valor decimal(19,2),  

 Balance decimal(19,2)   

)  

  

insert into @data  

 (idCliente, idCXc, Tipo, CXc, Fecha, Valor, Balance)  

select c.idCliente,  

    c.idcxc,  

    t.CXCTipo,   

    c.cxc,  

    c.Vencimiento as Fecha,  

    c.Valor,   

    c.Valor - dbo.eduPagadoDocumentoCXC(c.idcxc,@final)  

from cxc c join CXCTipo t on c.idCXCTipo = t.idCXCTipo   

where c.Vencimiento <= @final  

   and c.cancelado = 0  

   and c.esCredito = 0  

   and c.Valor > dbo.eduPagadoDocumentoCXC(c.idcxc,@final)  

  

--select count(*), sum(d.Valor)  

--from @data d join Cliente c   

--  on d.idCliente = c.idCliente  

  

select c.Cliente,  c.Telefono, c.Notas, 

    d.*  

from @data d join Cliente c   

  on d.idCliente = c.idCliente  

order by c.Cliente, d.Fecha, d.CXC  

  
GO
