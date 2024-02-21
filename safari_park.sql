DROP TABLE IF EXISTS assignment;
DROP TABLE IF EXISTS animals;
DROP TABLE IF EXISTS enclosures;
DROP TABLE IF EXISTS staff;

CREATE TABLE animal (
    id SERIAL PRIMARY KEY,
    name VARCHAR(255),
    type INT,
    age VARCHAR(255),
    enclosure_id INT REFERENCES enclosur(id)
);


