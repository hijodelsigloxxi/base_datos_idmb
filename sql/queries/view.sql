-- Creación de una vista en la que se almacene toda la información relevante en relación con tarantino
CREATE VIEW info_tarantino AS
SELECT tb.primaryTitle, tr.averagerating, tr.numVotes, tb.genres, tb.startYear, tp.category, tp.characters
FROM title_basics as tb
LEFT JOIN title_principals as tp ON tp.tconst= tb.tconst
LEFT JOIN title_ratings as tr ON tr.tconst=tp.tconst
LEFT JOIN name_basics as nb ON nb.nconst=tp.nconst
WHERE nb.nconst='nm0000233'