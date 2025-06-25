-- Pregunta 1
-- ¿Quien es el actor o actriz que ha participado en la mayor cantidad de series?
SELECT actor_id, COUNT(serie_id) AS numero_de_series FROM actuaciones GROUP BY actor_id;

-- Pregunta 2
-- ¿Cual es la serie con mejor rating promedio segun imdb?
SELECT serie_id, AVG(rating_imdb) AS rating_promedio 
FROM episodios 
GROUP BY serie_id
ORDER BY rating_promedio DESC;

-- Pregunta 3
-- ¿Cual es el episodio con la duración más larga?
SELECT * FROM episodios
ORDER BY duracion DESC;