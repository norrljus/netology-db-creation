CREATE TABLE IF NOT EXISTS Genres (
	id SERIAL PRIMARY KEY,
	name VARCHAR(20) NOT NULL
);

CREATE TABLE IF NOT EXISTS Artists (
	id SERIAL PRIMARY KEY,
	name VARCHAR(50) NOT NULL
);

CREATE TABLE IF NOT EXISTS Albums (
	id SERIAL PRIMARY KEY,
	name VARCHAR(50) NOT NULL,
	year INT NOT NULL
);

CREATE TABLE IF NOT EXISTS Tracks (
	id SERIAL PRIMARY KEY,
	name VARCHAR(50) NOT NULL,
	length TIME NOT NULL,
	album INTEGER REFERENCES Albums(id)
);

CREATE TABLE IF NOT EXISTS Collections (
	id SERIAL PRIMARY KEY,
	name VARCHAR(50) NOT NULL,
	year INT NOT NULL
);

CREATE TABLE IF NOT EXISTS ArtistsGenres (
	genreID INTEGER REFERENCES Genres(id),
	artistID INTEGER REFERENCES Artists(id),
	CONSTRAINT ga PRIMARY KEY (genreID, artistID)
);

CREATE TABLE IF NOT EXISTS AlbumArtists (
	artistID INTEGER REFERENCES Artists(id),
	albumID INTEGER REFERENCES Albums(id),
	CONSTRAINT aa PRIMARY KEY (artistID, albumID)
);

CREATE TABLE IF NOT EXISTS CollectionTracks (
	trackID INTEGER REFERENCES Tracks(id),
	collectionID INTEGER REFERENCES Collections(id),
	CONSTRAINT tc PRIMARY KEY (trackID, collectionID)
);