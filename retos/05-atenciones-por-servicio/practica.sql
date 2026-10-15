USE ClinicaAcademica;
GO

DECLARE @Inicio date = '20260101';
DECLARE @FinExclusivo date = '20260201';
DECLARE @MinimoAtenciones int = 40;

-- CONSULTA 1:
-- Relacionar Atenciones → Citas → Cupos
-- → ProgramacionesMedicas → Servicios.
-- Filtrar las fechas y agrupar por servicio.


-- CONSULTA 2:
-- Repetir el reporte agregando HAVING
-- para exigir al menos @MinimoAtenciones.


-- RETO ADICIONAL:
-- Cambiar el mínimo a 60.
