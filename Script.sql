CREATE TABLE IF NOT EXISTS Genre (
	id SERIAL PRIMARY KEY,
	genre VARCHAR(64) NOT NULL
);
	
CREATE TABLE IF NOT EXISTS Artist (
	id SERIAL PRIMARY KEY,
	name VARCHAR(64) NOT NULL
);
	
CREATE TABLE IF NOT EXISTS Album (
	id SERIAL PRIMARY KEY,
	name VARCHAR(128) NOT NULL,
	year INTEGER
);

CREATE TABLE IF NOT EXISTS Single (
	id SERIAL PRIMARY KEY,
	name VARCHAR(128) NOT NULL,
	duration INTEGER,
	album_id INTEGER NOT NULL REFERENCES Album(id)
);

CREATE TABLE IF NOT EXISTS Collection (
	id SERIAL PRIMARY KEY,
	name VARCHAR(128) NOT NULL,
	year INTEGER
);

CREATE TABLE IF NOT EXISTS CollectionSingle (
	collection_id INTEGER NOT NULL REFERENCES Collection(id),
	single_id INTEGER NOT NULL REFERENCES Single(id),
	CONSTRAINT pk_col PRIMARY KEY(collection_id, single_id)
);

CREATE TABLE IF NOT EXISTS ArtistAlbum (
	artist_id INTEGER NOT NULL REFERENCES Artist(id),
	album_id INTEGER NOT NULL REFERENCES Album(id),
	CONSTRAINT pk_art_alb PRIMARY KEY(artist_id, album_id)
);

CREATE TABLE IF NOT EXISTS ArtistGenre (
	artist_id INTEGER NOT NULL REFERENCES Artist(id),
	genre_id INTEGER NOT NULL REFERENCES Genre(id),
	CONSTRAINT pk_art_gen PRIMARY KEY(artist_id, genre_id)
);

CREATE TABLE IF NOT EXISTS Worker (
	id SERIAL PRIMARY KEY,
	name TEXT NOT NULL,
	department TEXT NOT NULL,
	leader INTEGER REFERENCES Worker(id)
);
