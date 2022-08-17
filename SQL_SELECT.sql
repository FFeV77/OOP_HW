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
JOIN artistgenre ag ON g.id=ag.genre_id
GROUP BY g.id;

SELECT a.name, COUNT(album_id) FROM album a
LEFT JOIN single s ON a.id=s.album_id
WHERE a.year BETWEEN 2019 AND 2020
GROUP BY a.id;

SELECT a.name, AVG(s.duration) FROM album a
JOIN single s ON a.id=s.album_id
GROUP BY a.id;

SELECT a.name FROM artist a
JOIN artistalbum aa ON a.id=aa.artist_id
JOIN album am ON am.id=aa.album_id
WHERE am.year NOT IN (2020)
GROUP BY a.id;

SELECT c.name FROM collection c
JOIN collectionsingle cs ON c.id=cs.collection_id
JOIN single s ON cs.single_id=s.id
JOIN artistalbum aa ON s.album_id=aa.album_id
JOIN artist a ON aa.artist_id=a.id
WHERE a.name LIKE 'Metallika'
GROUP BY c.id;

SELECT name FROM (
SELECT a.name, count(ag.genre_id)>1 c FROM album a
JOIN artistalbum aa ON a.id=aa.album_id
JOIN artistgenre ag ON aa.artist_id=ag.artist_id
GROUP BY a.id
) al_g WHERE al_g.c = TRUE;

SELECT s.name FROM single s
LEFT JOIN collectionsingle cs ON s.id=cs.single_id
WHERE cs.single_id IS NULL;

SELECT a.name FROM artist a
JOIN artistalbum aa ON a.id=aa.artist_id
JOIN single s ON aa.album_id=s.album_id
WHERE s.duration = (SELECT min(duration) FROM single)
GROUP BY a.id;

SELECT aa.name FROM (
SELECT a.name, count(s.album_id) FROM single s
JOIN album a ON s.album_id=a.id
GROUP BY a.id
) aa
WHERE count = (
SELECT min(aa.count) FROM (
SELECT count(album_id) FROM single 
GROUP BY album_id
) aa );
