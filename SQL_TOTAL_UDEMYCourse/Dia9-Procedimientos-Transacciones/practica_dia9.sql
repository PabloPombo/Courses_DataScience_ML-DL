DELIMITER //
CREATE PROCEDURE AgregarEmpleado (IN _nombre VARCHAR(255), IN _apellido VARCHAR(255), IN_email VARCHAR(255), IN _depto_id INT)
BEGIN
	INSERT INTO Empleados(nombre, apellido, email, depto_id) VALUES(_nombre, _apellido, _email, _depto_id);
    END //

DELIMITER ;

CALL AgregarEmpleado('Elena', 'Torres', 'elena.torres@gmail.com', 3);
SELECT * FROM empleados;


BEGIN;
SAVEPOINT PreValidacion;
INSERT INTO asignacionesdeproyectos (proyecto_id, empleado_id, horas_asignadas) VALUES (5,1,10);
INSERT INTO asignacionesdeproyectos (proyecto_id, empleado_id, horas_asignadas) VALUES (5,2,15);
-- Imaginar masinsersiones
-- Codigo para validar total de horas
-- Si total excede, podemos revertir a savepoint
ROLLBACK TO PreValidacion; 