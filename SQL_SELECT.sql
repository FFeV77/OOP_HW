SELECT name, YEAR FROM album
WHERE YEAR = 2018;

SELECT name, duration FROM single
ORDER BY duration DESC 
LIMIT 1;

SELECT name FROM single 
WHERE duration > '210';

SELECT name FROM collection 
WHERE YEAR BETWEEN 2018 AND 2019;

SELECT name FROM artist 
WHERE name NOT LIKE '% %';

SELECT name FROM single 
WHERE name LIKE '%мой%' OR name LIKE '%my%';



SELECT name, COUNT(genre_id) FROM genre g
JOIN artistgenre ag USING(genre_id)
GROUP BY genre_id;

SELECT a.name, COUNT(s.album_id) FROM album a
LEFT JOIN single s USING(album_id)
WHERE a.year BETWEEN 2019 AND 2020
GROUP BY a.album_id

SELECT a.name, AVG(s.duration) FROM album a
JOIN single s USING(album_id)
GROUP BY a.album_id;

SELECT name FROM artist
WHERE artist_id NOT IN (
	SELECT DISTINCT a.artist_id FROM artist a
	JOIN artistalbum aa USING(artist_id)
	JOIN album am USING(album_id)
	WHERE am.year IN (2020))

SELECT DISTINCT c.name FROM collection c
JOIN collectionsingle cs USING(collection_id)
JOIN single s USING(single_id)
JOIN artistalbum aa USING(album_id)
JOIN artist a USING(artist_id)
WHERE a.name LIKE 'Metallika'

SELECT a.name FROM album a
JOIN artistalbum aa USING(album_id)
JOIN artistgenre ag USING(artist_id)
GROUP BY a.album_id
HAVING COUNT(DISTINCT genre_id) > 1;

SELECT s.name FROM single s
LEFT JOIN collectionsingle cs USING(single_id)
WHERE cs.single_id IS NULL;

SELECT a.name FROM artist a
JOIN artistalbum aa USING(artist_id)
JOIN single s USING(album_id)
WHERE s.duration = (SELECT min(duration) FROM single)
GROUP BY a.artist_id;

WITH res AS (
SELECT a.name, COUNT(single_id) track_count FROM album a
JOIN single s USING(album_id)
GROUP BY album_id
)
SELECT res.name FROM res
WHERE res.track_count = (
	SELECT min(res.track_count) FROM res)
