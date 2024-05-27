-- Esta función te entrega todas las peliculas en las que ha participado el actor seleccionado
CREATE FUNCTION participantes_pelicula(titulo VARCHAR(100))
RETURNS SETOF VARCHAR AS $$
    SELECT nb.primaryName
    FROM name_basics nb
    JOIN title_principals tp ON tp.nconst = nb.nconst
    JOIN title_basics tb ON tb.tconst = tp.tconst
    WHERE tb.primaryTitle = titulo;
$$ LANGUAGE sql;

-- Esta función entrega todas las peliculas en las que hayan participado dos actores seleccionados
CREATE FUNCTION peliculas_juntos(nombre1 VARCHAR(100), nombre2 VARCHAR(100))
RETURNS SETOF VARCHAR AS $$
    SELECT tb.primarytitle
    FROM title_basics tb
    JOIN title_principals tp1 ON tp1.tconst = tb.tconst
    JOIN name_basics nb1 ON nb1.nconst = tp1.nconst
    JOIN title_principals tp2 ON tp2.tconst = tb.tconst
    JOIN name_basics nb2 ON nb2.nconst = tp2.nconst
    WHERE nb1.primaryname LIKE '%' || nombre1 || '%' 
      AND nb2.primaryname LIKE '%' || nombre2 || '%';
$$ LANGUAGE sql;