-- Creación de la tabla de Ratings (calificaciones)
CREATE TABLE title_ratings (
    tconst VARCHAR(100) PRIMARY KEY,
    averageRating FLOAT,
    numVotes INT
    );

-- Creación de la tabla de información básica de los títulos
CREATE TABLE title_basics (
    tconst VARCHAR(100) PRIMARY KEY,
    titleType VARCHAR(200),
    primaryTitle VARCHAR(1000),
    originalTitle VARCHAR(1000),
    isAdult BOOLEAN,
    startYear INT,
    endYear INT,
    runtimeMinutes INT,
    genres VARCHAR(1000)
);

-- Creación de la tabla de información principal de los títulos
CREATE TABLE title_principals (
    tconst VARCHAR(1000),
    ordering INT,
    nconst VARCHAR(1000),
    category VARCHAR(1000),
    job VARCHAR(1000),
    characters VARCHAR(10000)
);


-- Creación de la tabla de información básica de nombres
CREATE TABLE name_basics (
    nconst VARCHAR(100) PRIMARY KEY,
    primaryName VARCHAR(1000),
    birthYear INT,
    deathYear INT,
    primaryProfession VARCHAR(1000),
    knownForTitles VARCHAR(1000)
);