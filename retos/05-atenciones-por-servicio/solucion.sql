USE ClinicaAcademica;
GO

DECLARE @Inicio date = '20260101';
DECLARE @FinExclusivo date = '20260201';
DECLARE @MinimoAtenciones int = 40;

-- CONSULTA 1: total por servicio.

SELECT
    S.IdServicio,
    S.Nombre AS Servicio,
    COUNT(*) AS TotalAtenciones

FROM dbo.Atenciones AS A

INNER JOIN dbo.Citas AS C
    ON C.IdCita = A.IdCita

INNER JOIN dbo.Cupos AS CU
    ON CU.IdCupo = C.IdCupo

INNER JOIN dbo.ProgramacionesMedicas AS PM
    ON PM.IdProgramacion = CU.IdProgramacion

INNER JOIN dbo.Servicios AS S
    ON S.IdServicio = PM.IdServicio

WHERE A.FechaHoraInicio >= @Inicio
  AND A.FechaHoraInicio < @FinExclusivo

GROUP BY
    S.IdServicio,
    S.Nombre

ORDER BY
    TotalAtenciones DESC,
    S.IdServicio;

-- CONSULTA 2: servicios que alcanzan el mínimo.

SELECT
    S.IdServicio,
    S.Nombre AS Servicio,
    COUNT(*) AS TotalAtenciones

FROM dbo.Atenciones AS A

INNER JOIN dbo.Citas AS C
    ON C.IdCita = A.IdCita

INNER JOIN dbo.Cupos AS CU
    ON CU.IdCupo = C.IdCupo

INNER JOIN dbo.ProgramacionesMedicas AS PM
    ON PM.IdProgramacion = CU.IdProgramacion

INNER JOIN dbo.Servicios AS S
    ON S.IdServicio = PM.IdServicio

WHERE A.FechaHoraInicio >= @Inicio
  AND A.FechaHoraInicio < @FinExclusivo

GROUP BY
    S.IdServicio,
    S.Nombre

HAVING COUNT(*) >= @MinimoAtenciones

ORDER BY
    TotalAtenciones DESC,
    S.IdServicio;
GO

/*
RETO ADICIONAL:

Cambiar @MinimoAtenciones a 60 y ejecutar nuevamente.

No se muestran filas porque ninguno de los servicios
alcanza 60 atenciones en la carga original.
*/
