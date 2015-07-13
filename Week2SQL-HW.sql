--1.	What weather conditions are associated with New York City departure delays?
--

SELECT arr_delay, dep_delay, visib, wind_gust, humid, wind_speed
FROM flights f LEFT JOIN weather w 
ON f.year = w.year AND f.month = w.month AND f.day = w.day and f.hour = w.hour
WHERE f.year = 2013 AND f.month = 9 
ORDER BY wind_gust, dep_delay asc;


-- answer 1: while visib is 1.75 , wind_gusts are at 0 or lowest, Wind_speeds are at 0 or lowest Humidity is  normally at 93.99 which is high,  it does not normally cause  high departure delays, however it does cause Arrival delays.
-- Arr _delays are most times associated with a combination of  low visibility of 10 miles or more, high wind gusts and when there is humidity and high winds.


--2.Are older planes more likely to be delayed?
--Objective: select year from planes and match it with tailnum in flights

SELECT arr_delay, dep_delay, 
flights.tailnum, dest, airports.name, 
manufacturer, seats, planes.year
FROM flights
INNER JOIN airports
ON flights.dest = airports.faa
LEFT JOIN planes
ON flights.tailnum = planes.tailnum
ORDER BY year desc;

--Answer 2. I did not feel I had enough information to determine the  relation to older planes however, the oldest plane did have the highest delays. On the other hand most of the newer planes had a larger number of delays in total.


--3. Ask (and if possible answer) a third question that also requires joining information from two or more tables in the flights database, and/or assumes that additional information can be collected in advance of answering your question
--answer 3 4.	Which manufacturer produced the largest amount of  dep and arr delays