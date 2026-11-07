-- =============================================
-- MIGRATION 012: Generar Secuencias de Prueba para ECF
-- =============================================
-- Objetivo: Insertar secuencias de prueba (1 al 5) para todos los 
--           comprobantes electronicos (Serie E) que no tengan una configurada.
-- Uso: Solo para ambientes de Desarrollo / Piloto para evitar errores de NCF en pruebas.
-- =============================================

INSERT INTO dbo.CompFiscalSecuencia (idCompFiscalSecuencia, uidCompFiscal, Secuencia, SecuenciaFinal, ValidoHasta, FechaRegistro, inactivo, reorden)
SELECT 
    NEWID(), 
    c.uidCompFiscal, 
    1, 
    5, 
    '2030-12-31', 
    GETDATE(), 
    0, 
    0
FROM dbo.CompFiscal c
WHERE c.Serie = 'E'
  AND NOT EXISTS (
      SELECT 1 FROM dbo.CompFiscalSecuencia s 
      WHERE s.uidCompFiscal = c.uidCompFiscal
  );

PRINT 'Secuencias de prueba para ECF creadas o verificadas exitosamente.';
GO
