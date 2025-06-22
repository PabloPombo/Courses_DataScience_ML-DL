-- ¿Qué géneros son más prevalentes en la base de datos NetflixDB? 
-- Genera una lista de los distintos géneros y la cantidad de series por cada uno.
-- Esta consulta SQL nos permite ver cuántas series hay en cada género dentro de la base de datos NetflixDB. 
-- Agrupando las series por su género y contándolas, podemos identificar cuáles géneros son más prevalentes.

SELECT genero AS Genero, COUNT(titulo) AS 'No. Series' FROM Series
GROUP BY genero
ORDER BY `No. Series` DESC;


-- ¿Cuáles son las tres series con mayor rating IMDB y cuántos episodios tienen? 
-- Considera usar un JOIN para combinar la información de las tablas de series y episodios
-- Con esta consulta, identificamos las tres series con el mayor rating IMDB 
-- en la base de datos y contamos cuántos episodios tiene cada una de ellas, combinando información de las tablas Series y Episodios.

SELECT 
    e.serie_id AS ID,
    s.titulo AS Titulo,
    COUNT(e.episodio_id) AS TotalEpisodios,
    AVG(e.rating_imdb) AS PromedioRating
FROM Episodios AS e
JOIN Series AS s ON e.serie_id = s.serie_id
GROUP BY e.serie_id, s.titulo
ORDER BY PromedioRating DESC
LIMIT 3;



-- ¿Cuál es la duración total de todos los episodios para la serie "Stranger Things"? 
-- Este análisis te permitirá entender el compromiso temporal necesario para ver una serie completa.

SELECT s.titulo AS Nombre_Serie,
		SUM(e.duracion) AS Duracion_Total_Serie
FROM Series AS s
JOIN Episodios as e ON e.serie_id = s.serie_id
WHERE s.titulo = "Stranger Things"
GROUP BY s.titulo;

SELECT SUM(e.duracion) FROM Episodios AS e
JOIN Series AS s ON e.serie_id = s.serie_id
WHERE s.titulo = "Stranger Things"




