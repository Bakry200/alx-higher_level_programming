-- This script lists all the cities of California that can be found in the database hbtn_0d_usa
-- The results are sorted in ascending order by cities.id
-- The database name will be passed as an argument of the mysql command

-- Selects the id of the state where name is 'California'
SELECT id 
INTO @california_id
FROM states 
WHERE name = 'California';

-- Selects and lists the cities of California using the state id found above
SELECT cities.id, cities.name 
FROM cities 
WHERE state_id = @california_id 
ORDER BY cities.id;
