
INSERT INTO genre
VALUES 
(1, 'Рок'),
(2, 'Поп'),
(3, 'Джаз'),
(4, 'Классика'),
(5, 'Хип-Хоп');

INSERT INTO executor
VALUES
(1, 'Internet Money'),
(2, 'John Coltrane Quartet'),
(3, 'Véronique Bonnecaze'),
(4, 'Britney Spears'),
(5, 'Ariana Grande'),
(6, 'Talking Heads'),
(7, 'Beatles'),
(8, 'The Rolling Stones');

INSERT INTO artistsgenre
VALUES
(1, 5), (1, 2), (2, 3), (3, 4), (4, 2),
(5, 2), (6, 1), (7, 1), (8, 1);

INSERT INTO album
VALUES
(1, 'War and Peace', 2022),
(2, 'In The Zone', 2003),
(3, 'Sweetener', 2018),
(4, 'Remain In Light (Deluxe Version)', 1980),
(5, 'The Beatles (The White Album)', 1968),
(6, 'Let It Bleed (Remastered)', 1969),
(7, 'B4 The Storm', 2020),
(8, 'Crescent', 1964),
(9, 'Let It Be... Naked', 2003);

INSERT INTO executoralbum
VALUES
(1, 7), (2, 8), (3, 1), (4, 2), (5, 3),
(6, 4), (7, 5), (7, 9), (8, 6);

INSERT INTO track
VALUES
(1, 'Crescent', 522, 8),(2, 'Get Back', 155, 9),
(3, 'One After 909', 164, 9), (4, 'no tears left to cry', 206, 3),
(5, 'Toxic', 198, 2), (6, 'Everytime', 230, 2),
(7, 'Breathe on My', 224, 2), (8, 'Allegro moderato', 518, 1),
(9, 'Crosseyed and Painless', 285, 4), (10, 'Dear Prudence', 236, 5),
(11, 'Rocky Raccoon', 213, 5), (12, 'Gimme Shelter', 270, 6),
(13, 'Gimme Shelter', 271, 6), (14, 'Message', 99, 7),
(15, 'Blastoff', 175, 7);

INSERT INTO collection
VALUES
(1, 'collection_1', 2022),
(2, 'collection_2', 2022),
(3, 'collection_3', 2022),
(4, 'collection_4', 2022),
(5, 'collection_5', 2018),
(6, 'collection_6', 2020),
(7, 'collection_7', 2021),
(8, 'collection_8', 2000);

INSERT INTO trackcollection
VALUES
(1, 1), (1, 2), (2, 3), (3, 4), (4, 2),
(5, 2), (6, 1), (7, 1), (8, 1), (8, 8),
(5, 4), (6, 7), (7, 3), (2, 8), (4, 1);


