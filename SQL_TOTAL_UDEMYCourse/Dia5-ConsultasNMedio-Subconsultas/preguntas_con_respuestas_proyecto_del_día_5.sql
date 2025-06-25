USE netflixdb;

-- Calcula los 3 géneros con más series 
-- Luego selecciona todas las series que pertenecen a esos 3 géneros más populares.
-- Calcula el promedio del rating IMDb por serie 
-- Muestra título, año de lanzamiento, género y el promedio de rating.

SELECT s.titulo AS Titulo_serie,
		s.genero AS Genero_serie,
        s.año_lanzamiento AS Año_lanzamiento,
        AVG(e.rating_imdb) AS Rating
FROM Series as s
JOIN Episodios as e ON e.serie_id = s.serie_id
WHERE s.genero IN (SELECT genero FROM (
					SELECT genero, COUNT(genero) AS numero_peliculas_genero 
					FROM Series 
					GROUP BY genero
                    ORDER BY numero_peliculas_genero
                    LIMIT 3)AS top_3)
GROUP BY s.titulo, s.genero, s.año_lanzamiento
ORDER BY Rating DESC;




