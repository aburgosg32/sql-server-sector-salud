# Reto #02 — Buscar pacientes por distrito

**Nivel:** Básico  
**Base de datos:** ClinicaAcademica  
**Prerrequisito:** Reto #01.

## Caso

El área de admisión necesita identificar a los pacientes
registrados en determinados distritos para organizar
una campaña informativa.

Debes consultar sus datos y reconocer qué pacientes
no tienen teléfono registrado.

## Objetivo

Filtrar registros combinando condiciones y reconocer
la diferencia entre NULL y una cadena vacía.

## Actividades

1. Listar los pacientes del distrito Trujillo.
   Mostrar historia clínica, nombres, apellidos y distrito.
   Ordenar por apellido paterno, apellido materno e IdPaciente.

2. Listar las pacientes de sexo femenino que pertenecen
   a Trujillo o La Esperanza.
   Mostrar historia clínica, nombres, apellidos, sexo y distrito.

3. Listar los pacientes cuyo teléfono sea NULL.
   Mostrar historia clínica, nombres, apellidos y teléfono.

4. Contar cuántos pacientes pertenecen a Trujillo
   o La Esperanza.

## Conceptos

- WHERE
- AND
- IN
- IS NULL
- ORDER BY
- COUNT

## Comprobación

Con los datos originales:

| Actividad | Resultado |
|---|---:|
| Pacientes de Trujillo | 30 filas |
| Pacientes femeninas de Trujillo o La Esperanza | 0 filas |
| Pacientes con teléfono NULL | 17 filas |
| Pacientes de Trujillo o La Esperanza | 60 pacientes |

Obtener cero filas no significa que la consulta sea incorrecta.
En esta carga sintética, los pacientes de esos dos distritos
tienen sexo M. Es una característica del conjunto de práctica,
no una conclusión sobre una población real.

## Reto adicional

Listar los pacientes de El Porvenir o Huanchaco
que tengan teléfono registrado.

## Archivos

- [Práctica](practica.sql)
- [Solución](solucion.sql)

Todos los datos son ficticios.
