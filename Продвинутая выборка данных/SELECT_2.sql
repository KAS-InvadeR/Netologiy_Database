--количество исполнителей в каждом жанре
SELECT g.name, COUNT(e.id) FROM genre g
JOIN artistsgenre a ON g.id = a.genre_id
JOIN executor e ON a.executor_id = e.id
GROUP BY g.name
ORDER BY COUNT(e.id)

--количество треков, вошедших в альбомы 2019-2020 годов
SELECT COUNT(t.id) FROM track t
JOIN album a ON t.album_id = a.id 
WHERE yer >= 2019 AND yer <= 2020;

--средняя продолжительность треков по каждому альбому
SELECT a.name, AVG(t.duration_s) FROM album a
JOIN track t ON t.album_id = a.id
GROUP by a.name
ORDER BY AVG(t.duration_s)

--все исполнители, которые не выпустили альбомы в 2020 году
SELECT e.name FROM executor e
JOIN executoralbum ea ON e.id = ea.executor_id
JOIN album a ON ea.album_id = a.id
WHERE a.yer != 2020
GROUP BY e.name;

--названия сборников, в которых присутствует конкретный исполнитель (выберите сами)
SELECT c.name FROM collection c
JOIN trackcollection tc ON c.id = tc.collection_id
JOIN track t ON tc.track_id = t.id
JOIN album a ON t.album_id = a.id
JOIN executoralbum ea ON a.id = ea.album_id 
LEFT JOIN executor e ON ea.executor_id = e.id 
WHERE e.name = 'Beatles'
GROUP BY c.name;

--название альбомов, в которых присутствуют исполнители более 1 жанра
SELECT a.name FROM album a
JOIN executoralbum ea ON a.id = ea.album_id
JOIN executor e ON ea.executor_id = e.id
JOIN artistsgenre ag ON e.id = ag.executor_id
JOIN genre g ON ag.genre_id = g.id
GROUP BY a.name
HAVING COUNT(*) > 1

--наименование треков, которые не входят в сборники
SELECT t.name FROM track t
LEFT JOIN trackcollection tk ON t.id = tk.track_id
WHERE tk.track_id IS NULL


--исполнителя(-ей), написавшего самый короткий по продолжительности трек (теоретически таких треков может быть несколько)
SELECT e.name FROM executor e
JOIN executoralbum ea ON e.id = ea.executor_id
JOIN album a ON ea.album_id = a.id
JOIN track t ON a.id = t.album_id
GROUP BY e.name, t.duration_s
HAVING t.duration_s = (SELECT MIN(duration_s) FROM track)
ORDER BY e.name

--название альбомов, содержащих наименьшее количество треков
SELECT a.name FROM album a
JOIN track t ON a.id = t.album_id
GROUP BY a.name
ORDER BY COUNT(t.id)
LIMIT 1




