--select distinct(idClienteTipo) from cliente --where idClienteTipo=11

--select * from ClienteTipo

--update cliente set idClienteTipo=10 where idClienteTipo=1



---select * from CompFiscal
------------------------------------------------------------------ClienteTipo-----------------------------------------------------------
--select * from ClienteTipo

Insert into ClienteTipo (idClienteTipo, ClienteTipo,NoPagaItbis,TipoCompFiscal)
values (10,'Empresas Electronico',0,31)
go


Insert into ClienteTipo (idClienteTipo, ClienteTipo,NoPagaItbis,TipoCompFiscal)
values (11,'Consumidor Electronico',0,32)
go

insert into ClienteTipo
Values(12,'Gubernamentales Electronico',0,newid(),45)
go


------------------------------------------------------------------CompFiscal-----------------------------------------------------------
insert into CompFiscal (Terminal,Serie,TipoNCF,Descripcion,Division,Sucursal,Caja,Contador)
select 'default','E','31','Crédito Fiscal E.',0,1,0,'E31' --from CompFiscal
GO

insert into CompFiscal (Terminal,Serie,TipoNCF,Descripcion,Division,Sucursal,Caja,Contador)
select 'default','E','32','Factura de Consumo E.',0,1,0,'E32' --from CompFiscal
GO

insert into CompFiscal (Terminal,Serie,TipoNCF,Descripcion,Division,Sucursal,Caja,Contador)
select 'default','E','33','Nota de Débito E.',0,1,0,'E33' --from CompFiscal
GO

insert into CompFiscal (Terminal,Serie,TipoNCF,Descripcion,Division,Sucursal,Caja,Contador)
select 'default','E','34','Nota de Crédito E.',0,1,0,'E34' --from CompFiscal
GO

insert into CompFiscal (Terminal,Serie,TipoNCF,Descripcion,Division,Sucursal,Caja,Contador)
select 'default','E','41','Compras Electrónico',0,1,0,'E41' --from CompFiscal
GO

insert into CompFiscal (Terminal,Serie,TipoNCF,Descripcion,Division,Sucursal,Caja,Contador)
select 'default','E','43','Gastos Menores E.',0,1,0,'E43' --from CompFiscal
GO

insert into CompFiscal (Terminal,Serie,TipoNCF,Descripcion,Division,Sucursal,Caja,Contador)
select 'default','E','44','Regímenes Especiales E.',0,1,0,'E44' --from CompFiscal
GO

insert into CompFiscal (Terminal,Serie,TipoNCF,Descripcion,Division,Sucursal,Caja,Contador)
select 'default','E','45','Gubernamental Elect.',0,1,0,'E45' --from CompFiscal
GO

insert into CompFiscal (Terminal,Serie,TipoNCF,Descripcion,Division,Sucursal,Caja,Contador)
select 'default','E','46','Exportaciones Electrónico',0,1,0,'E46' --from CompFiscal
GO

insert into CompFiscal (Terminal,Serie,TipoNCF,Descripcion,Division,Sucursal,Caja,Contador)
select 'default','E','47','Pagos al Exterior E.',0,1,0,'E47' --from CompFiscal
GO

---------------------------------------------------------------CompFiscalSecuencia-------------------------------------------------------------
insert into CompFiscalSecuencia(uidCompFiscal,Secuencia,SecuenciaFinal,ValidoHasta,Reorden,Inactivo,FechaRegistro)
select uidCompFiscal,1,2,'20261231',0,0,getdate() from CompFiscal where serie='E'

--select * from CompFiscalSecuencia







