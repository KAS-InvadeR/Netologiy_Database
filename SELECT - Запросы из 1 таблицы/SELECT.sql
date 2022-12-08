--название и год выхода альбомов, вышедших в 2018 году
SELECT name, yer FROM album
WHERE yer = 2018;

--название и продолжительность самого длительного трека(ИСПРАВИЛ)
SELECT name, duration_s FROM track
WHERE duration_s = (SELECT MAX(duration_s) FROM track);

--SELECT name, duration_s FROM track
--ORDER BY duration_s DESC
--LIMIT 1;

--название треков, продолжительность которых не менее 3,5 минуты
SELECT name FROM track
where duration_s >= 210;

--названия сборников, вышедших в период с 2018 по 2020 год включительно(ИСПРАВИЛ)
SELECT name FROM collection
WHERE yer BETWEEN 2018 AND 2020

--SELECT name FROM collection
--WHERE yer >= 2018 AND yer <= 2020;

--исполнители, чье имя состоит из 1 слова(ИСПРАВИЛ)
SELECT name FROM executor
WHERE name NOT ILIKE '% %'

--SELECT name FROM executor
--WHERE NOT name LIKE '% %'

--название треков, которые содержат слово "мой"/"my"
SELECT name FROM track
WHERE name LIKE '%My%'


