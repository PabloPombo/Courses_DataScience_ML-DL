-- Pregunta 1
-- ¿Quien es el actor o actriz que ha participado en la mayor cantidad de series?
SELECT actor_id, COUNT(serie_id) AS participacion_series FROM Actdepartment1uaciones
GROUP BY actor_id
ORDER BY participacion_series DESC;

SELECT nombre FROM Actores WHERE actor_id = 18;

SELECT a.actor_id AS 'ID Actor', 
		ac.nombre AS 'Nombre Actor',
        COUNT(a.serie_id) AS 'Participacion en series',
        s.titulo AS 'Nombre Serie'
FROM Actuaciones AS a
JOIN Actores As ac ON ac.actor_id = a.actor_id
JOIN Series AS s ON s.serie_id = a.serie_id
GROUP BY a.actor_id;

SELECT 
    a.actor_id AS 'ID Actor', 
    ac.nombre AS 'Nombre Actor',
    COUNT(a.serie_id) AS 'Participacion en series',
    GROUP_CONCAT(s.titulo) AS 'Series'
FROM Actuaciones AS a
JOIN Actores AS ac ON ac.actor_id = a.actor_id
JOIN Series AS s ON s.serie_id = a.serie_id
GROUP BY a.actor_id, ac.nombre
ORDER BY `Participacion en series` DESC;
 

-- Pregunta 2
-- ¿Cual es la serie con mejor rating promedio segun imdb?
SELECT serie_id, AVG(rating_imdb) AS rating FROM episodios
GROUP BY serie_id
ORDER BY rating DESC;

SELECT titulo, serie_id FROM Series WHERE serie_id =8;


SELECT 
    e.serie_id AS 'ID Serie',
    s.titulo AS 'Nombre Serie',
    AVG(e.rating_imdb) AS Rating
FROM Episodios AS e
JOIN Series AS s ON s.serie_id = e.serie_id
GROUP BY e.serie_id, s.titulo
ORDER BY Rating DESC;



-- Pregunta 3
-- ¿Cual es el episodio con la duración más larga?

SELECT titulo, MAX(duracion) AS duracion FROM Episodios 
GROUP BY titulo
ORDER BY duracion DESC;