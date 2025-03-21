# Orchestra-Management-SQL-Database
## Description

This project provides a complete SQL database for managing orchestras, including directors, instrumentalists, instruments, and associations between directors and orchestras. The database is designed to efficiently store and manage information about orchestras, musical instruments, instrument brands, and the individuals involved.

## Database Structure

The database includes the following tables:
Director: Stores information about orchestra directors, including ID, name, age, and gender.
Orchestra: Stores details about orchestras, including ID, name, and the number of instrumentalists.
Director_Orchestra_Association: Establishes a many-to-many relationship between directors and orchestras, including the contract duration.
Instrument_Brand: Stores information about instrument brands, including brand name, country, and foundation year.
Instrument: Stores instrument details such as name, octave range, family, and brand.
Instrumentalist: Contains information about instrumentalists, including their name, age, gender, and associated orchestra and instrument.

## Features
Uses INNER JOIN, LEFT JOIN, and RIGHT JOIN to retrieve data from multiple tables.
Implements aggregate functions like COUNT, SUM, AVG, MIN, and MAX, with a combination of GROUP BY and HAVING clauses for data analysis.
Stored procedures for adding data into multiple tables, including validation using custom functions.
Triggers to log insert and delete operations, displaying the operation type and timestamp.
Comprehensive CRUD operations for adding, updating, and deleting records.
Use of data validation functions to ensure correct input values.
Creation of views to simplify data extraction and present organized data from multiple tables.
