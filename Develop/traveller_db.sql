DROP DATABASE IF EXISTS traveller_db;

CREATE DATABASE traveller_db;

USE traveller_db;

CREATE TABLE traveller(
    id INTEGER AUTO_INCREMENT NOT NULL,
    traveller_name VARCHAR(75) NOT NULL,
    email VARCHAR(75) NOT NULL,
    PRIMARY KEY (id)
);

CREATE TABLE locations(
    id INTEGER AUTO_INCREMENT NOT NULL,
    location_name VARCHAR(100) NOT NULL,
    PRIMARY KEY (id)
);

CREATE TABLE trips(
    id INTEGER AUTO_INCREMENT NOT NULL,
    trip_budget DECIMAL(10,2) NOT NULL,
    traveller_amount INTEGER NOT NULL,
    traveller_id INTEGER NOT NULL,
    location_id INTEGER NOT NULL,
    INDEX (traveller_id),
    INDEX (location_id),
    FOREIGN KEY (traveller_id) REFERENCES traveller(id)
    ON UPDATE CASCADE
    ON DELETE CASCADE,
    FOREIGN KEY (location_id) 
    REFERENCES locations(id)
    ON DELETE CASCADE
    ON UPDATE CASCADE,
    PRIMARY KEY (id)
);