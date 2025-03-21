--Cream tabela Director_Orchestra
CREATE DATABASE Orchestra

USE Orchestra

CREATE TABLE Director (
	Id_Director int PRIMARY KEY NOT NULL identity(1,1),
	Director_Name nvarchar(100) NOT NULL,		 
	Age int, 
	Gender nvarchar(1)
);

-- Creating Orchestra table
CREATE TABLE Orchestra (
	Id_Orchestra int PRIMARY KEY NOT NULL identity(1,1),
	Orchestra_Name nvarchar(100) NOT NULL,
	Number_Instrumentalists int,
);

-- Creating Director_Orchestra_Association table
CREATE TABLE Director_Orchestra_Association (
	Id_Director int,
	Id_Orchestra int,
	Contract_Time int,
	PRIMARY KEY (Id_Director, Id_Orchestra), 

	FOREIGN KEY (Id_Director) REFERENCES Director(Id_Director) ON DELETE CASCADE ON UPDATE CASCADE,
	FOREIGN KEY (Id_Orchestra) REFERENCES Orchestra(Id_Orchestra) ON DELETE CASCADE ON UPDATE CASCADE
);

-- Creating Instrument_Brand table
CREATE TABLE Instrument_Brand (
	Id_Instrument_Band int PRIMARY KEY NOT NULL identity(1,1),
	Brand_name nvarchar(100), 
	Country nvarchar(100),
	Year_Foundation  int
);

-- Creating Instrument table 
CREATE TABLE Instrument (
	Id_Instrument int PRIMARY KEY NOT NULL identity(1,1),
    Instrument_Name nvarchar(100), 
    Range_Octave int, 
	Instrument_Family nvarchar(100),
    Id_Instrument_Brand int,
	
	FOREIGN KEY (Id_Instrument_Brand) REFERENCES Instrument_Brand(Id_Instrument_Band) ON DELETE CASCADE ON UPDATE CASCADE
);

-- Creating Instrumentalist table
CREATE TABLE Instrumentalist (
	Id_Instrumentalist int PRIMARY KEY NOT NULL identity(1,1),
    Name_Instrumentalist nvarchar(100), 
    Age int,
    Gender nvarchar(1),
	Id_Instrument int FOREIGN KEY REFERENCES Instrument(Id_Instrument) ON DELETE CASCADE ON UPDATE CASCADE,
    Id_Orchestra int FOREIGN KEY REFERENCES Orchestra(Id_Orchestra) ON DELETE CASCADE ON UPDATE CASCADE
);

-- Introducing values in the Director table
INSERT INTO Director VALUES ('Karl Jenkins', 80, 'M'),
							('Joe Hishaishi', 74, 'M'),
							('Marin Alsop', 68, 'F'), 
							('Daniele Gatti', 63, 'M'), 
							('Mariss Jansons', 76, 'M'), 
							('Simon Rattle', 69, 'M'), 
							('Chrstian Thielemann', 65, 'M'), 
							('Daniel Barenboim', 82, 'M'), 
							('Vladimir Jurowski', 52, 'M'), 
							('Teodor Currentzis', 52, 'M'), 
							('David Afkham', 41, 'M'), 
							('Andris Nelsons', 46, 'M'), 
							('Kirill Petrenko', 52, 'M');
SELECT * FROM Director	

-- Inserting values in the Orchestra table
INSERT INTO Orchestra VALUES ('Berlin Philharmonic', 120), 
							 ('Vienna Philharmonic', 145),
							 ('London Symphony Orchestra', 95),
							 ('Czech Philharmonic', 124 ),
							 ('Saito Kinen Orchestra', 100),
							 ('Metropolitan Opera Orchestra', 100),
							 ('Leipzig Gewandhaus', 185),
							 ('St Petersburg Philharmonic', 120),
							 ('Russian National Orchestra', 90),
							 ('Mariinsky Theatre Orchestra', 150),
							 ('San Francisco Symphony Orchestra', 100),
							 ('New York Philharmonic', 95),
							 ('Boston Symphony Orchestra', 100),
							 ('Dresden Staatskapelle', 128),
							 ('Budapest Festival Orchestra', 90),
							 ('Los Angeles Philharmonic', 100),
							 ('Cleveland Orchestra', 100),
							 ('Bavarian Radio Symphony Orchestra', 115),
							 ('Chicago Symphony Orchestra', 100),
							 ('Royal Concertgebouw', 120);

SELECT * FROM Orchestra

-- Inserting values in the Director_Orchestra_Association table
INSERT INTO Director_Orchestra_Association VALUES (1, 1, 10),
												  (1, 2, 10),
												  (1, 3, 10),
												  (1, 4, 10),
												  (2, 5, 15),
												  (2, 6, 20),
												  (3, 7, 15),
												  (3, 8, 15),
												  (4, 9, 15),
												  (4, 10, 15),
												  (5, 11, 15),
												  (5, 12, 15),
												  (5, 13, 15),
												  (6, 14, 15),
												  (6, 15, 15),
												  (7, 16, 15),
												  (7, 17, 15),
												  (7, 18, 15),
												  (8, 19, 15),
												  (8, 20, 15),
												  (9, 1, 15),
												  (9, 2, 15),
												  (10, 3, 15),
												  (10, 4, 15),
												  (11, 5, 15),
												  (11, 6, 15),
												  (11, 7, 15),
												  (12, 8, 15),
												  (12, 9, 15);
SELECT * FROM Director_Orchestra_Association

-- Inserting values in the Instrument_Brand table
INSERT INTO Instrument_Brand VALUES ('Yamaha', 'Japan', 1887),		--1
									('Steinway & Sons', 'USA', 1853),		--2
									('Bösendorfer ', 'Austria', 1828),		--3
									('Kawai', 'Japan', 1927),		--4
									('Fazioli ', 'Italia', 1981), 		--5
									('Stradivarius ', 'Italia', 1650),		--6
									('Guarneri del Gesù', 'Italia', 1650),		--7
									('Amati ', 'Italia', 1550),		--8
									('Stentor ', 'UK', 1895),		--9
									('Scott Cao Violins', 'USA', 1989),		--10
									('Stentor ', 'UK', 1895),		--11
									('D Z Strad', 'USA', 2000),		--12
									('Eastman Strings', 'USA', 1992),		--13
									('Cremona', 'USA', 1981),		--14
									('Jay Haide', 'USA', 1992),		--15
									('Guarneri', 'Italia', 1650),		--16
									('Cecilio ', 'China', 2000),		--17
									('Thomann', 'Germany', 1954),		--18
									('Kolstein', 'USA', 1943),		--19
									('Heckel', 'Germany', 1831),		--20
									('Fox Products', 'USA', 1949),		--21
									('Moosmann', 'Germany', 1983),		--22
									('Püchner', 'Germany', 1897),		--2
									('Buffet Crampon', 'France', 1825),		--24
									('Selmer Paris', 'France', 1885),		--25
									('Leblanc', 'France', 1750),		--26
									('Backun ', 'Canada', 2000),		--27
									('Muramatsu ', 'Japan', 1923),		--28
									('Powell Flutes', 'USA', 1927),		--29
									('Haynes Flutes', 'USA', 1888),		--30
									('Miyazawa ', 'Japan', 1969),		--31
									('Ludwig', 'USA', 1909),		--32
									('Pearl', 'Japan', 1946),		--33
									('Tama', 'Japan', 1974),		--34
									('Gretsch', 'USA', 1883),		--35
									('Vincent Bach', 'USA', 1918),		--36
									('Schilke', 'USA', 1956),		--37
									('Alexander', 'Germany', 1782),		--38
									('Holton', 'USA', 1898),		--39
									('C.G. Conn', 'USA', 1874),		--40
									('King', 'USA', 1894),		--41
									('Miraphone', 'Germany', 1946),	--42
									('B&S', 'Germany', 1750),		--43
									('Loreé', 'France', 1881),		--44
									('Marigaux', 'France', 1935),		--45
									('Selmer Paris', 'France', 1885),		--46
									('Yanagisawa', 'Japan', 1896),		--47
									('Musser', 'USA', 1948),		--48
									('Adams ', 'Netherlands', 1970),		--49
									('Schiedmayer ', 'Germany', 1735),		--50
									('Mustel ', 'France', 1853),		--51
									('Lyon & Healy', 'USA', 1864),		--52
									('Salvi Harps', 'Italia', 1956),		--53
									('Camac Harps', 'France', 1972);		--54
SELECT * FROM Instrument_Brand

-- Inserting values in the Instrument table
INSERT INTO Instrument VALUES ('Violin', 4, 'Strings', 6),
							  ('Violin', 4, 'Strings', 7),
							  ('Violin', 4, 'Strings', 8),
							  ('Violin', 4, 'Strings', 9),
							  ('Violin', 4, 'Strings', 10),
							  ('Viola', 4, 'Strings', 11),
							  ('Viola', 4, 'Strings', 12),
							  ('Viola', 4, 'Strings', 13),
							  ('Viola', 4, 'Strings', 14),
							  ('Viola', 4, 'Strings', 15),
							  ('Cello', 7, 'Strings', 6),
							  ('Cello', 7, 'Strings', 7),
							  ('Cello', 7, 'Strings', 12),
							  ('Cello', 7, 'Strings', 15),
							  ('Cello', 7, 'Strings', 17),
							  ('Contrabas', 4, 'Strings', 1),
							  ('Contrabas', 4, 'Strings', 12),
							  ('Contrabas', 4, 'Strings', 13),
							  ('Contrabas', 4, 'Strings', 18),
							  ('Contrabas', 4, 'Strings', 20),
							  ('Trompeta', 3, 'Brass', 1),
							  ('Trompeta', 3, 'Brass', 37),
							  ('Trompeta', 3, 'Brass', 38),
							  ('Trombon', 3, 'Brass', 1),
							  ('Trombon', 3, 'Brass', 37),
							  ('Trombon', 3, 'Brass', 41),
							  ('Hornet', 3, 'Brass', 38),
							  ('Hornet', 3, 'Brass', 39),
							  ('Hornet', 3, 'Brass', 40),
							  ('Tuba', 3, 'Brass', 1),
							  ('Tuba', 3, 'Brass', 42),
							  ('Tuba', 3, 'Brass', 43),
							  ('Flute', 3, 'Woodwind', 1),
							  ('Flute', 3, 'Woodwind', 28),
							  ('Flute', 3, 'Woodwind', 29),
							  ('Flute', 3, 'Woodwind', 30),
							  ('Flute', 3, 'Woodwind', 31),
							  ('Clarinet', 3, 'Woodwind', 1),
							  ('Clarinet', 3, 'Woodwind', 24),
							  ('Clarinet', 3, 'Woodwind', 25),
							  ('Clarinet', 3, 'Woodwind', 26),
							  ('Clarinet', 3, 'Woodwind', 27),
							  ('Oboe', 3, 'Woodwind', 1),
							  ('Fagot', 3, 'Woodwind', 1),
							  ('Fagot', 3, 'Woodwind', 20),
							  ('Fagot', 3, 'Woodwind', 21),
							  ('Fagot', 3, 'Woodwind', 22),
							  ('Fagot', 3, 'Woodwind', 23),
							  ('Piccolo', 4, 'Woodwind', 1),
							  ('Piccolo', 4, 'Woodwind', 28),
							  ('Piccolo', 4, 'Woodwind', 29),
							  ('Piccolo', 4, 'Woodwind', 30),
							  ('Piccolo', 4, 'Woodwind', 31),
							  ('Saxophone', 3, 'Woodwind', 31),
							  ('Drums', NULL, 'Percussion', 1),
							  ('Drums', NULL, 'Percussion', 32),
							  ('Drums', NULL, 'Percussion', 33),
							  ('Drums', NULL, 'Percussion', 34),
							  ('Drums', NULL, 'Percussion', 35),
							  ('Xilofon', 3, 'Keyboard', 1),
							  ('Xilofon', 3, 'Keyboard', 48),
							  ('Xilofon', 3, 'Keyboard', 49),
							  ('Vibraphone', 3, 'Keyboard', 1),
							  ('Vibraphone', 3, 'Keyboard', 48),
							  ('Vibraphone', 3, 'Keyboard', 49),
							  ('Celesta', 3, 'Keyboard', 50),
							  ('Celesta', 3, 'Keyboard', 51),
							  ('Harp', 5, 'Keyboard', 52),
							  ('Harp', 5, 'Keyboard', 53),
							  ('Harp', 5, 'Keyboard', 54);
SELECT * FROM Instrument

-- Inserting values in the Instrumentalist table
INSERT INTO Instrumentalist VALUES ('Lang Lang', 42, 'M', 9, 3),
							   	   ('Ludovico Einaudi', 68, 'M', 9, 2),
								   ('Samuel Yervinyan', 68, 'M', 1, 1),
								   ('Nigel Kennedy', 67, 'M', 1, 4),
								   ('Augustin Hadelich', 40, 'M', 1, 5),
								   ('Julia Fischer', 41, 'F', 1, 6),
								   ('Midori Goto', 52, 'F', 1, 7),
								   ('Mischa Maisky', 76, 'M', 3, 8),
								   ('Steven Isserlis', 65, 'M', 3, 9),
								   ('Alisa Weilerstein', 42, 'F', 3, 10),
								   ('Gautier Capuçon', 43, 'M', 3, 11),
								   ('Yoav Levanon', 19, 'M', 9, 12),
								   ('Grigory Sokolov', 73, 'M', 9, 13),
								   ('Claudio Arrau', 88, 'M', 9, 14),
								   ('Vladimir Ashkenazy', 86, 'M', 9, 15),
								   ('Maurice Ravel', 62, 'M', 9, 16),
								   ('Zoltán Kocsis', 64, 'M', 9, 17),
								   ('Clara Haskil', 65, 'F', 9, 18),
								   ('Radu Lupu', 76, 'M', 9, 19),
								   ('Yuja Wang', 36, 'F', 9, 20),
								   ('Murray Perahia', 76, 'M', 9, 1),
								   ('Andrei Gavrilov', 68, 'M', 9, 2),
								   ('Lise de la Salle', 35, 'F', 9, 3),
								   ('Arve Tellefsen', 86, 'M', 1, 4),
								   ('Frank Peter Zimmermann', 58, 'M', 1, 5),
								   ('Pinchas Zukerman', 75, 'M', 1, 6),
								   ('Bryn Terfel', 58, 'M', 3, 7),
								   ('Lynn Harrell', 76, 'M', 3, 8),
								   ('Ivry Gitlis', 98, 'M', 1, 9),
								   ('Arthur Rubinstein', 95, 'M', 9, 11),
								   ('Fazıl Say', 53, 'M', 9, 11),
								   ('Elisabeth Leonskaja', 77, 'F', 9, 12),
								   ('Alfred Brendel', 92, 'M', 9, 13),
								   ('Daniil Trifonov', 33, 'M', 9, 14),
								   ('Seong-Jin Cho', 30, 'M', 9, 15),
								   ('Sergei Babayan', 63, 'M', 9, 16),
								   ('Martin Fröst', 52, 'M', 12, 17),
								   ('Sabine Meyer', 64, 'F', 12, 18),
								   ('Paul Meyer', 58, 'M', 12, 19),
								   ('Benny Goodman', 77, 'M', 12, 20),
								   ('Gabriele Cassone', 66, 'M', 5, 1),
								   ('Tine Thing Helseth', 36, 'F', 5, 2),
								   ('Yo-Yo Ma', 68, 'M', 3, 2),
								   ('Martha Argerich', 83, 'F', 9, 6),
								   ('Itzhak Perlman', 79, 'M', 1, 4),
								   ('Hilary Hahn', 44, 'F', 1, 5),
								   ('Joshua Bell', 56, 'M', 1, 7),
								   ('Anne-Sophie Mutter', 61, 'F', 1, 8),
								   ('Albrecht Mayer', 58, 'M', 11, 3),
								   ('Evelyn Glennie', 59, 'F', 17, 10),
							   	   ('Christian Tetzlaff', 58, 'M', 1, 9),
								   ('Jean-Yves Thibaudet', 62, 'M', 9, 12),
								   ('Håkan Hardenberger', 62, 'M', 5, 14),
								   ('Maurice André', 78, 'M', 5, 15),
								   ('James Galway', 85, 'M', 10, 3),
								   ('Emmanuel Pahud', 54, 'M', 10, 2),
								   ('Leila Josefowicz', 46, 'F', 1, 7),
								   ('Wynton Marsalis', 63, 'M', 5, 1),
								   ('Sir András Schiff', 70, 'M', 9, 16),
								   ('Viktoria Mullova', 65, 'F', 1, 6),
								   ('Mstislav Rostropovich', 80, 'M', 3, 1),
								   ('Daniel Barenboim', 81, 'M', 9, 11),
								   ('Tabea Zimmermann', 57, 'F', 2, 4),
								   ('Leonard Bernstein', 72, 'M', 9, 9),
								   ('Patricia Kopatchinskaja', 47, 'F', 1, 2),
								   ('Radu Lupu', 76, 'M', 9, 12),
								   ('Seiji Ozawa', 89, 'M', 9, 13);

SELECT * FROM Instrumentalist

-- updating
SELECT * FROM Director
UPDATE Director SET Age = 73 WHERE (Age <= 79 AND Age >= 74)
SELECT * FROM Director

-- deleting the instrumentalist who are out of the range [30,60]
SELECT * FROM Instrumentalist
DELETE FROM Instrumentalist WHERE Age >= 60 OR Age <= 30
SELECT * FROM Instrumentalist

-- increasing the number of instrumentalists who are in the orchestra because it is assumed that this year there are more renowned artists who want to be part of these orchestras
SELECT * FROM Orchestra
UPDATE Orchestra SET Number_Instrumentalists = Number_Instrumentalists + 20 WHERE Id_Orchestra IN (1, 2)
SELECT * FROM Orchestra

-- deleting all instruments that have NULL octaves as
SELECT * FROM Instrument
DELETE FROM Instrument WHERE Range_Octave IS NULL
SELECT * FROM Instrument

-- deleting 
SELECT * FROM Orchestra
DELETE FROM Orchestra WHERE Orchestra_Name = 'Berlin Philharmonic'
SELECT * FROM Orchestra

-- We change the Range_Octave of those instruments that have 3 octaves
SELECT * FROM Instrument WHERE Range_Octave IS NULL
UPDATE Instrument SET Range_Octave=NULL WHERE Range_Octave = 3

------------------------------------------------------------------------------------------------------------
-- 1. a query with one of the operators UNION, INTERSECT, EXCEPT, of your choice;
SELECT
	Director_Name,
	'Director' as Role,
	Age
FROM Director
UNION
SELECT
	Name_Instrumentalist,
	'Instrumentalist' as Role,
	Age
FROM Instrumentalist

-- 2. two queries with the INNER JOIN operators and, optionally, LEFT JOIN, RIGHT JOIN or FULL JOIN;
-- each query will extract data from at least three tables in many-to-many relationship;

-- All orchestras and brands of instruments used by instrumentalists in each orchestra
SELECT 
    i.Name_Instrumentalist as Name_Instrumentalis,
    o.Orchestra_Name as Name_Orchestra,
    ib.Brand_name as Instrument_Brand
FROM Instrumentalist i
INNER JOIN Orchestra o ON i.Id_Orchestra = o.Id_Orchestra
INNER JOIN Instrument ins ON i.Id_Instrument = ins.Id_Instrument
INNER JOIN Instrument_Brand ib ON ins.Id_Instrument_Brand = ib.Id_Instrument_Band;

-- All conductors and their orchestras, including conductors who do not have associations with orchestras
SELECT 
    d.Director_Name,
    o.Orchestra_Name,
    do.Contract_Time
FROM Director d
LEFT JOIN Director_Orchestra_Association do ON d.Id_Director = do.Id_Director
LEFT JOIN Orchestra o ON do.Id_Orchestra = o.Id_Orchestra;

-- 3. three queries with the GROUP BY clause; one of them will contain the HAVING clause; will be used
-- at least three aggregation operators from: COUNT, SUM, AVG, MIN, MAX.

-- Number of orchestras conducted by each conductor
SELECT 
    d.Director_Name,
    COUNT(do.Id_Orchestra) AS Total_Orchestras
FROM Director d
INNER JOIN Director_Orchestra_Association do ON d.Id_Director = do.Id_Director
GROUP BY d.Director_Name;

-- Average age of instrumentalists per orchestra
SELECT 
    o.Orchestra_Name,
    AVG(i.Age) AS Avg_Age
FROM Orchestra o
INNER JOIN Instrumentalist i ON o.Id_Orchestra = i.Id_Orchestra
GROUP BY o.Orchestra_Name;

-- Total instrumentalists in orchestras with more than 100 members (HAVING).
SELECT 
    o.Orchestra_Name, COUNT(i.Id_Instrumentalist) AS Total_Instrumentalists
FROM Orchestra o
LEFT JOIN Instrumentalist i ON o.Id_Orchestra = i.Id_Orchestra
GROUP BY o.Orchestra_Name
HAVING COUNT(i.Id_Instrumentalist) < 10;

-- The oldest instrumentalist in each orchestra
SELECT 
    o.Orchestra_Name, MAX(i.Age) AS Oldest_Instrumentalist
FROM Orchestra o
LEFT JOIN Instrumentalist i ON o.Id_Orchestra = i.Id_Orchestra
GROUP BY o.Orchestra_Name;

-- Number of instrumentalists in each orchestra under the age of 50
SELECT 
    o.Orchestra_Name, COUNT(i.Gender) AS Number_Of_Women
FROM Orchestra o
INNER JOIN Instrumentalist i ON o.Id_Orchestra = i.Id_Orchestra
WHERE i.Gender = 'F' AND i.Age < 50
GROUP BY o.Orchestra_Name;


------------------------------------------------------------------------------------------------------------
-- Function for validating the length of a text (name, surname, etc.):
CREATE FUNCTION dbo.ValidateTextLength(@text NVARCHAR(255), @minLength INT, @maxLength INT)
RETURNS BIT
AS
BEGIN
    IF LEN(@text) BETWEEN @minLength AND @maxLength
        RETURN 1
    RETURN 0
END;

-- Function for validating an integer:
CREATE FUNCTION dbo.ValidateIntegerRange(@value INT, @minValue INT, @maxValue INT)
RETURNS BIT
AS
BEGIN
    IF @value BETWEEN @minValue AND @maxValue
        RETURN 1
    RETURN 0
END;

-- 1. write a stored procedure that inserts data into a table, for at least three tables,
-- including a table with a compound primary key;

-- Procedure for adding a directory
CREATE PROCEDURE AddDirector
    @Director_Name NVARCHAR(50),
    @Age INT,
    @Gender NVARCHAR(100)
AS
BEGIN
    IF dbo.ValidateTextLength(@Director_Name, 1, 100) = 0
    BEGIN
        PRINT 'Eroare: Numele directorului trebuie sa contina intre 1 si 100 de caractere.';
        RETURN;
    END

    INSERT INTO Director (Director_Name, Age, Gender)
    VALUES (@Director_Name, @Age, @Gender);

    PRINT 'Directorul a fost adaugat cu succes.';
END;

-- Procedure for adding an orchestra
CREATE PROCEDURE AddOrchestra
    @Orchestra_Name NVARCHAR(100),
    @Number_Instrumentalists INT
AS
BEGIN
    IF dbo.ValidateTextLength(@Orchestra_Name, 1, 100) = 0
    BEGIN
        PRINT 'Eroare: Numele orchestrei trebuie sa aiba intre 1 si 100 de caractere.';
        RETURN;
    END

    IF dbo.ValidateIntegerRange(@Number_Instrumentalists, 1, 200) = 0
    BEGIN
        PRINT 'Eroare: Numarul de instrumentist trebuie sa fie intre 1 si 200.';
        RETURN;
    END

    INSERT INTO Orchestra (Orchestra_Name, Number_Instrumentalists)
    VALUES (@Orchestra_Name, @Number_Instrumentalists);

    PRINT 'Orchestra a fost adaugata cu succes.';
END;


-- Procedure for adding an association between the orchestra and the conductor
GO
CREATE PROCEDURE AddDirectorOrchestraAssociation
    @Id_Director INT,
    @Id_Orchestra INT,
    @Contract_Time INT
AS
BEGIN
    IF @Contract_Time <= 0
    BEGIN
        PRINT 'Eroare: Timpul contractului trebuie sa fie mai mare decat 0.';
        RETURN;
    END

    INSERT INTO Director_Orchestra_Association (Id_Director, Id_Orchestra, Contract_Time)
    VALUES (@Id_Director, @Id_Orchestra, @Contract_Time);

    PRINT 'Asociatia dintre director si orchestra a fost adaugat la reteta cu succes.';
END;
GO

-- 2. create a view that combines data from two or three tables; 
CREATE VIEW InstrumentalistDetails AS
SELECT 
    I.Name_Instrumentalist AS NAME,
    I.Age AS AGE,
    O.Orchestra_Name AS ORCHESTRA_NAME,
    Inst.Instrument_Name AS INSTRUMENT,
    IB.Brand_name AS BRAND_NAME
FROM Instrumentalist I
RIGHT JOIN Orchestra O ON O.Id_Orchestra = I.Id_Orchestra 
INNER JOIN Instrument Inst ON I.Id_Instrument = Inst.Id_Instrument
INNER JOIN Instrument_Brand IB ON Inst.Id_Instrument_Brand = IB.Id_Instrument_Band;

-- 3. implement, for a table of your choice, a trigger for the append operation and one for
-- the deletion one; When each trigger is executed, a message will be displayed on the screen with the date and time
-- the operation has been performed, the type of operation (Insert/Delete) and the name of the table; optionally, you can create
-- similar triggers for other tables.


-- Implementing Triggers for Director
-- Trigger pt INSERT

CREATE TRIGGER trg_Director_Insert
ON Director
AFTER INSERT
AS
BEGIN
    DECLARE @currentTime DATETIME = GETDATE();
    PRINT CONCAT('Operatie: INSERT; Tabel: Director; Data si ora: ', @currentTime);
END;


-- Trigger for DELETE

CREATE TRIGGER trg_Director_Delete
ON Director
AFTER DELETE
AS
BEGIN
    DECLARE @currentTime DATETIME = GETDATE();
    PRINT CONCAT('Operatie: DELETE; Tabel: Director; Data si ora: ', @currentTime);
END;

--GENERAL OPERATIONS
--display tables
SELECT * FROM Director
SELECT * FROM Orchestra
SELECT * FROM Director_Orchestra_Association
SELECT * FROM Instrument
SELECT * FROM Instrument_Brand
SELECT * FROM Instrumentalist

--Table Deletions
drop table Instrumentalist
drop table Instrument
drop table Instrument_Brand
drop table Director_Orchestra_Association
drop table Director
drop table Orchestra

