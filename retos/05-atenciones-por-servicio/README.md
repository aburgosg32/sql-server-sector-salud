# Reto #05 — Contar atenciones por servicio

**Nivel:** Intermedio  
**Base de datos:** ClinicaAcademica  
**Prerrequisito:** Reto #04.

## Caso

La coordinación necesita conocer cuántas atenciones realizó
cada servicio durante enero de 2026.

También solicita identificar los servicios con al menos
40 atenciones.

## Objetivo

Resumir registros mediante COUNT, GROUP BY y HAVING.

## Reglas

- Contar registros de Atenciones.
- No contar las citas como si todas hubieran sido atendidas.
- Filtrar por FechaHoraInicio.
- Analizar desde el 1 de enero de 2026, inclusive,
  hasta el 1 de febrero de 2026, exclusivo.
- El reporte inicial incluye servicios con atenciones
  dentro del periodo.

## Actividades

1. Relacionar las atenciones con sus servicios.
2. Contar las atenciones por servicio.
3. Ordenar del mayor al menor total.
4. Construir una segunda consulta que muestre únicamente
   servicios con al menos 40 atenciones.

## Conceptos teóricos

### COUNT(*)

Cuenta las filas del resultado.

En este ejercicio, las relaciones utilizadas permiten que
cada atención contribuya con una fila antes de agrupar.

### GROUP BY

Reúne las filas por servicio para calcular un total por grupo.

Agrupamos por IdServicio y Nombre para no mezclar servicios
distintos que pudieran compartir un nombre.

### WHERE

Filtra registros individuales antes de la agrupación.

Lo utilizaremos para seleccionar las atenciones del periodo.

### HAVING

Filtra grupos después de la agrupación.

Ejemplo:

HAVING COUNT(*) >= 40

Conserva los servicios cuyo conteo alcanza al menos 40.

### Rango de fechas con fin exclusivo

La condición:

FechaHoraInicio >= @Inicio
AND FechaHoraInicio < @FinExclusivo

incluye todas las horas del último día del periodo.

## Comprobación

Con la carga original:

- El reporte inicial devuelve 4 servicios.
- La suma de sus cantidades es 200 atenciones.
- Cada uno de esos servicios tiene 50 atenciones.
- El filtro de al menos 40 conserva los 4 servicios.

La distribución responde a la generación sintética de los datos.

## Reto adicional

Cambiar el mínimo a 60 atenciones.

Explicar por qué el resultado queda vacío con la carga original.

## Archivos

- [Práctica](practica.sql)
- [Solución](solucion.sql)

Todos los datos son ficticios.
