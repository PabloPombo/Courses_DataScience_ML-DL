-- VISTAS normales tambien existen materializadas, pero no s epueden correr aqui

CREATE VIEW VistaEmpleados AS
	SELECT nombre, apellido, email
    FROM empleados
    WHERE depto_id = 1;
    
SELECT * FROM VistaEmpleados

-- Triggers
DELIMITER $$
CREATE TRIGGER RegistrarNuevoEmpleado
AFTER INSERT ON Empleados
FOR EACH ROW
BEGIN
	INSERT INTO LogEmpleados (empleado_id, fecha_registro) VALUES (NEW.empleado_id, NOW());
END $$

DELIMITER ;

INSERT INTO Empleados (nombre, apellido, email) VALUES('Gabo','Robles','gaborobles@gmail.com');
SELECT * FROM logempleados



