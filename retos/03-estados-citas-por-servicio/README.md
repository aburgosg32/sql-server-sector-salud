# Reto #03 — Analizar los estados de las citas por servicio

**Nivel:** Intermedio  
**Base de datos:** ClinicaAcademica  
**Prerrequisito:** Consultas básicas, JOIN y GROUP BY.

## Caso

La coordinación de consulta externa necesita conocer
cuántas citas se reservaron para enero de 2026
y cómo se distribuyen sus estados en cada servicio.

El reporte debe incluir todos los servicios, incluso
si alguno no tiene citas durante el periodo.

## Objetivo

Relacionar tablas y construir un reporte mediante
agregación condicional.

## Reglas del análisis

- El periodo se determina por la fecha de la programación,
  no por la fecha de reserva.
- Incluir del 1 al 30 de enero de 2026.
- El total incluye citas registradas, atendidas,
  con inasistencia y canceladas.
- La base representa un escenario con corte
  al 26 de enero de 2026 a las 00:00.
- Las citas registradas de los últimos días todavía
  no tienen un resultado de atención.

## Actividades

1. Elaborar un reporte con una fila por servicio:
   Servicio, TotalCitas, Registradas, Atendidas,
   NoAsistieron y Canceladas.

2. Mantener en el resultado los servicios que no tengan citas,
   mostrando cero en sus cantidades.

3. Ordenar por TotalCitas de mayor a menor
   y por nombre del servicio en caso de empate.

4. Comprobar que la suma de los cuatro estados
   coincide con TotalCitas en cada servicio.

## Conceptos

- INNER JOIN
- LEFT JOIN
- GROUP BY
- COUNT
- SUM
- CASE
- Filtros de fechas

## Comprobación

Con los datos originales:

- El reporte devuelve 6 servicios.
- Cada servicio tiene 60 citas.
- La suma de TotalCitas es 360.
- Los totales generales son:

| Estado | Cantidad |
|---|---:|
| Registradas | 60 |
| Atendidas | 200 |
| No asistieron | 50 |
| Canceladas | 50 |

La distribución de estados por servicio puede variar.
No todos los servicios tienen citas de todos los estados.

## Reto adicional

Agregar PorcentajeInasistencia:

NoAsistieron / (Atendidas + NoAsistieron) × 100

Excluir las citas registradas y canceladas del denominador.
Mostrar dos decimales y NULL cuando el denominador sea cero.

## Archivos

- [Práctica](practica.sql)
- [Solución](solucion.sql)

Todos los datos son ficticios.
