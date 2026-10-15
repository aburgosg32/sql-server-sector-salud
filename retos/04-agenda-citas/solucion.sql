USE ClinicaAcademica;
GO

DECLARE @Fecha date = '20260101';

SELECT
    PM.Fecha,
    CU.HoraInicio,
    P.HistoriaClinica,

    CONCAT(
        P.ApellidoPaterno, N' ',
        P.ApellidoMaterno, N', ',
        P.Nombres
    ) AS Paciente,

    S.Nombre AS Servicio,

    CONCAT(
        M.Apellidos, N', ', M.Nombres
    ) AS Medico,

    EC.Nombre AS EstadoCita

FROM dbo.Citas AS C

INNER JOIN dbo.Pacientes AS P
    ON P.IdPaciente = C.IdPaciente

INNER JOIN dbo.EstadosCita AS EC
    ON EC.IdEstadoCita = C.IdEstadoCita

INNER JOIN dbo.Cupos AS CU
    ON CU.IdCupo = C.IdCupo

INNER JOIN dbo.ProgramacionesMedicas AS PM
    ON PM.IdProgramacion = CU.IdProgramacion

INNER JOIN dbo.Servicios AS S
    ON S.IdServicio = PM.IdServicio

INNER JOIN dbo.Medicos AS M
    ON M.IdMedico = PM.IdMedico

WHERE PM.Fecha = @Fecha

ORDER BY
    S.Nombre,
    CU.HoraInicio,
    C.IdCita;
GO

/*
RETO ADICIONAL:

Agregar al WHERE de la consulta anterior:

AND S.Nombre = N'Consulta externa - Medicina general'

Con la carga original, devuelve 2 citas.
*/
