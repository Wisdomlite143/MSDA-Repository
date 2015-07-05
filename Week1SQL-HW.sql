-- 1.	Show the total number of flights.
SELECT COUNT(*)FROM flights;
-- 2.	Show the total number of flights by airline(carrier).
SELECT carrier, COUNT(*)FROM flights GROUP BY carrier ORDER BY count ASC;
-- 3.	Show all of the airlines, ordered by number of flights in descending order
SELECT carrier, COUNT(*)FROM flights GROUP BY carrier ORDER BY count DESC;
-- 4.	Show only the top 5 airlines, by number of flights, ordered by number of flights in descending order
SELECT carrier, COUNT(*)FROM flights GROUP BY carrier ORDER BY count DESC LIMIT 5;
-- 5.	Show only the top 5 airlines, by number of flights of distance 1,000 miles or greater, ordered by number of flights in descending order

SELECT carrier, COUNT(*)FROM flights WHERE distance > 1000 GROUP BY carrier ORDER BY count DESC LIMIT 5;
-- 6.	Create a question that (a) uses data from the flights database, and (b) requires aggregation to answer it, and write down both the question, and the query that answers the question

-- How many flights did each carrier have during the year of 2013.

SELECT carrier, COUNT(*)FROM flights WHERE Year = 2013 GROUP BY carrier ORDER BY count desc;
