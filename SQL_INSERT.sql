INSERT INTO Genre(genre)
VALUES('pop');

INSERT INTO Genre(genre)
VALUES('folk');

INSERT INTO Genre(genre)
VALUES('alternative');

INSERT INTO Genre(genre)
VALUES('classik');

INSERT INTO Genre(genre)
VALUES('rock');

INSERT INTO Artist(name)
VALUES('Metallika');

INSERT INTO Artist(name)
VALUES('System of a Down');

INSERT INTO Artist(name)
VALUES('Bethoven');

INSERT INTO Artist(name)
VALUES('Shakira');

INSERT INTO Artist(name)
VALUES('Bob Marley');

INSERT INTO Artist(name)
VALUES('Цой');

INSERT INTO Artist(name)
VALUES('Би-2');

INSERT INTO Artist(name)
VALUES('Агата Кристи');

INSERT INTO Album(name, year)
VALUES('Группа крови', '1986');

INSERT INTO Album(name, year)
VALUES('Toxicity', '1999');

INSERT INTO Album(name, year)
VALUES('Вовчик', '1999');

INSERT INTO Album(name, year)
VALUES('Mutter', '2011');

INSERT INTO Album(name, year)
VALUES('Moskau', '2015');

INSERT INTO Album(name, year)
VALUES('Mom', '2018');

INSERT INTO Album(name, year)
VALUES('Nothing lives metter', '1997');

INSERT INTO Album(name, year)
VALUES('Полковнику никто', '2009');

INSERT INTO Single(name, duration, album_id)
VALUES('track-1', '300', 3);

INSERT INTO Single(name, duration, album_id)
VALUES('track-2', '245', 1);

INSERT INTO Single(name, duration, album_id)
VALUES('track-222', '115', 1);

INSERT INTO Single(name, duration, album_id)
VALUES('track-3456', '267', 5);

INSERT INTO Single(name, duration, album_id)
VALUES('track-32', '450', 4);

INSERT INTO Single(name, duration, album_id)
VALUES('track-1', '999', 3);

INSERT INTO Single(name, duration, album_id)
VALUES('track-23', '100', 2);

INSERT INTO Single(name, duration, album_id)
VALUES('track-65', '315', 2);

INSERT INTO Single(name, duration, album_id)
VALUES('track-08', '325', 1);

INSERT INTO Single(name, duration, album_id)
VALUES('track-009', '240', 5);

INSERT INTO Single(name, duration, album_id)
VALUES('Конь мой ретивый', '238', 1);

INSERT INTO Single(name, duration, album_id)
VALUES('this is my song', '215', 1);

INSERT INTO Single(name, duration, album_id)
VALUES('track-6', '118', 3);

INSERT INTO Single(name, duration, album_id)
VALUES('track-2', '90', 5);

INSERT INTO Single(name, duration, album_id)
VALUES('track-10', '10', 1);

INSERT INTO Single(name, duration, album_id)
VALUES('track-1', '115', 1);

INSERT INTO Single(name, duration, album_id)
VALUES('track-123456', '455', 3);

INSERT INTO Single(name, duration, album_id)
VALUES('track-1345676543', '300', 5);

INSERT INTO Collection(name, year)
VALUES('Berlin l!ve', '2018');

INSERT INTO Collection(name, year)
VALUES('Berlin l!ve', '2019');

INSERT INTO Collection(name, year)
VALUES('Berlin l!ve', '2020');

INSERT INTO Collection(name, year)
VALUES('Сборник популярной музыки', '2001');

INSERT INTO Collection(name, year)
VALUES('Сборник популярной музыки', '2002');

INSERT INTO Collection(name, year)
VALUES('Сборник популярной музыки', '2003');

INSERT INTO Collection(name, year)
VALUES('Radio Hit', '2021');

INSERT INTO Collection(name, year)
VALUES('Radio Hit', '2022');

INSERT INTO CollectionSingle(collection_id, single_id)
VALUES(8, 3);

INSERT INTO CollectionSingle(collection_id, single_id)
VALUES(7, 5);

INSERT INTO CollectionSingle(collection_id, single_id)
VALUES(6, 6);

INSERT INTO CollectionSingle(collection_id, single_id)
VALUES(5, 1);

INSERT INTO CollectionSingle(collection_id, single_id)
VALUES(4, 5);

INSERT INTO CollectionSingle(collection_id, single_id)
VALUES(3, 13);

INSERT INTO CollectionSingle(collection_id, single_id)
VALUES(3, 15);

INSERT INTO CollectionSingle(collection_id, single_id)
VALUES(1, 15);

INSERT INTO CollectionSingle(collection_id, single_id)
VALUES(2, 3);

INSERT INTO CollectionSingle(collection_id, single_id)
VALUES(8, 4);

INSERT INTO ArtistAlbum(artist_id, album_id)
VALUES(1, 1);

INSERT INTO ArtistAlbum(artist_id, album_id)
VALUES(1, 2);

INSERT INTO ArtistAlbum(artist_id, album_id)
VALUES(2, 3);

INSERT INTO ArtistAlbum(artist_id, album_id)
VALUES(3, 4);

INSERT INTO ArtistAlbum(artist_id, album_id)
VALUES(4, 5);

INSERT INTO ArtistAlbum(artist_id, album_id)
VALUES(5, 6);

INSERT INTO ArtistAlbum(artist_id, album_id)
VALUES(6, 7);

INSERT INTO ArtistAlbum(artist_id, album_id)
VALUES(7, 8);

INSERT INTO ArtistAlbum(artist_id, album_id)
VALUES(8, 1);

INSERT INTO ArtistGenre(artist_id, genre_id)
VALUES(8, 2);

INSERT INTO ArtistGenre(artist_id, genre_id)
VALUES(1, 1);

INSERT INTO ArtistGenre(artist_id, genre_id)
VALUES(1, 3);

INSERT INTO ArtistGenre(artist_id, genre_id)
VALUES(1, 4);

INSERT INTO ArtistGenre(artist_id, genre_id)
VALUES(5, 3);

INSERT INTO ArtistGenre(artist_id, genre_id)
VALUES(6, 4);

INSERT INTO ArtistGenre(artist_id, genre_id)
VALUES(7, 5);

INSERT INTO ArtistGenre(artist_id, genre_id)
VALUES(8, 1);
