# Reto #01 — Explorar la base de datos de atención médica

**Nivel:** Inicial  
**Base de datos:** ClinicaAcademica

## Caso

Te incorporas al área de informática de una clínica.
Antes de elaborar reportes, necesitas conocer la estructura
de su base de datos y comprobar la carga inicial.

El sistema registra pacientes, programaciones médicas,
cupos, citas, atenciones, diagnósticos y procedimientos.

## Objetivo

Reconocer las tablas y consultar información básica
utilizando Transact-SQL.

## Requisitos

- Tener creada y cargada la base ClinicaAcademica.
- Conectarse desde SQL Server Management Studio.

## Actividades

1. Listar las tablas de la base, mostrando su esquema y nombre.
2. Consultar los primeros 10 pacientes ordenados por IdPaciente.
   Mostrar historia clínica, documento, nombres, apellidos,
   fecha de nacimiento, sexo y distrito.
3. Contar los registros de Pacientes, Citas y Atenciones
   en un mismo resultado con las columnas Tabla y Registros.

## Conceptos

- USE
- SELECT
- TOP
- ORDER BY
- COUNT
- UNION ALL
- sys.tables
- SCHEMA_NAME

## Comprobación

Si la carga inicial no ha sido modificada:

| Tabla | Registros |
|---|---:|
| Pacientes | 120 |
| Citas | 360 |
| Atenciones | 200 |

El listado de tablas debe contener 20 tablas.
La consulta de pacientes debe devolver 10 filas.

## Reto adicional

Listar las especialidades en orden alfabético
y contar cuántos médicos están activos.

## Archivos

- [Abrir la práctica](practica.sql)
- [Consultar la solución](solucion.sql)

Intenta completar las actividades antes de revisar la solución.

Todos los datos son ficticios y tienen fines educativos.
