DROP TABLE IF EXISTS assignment;
DROP TABLE IF EXISTS animal;
DROP TABLE IF EXISTS enclosure;
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
    enclosureId INT REFERENCES enclosure(id),
    day VARCHAR(255)
);

INSERT INTO enclosure (name, capacity, closedForMaintenance) VALUES ('Frontierland', 5, true);
INSERT INTO enclosure (name, capacity, closedForMaintenance) VALUES ('Atlantica', 8, true);
INSERT INTO enclosure (name, capacity, closedForMaintenance) VALUES ('Jumbas_Lab', 10, true);
INSERT INTO enclosure (name, capacity, closedForMaintenance) VALUES ('Third_Street_School', 11, false);
INSERT INTO enclosure (name, capacity, closedForMaintenance) VALUES ('Ursulas_Fortress' 14, true);

INSERT INTO animal (name, type, age, enclosureId) VALUES ('Tony', 'Tiger', 20, 1);
INSERT INTO animal (name, type, age, enclosureId) VALUES ('Zara', 'Zebra', 12, 2);
INSERT INTO animal (name, type, age, enclosureId) VALUES ('Prada', 'Panda', 7, 1);
INSERT INTO animal (name, type, age, enclosureId) VALUES ('Sniper', 'Snake', 4, 3);
INSERT INTO animal (name, type, age, enclosureId) VALUES ('Willow', 'Woodpecker', 5, 4);

INSERT INTO staff (name, employeeNumber) VALUES ('Colin', 1978);
INSERT INTO staff (name, employeeNumber) VALUES ('Anna', 2002);
INSERT INTO staff (name, employeeNumber) VALUES ('Richard', 2019);
INSERT INTO staff (name, employeeNumber) VALUES ('Zsolt', 2023);
INSERT INTO staff (name, employeeNumber) VALUES ('Thibyaa' 2024);

INSERT INTO assignment (employeeId, enclosureId, day) VALUES (1, 3, 'Tuesday');
INSERT INTO assignment (employeeId, enclosureId, day) VALUES (3, 2, 'Monday');
INSERT INTO assignment (employeeId, enclosureId, day) VALUES (2, 3, 'Thursday');
INSERT INTO assignment (employeeId, enclosureId, day) VALUES (2, 5, 'Wednesday');
INSERT INTO assignment (employeeId, enclosureId, day) VALUES (5, 1, 'Friday');








