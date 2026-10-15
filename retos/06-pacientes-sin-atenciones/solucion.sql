USE ClinicaAcademica;
GO

DECLARE @Inicio date = '20260101';
DECLARE @FinExclusivo date = '20260201';

-- SOLUCIÓN A: LEFT JOIN con una tabla derivada.

SELECT
    P.IdPaciente,
    P.HistoriaClinica,
    P.ApellidoPaterno,
    P.ApellidoMaterno,
    P.Nombres

FROM dbo.Pacientes AS P

LEFT JOIN
(
    SELECT
        C.IdPaciente,
        A.IdAtencion

    FROM dbo.Atenciones AS A

    INNER JOIN dbo.Citas AS C
        ON C.IdCita = A.IdCita

    WHERE A.FechaHoraInicio >= @Inicio
      AND A.FechaHoraInicio < @FinExclusivo
) AS AP
    ON AP.IdPaciente = P.IdPaciente

WHERE AP.IdAtencion IS NULL

ORDER BY
    P.ApellidoPaterno,
    P.ApellidoMaterno,
    P.IdPaciente;


-- SOLUCIÓN B: subconsulta correlacionada con NOT EXISTS.

SELECT
    P.IdPaciente,
    P.HistoriaClinica,
    P.ApellidoPaterno,
    P.ApellidoMaterno,
    P.Nombres

FROM dbo.Pacientes AS P

WHERE NOT EXISTS
(
    SELECT 1

    FROM dbo.Citas AS C

    INNER JOIN dbo.Atenciones AS A
        ON A.IdCita = C.IdCita

    WHERE C.IdPaciente = P.IdPaciente
      AND A.FechaHoraInicio >= @Inicio
      AND A.FechaHoraInicio < @FinExclusivo
)

ORDER BY
    P.ApellidoPaterno,
    P.ApellidoMaterno,
    P.IdPaciente;
GO

/*
RETO ADICIONAL:

Cambiar @FinExclusivo a '20260116'.

Ambas consultas buscarán pacientes sin atenciones
desde el inicio del 1 de enero hasta antes
del inicio del 16 de enero.
*/
