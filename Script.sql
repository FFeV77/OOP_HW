CREATE TABLE IF NOT EXISTS genre(
	id SERIAL PRIMARY KEY,
	name VARCHAR(64) NOT NULL
);
	
CREATE TABLE IF NOT EXISTS artist(
	id SERIAL PRIMARY KEY,
	name VARCHAR(64) NOT NULL
);
	
CREATE TABLE IF NOT EXISTS album(
	id SERIAL PRIMARY KEY,
	name VARCHAR(128) NOT NULL,
	year INTEGER
);

CREATE TABLE IF NOT EXISTS single(
	id SERIAL PRIMARY KEY,
	name VARCHAR(128) NOT NULL,
	duration INTEGER,
	album_id INTEGER NOT NULL REFERENCES album(id)
);

CREATE TABLE IF NOT EXISTS collection(
	id SERIAL PRIMARY KEY,
	name VARCHAR(128) NOT NULL,
	year INTEGER
);

CREATE TABLE IF NOT EXISTS collectionsingle(
	collection_id INTEGER NOT NULL REFERENCES collection(id),
	single_id INTEGER NOT NULL REFERENCES single(id),
	CONSTRAINT pk_col PRIMARY KEY(collection_id, single_id)
);

CREATE TABLE IF NOT EXISTS artistalbum(
	artist_id INTEGER NOT NULL REFERENCES artist(id),
	album_id INTEGER NOT NULL REFERENCES album(id),
	CONSTRAINT pk_art_alb PRIMARY KEY(artist_id, album_id)
);

CREATE TABLE IF NOT EXISTS artistgenre(
	artist_id INTEGER NOT NULL REFERENCES artist(id),
	genre_id INTEGER NOT NULL REFERENCES genre(id),
	CONSTRAINT pk_art_gen PRIMARY KEY(artist_id, genre_id)
);

CREATE TABLE IF NOT EXISTS worker(
	id SERIAL PRIMARY KEY,
	name TEXT NOT NULL,
	department TEXT NOT NULL,
	leader INTEGER REFERENCES worker(id)
);
