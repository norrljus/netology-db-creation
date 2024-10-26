-- Задание 2
-- Название и продолжительность самого длительного трека.
SELECT name, length FROM tracks ORDER BY length DESC LIMIT 1;


-- Название треков, продолжительность которых не менее 3,5 минут.
SELECT name, length FROM tracks WHERE length >= '00:03:30';


-- Названия сборников, вышедших в период с 2018 по 2020 год включительно.
SELECT name FROM collections WHERE year BETWEEN 2018 AND 2020;


-- Исполнители, чьё имя состоит из одного слова.
SELECT name FROM artists WHERE name NOT LIKE '% %';


-- Название треков, которые содержат слово «мой» или «my».
SELECT name FROM tracks WHERE name ILIKE 'my %'
OR name ILIKE '% my'
OR name ILIKE '% my %'
OR name ILIKE 'my';



-- Задание 3
-- Количество исполнителей в каждом жанре.
SELECT name, COUNT(artistid) q FROM genres g 
JOIN artistsgenres a ON g.id = a.genreid
GROUP BY g.name
ORDER BY q DESC;


-- Количество треков, вошедших в альбомы 2019–2020 годов.
SELECT COUNT(t.id) FROM tracks t 
JOIN albums a ON a.id = t.album
WHERE a.year BETWEEN 2019 AND 2020;


-- Средняя продолжительность треков по каждому альбому.
SELECT a.name, AVG(length) FROM albums a 
JOIN tracks t ON a.id = t.album
GROUP BY a.name;


-- Все исполнители, которые не выпустили альбомы в 2020 году.
SELECT a.name FROM artists a 
WHERE a.name NOT IN (
SELECT a.name FROM artists a
JOIN albumartists ar ON a.id = ar.artistid 
JOIN albums al ON ar.albumid = al.id
WHERE al.year = 2020);



-- Названия сборников, в которых присутствует конкретный исполнитель (выберите его сами).
SELECT DISTINCT c.name FROM collections c
JOIN collectiontracks ct ON c.id = ct.collectionid 
JOIN tracks t ON ct.trackid = t.id 
JOIN albums a ON t.album = a.id 
JOIN albumartists ar ON a.id = ar.artistid 
WHERE ar.artistid = '2';



-- Задание 4
-- Названия альбомов, в которых присутствуют исполнители более чем одного жанра.
SELECT DISTINCT a.name FROM albums a
JOIN albumartists ar ON a.id = ar.albumid
JOIN artists a2 ON ar.artistid = a2.id 
JOIN artistsgenres a3 ON a2.id = a3.artistid
GROUP BY a.name, a3.artistid 
HAVING COUNT(a3.genreid) > 1;


-- Наименования треков, которые не входят в сборники.
SELECT t.name FROM tracks t 
LEFT JOIN collectiontracks c ON c.trackid = t.id
WHERE c.trackid IS NULL;


-- Исполнитель или исполнители, написавшие самый короткий по продолжительности трек, — теоретически таких треков может быть несколько.
SELECT a3.name FROM tracks t
JOIN albums a ON t.album = a.id 
JOIN albumartists a2 ON a.id = a2.albumid
JOIN artists a3 ON a2.artistid = a3.id
WHERE t.length = (SELECT MIN(length) FROM tracks)
GROUP BY a3.name;


-- Названия альбомов, содержащих наименьшее количество треков.
SELECT a.name FROM albums a
JOIN tracks t ON a.id = t.album
GROUP BY a.id 
HAVING COUNT(t.id) = (
	SELECT COUNT(t2.id) FROM tracks t2
	GROUP BY t2.album
	ORDER BY 1
	LIMIT 1
);