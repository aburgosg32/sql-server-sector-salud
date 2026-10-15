# Reto #06 — Identificar pacientes sin atenciones

**Nivel:** Intermedio  
**Base de datos:** ClinicaAcademica  
**Prerrequisitos:** JOIN y filtros por fechas.

## Caso

La coordinación necesita identificar a los pacientes registrados
que no tuvieron ninguna atención durante enero de 2026.

Algunos podrían tener citas registradas, canceladas o con
inasistencia. Tener una cita no demuestra haber recibido atención.

## Objetivo

Resolver una búsqueda de ausencia mediante dos alternativas:

- LEFT JOIN con IS NULL.
- Subconsulta correlacionada con NOT EXISTS.

## Actividades

1. Obtener los pacientes sin atenciones en enero de 2026
   utilizando LEFT JOIN.
2. Obtener el mismo resultado utilizando NOT EXISTS.
3. Comparar ambas listas y comprobar que contienen
   los mismos IdPaciente.
4. Ordenar por apellidos e IdPaciente.

## Conceptos teóricos

### LEFT JOIN e IS NULL

LEFT JOIN conserva a todos los pacientes.

Si no encuentra una atención relacionada dentro del periodo,
la columna IdAtencion aparece como NULL.

Filtrar ese NULL permite identificar la ausencia de coincidencias.

La lista de atenciones del periodo se construye primero
en una tabla derivada.

### Tabla derivada

Es una consulta dentro del FROM o JOIN, a la que asignamos
un alias para utilizar su resultado en la consulta exterior.

En este reto, representa las atenciones del periodo junto
con el paciente correspondiente.

### Subconsulta correlacionada

Es una consulta que utiliza una columna de la consulta exterior.

Ejemplo de correlación:

C.IdPaciente = P.IdPaciente

La condición vincula la búsqueda con el paciente que
se está evaluando.

### NOT EXISTS

Comprueba que una subconsulta no devuelva ninguna fila.

Lo utilizamos para preguntar:

¿No existe ninguna atención de este paciente durante el periodo?

### SELECT 1 dentro de EXISTS

El valor 1 no es un conteo.

EXISTS y NOT EXISTS evalúan si hay filas, no el valor
que aparece en el SELECT.

### DISTINCT

Elimina filas duplicadas del resultado seleccionado.

En la primera solución evitaremos necesitar DISTINCT:
el conjunto derecho contiene atenciones, y los pacientes
sin coincidencias quedan con una única fila conservada.

## Reglas

- Considerar a todos los pacientes registrados.
- La ausencia corresponde solamente al periodo analizado.
- Utilizar la fecha de atención.
- No confundir pacientes sin atención con pacientes sin cita.

## Comprobación

Con la carga original, ambas soluciones devuelven 40 pacientes.

La ausencia de atenciones no demuestra que el paciente
necesite seguimiento clínico. El reporte solo describe
los registros disponibles.

## Reto adicional

Modificar el periodo para analizar únicamente
del 1 al 15 de enero de 2026, ambos días incluidos.

Usar como fin exclusivo el 16 de enero.
Comparar el resultado con el del mes completo.

## Archivos

- [Práctica](practica.sql)
- [Solución](solucion.sql)

Todos los datos son ficticios.
