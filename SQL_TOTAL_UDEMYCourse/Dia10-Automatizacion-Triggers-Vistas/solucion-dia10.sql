
CREATE VIEW  VistaEmpleadosProyectos AS 
SELECT e.nombre, e.apellido, 
	p.nombre AS Nombre_Proyecto,
    a.horas_asignadas
FROM Empleados AS e
JOIN AsignacionesDeProyectos AS a ON a.empleado_id = e.empleado_id
JOIN Proyectos AS p ON a.proyecto_id = p.proyecto_id
WHERE horas_asignadas > 30;

SELECT * FROM VistaEmpleadosProyectos
