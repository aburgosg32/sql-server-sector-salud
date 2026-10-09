USE ClinicaAcademica;
GO

-- El filtro de fechas está en ON para conservar
-- los servicios sin programación durante el periodo.
-- COUNT(C.IdCita) cuenta citas; COUNT(*) también contaría
-- la fila del servicio cuando no existan citas relacionadas.

SELECT
    S.Nombre AS Servicio,
    COUNT(C.IdCita) AS TotalCitas,

    SUM(CASE
        WHEN C.IdEstadoCita = 1 THEN 1 ELSE 0
    END) AS Registradas,

    SUM(CASE
        WHEN C.IdEstadoCita = 2 THEN 1 ELSE 0
    END) AS Atendidas,

    SUM(CASE
        WHEN C.IdEstadoCita = 3 THEN 1 ELSE 0
    END) AS NoAsistieron,

    SUM(CASE
        WHEN C.IdEstadoCita = 4 THEN 1 ELSE 0
    END) AS Canceladas

FROM dbo.Servicios AS S

LEFT JOIN dbo.ProgramacionesMedicas AS PM
    ON PM.IdServicio = S.IdServicio
   AND PM.Fecha >= '20260101'
   AND PM.Fecha < '20260131'

LEFT JOIN dbo.Cupos AS CU
    ON CU.IdProgramacion = PM.IdProgramacion

LEFT JOIN dbo.Citas AS C
    ON C.IdCupo = CU.IdCupo

GROUP BY
    S.IdServicio,
    S.Nombre

ORDER BY
    TotalCitas DESC,
    Servicio ASC;
GO

-- Comprobación general: debe mostrar 360 citas,
-- distribuidas en 60, 200, 50 y 50.
SELECT
    EC.Nombre AS Estado,
    COUNT(C.IdCita) AS Cantidad
FROM dbo.EstadosCita AS EC
LEFT JOIN
(
    SELECT
        C.IdCita,
        C.IdEstadoCita
    FROM dbo.Citas AS C
    INNER JOIN dbo.Cupos AS CU
        ON CU.IdCupo = C.IdCupo
    INNER JOIN dbo.ProgramacionesMedicas AS PM
        ON PM.IdProgramacion = CU.IdProgramacion
    WHERE PM.Fecha >= '20260101'
      AND PM.Fecha < '20260131'
) AS C
    ON C.IdEstadoCita = EC.IdEstadoCita
GROUP BY
    EC.IdEstadoCita,
    EC.Nombre
ORDER BY EC.IdEstadoCita;
GO

-- RETO ADICIONAL
-- NULLIF evita dividir entre cero.
-- 100.0 permite calcular un porcentaje con decimales.
SELECT
    S.Nombre AS Servicio,

    CAST(
        100.0
        * SUM(CASE
            WHEN C.IdEstadoCita = 3 THEN 1 ELSE 0
          END)
        / NULLIF(
            SUM(CASE
                WHEN C.IdEstadoCita IN (2, 3) THEN 1 ELSE 0
            END),
            0
          )
        AS decimal(5, 2)
    ) AS PorcentajeInasistencia

FROM dbo.Servicios AS S

LEFT JOIN dbo.ProgramacionesMedicas AS PM
    ON PM.IdServicio = S.IdServicio
   AND PM.Fecha >= '20260101'
   AND PM.Fecha < '20260131'

LEFT JOIN dbo.Cupos AS CU
    ON CU.IdProgramacion = PM.IdProgramacion

LEFT JOIN dbo.Citas AS C
    ON C.IdCupo = CU.IdCupo

GROUP BY
    S.IdServicio,
    S.Nombre

ORDER BY Servicio;
GO
