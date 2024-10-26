INSERT INTO genres(name) VALUES ('Rock');
INSERT INTO genres(name) VALUES ('Alternative');
INSERT INTO genres(name) VALUES ('Experimental');
INSERT INTO genres(name) VALUES ('Indie');


INSERT INTO artists(name) VALUES ('The Strokes');
INSERT INTO artists(name) VALUES ('The Shins');
INSERT INTO artists(name) VALUES ('Stomach Book');
INSERT INTO artists(name) VALUES ('Car Seat Headrest');
INSERT INTO artists(name) VALUES ('Mitski');


INSERT INTO albums(name, year) VALUES ('The New Abnormal', 2020);
INSERT INTO albums(name, year) VALUES ('Chutes Too Narrow', 2003);
INSERT INTO albums(name, year) VALUES ('Stomach Book', 2021);
INSERT INTO albums(name, year) VALUES ('Twin Fantasy', 2011);
INSERT INTO albums(name, year) VALUES ('Be the Cowboy', 2018);


INSERT INTO tracks(name, length, album) VALUES ('The Adults Are Talking', '00:05:10', 1);
INSERT INTO tracks(name, length, album) VALUES ('Selfless', '00:03:43', 1);
INSERT INTO tracks(name, length, album) VALUES ('Brooklyn Bridge To Chorus', '00:03:56', 1);
INSERT INTO tracks(name, length, album) VALUES ('Kissing The Lipless', '00:03:19', 2);
INSERT INTO tracks(name, length, album) VALUES ('Mine is Not a High Horse', '00:03:20', 2);
INSERT INTO tracks(name, length, album) VALUES ('Animals', '00:03:15', 3);
INSERT INTO tracks(name, length, album) VALUES ('Our Story', '00:05:11', 3);
INSERT INTO tracks(name, length, album) VALUES ('Sober to Death', '00:05:05', 4);
INSERT INTO tracks(name, length, album) VALUES ('Bodys', '00:06:47', 4);
INSERT INTO tracks(name, length, album) VALUES ('Me and My Husband', '00:02:18', 5);
INSERT INTO tracks(name, length, album) VALUES ('Nobody', '00:03:14', 5);
INSERT INTO tracks(name, length, album) VALUES ('Washing Machine Heart', '00:02:09', 5);


INSERT INTO collections(name, year) VALUES ('Alternative Rock', 2021);
INSERT INTO collections(name, year) VALUES ('Experimental Collection', 2022);
INSERT INTO collections(name, year) VALUES ('Indie Music', 2018);
INSERT INTO collections(name, year) VALUES ('The Shins Best Tracks', 2010);


INSERT INTO artistsgenres(genreid, artistid) VALUES (1, 1);
INSERT INTO artistsgenres(genreid, artistid) VALUES (1, 2);
INSERT INTO artistsgenres(genreid, artistid) VALUES (2, 2);
INSERT INTO artistsgenres(genreid, artistid) VALUES (2, 4);
INSERT INTO artistsgenres(genreid, artistid) VALUES (3, 3);
INSERT INTO artistsgenres(genreid, artistid) VALUES (4, 4);
INSERT INTO artistsgenres(genreid, artistid) VALUES (4, 5);


INSERT INTO albumartists(artistid, albumid) VALUES (1, 1);
INSERT INTO albumartists(artistid, albumid) VALUES (2, 2);
INSERT INTO albumartists(artistid, albumid) VALUES (3, 3);
INSERT INTO albumartists(artistid, albumid) VALUES (4, 4);
INSERT INTO albumartists(artistid, albumid) VALUES (5, 5);


INSERT INTO collectiontracks(trackid, collectionid) VALUES (4, 1);
INSERT INTO collectiontracks(trackid, collectionid) VALUES (5, 1);
INSERT INTO collectiontracks(trackid, collectionid) VALUES (8, 1);
INSERT INTO collectiontracks(trackid, collectionid) VALUES (9, 1);
INSERT INTO collectiontracks(trackid, collectionid) VALUES (6, 2);
INSERT INTO collectiontracks(trackid, collectionid) VALUES (7, 2);
INSERT INTO collectiontracks(trackid, collectionid) VALUES (10, 3);
INSERT INTO collectiontracks(trackid, collectionid) VALUES (11, 3);
INSERT INTO collectiontracks(trackid, collectionid) VALUES (9, 3);
INSERT INTO collectiontracks(trackid, collectionid) VALUES (4, 4);
INSERT INTO collectiontracks(trackid, collectionid) VALUES (5, 4);
