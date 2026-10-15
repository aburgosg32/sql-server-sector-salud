USE ClinicaAcademica;
GO

DECLARE @Inicio date = '20260101';
DECLARE @FinExclusivo date = '20260201';

-- SOLUCIÓN A:
-- Construir una tabla derivada con las atenciones del periodo
-- y sus IdPaciente.
-- Relacionarla con Pacientes mediante LEFT JOIN.
-- Filtrar IdAtencion IS NULL.


-- SOLUCIÓN B:
-- Utilizar NOT EXISTS.
-- Relacionar la subconsulta con el paciente exterior.
-- Buscar atenciones dentro del mismo periodo.


-- RETO ADICIONAL:
-- Cambiar @FinExclusivo a '20260116'.
