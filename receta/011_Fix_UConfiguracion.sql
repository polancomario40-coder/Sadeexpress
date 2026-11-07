UPDATE c
SET UConfiguracion = e.Id
FROM Configuracion c
JOIN ECFWorker.dbo.ecf_emisor e ON LTRIM(RTRIM(REPLACE(c.Rnc,'-',''))) COLLATE DATABASE_DEFAULT = LTRIM(RTRIM(REPLACE(e.Rnc,'-',''))) COLLATE DATABASE_DEFAULT
WHERE c.UConfiguracion <> e.Id;
GO
