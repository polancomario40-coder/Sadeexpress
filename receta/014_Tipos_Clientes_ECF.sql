-- =============================================
-- MIGRATION 014: Crear Tipos de Clientes ECF
-- =============================================

DECLARE @maxId INT;
SELECT @maxId = ISNULL(MAX(idClienteTipo), 0) FROM dbo.ClienteTipo;

IF NOT EXISTS (SELECT 1 FROM dbo.ClienteTipo WHERE TipoCompFiscal = '31')
BEGIN
    SET @maxId = @maxId + 1;
    INSERT INTO dbo.ClienteTipo (idClienteTipo, ClienteTipo, NoPagaItbis, UidClienteTipo, TipoCompFiscal) 
    VALUES (@maxId, 'Credito Fiscal ECF', 0, NEWID(), '31');
    PRINT 'Insertado: Credito Fiscal ECF';
END

IF NOT EXISTS (SELECT 1 FROM dbo.ClienteTipo WHERE TipoCompFiscal = '32')
BEGIN
    SET @maxId = @maxId + 1;
    INSERT INTO dbo.ClienteTipo (idClienteTipo, ClienteTipo, NoPagaItbis, UidClienteTipo, TipoCompFiscal) 
    VALUES (@maxId, 'Consumo ECF', 0, NEWID(), '32');
    PRINT 'Insertado: Consumo ECF';
END

IF NOT EXISTS (SELECT 1 FROM dbo.ClienteTipo WHERE TipoCompFiscal = '44')
BEGIN
    SET @maxId = @maxId + 1;
    INSERT INTO dbo.ClienteTipo (idClienteTipo, ClienteTipo, NoPagaItbis, UidClienteTipo, TipoCompFiscal) 
    VALUES (@maxId, 'Regimen Especial ECF', 1, NEWID(), '44');
    PRINT 'Insertado: Regimen Especial ECF';
END

IF NOT EXISTS (SELECT 1 FROM dbo.ClienteTipo WHERE TipoCompFiscal = '45')
BEGIN
    SET @maxId = @maxId + 1;
    INSERT INTO dbo.ClienteTipo (idClienteTipo, ClienteTipo, NoPagaItbis, UidClienteTipo, TipoCompFiscal) 
    VALUES (@maxId, 'Gubernamental ECF', 0, NEWID(), '45');
    PRINT 'Insertado: Gubernamental ECF';
END

-- Actualizar el Cliente Generico para que use el tipo 31 (Credito Fiscal ECF)
UPDATE c
SET c.idClienteTipo = ct.idClienteTipo
FROM dbo.Cliente c
CROSS JOIN dbo.ClienteTipo ct
WHERE c.Cliente = 'CLIENTE GENERICO ECF'
  AND ct.TipoCompFiscal = '31';
GO
