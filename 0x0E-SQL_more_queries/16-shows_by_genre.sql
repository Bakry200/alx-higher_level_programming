-- This script lists all shows and all genres linked to each show from the hbtn_0d_tvshows database.
-- If a show doesn’t have a genre, display NULL in the genre column
-- Each record displays: tv_shows.title - tv_genres.name
-- Results are sorted in ascending order by the show title and genre name
-- The database name will be passed as an argument of the mysql command

-- Selects all shows and their genres
SELECT tv_shows.title, tv_genres.name
FROM tv_shows
LEFT JOIN tv_show_genres ON tv_shows.id = tv_show_genres.tv_show_id
LEFT JOIN tv_gen
