DROP TABLE genre;
DROP TABLE albums;
DROP TABLE artists;

CREATE TABLE artists
(
  id SERIAL8 PRIMARY KEY,
  name VARCHAR(255) NOT NULL
);

CREATE TABLE albums
(
  id SERIAL8 PRIMARY KEY,
  title VARCHAR(255) NOT NULL,
  quantity INT4,
  cost_price INT4,
  artist_id INT8 REFERENCES artists(id)
  genre_id INT8 REFERENCES genre(id)
);

CREATE TABLE genre
(
  id SERIAL8 PRIMARY KEY,
  type VARCHAR(255)  
);
