-- Database: "FinalProject"

-- DROP DATABASE "FinalProject";

CREATE DATABASE "FinalProject"
  WITH OWNER = postgres
       ENCODING = 'UTF8'
       TABLESPACE = pg_default
       LC_COLLATE = 'English_United States.1252'
       LC_CTYPE = 'English_United States.1252'
       CONNECTION LIMIT = -1;

DROP TABLE IF EXISTS hawaii_libraries;

CREATE TABLE hawaii_libraries
(Island varchar, LIBRARY varchar, REFERENCE int, BOOK int,
CD int, DVD int, VIDEO int, PHONOTAPE int, 
PHONODISC int, MICROFORM int, CD_ROM int, SOFTWARE int,
AV_MISC int, LANGUAGE_LEARNING int, UNCATALOGED int, 
TOTAL int)

-- Table: hawaii_libraries

DROP TABLE IF EXISTS hawaii_libraries;

CREATE TABLE hawaii_libraries
(
  island character varying,
  library character varying PRIMARY KEY,
  reference integer,
  book integer,
  cd integer,
  dvd integer,
  video integer,
  phonotape integer,
  phonodisc integer,
  microform integer,
  cd_rom integer,
  software integer,
  av_misc integer,
  language_learning integer,
  uncataloged integer,
  total integer
)
WITH (
  OIDS=FALSE
);
ALTER TABLE hawaii_libraries
  OWNER TO postgres;

COPY hawaii_libraries
  FROM {C:\projectfiles\stats2011.csv | STDIN}
   /bulk insert [dbo].[Courses]
from 'C:\Courses.csv'
with (fieldterminator = ',', rowterminator = '\n')
go