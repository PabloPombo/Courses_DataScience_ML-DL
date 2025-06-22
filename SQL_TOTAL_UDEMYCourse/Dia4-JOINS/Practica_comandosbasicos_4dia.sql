USE netflixdb;

SELECT * FROM Series AS s
JOIN Episodios AS e
ON s.serie_id = e.serie_id;

SELECT s.titulo AS titulo_serie, 
		e.titulo AS titulo_episodio, 
		e.duracion AS duracion
FROM Series AS s
INNER JOIN Episodios AS e
ON s.serie_id = e.serie_id 
WHERE s.titulo = 'Stranger Things';

-- Escribe una consulta SQL que devuelva, para cada serie, su título, el título de cada episodio asociado (si hay alguno), y el rating de IMDb
SELECT 
	s.titulo AS 'Título de la Serie', 
	e.titulo AS 'Título de la Serie', 
    e.rating_imdb AS 'Rating IMDB'
FROM Series AS s
LEFT JOIN Episodios AS e
ON e.serie_id = s.serie_id;

-- Escribe una consulta SQL que muestre el título de la serie, el título de cada episodio, y el rating de IMDb para todos los episodios de la serie 'Stranger Things'
SELECT 
	series.titulo AS 'Título de la Serie', 
	episodios.titulo AS 'Título del Episodio', 
    episodios.rating_imdb AS 'Rating IMDB'
FROM series
LEFT JOIN episodios 
ON episodios.serie_id = series.serie_id
WHERE series.titulo = 'Stranger Things'; 

-- Escribe una consulta SQL que genere una lista que muestre el título de cada serie junto con el título y duración de sus episodios.
SELECT s.titulo AS 'Título de la Serie', 
		e.titulo AS 'Título del Episodio', 
		e.duracion AS 'Duración'
FROM Series AS s
RIGHT JOIN Episodios AS e
ON s.serie_id = e.serie_id;

SELECT * FROM Series
WHERE genero = 'Comedia'

UNION ALL

SELECT * FROM Series
WHERE genero = 'Drama';

SELECT titulo FROM Episodios
WHERE duracion > 20

UNION 

SELECT titulo FROM Episodios
WHERE rating_imdb > 9;



