INSERT INTO genre(name)
VALUES
('pop'),
('folk'),
('alternative'),
('classik'),
('rock');

INSERT INTO artist(name)
VALUES
('Metallika'),
('System of a Down'),
('Bethoven'),
('Shakira'),
('Bob Marley'),
('Цой'),
('Би-2'),
('Агата Кристи');

INSERT INTO album(name, year)
VALUES
('Группа крови', '1986'),
('Toxicity', '1999'),
('Вовчик', '1999'),
('Mutter', '2011'),
('Moskau', '2015'),
('Mom', '2018'),
('Nothing lives metter', '1997'),
('Полковнику никто', '2009');

INSERT INTO single(name, duration, album_id)
VALUES
('track-1', '300', 3),
('track-2', '245', 1),
('track-222', '115', 1),
('track-3456', '267', 5),
('track-32', '450', 4),
('track-1', '999', 3),
('track-23', '100', 2),
('track-23', '100', 2),
('track-65', '315', 2),
('track-08', '325', 1),
('track-009', '240', 5),
('Конь мой ретивый', '238', 1),
('this is my song', '215', 1),
('track-6', '118', 3),
('track-2', '90', 5),
('track-10', '10', 1),
('track-1', '115', 1),
('track-123456', '455', 3),
('track-1345676543', '300', 5);

INSERT INTO collection(name, year)
VALUES
('Berlin l!ve', '2018'),
('Berlin l!ve', '2019'),
('Berlin l!ve', '2020'),
('Сборник популярной музыки', '2001'),
('Сборник популярной музыки', '2002'),
('Сборник популярной музыки', '2003'),
('Radio Hit', '2021'),
('Radio Hit', '2022');

INSERT INTO collectionsingle(collection_id, single_id)
VALUES
(8, 3),
(7, 5),
(6, 6),
(5, 1),
(4, 5),
(3, 13),
(3, 15),
(1, 15),
(2, 3),
(8, 4);

INSERT INTO artistalbum(artist_id, album_id)
VALUES
(1, 1),
(1, 2),
(2, 3),
(3, 4),
(4, 5),
(5, 6),
(6, 7),
(7, 8),
(8, 1);

INSERT INTO artistgenre(artist_id, genre_id)
VALUES
(8, 2),
(1, 1),
(1, 3),
(1, 4),
(5, 3),
(6, 4),
(7, 5),
(8, 1);
