# SQL Server aplicado al sector salud

Aprende SQL Server y Transact-SQL mediante ejercicios progresivos
basados en procesos de atención médica.

Este proyecto nace de mi experiencia como ingeniero de sistemas
en el sector hospitalario y docente de tecnologías de la información.

## Objetivo

Desarrollar habilidades para diseñar, consultar, programar y
administrar bases de datos en SQL Server, resolviendo problemas
de citas, disponibilidad, atención médica y seguimiento.

## Base de datos: ClinicaAcademica

La base representa un proceso simplificado de consulta externa:

- Registro de pacientes.
- Organización de servicios y especialidades.
- Programación médica y generación de cupos.
- Reserva de citas.
- Registro de atenciones y diagnósticos.
- Solicitud de procedimientos.
- Historial de citas y estructura para auditoría.

Incluye 120 pacientes, 360 citas y 200 atenciones.
Todos los datos son ficticios y tienen fines educativos.

Las fechas del escenario corresponden a enero de 2026.

## Ruta de aprendizaje

1. Preparación del entorno, creación de la base y restauración de backups.
2. Modelo relacional, claves y restricciones.
3. Consultas básicas y filtros.
4. Funciones de texto, fechas y conversiones.
5. Relaciones entre tablas: JOIN.
6. Agregaciones y preguntas de negocio.
7. Subconsultas y expresiones comunes de tabla: CTE.
8. Funciones de ventana y análisis avanzado.
9. INSERT, UPDATE, DELETE y transacciones.
10. Vistas, procedimientos almacenados y funciones.
11. Triggers e historial de cambios.
12. Índices, planes de ejecución y optimización.
13. Seguridad, concurrencia y administración.
14. Proyecto integrador.

## Cómo trabajar los ejercicios

1. Lee el caso y sus reglas.
2. Identifica las tablas y columnas necesarias.
3. Escribe y ejecuta tu consulta.
4. Comprueba los resultados.
5. Revisa la solución explicada.
6. Resuelve el reto adicional.

## Herramientas

- Microsoft SQL Server.
- SQL Server Management Studio: SSMS.
- Git y GitHub.
  
## Retos disponibles

| Reto | Tema | Nivel |
|---|---|---|
| [01](retos/01-explorar-base-de-datos/README.md) | Explorar la base de datos | Inicial |
| [02](retos/02-pacientes-por-distrito/README.md) | Buscar pacientes por distrito | Básico |
| [03](retos/03-estados-citas-por-servicio/README.md) | Analizar estados de citas por servicio | Intermedio |

## Autor

Abel Burgos García  
Ingeniero de Sistemas | Docente TI 

## Aviso

Este modelo es académico y simplificado.
No está destinado a gestionar atención médica real.
