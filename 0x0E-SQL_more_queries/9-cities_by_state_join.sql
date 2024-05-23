-- This script lists all cities contained in the database hbtn_0d_usa.
-- Each record displays: cities.id - cities.name - states.name
-- Results are sorted in ascending order by cities.id
-- The database name will be passed as an argument of the mysql command

-- Selects all cities with their corresponding state names
SELECT cities.id, cities.name, states.name 
FROM cities, states 
WHERE cities.state_id = states.id 
ORDER BY cities.id;
