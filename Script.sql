CREATE TABLE IF NOT EXISTS Genre (
	id SERIAL PRIMARY KEY,
	genre TEXT NOT NULL
);
	
CREATE TABLE IF NOT EXISTS Artist (
	id SERIAL PRIMARY KEY,
	name TEXT NOT NULL
);
	
CREATE TABLE IF NOT EXISTS Album (
	id SERIAL PRIMARY KEY,
	name TEXT NOT NULL,
	year INTEGER
);

CREATE TABLE IF NOT EXISTS Single (
	id SERIAL PRIMARY KEY,
	name TEXT NOT NULL,
	duration TIME,
	album_id INTEGER NOT NULL REFERENCES Album(id)
);

CREATE TABLE IF NOT EXISTS ArtistAlbum (
	id SERIAL PRIMARY KEY,
	artist_id INTEGER NOT NULL REFERENCES Artist(id),
	genre_id INTEGER NOT NULL REFERENCES Genre(id),
	album_id INTEGER NOT NULL REFERENCES Album(id)
);

CREATE TABLE IF NOT EXISTS Worker (
	id SERIAL PRIMARY KEY,
	name TEXT NOT NULL,
	department TEXT NOT NULL,
	leader INTEGER REFERENCES Worker(id)
);