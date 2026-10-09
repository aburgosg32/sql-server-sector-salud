/*
RETO 03 — ESTADOS DE LAS CITAS POR SERVICIO
Nivel: Intermedio
*/

USE ClinicaAcademica;
GO

-- Periodo: desde 2026-01-01 hasta antes de 2026-01-31.

-- Relaciones:
-- Servicios → ProgramacionesMedicas → Cupos → Citas

-- Estados:
-- 1 = Registrada
-- 2 = Atendida
-- 3 = No asistió
-- 4 = Cancelada

-- 1. Construir el reporte con una fila por servicio.


-- 2. Comprobar que aparecen servicios sin citas.


-- 3. Ordenar por TotalCitas DESC y Servicio ASC.


-- 4. Verificar que los estados suman el total.


-- RETO ADICIONAL:
-- Calcular el porcentaje de inasistencia entre las citas
-- atendidas y las citas con inasistencia.
