USE EmpresaDB;

-- Consulta SQL: Escribe una consulta SQL que seleccione el nombre y apellido de cada empleado, junto con el nombre del proyecto y las horas asignadas a ese proyecto.
-- Orden de Resultados: Los resultados deben estar ordenados primero por empleado y luego por las horas asignadas de manera descendente.
-- Presentación de Datos: Asegúrate de que cada línea del reporte muestre claramente el nombre del empleado, el nombre del proyecto, y las horas asignadas a ese proyecto.
-- Recuerda utilizar los siguientes alias para el resultado final: Nombre Empleado, Apellido Empleado, Nombre Proyecto y  Horas Asignadas

SELECT e.nombre AS 'Nombre Empleado', 
		e.apellido AS 'Apellido Empleado',
        p.nombre AS 'Nombre Proyecto',
        pro.horas_asignadas AS 'Horas Asignadas'
FROM Empleados AS e
JOIN AsignacionesDeProyectos AS pro ON pro.empleado_id = e.empleado_id
JOIN Proyectos AS p ON pro.proyecto_id = p.proyecto_id
ORDER BY e.nombre, e.apellido, pro.horas_asignadas DESC;


-- Consulta SQL: Escribe una consulta SQL que seleccione el nombre del departamento y la suma total de horas asignadas a los proyectos por los empleados de ese departamento.
-- Agrupación de Resultados: Los resultados deben estar agrupados por departamento.
-- Orden de Resultados: Los resultados deben estar ordenados por el total de horas de mayor a menor.
-- Recuerda utilizar los siguientes alias para el resultado final: Nombre Departamento y Total Horas Asignadas

SELECT d.nombre AS 'Nombre Departamento',
		SUM(asi.horas_asignadas) AS 'Total Horas Asignadas'
FROM Departamentos AS d
JOIN Empleados AS e ON e.depto_id = d.depto_id 
JOIN AsignacionesDeProyectos AS asi ON asi.empleado_id = e.empleado_id 
GROUP BY e.empleado_id   
ORDER BY `Total Horas Asignadas` DESC;

-- Consulta SQL: Escribe una consulta SQL que seleccione el nombre y apellido de cada empleado, junto con el total de horas trabajadas 
-- y un ranking de empleados dentro de su departamento basado en las horas trabajadas.
-- Funciones de Ventana: Utiliza la función de ventana RANK() para asignar un ranking a cada empleado en función de las horas trabajadas, agrupado por departamento.
-- Orden de Resultados: Los resultados deben estar ordenados por departamento y por ranking.
-- Recuerda utilizar los siguientes alias para el resultado final: Nombre, Apellido, Total Horas Trabajadas, Ranking Departamental

SELECT e.nombre AS Nombre, 
		e.apellido AS Apellido,
        SUM(asi.horas_asignadas) AS 'Total Horas Trabajadas',
        RANK()OVER(PARTITION BY e.depto_id ORDER BY SUM(asi.horas_asignadas) DESC)AS 'Ranking Departamental'
FROM Empleados AS e
LEFT JOIN AsignacionesDeProyectos AS asi ON asi.empleado_id = e.empleado_id
JOIN Departamentos AS d ON e.depto_id = d.depto_id
GROUP BY e.empleado_id;


