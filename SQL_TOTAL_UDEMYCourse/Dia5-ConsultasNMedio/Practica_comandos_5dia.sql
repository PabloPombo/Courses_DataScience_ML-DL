USE netflixdb;
-- Escribe una consulta SQL que genere una lista de titulo de series cuyos episodios en promedio tienen un rating de IMDb mayor a 8.
SELECT titulo FROM Series
WHERE serie_id IN (SELECT serie_id FROM Episodios 
					GROUP BY serie_id
                    HAVING AVG(rating_imdb)>8);
-- CON JOIN
SELECT  s.titulo
FROM Series AS s
JOIN Episodios AS e ON s.serie_id = e.serie_id
GROUP BY s.titulo
HAVING AVG(e.rating_imdb) > 8;

SELECT nombre,
		YEAR(fecha_nacimiento) AS fecha_nacimiento,
        IF(YEAR(fecha_nacimiento) >= 1995, 'Young','Old') AS Categoria_actores
FROM Actores;


SELECT titulo, año_lanzamiento,
CASE 
    WHEN año_lanzamiento < 2010 THEN 'Reciente'
    ELSE 'Reciente'
    END AS Antigüedad
FROM Series;

SELECT titulo, genero,
CASE
	WHEN genero = 'Drama' THEN 'Dramatico'
    WHEN genero = 'Comedia' THEN 'Divertido'
    ELSE 'Otro'
    END AS 'Categoría de Género'
FROM Series;