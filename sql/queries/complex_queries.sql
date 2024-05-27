-- Llamamiento a la media de las peliculas  divididas por generos, así como el numero de películas que tiene cada género.
SELECT ROUND(AVG(tr.averageRating),2) AS media_x_grupo ,
CASE
WHEN tb.genres LIKE '%Drama%' THEN 'Drama'
WHEN tb.genres LIKE '%Comedy%' THEN 'Comedy'
WHEN tb.genres LIKE '%Action%' THEN 'Action'
END AS generos_x_grupo,
COUNT(tb.tconst) AS numero_peliculas
FROM title_principals tp
JOIN title_basics tb ON tp.tconst = tb.tconst
JOIN title_ratings tr ON tr.tconst= tb.tconst
WHERE tp.nconst='nm0000233'
GROUP BY 
CASE
WHEN tb.genres LIKE '%Drama%' THEN 'Drama'
WHEN tb.genres LIKE '%Comedy%' THEN 'Comedy'
WHEN tb.genres LIKE '%Action%' THEN 'Action'
END
HAVING  COUNT(tb.tconst) > 7
ORDER BY media_x_grupo  DESC, numero_peliculas DESC;

-- crear grupos y contar registros por tipos de categorias 
SELECT 
COUNT(CASE WHEN category='actor' then 1 END) AS conteo_actor,
COUNT(CASE WHEN category = 'producer' THEN 1 END) AS conteo_productor,
COUNT(CASE WHEN category= 'writer' THEN 1 END) AS conteo_escritor,
COUNT(CASE WHEN category= 'director' THEN 1 END) AS conteo_director
FROM info_tarantino;

-- visualización del ranking de los actores que mas veces han trabajado en las peliculas de trantino
SELECT nb.primaryname, COUNT(DISTINCT tb.tconst) AS num_pelis, nb.primaryProfession
FROM name_basics nb
JOIN title_principals tp ON tp.nconst=nb.nconst
JOIN title_basics tb ON tb.tconst=tp.tconst
WHERE primarytitle IN (SELECT tb.primarytitle
FROM title_basics tb
JOIN title_principals tp ON tp.tconst=tb.tconst
JOIN name_basics nb ON nb.nconst=tp.nconst
WHERE tp.nconst= 'nm0000233' AND tp.category='director' AND tb.titleType='movie')  AND nb.nconst != 'nm0000233' AND nb.primaryname!='Lawrence Bender' AND nb.primaryProfession LIKE '%actor%'
GROUP BY nb.primaryname, nb.primaryProfession
ORDER BY num_pelis DESC;
