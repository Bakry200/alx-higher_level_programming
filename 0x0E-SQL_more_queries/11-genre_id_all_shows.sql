-- This script lists all shows contained in the database hbtn_0d_tvshows.
-- Each record displays: tv_shows.title - tv_show_genres.genre_id
-- If a show doesn’t have a genre, display NULL
-- Results are sorted in ascending order by tv_shows.title and tv_show_genres.genre_id
-- The database name will be passed as an argument of the mysql command
-- Selects all tv shows and their genres, including shows with no genres
SELECT tv_shows.title, tv_show_genres.genre_id
FROM tv_shows
LEFT JOIN tv_show_genres
ON tv_shows.id = tv_show_genres.tv_show_id
ORDER BY tv_shows.title, tv_show_genres.genre_id;
