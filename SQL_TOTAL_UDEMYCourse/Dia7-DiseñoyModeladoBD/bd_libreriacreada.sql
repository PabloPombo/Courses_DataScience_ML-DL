CREATE DATABASE IF NOT EXISTS biblioteca;
USE biblioteca;

CREATE TABLE IF NOT EXISTS Libros(
	id_libro INT AUTO_INCREMENT PRIMARY KEY,
	titulo VARCHAR(255) NOT NULL,
	id_autor INT,
	año_publicacion YEAR,
    FOREIGN KEY(id_autor) REFERENCES Autores(id_autor)
    ON DELETE SET NULL
); 


CREATE TABLE IF NOT EXISTS Autores(
	id_autor INT AUTO_INCREMENT PRIMARY KEY,
	nombre VARCHAR(255) NOT NULL,
	nacionalidad VARCHAR(255)
);


CREATE TABLE IF NOT EXISTS Lectores(
	id_lector INT AUTO_INCREMENT PRIMARY KEY,
	nombre VARCHAR(255) NOT NULL,
	email VARCHAR(255) UNIQUE NOT NULL
);

CREATE TABLE IF NOT EXISTS Autores(
	id_prestamo INT AUTO_INCREMENT PRIMARY KEY,
	id_lector INT,
	id_libro INT,
	fecha_prestamo DATE NOT NULL,
	fecha_devolucion DATE,
	FOREIGN KEY (id_libro) REFERENCES Libros(id_libro)
	ON DELETE SET NULL,
	FOREIGN KEY (id_lector) REFERENCES Lectores(id_lector)
	ON DELETE SET NULL
);

INSERT INTO Autores (nombre, nacionalidad) VALUES 
('Pablo', 'Mexicano'),
('Pedro', 'Peruano'),
('Juan', 'Colombiano');

UPDATE Autores SET nacionalidad = 'Mexicano' WHERE nacionalidad='Colombiano'; 

DELETE FROM Autores WHERE nacionalidad = 'Peruano';

SELECT * FROM Autores