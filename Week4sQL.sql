-- Drop Tables and Views


CREATE DATABASE "mastech"
  WITH OWNER = postgres
       ENCODING = 'UTF8'
       TABLESPACE = pg_default
       LC_COLLATE = 'English_United States.1252'
       LC_CTYPE = 'English_United States.1252'
       CONNECTION LIMIT = -1;


DROP VIEW IF EXISTS mastech;
DROP TABLE IF EXISTS mastech;

-- Create the table.

CREATE TABLE mastech 
(
id INTEGER PRIMARY KEY,
Supervisor_Name TEXT,
Last_Name TEXT,
First_Name TEXT,
Department_Name TEXT,
Department_ID INTEGER,
Institution_Name TEXT,
Institution_ID INTEGER
)
WITH (
  OIDS=FALSE
  );
ALTER TABLE mastech
  OWNER TO postgres;

COPY mastech(id, Supervisor_Name, Last_Name, First_Name, Department_Name,Department_ID, Institution_Name, Institution_ID)
	FROM 'C:\Users\Public\projectfiles\Book1.csv' DELIMITERS ',' HEADER CSV;
--Test database --
SELECT * FROM mastech


--1.Each row should minimally include the person’s name, the person’s supervisor, and the person’s job title.  Using ID columns is encouraged.
--2.Populate the table with a few sample rows.
--3.Provide a single SELECT statement that displays the information in the table, showing who reports to whom

SELECT Supervisor_Name, First_Name, Last_Name 
FROM mastech
ORDER BY Supervisor_name

