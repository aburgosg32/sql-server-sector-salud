# Reto #04 — Construir una agenda de citas

**Nivel:** Intermedio  
**Base de datos:** ClinicaAcademica

## Caso

Admisión necesita consultar la agenda de una fecha específica.

La información está distribuida en varias tablas:
la cita identifica al paciente y al cupo; el cupo pertenece
a una programación; la programación identifica al médico
y al servicio.

## Objetivo

Construir un listado relacionando varias tablas con INNER JOIN.

## Actividades

1. Consultar todas las citas programadas para el 1 de enero de 2026.
2. Mostrar:
   - Fecha.
   - Hora de inicio del cupo.
   - Historia clínica.
   - Paciente.
   - Servicio.
   - Médico.
   - Estado de la cita.
3. Incluir todos los estados, también las citas canceladas.
4. Ordenar por servicio, hora e IdCita.

## Conceptos teóricos

### INNER JOIN

Relaciona filas que cumplen una condición de coincidencia.

Ejemplo:

Citas.IdPaciente = Pacientes.IdPaciente

Cada relación debe construirse con sus identificadores,
no comparando los nombres de las personas.

### Alias de tablas

Un alias es un nombre corto para referirse a una tabla.

Por ejemplo:

FROM dbo.Pacientes AS P

Permite escribir P.Nombres y distinguir columnas con el mismo
nombre en diferentes tablas.

### CONCAT

Combina valores de texto en una expresión.

Lo utilizaremos para mostrar los apellidos y nombres
del paciente y del médico.

### WHERE

Filtra las filas que cumplen una condición.

La fecha de la agenda se obtiene de ProgramacionesMedicas.Fecha,
no de Citas.FechaReserva.

### ORDER BY

Determina el orden de presentación del resultado.

Agregar IdCita como último criterio permite desempatar
filas con el mismo servicio y hora.

## Relaciones necesarias

| Origen | Destino | Columnas |
|---|---|---|
| Citas | Pacientes | IdPaciente |
| Citas | EstadosCita | IdEstadoCita |
| Citas | Cupos | IdCupo |
| Cupos | ProgramacionesMedicas | IdProgramacion |
| ProgramacionesMedicas | Servicios | IdServicio |
| ProgramacionesMedicas | Medicos | IdMedico |

## Comprobación

Con la carga original, la consulta del 1 de enero de 2026
debe devolver 12 citas.

Cada fila representa una cita, no una atención.

## Reto adicional

Modificar la consulta para mostrar únicamente las citas
del servicio Consulta externa - Medicina general.

## Archivos

- [Práctica](practica.sql)
- [Solución](solucion.sql)

Todos los datos son ficticios.
