-- Task 1.1: Movies released after 2000
SELECT *
FROM movies
WHERE year > 2000;

-- Task 1.2: Movies directed by John Lasseter
SELECT *
FROM movies
WHERE director = 'John Lasseter';

-- Task 1.3: Movies longer than 100 minutes
SELECT *
FROM movies
WHERE length_minutes > 100;

-- Task 2.1: Movies whose title starts with 'Toy'
SELECT *
FROM movies
WHERE title LIKE 'Toy%';

-- Task 2.2: Movies whose title contains 'Story'
SELECT *
FROM movies
WHERE title LIKE '%Story%';

-- Task 3.1: Oldest 5 movies
SELECT *
FROM movies
ORDER BY year ASC
LIMIT 5;

-- Task 3.2: Latest 3 movies
SELECT *
FROM movies
ORDER BY year DESC
LIMIT 3;
-- Task 4.1: Movies released before 2000 OR after 2005
SELECT *
FROM movies
WHERE year < 2000 OR year > 2005;

-- Task 4.2: Movies directed by Brad Bird AND longer than 110 minutes
SELECT *
FROM movies
WHERE director = 'Brad Bird'
AND length_minutes > 110;

-- Task 5.1: Total number of movies
SELECT COUNT(*) AS total_movies
FROM movies;

-- Task 5.2: Average movie length
SELECT AVG(length_minutes) AS avg_movie_length
FROM movies;

-- Task 5.3: Number of movies per director
SELECT director, COUNT(*) AS movie_count
FROM movies
GROUP BY director;
