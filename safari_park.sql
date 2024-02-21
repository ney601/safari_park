DROP TABLE IF EXISTS assignment;
DROP TABLE IF EXISTS animals;
DROP TABLE IF EXISTS enclosures;
DROP TABLE IF EXISTS staff;

CREATE TABLE animal (
    id SERIAL PRIMARY KEY,
    name VARCHAR(255),
    type VARCHAR(255),
    age INT,
    enclosureId INT REFERENCES enclosure(id)
);

CREATE TABLE enclosure (
    id SERIAL PRIMARY KEY,
    name VARCHAR(255),
    capacity INT,
    closedForMaintenance BOOLEAN
);

CREATE TABLE staff (
    id SERIAL PRIMARY KEY,
    name VARCHAR(255),
    employeeNumber INT
);

CREATE TABLE assignment (
    id SERIAL PRIMARY KEY,
    employeeId INT REFERENCES employee(id),
    enclosureId INT REFERENCES enclosur(id),
    day VARCHAR(255)
);


INSERT INTO animals (name, type, age, enclosureId) VALUES ('Tony', 'Tiger', 20, 1);
INSERT INTO animals (name, type, age, enclosureId) VALUES ('Zara', 'Zebra', 12, 2);
INSERT INTO animals (name, type, age, enclosureId) VALUES ('Prada', 'Panda', 7, 1);
INSERT INTO animals (name, type, age, enclosureId) VALUES ('Sniper', 'Snake', 4, 3);
INSERT INTO animals (name, type, age, enclosureId) VALUES ('Willow', 'Woodpecker', 5, 4);








