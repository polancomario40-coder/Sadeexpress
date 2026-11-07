
------------ final de:eduListClienteHijo ------------



------------ inicio de:eduListCursoCliente ------------





CREATE OR ALTER PROCEDURE [dbo].[eduListCursoCliente](@idCliente int) as

  Select

    NULL idCurso,

    '(Todos)' as Curso,

    NULL idInscripcion,

    NULL idPeriodo,

    NULL idNivel,

    NULL Activo

union all

  Select

    c.idCurso,

    c.Curso,

    i.idInscripcion,

    c.idPeriodo,

    c.idNivel,

    c.Activo

  From

    eduInscripcion i

    join eduCurso c on c.idCurso = i.idCurso

  where

    i.idCliente = @idCliente

  order by

    idperiodo desc




GO
