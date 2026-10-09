USE ClinicaAcademica;
GO

-- 1. WHERE selecciona los pacientes del distrito indicado.
SELECT
    HistoriaClinica,
    Nombres,
    ApellidoPaterno,
    ApellidoMaterno,
    Distrito
FROM dbo.Pacientes
WHERE Distrito = N'Trujillo'
ORDER BY ApellidoPaterno, ApellidoMaterno, IdPaciente;
GO

-- 2. IN permite comparar contra una lista de valores.
-- AND exige que ambas condiciones se cumplan.
SELECT
    HistoriaClinica,
    Nombres,
    ApellidoPaterno,
    ApellidoMaterno,
    Sexo,
    Distrito
FROM dbo.Pacientes
WHERE Sexo = 'F'
  AND Distrito IN (N'Trujillo', N'La Esperanza')
ORDER BY ApellidoPaterno, ApellidoMaterno, IdPaciente;
GO

-- 3. Los valores NULL se consultan con IS NULL.
-- No utilizar Telefono = NULL.
SELECT
    HistoriaClinica,
    Nombres,
    ApellidoPaterno,
    ApellidoMaterno,
    Telefono
FROM dbo.Pacientes
WHERE Telefono IS NULL
ORDER BY IdPaciente;
GO

-- 4. COUNT(*) cuenta las filas que cumplen el filtro.
SELECT COUNT(*) AS TotalPacientes
FROM dbo.Pacientes
WHERE Distrito IN (N'Trujillo', N'La Esperanza');
GO

-- RETO ADICIONAL
SELECT
    HistoriaClinica,
    Nombres,
    ApellidoPaterno,
    ApellidoMaterno,
    Distrito,
    Telefono
FROM dbo.Pacientes
WHERE Distrito IN (N'El Porvenir', N'Huanchaco')
  AND Telefono IS NOT NULL
ORDER BY Distrito, ApellidoPaterno, ApellidoMaterno, IdPaciente;
GO
