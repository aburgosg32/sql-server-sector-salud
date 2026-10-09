/*
SOLUCIÓN DEL RETO 01
Explorar la base de datos de atención médica.
*/

USE ClinicaAcademica;
GO

-- ACTIVIDAD 1
-- sys.tables contiene información sobre las tablas de usuario.
-- SCHEMA_NAME obtiene el nombre del esquema.
SELECT
    SCHEMA_NAME(schema_id) AS Esquema,
    name AS Tabla
FROM sys.tables
ORDER BY Esquema, Tabla;
GO

-- ACTIVIDAD 2
-- TOP limita las filas.
-- ORDER BY determina cuáles son los primeros 10 pacientes.
SELECT TOP (10)
    HistoriaClinica,
    NumeroDocumento,
    Nombres,
    ApellidoPaterno,
    ApellidoMaterno,
    FechaNacimiento,
    Sexo,
    Distrito
FROM dbo.Pacientes
ORDER BY IdPaciente;
GO

-- ACTIVIDAD 3
-- COUNT(*) cuenta filas.
-- UNION ALL reúne los tres resultados.
SELECT N'Pacientes' AS Tabla, COUNT(*) AS Registros
FROM dbo.Pacientes

UNION ALL

SELECT N'Citas', COUNT(*)
FROM dbo.Citas

UNION ALL

SELECT N'Atenciones', COUNT(*)
FROM dbo.Atenciones;
GO

-- RETO ADICIONAL A
SELECT
    IdEspecialidad,
    Nombre
FROM dbo.Especialidades
ORDER BY Nombre;
GO

-- RETO ADICIONAL B
SELECT COUNT(*) AS MedicosActivos
FROM dbo.Medicos
WHERE Activo = 1;
GO
