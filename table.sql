CREATE TABLE admin (
  id SERIAL PRIMARY KEY,
  email VARCHAR(100)
  password VARCHAR(100)
  is_admin BOOLEAN
);

CREATE TABLE movie (
    id SERIAL PRIMARY KEY,
    title VARCHAR(100),
    overview VARCHAR(255),
    vote_average BIGINT,
    poster_path VARCHAR(255),
    backdrop_path VARCHAR(255),
    release_date VARCHAR(100),
    runtime BIGINT,
    popularity BIGINT,
    admin_id BIGINT REFERENCES admin(id) 
);

CREATE TABLE genre (
  id SERIAL PRIMARY KEY,
  name VARCHAR(100)
);

CREATE TABLE movie_genres(
  id SERIAL PRIMARY KEY,
  genre_id BIGINT REFERENCES genre(id)
  movie_id BIGINT REFERENCES movie(id)
);

