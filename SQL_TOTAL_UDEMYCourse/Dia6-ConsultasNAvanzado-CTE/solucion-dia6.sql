USE netflixdb;

-- Titulo de serie
-- cantidad de episodios
-- rating promedio
-- Identificar series mas exitosas conforme a rating y numero de episodios

SELECT s.titulo AS Titulo_serie,
		COUNT(episodio_id) AS No_episodios,
		AVG(rating_imdb) AS rating
FROM Series AS S
JOIN Episodios AS e ON e.serie_id = s.serie_id
GROUP BY s.titulo
ORDER BY rating DESC;


WITH series_episodios AS (
	SELECT  serie_id,
			COUNT(episodio_id) AS No_episodios,
			AVG (rating_imdb) AS rating
	FROM Episodios
    GROUP BY serie_id)

SELECT s.titulo AS Titulo_Serie,
		se.No_episodios, se.rating
FROM Series AS s
JOIN series_episodios AS se ON se.serie_id = s.serie_id
ORDER BY rating DESC
