USE netflixdb;

-- Escribe una consulta SQL empleando una CTE para determinar la fecha del primer episodio transmitido de cada serie.
WITH fecha AS (
		SELECT serie_id, MIN(fecha_estreno) AS fecha_estreno_1er_episodio FROM Episodios
		GROUP BY serie_id)

SELECT s.titulo AS 'Título de la Serie',
		f.fecha_estreno_1er_episodio AS 'Fecha del Primer Episodio'
 FROM Series AS s
 JOIN fecha AS f ON f.serie_id = s.serie_id
 ORDER BY `Fecha del Primer Episodio` ASC;

-- Escribe una consulta SQL que utilice una CTE para seleccionar el número total de series lanzadas por año para un género específico, digamos "Ciencia ficción".
WITH año AS(
		SELECT año_lanzamiento,COUNT(genero) AS Ciencia_Ficcion
		FROM Series
        WHERE genero = 'Ciencia ficción'
		GROUP BY año_lanzamiento
        ORDER BY  año_lanzamiento ASC)
        
SELECT * FROM año;

SELECT titulo, año_lanzamiento, 
ROW_NUMBER() OVER(ORDER BY año_lanzamiento DESC) AS clasificacion_global
FROM Series;

-- Escribe una consulta SQL que seleccione la temporada, el título del episodio, 
-- la fecha de estreno y utilice ROW_NUMBER() en combinación con PARTITION BY para asignar 
-- un ranking de episodios basado en su fecha de estreno (de más reciente a más antiguo DESC), 
-- está nueva columna deberá tener el nombre: ranking_temporada
SELECT temporada, titulo, fecha_estreno,
ROW_NUMBER() OVER(PARTITION BY temporada ORDER BY fecha_estreno DESC) AS ranking_temporada
FROM Episodios;

-- Escribe una consulta de SQL que genere un ranking de episodios para cada temporada de Stranger Things 
-- (serie_id = 2) basándose en las calificaciones de IMDb, de modo que puedas identificar los episodios 
-- mejor valorados dentro de cada temporada.
SELECT titulo, temporada, rating_imdb,
ROW_NUMBER() OVER(PARTITION BY temporada ORDER BY rating_imdb DESC) AS 'Ranking IMDb'
FROM Episodios
WHERE serie_id = 2;

-- Escribe una consulta SQL que asigne un rango a cada episodio, donde episodios con la misma calificación compartan el mismo rango.
SELECT titulo, rating_imdb,
RANK() OVER(ORDER BY rating_imdb DESC) AS ranking_imdb
FROM Episodios;

-- Escribe una consulta SQL utilizando la función DENSE_RANK() para clasificar los episodios por su duración utilizando la tabla Episodios
SELECT titulo, duracion, 
DENSE_RANK()OVER(ORDER BY duracion DESC) AS ranking_por_duracion
FROM Episodios;

SELECT titulo, descripcion
FROM Series
WHERE descripcion REGEXP '(?i)profesor';
-- Con like:
SELECT titulo, descripcion FROM SERIES
WHERE descripcion LIKE '%Profesor%';


