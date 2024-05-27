-- Llamamiento todos datos de Tarantino en la tabla 'name_basics'
SELECT * 
FROM name_basics
WHERE primaryName LIKE '%Quentin Tarantino%';

-- Llamamiento de todos lo tipos de peliculas almacenados en la tabla
SELECT DISTINCT titleType
FROM title_basics;

-- Llamamiento de titulo, tipo de pelicula y año de estreno de las peliculas en las Tarantino ha sido director.
SELECT  tb.primaryTitle, tb.titleType, tb.startYear
FROM title_principals tp
JOIN title_basics tb ON tp.tconst = tb.tconst
WHERE tp.nconst='nm0000233' AND tp.category='director' AND tb.titleType='movie'
ORDER BY tb.startyear ASC;

-- Eliminiación de duplicación encontrada
DELETE FROM title_basics
WHERE primaryTitle='Grindhouse';

-- LLamamiento de la media de todas las películas en las que Tarantino ha sido director
SELECT AVG(tr.averageRating) AS media
FROM title_principals tp
JOIN title_basics tb ON tp.tconst = tb.tconst
JOIN title_ratings tr ON tr.tconst= tb.tconst
WHERE tp.nconst='nm0000233' AND tp.category='director' AND tb.titleType='movie';

-- llamada de la vista info_tarantino
SELECT *
FROM info_tarantino;

-- Conteo de peliculas en dicha vista
SELECT COUNT(primarytitle)
FROM info_tarantino;

-- Llamada a la columna category de dicha vista
SELECT Category
FROM info_tarantino;

-- Obsevarción de las diferentes categorias de la vista
SELECT DISTINCT category
FROM info_tarantino;


-- Script para "Pulp Fiction"
SELECT * FROM participantes_pelicula('Pulp Fiction');

-- Script para "Reservoir Dogs"
SELECT * FROM participantes_pelicula('Reservoir Dogs');

-- Script para "Kill Bill: Vol. 1"
SELECT * FROM participantes_pelicula('Kill Bill: Vol. 1');

-- Script para "Kill Bill: Vol. 2"
SELECT * FROM participantes_pelicula('Kill Bill: Vol. 2');

-- Script para "Inglourious Basterds"
SELECT * FROM participantes_pelicula('Inglourious Basterds');

-- Script para "Django Unchained"
SELECT * FROM participantes_pelicula('Django Unchained');

-- Script para "The Hateful Eight"
SELECT * FROM participantes_pelicula('The Hateful Eight');

-- Script para "Once Upon a Time in Hollywood"
SELECT * FROM participantes_pelicula('Once Upon a Time in Hollywood');

-- Script para "Jackie Brown"
SELECT * FROM participantes_pelicula('Jackie Brown');

-- Script para "Death Proof"
SELECT * FROM participantes_pelicula('Death Proof');


-- Películas en las que Quentin Tarantino y Brad Pitt han trabajado juntos
SELECT * FROM peliculas_juntos('Tarantino', 'Brad Pitt');

-- Películas en las que Quentin Tarantino y Uma Thurman han trabajado juntos
SELECT * FROM peliculas_juntos('Tarantino', 'Uma Thurman');

-- Películas en las que Quentin Tarantino y Samuel L. Jackson han trabajado juntos
SELECT * FROM peliculas_juntos('Tarantino', 'Samuel L. Jackson');

-- Películas en las que Quentin Tarantino y Christoph Waltz han trabajado juntos
SELECT * FROM peliculas_juntos('Tarantino', 'Christoph Waltz');

-- Películas en las que Quentin Tarantino y Leonardo DiCaprio han trabajado juntos
SELECT * FROM peliculas_juntos('Tarantino', 'Leonardo DiCaprio');

-- Películas en las que Quentin Tarantino y Harvey Keitel han trabajado juntos
SELECT * FROM peliculas_juntos('Tarantino', 'Harvey Keitel');

-- Películas en las que Quentin Tarantino y Tim Roth han trabajado juntos
SELECT * FROM peliculas_juntos('Tarantino', 'Tim Roth');

-- Películas en las que Quentin Tarantino y Michael Madsen han trabajado juntos
SELECT * FROM peliculas_juntos('Tarantino', 'Michael Madsen');

-- Películas en las que Quentin Tarantino y Steve Buscemi han trabajado juntos
SELECT * FROM peliculas_juntos('Tarantino', 'Steve Buscemi');

-- Películas en las que Quentin Tarantino y Kurt Russell han trabajado juntos
SELECT * FROM peliculas_juntos('Tarantino', 'Kurt Russell');


