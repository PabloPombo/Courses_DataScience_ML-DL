USE netflixdb;

-- Calcula los 3 géneros con más series 
-- Luego selecciona todas las series que pertenecen a esos 3 géneros más populares.
-- Calcula el promedio del rating IMDb por serie 
-- Muestra título, año de lanzamiento, género y el promedio de rating.


SELECT Series.titulo, Series.año_lanzamiento, Series.genero, AVG(Episodios.rating_imdb) AS rating
FROM Series
JOIN Episodios ON Series.serie_id = Episodios.serie_id
WHERE Series.genero IN (SELECT genero FROM ( 
					SELECT genero, COUNT(genero) AS numero_peliculas_genero 
					FROM Series
					GROUP BY genero
					ORDER BY numero_peliculas_genero DESC
					LIMIT 3) AS top_3)
GROUP BY Series.serie_id
ORDER BY rating DESC;




