USE ClinicaAcademica;
GO

DECLARE @Fecha date = '20260101';

-- 1. Partir de dbo.Citas.
-- 2. Relacionar pacientes, estados y cupos.
-- 3. Relacionar la programación, el servicio y el médico.
-- 4. Filtrar por la fecha de programación.
-- 5. Ordenar por servicio, hora e IdCita.


-- RETO ADICIONAL:
-- Mostrar únicamente Consulta externa - Medicina general.
