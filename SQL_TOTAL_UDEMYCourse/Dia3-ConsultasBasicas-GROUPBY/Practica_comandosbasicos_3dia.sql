
USE netflixdb;

SELECT DISTINCT año_lanzamiento FROM Series;

SELECT DISTINCT	año_lanzamiento FROM Series ORDER BY año_lanzamiento DESC;

SELECT nombre, fecha_nacimiento FROM Actores 
ORDER BY fecha_nacimiento DESC;

SELECT nombre FROM Actores LIMIT 5;

SELECT * FROM Series WHERE genero='Comedia'; 

SELECT titulo , año_lanzamiento FROM Series WHERE año_lanzamiento>2020;

SELECT * FROM Series WHERE genero = 'Drama' OR genero ='Ciencia ficción';


SELECT titulo FROM Series WHERE titulo LIKE '%The%';

SELECT SUM(duracion) FROM Episodios;

SELECT año_lanzamiento, COUNT(serie_id) AS cantidad_de_series FROM Series 
GROUP BY año_lanzamiento 
ORDER BY año_lanzamiento ASC;

SELECT temporada, SUM(duracion) AS duracion_total FROM Episodios
WHERE serie_id = 2
 GROUP BY temporada 
 HAVING(duracion_total > 400);
 
 

