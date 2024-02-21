DROP TABLE IF EXISTS assignment;
DROP TABLE IF EXISTS animal;
DROP TABLE IF EXISTS enclosure;
DROP TABLE IF EXISTS staff;

CREATE TABLE enclosure (
    id SERIAL PRIMARY KEY,
    name VARCHAR(255),
    capacity INT,
    closedForMaintenance BOOLEAN
);

CREATE TABLE animal (
    id SERIAL PRIMARY KEY,
    name VARCHAR(255),
    type VARCHAR(255),
    age INT,
    enclosureId INT REFERENCES enclosure(id)
);

CREATE TABLE staff (
    id SERIAL PRIMARY KEY,
    name VARCHAR(255),
    employeeNumber INT
);

CREATE TABLE assignment (
    id SERIAL PRIMARY KEY,
    employeeId INT REFERENCES staff(id),
    enclosureId INT REFERENCES enclosure(id),
    day VARCHAR(255)
);

INSERT INTO enclosure (name, capacity, closedForMaintenance) VALUES ('Frontierland', 5, true);
INSERT INTO enclosure (name, capacity, closedForMaintenance) VALUES ('Atlantica', 8, true);
INSERT INTO enclosure (name, capacity, closedForMaintenance) VALUES ('Jumbas_Lab', 10, true);
INSERT INTO enclosure (name, capacity, closedForMaintenance) VALUES ('Third_Street_School', 11, false);
INSERT INTO enclosure (name, capacity, closedForMaintenance) VALUES ('Ursulas_Fortress', 14, true);

INSERT INTO animal (name, type, age, enclosureId) VALUES ('Tony', 'Tiger', 20, 1);
INSERT INTO animal (name, type, age, enclosureId) VALUES ('Zara', 'Zebra', 12, 2);
INSERT INTO animal (name, type, age, enclosureId) VALUES ('Prada', 'Panda', 7, 1);
INSERT INTO animal (name, type, age, enclosureId) VALUES ('Sniper', 'Snake', 4, 3);
INSERT INTO animal (name, type, age, enclosureId) VALUES ('Willow', 'Woodpecker', 5, 4);

INSERT INTO staff (name, employeeNumber) VALUES ('Colin', 1978);
INSERT INTO staff (name, employeeNumber) VALUES ('Anna', 2002);
INSERT INTO staff (name, employeeNumber) VALUES ('Richard', 2019);
INSERT INTO staff (name, employeeNumber) VALUES ('Zsolt', 2023);
INSERT INTO staff (name, employeeNumber) VALUES ('Thibyaa', 2024);

INSERT INTO assignment (employeeId, enclosureId, day) VALUES (1, 3, 'Tuesday');
INSERT INTO assignment (employeeId, enclosureId, day) VALUES (3, 2, 'Monday');
INSERT INTO assignment (employeeId, enclosureId, day) VALUES (2, 3, 'Thursday');
INSERT INTO assignment (employeeId, enclosureId, day) VALUES (2, 5, 'Wednesday');
INSERT INTO assignment (employeeId, enclosureId, day) VALUES (5, 1, 'Friday');


-- Q1 The names of the animals in a given enclosure
SELECT * FROM enclosure LEFT JOIN animal ON enclosure.id = animal.enclosureId;

-- Q2 The names of the staff working in a given enclosure
SELECT * FROM enclosure INNER JOIN assignment ON enclosure.id = assignment.enclosureId INNER JOIN staff ON assignment.employeeId = staff.id;

-- Q3 The names of staff working in enclosures which are closed for maintenance


-- Q4 The name of the enclosure where the oldest animal lives. If there are two animals who are the same age choose the first one alphabetically.


-- Q5 The number of different animal types a given keeper has been assigned to work with.


-- Q6 The number of different keepers who have been assigned to work in a given enclosure


-- Q7 The names of the other animals sharing an enclosure with a given animal (eg. find the names of all the animals sharing the big cat field with Tony)










