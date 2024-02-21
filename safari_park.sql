DROP TABLE IF EXISTS assignment;
DROP TABLE IF EXISTS animals;
DROP TABLE IF EXISTS enclosures;
DROP TABLE IF EXISTS staff;

CREATE TABLE movies (
    id SERIAL PRIMARY KEY,
    title VARCHAR(255),
    duration INT,
    rating VARCHAR(255),
    director_id INT REFERENCES directors(id)