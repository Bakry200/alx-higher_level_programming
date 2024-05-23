-- This script lists all genres from the database hbtn_0d_tvshows and displays the number of shows linked to each.
-- Each record displays: <TV Show genre> - <Number of shows linked to this genre>
-- The first column is called genre
-- The second column is called number_of_shows
-- Only genres with linked shows are displayed
-- Results are sorted in descending order by the number of shows linked
-- The database name will be passed as an argument of the mysql command

-- Selects all genres with the number of shows linked to each, excluding genres with no shows linked
SELECT genres.name AS genre, COUNT(tv_show_genres.tv_show_id) AS number_of_shows
FROM genres
JOIN tv_show_genres ON genres.id = tv_show_genres.genre_id
GROUP BY genres.name
HAVING number_of_shows > 0
ORDER BY number_of_shows DESC;
