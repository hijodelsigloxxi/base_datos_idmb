-- Carga de datos en la tabla de Ratings
COPY title_ratings FROM 'D:\\title.ratings.tsv\\data.tsv'
WITH (FORMAT csv, DELIMITER E'\t', HEADER);

-- Carga de datos en la tabla de información básica de los títulos
COPY title_basics FROM 'D:\\title.basics.tsv\\data.tsv'
WITH (FORMAT csv, DELIMITER E'\t', NULL '\N', HEADER);

-- Carga de datos en la tabla de información principal de los títulos
COPY title_principals FROM 'D:\\title.principals.tsv\\data.tsv'
WITH (FORMAT csv, DELIMITER E'\t', NULL '\N', HEADER);

-- Carga de datos en la tabla de información básica de nombres
COPY name_basics FROM 'D:\\name.basics.tsv\\data.tsv'
WITH (FORMAT csv, DELIMITER E'\t', NULL '\N', HEADER);
