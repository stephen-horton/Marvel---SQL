-- Lab07 Solution

-- DROP the database if it exists
DROP DATABASE IF EXISTS Marvel_sho_62;

-- CREATE THE DATABASE
CREATE DATABASE Marvel_sho_62;

-- SHOW DATABASES;
SHOW DATABASES;

-- Use the database
USE Marvel_sho_62;

-- Create your first Table (pick your own Entities for the next part)
CREATE TABLE Characters_sho_62
(CharacterID INT UNSIGNED NOT NULL AUTO_INCREMENT PRIMARY KEY,
FIRSTNAME CHAR(50) NOT NULL,
LASTNAME CHAR(50) NOT NULL,
ALIASNAME CHAR(50),
AGE INT(100)
) ENGINE=InnoDB;

-- Create your second  Table
CREATE TABLE Teams_sho_62
(TeamID INT UNSIGNED NOT NULL AUTO_INCREMENT PRIMARY KEY,
TEAMNAME CHAR(50) NOT NULL,
CharacterID INT UNSIGNED NOT NULL,
FOREIGN KEY(CharacterID) REFERENCES Characters_sho_62(CharacterID)
) ENGINE=InnoDB;

-- Create the third  Table
CREATE TABLE Movies_sho_62
(MovieID INT UNSIGNED NOT NULL AUTO_INCREMENT PRIMARY KEY,
MOVIENAME CHAR(50),
YEAR INT(99),
IMDBRATING INT(10),
CharacterID INT UNSIGNED NOT NULL,
FOREIGN KEY(CharacterID) REFERENCES Characters_sho_62(CharacterID)
) ENGINE =InnoDB;

--Show the tables
SHOW TABLES;

-- INSERT Entity1, Entity2, Entity3
--insert into the Characters_sho_62 table
INSERT INTO Characters_sho_62
	VALUES (1,'Wade', 'Wilson', 'Deadpool', NULL),
	(2,'Peter', 'Parker', 'Spider-man', '20'),
	(3,'Matthew', 'Murdock', 'Daredevil', '30'),
	(4,'Janet', 'van Dyne', 'Wasp', '26'),
	(5,'Peter', 'Quill', 'Starlord', '38');

--insert into the Teams_sho_62 table
INSERT INTO Teams_sho_62
	VALUES(1,'X-men', 1),
	(2, 'Spider-Team', 2),
	(3, 'Defenders', 3),
	(4, 'Ant-Man & The Wasp', 4),
	(5, 'Guardians of the Galaxy', 5);

--insert into the Movies_sho_62 table
INSERT INTO Movies_sho_62
	VALUES (1,'Deadpool', 2016, 8, 1),
	(2, 'Spider-man: No Way Home', 2022, 9, 2),
	(3, 'Daredevil', 2003, 5, 3),
	(4, 'Ant-Man', 2015, 7, 4),
	(5, 'Guardians of the Galaxy', 1999, 8, 5);


-- SELECT (READ)
SELECT * FROM Characters_sho_62;
SELECT * FROM Teams_sho_62;
SELECT * FROM Movies_sho_62;

-- UPDATE (UPDATE)
--update Characters_sho_62 table
UPDATE Characters_sho_62 set `FIRSTNAME` = 'Matt'
	WHERE FIRSTNAME = 'Matthew';
--Show the update
SELECT * FROM Characters_sho_62;

--update Teams_sho_62 table
UPDATE Teams_sho_62 set `TEAMNAME` = 'Avengers'
	WHERE TEAMNAME = 'Spider-Team';
--Show the update
SELECT * FROM Teams_sho_62;

--update Movies_sho_62 table
UPDATE Movies_sho_62 set `YEAR` = 2016
	WHERE YEAR = 1999;
--Show the update
SELECT * FROM Movies_sho_62;

-- DELETE (DELETE)
--delete from the Teams_sho_62 table
DELETE FROM Teams_sho_62
	WHERE TEAMNAME = 'Avengers';
--Show the delete
SELECT * FROM Teams_sho_62;

--delete from the Movies_sho_62 table
DELETE FROM Movies_sho_62
	WHERE MOVIENAME = 'Spider-man: No Way Home';
--Show the delete
SELECT * FROM Movies_sho_62;

--delete from the Characters_sho_62 table
DELETE FROM Characters_sho_62
	WHERE LASTNAME = 'Parker';
--Show the delete
SELECT * FROM Characters_sho_62;

--Show the final tables in the database
SELECT * FROM Characters_sho_62;
SELECT * FROM Teams_sho_62;
SELECT * FROM Movies_sho_62;
