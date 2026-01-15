-- Create a new database named 'Aptech'
CREATE DATABASE Aptech;

-- Switch to the 'Aptech' database for subsequent operations
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

-- Insert records into all columns of the 'Students' table, specifying the ID explicitly
INSERT INTO Students (ID, Name, Age, Contact) VALUES (1, 'Laiba', 23, '03312345678');
INSERT INTO Students (ID, Name, Age, Contact) VALUES (NULL, 'Anusha', 21, '03313345678');
INSERT INTO Students (ID, Name, Age, Contact) VALUES (NULL, 'Fatima', 19, '03311345678');

-- Insert records into specified columns ('Name' and 'Contact') of the 'Students' table
-- Note: ID will be automatically assigned by the AUTO_INCREMENT feature
INSERT INTO Students (Name, Contact) VALUES ('Abu Hurerah', '03312445678');
INSERT INTO Students (Name, Contact) VALUES ('Umar', '03312355678');
INSERT INTO Students (Name, Contact) VALUES ('Saqlain', '03312345778');
INSERT INTO Students (Name, Contact) VALUES ('Muzammil', '03312345671');
INSERT INTO Students (Name, Contact) VALUES ('Eyad', '03312345638');

-- Insert records specifying only the 'Name' column, leaving other columns as NULL
INSERT INTO Students (Name) VALUES ('Muavia');
INSERT INTO Students (Name) VALUES ('Muhammad Jaan');

-- Update specific records in the 'Students' table where ID is 4 and ID is 10
-- Modify the Name, Age, and Contact for the student with ID 4
UPDATE Students SET Name = 'Sameed', Age = 21, Contact = '033123456231' WHERE ID = 4;
-- Modify the Name, Age, and Contact for the student with ID 10
UPDATE Students SET Name = 'Khizar', Age = 20, Contact = '033123411231' WHERE ID = 10;

-- Delete specific records from the 'Students' table where ID is 3 and ID is 6
DELETE FROM Students WHERE ID = 3;
DELETE FROM Students WHERE ID = 6;

-- Delete all records from the 'Students' table without resetting the AUTO_INCREMENT value
DELETE FROM Students;

-- Insert new records into the 'Students' table with the 'Name', 'Age', and 'Contact' columns
-- Note: The ID will continue from the last value used and will not reset after the DELETE operation
INSERT INTO Students (Name, Age, Contact) VALUES ('Fatima', 23, '0331234567'),
                                                 ('Abu Hurerah', 25, '0332134567'),
                                                 ('Umar', 24, '0331234657');

-- Remove all records from the 'Students' table and reset the AUTO_INCREMENT value
TRUNCATE TABLE Students;

-- Insert new records into the 'Students' table with the 'Name' and 'Contact' columns
-- Note: The ID will start from 1 after the TRUNCATE operation
INSERT INTO Students (Name, Contact) VALUES ('Muzammil', '03312347653'),
                                            ('Eyad', '03312435678'),
                                            ('Saqlain', '03319245695');
