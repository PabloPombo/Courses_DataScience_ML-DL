-- Creación de la base de datos ReservasDB
CREATE DATABASE IF NOT EXISTS ReservasDB;
USE ReservasDB;


-- Clientes
   CREATE TABLE Clientes (
       cliente_id INT AUTO_INCREMENT PRIMARY KEY,
       nombre VARCHAR(100),
       contacto VARCHAR(100)
   );

-- Reservas
   CREATE TABLE Reservas (
       reserva_id INT AUTO_INCREMENT PRIMARY KEY,
       cliente_id INT,
       fecha_reserva DATE,
       numero_personas INT,
       FOREIGN KEY (cliente_id) REFERENCES Clientes(cliente_id)
   );

-- Habitaciones
   CREATE TABLE Habitaciones (
       habitacion_id INT AUTO_INCREMENT PRIMARY KEY,
       tipo VARCHAR(50),
       capacidad INT
   );