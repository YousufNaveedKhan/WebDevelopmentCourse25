-- Create a new database named 'Aptech'
CREATE DATABASE Aptech;

-- Switch to the 'Aptech' database to perform subsequent operations
USE Aptech;

-- Create a table named 'Students' with columns for ID, Name, Age, and Contact
CREATE TABLE Students (
    ID INT PRIMARY KEY AUTO_INCREMENT NOT NULL,  -- Unique identifier for each student, automatically incremented
    Name VARCHAR(33),                           -- Student's name, up to 33 characters
    Age INT,                                    -- Student's age
    Contact VARCHAR(11)                         -- Student's contact number, up to 11 characters
);

-- Retrieve and display all columns and rows from the 'Students' table
SELECT * FROM Students;

-- Retrieve and display only the 'Name' and 'Contact' columns from the 'Students' table
SELECT Name, Contact FROM Students;

-- Retrieve and display only the 'Name' column from the 'Students' table
SELECT Name FROM Students;

-- Insert records into all columns of the 'Students' table
INSERT INTO Students (ID, Name, Age, Contact) VALUES (1, 'Laiba', 23, '03312345678');
INSERT INTO Students (ID, Name, Age, Contact) VALUES (NULL, 'Anusha', 21, '03313345678');
INSERT INTO Students (ID, Name, Age, Contact) VALUES (NULL, 'Fatima', 19, '03311345678');

-- Insert records into specified columns ('Name' and 'Contact') of the 'Students' table
INSERT INTO Students (Name, Contact) VALUES ('Abu Hurerah', '03312445678');
INSERT INTO Students (Name, Contact) VALUES ('Muzammil', '03312355678');
INSERT INTO Students (Name, Contact) VALUES ('Umar', '03312345778');
INSERT INTO Students (Name, Contact) VALUES ('Saqlain', '03312345671');
INSERT INTO Students (Name, Contact) VALUES ('Eyad', '03312345638');

-- Insert records into the 'Name' column only, leaving other columns as NULL
INSERT INTO Students (Name) VALUES ('Muavia');
INSERT INTO Students (Name) VALUES ('Muhammad Jaan');
