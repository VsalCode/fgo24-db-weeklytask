-- Active: 1750128805513@@127.0.0.1@5432@postgres

CREATE TABLE admin (
  id SERIAL PRIMARY KEY,
  email VARCHAR(100) NOT NULL UNIQUE,
  password VARCHAR(255) NOT NULL 
);

CREATE TABLE movie (
    id SERIAL PRIMARY KEY,
    title VARCHAR(255) NOT NULL,
    overview VARCHAR(500),
    vote_average DECIMAL(3, 1), 
    poster_path VARCHAR(255),
    backdrop_path VARCHAR(255),
    release_date DATE, 
    runtime BIGINT, 
    popularity DECIMAL(10, 2), 
    admin_id BIGINT REFERENCES admin(id) ON DELETE SET NULL ON UPDATE CASCADE 
);

CREATE TABLE genres (
  id SERIAL PRIMARY KEY,
  name VARCHAR(100) NOT NULL UNIQUE
);

CREATE TABLE movie_genres (
  genre_id BIGINT REFERENCES genres(id) ON DELETE CASCADE,
  movie_id BIGINT REFERENCES movie(id) ON DELETE CASCADE,
  PRIMARY KEY (genre_id, movie_id)
);

CREATE TABLE directors (
  id SERIAL PRIMARY KEY,
  name VARCHAR(100) NOT NULL
);

CREATE TABLE movie_directors (
  movie_id BIGINT REFERENCES movie(id) ON DELETE CASCADE,
  director_id BIGINT REFERENCES directors(id) ON DELETE CASCADE,
  PRIMARY KEY (movie_id, director_id)
);

CREATE TABLE casts (
  id SERIAL PRIMARY KEY,
  name VARCHAR(100) NOT NULL
);

CREATE TABLE movie_casts (
  movie_id BIGINT REFERENCES movie(id) ON DELETE CASCADE,
  cast_id BIGINT REFERENCES casts(id) ON DELETE CASCADE,
  PRIMARY KEY (movie_id, cast_id)
);

CREATE TABLE payment_method (
  id SERIAL PRIMARY KEY,
  name VARCHAR(100) NOT NULL UNIQUE
);

CREATE TABLE transaction_detail (
  id SERIAL PRIMARY KEY,
  seat VARCHAR(100) NOT NULL
);

CREATE TABLE users (
  id SERIAL PRIMARY KEY,
  fullname VARCHAR(100) NOT NULL,
  email VARCHAR(100) NOT NULL UNIQUE,
  phone BIGINT,
  password VARCHAR(255) NOT NULL
);

CREATE TABLE transactions (
  id SERIAL PRIMARY KEY,
  customer_fullname VARCHAR(100) NOT NULL,
  customer_email VARCHAR(100) NOT NULL UNIQUE,
  customer_phone BIGINT, 
  amount BIGINT NOT NULL, 
  cinema VARCHAR(100) NOT NULL,
  location VARCHAR(255) NOT NULL,
  time TIME,
  date DATE,
  user_id BIGINT REFERENCES users(id) ON DELETE CASCADE ON UPDATE CASCADE,
  movie_id BIGINT REFERENCES movie(id) ON DELETE CASCADE ON UPDATE CASCADE,
  payment_method_id BIGINT REFERENCES payment_method(id) ON DELETE CASCADE ON UPDATE CASCADE,
  trx_detail_id BIGINT REFERENCES transaction_detail(id) ON DELETE CASCADE ON UPDATE CASCADE
);

CREATE TABLE session (
  id SERIAL PRIMARY KEY,
  user_id BIGINT REFERENCES users(id) ON DELETE CASCADE,
  created_at TIMESTAMP DEFAULT now() NOT NULL
);

CREATE INDEX idx_movie_title ON movie(title);
CREATE INDEX idx_users_email ON users(email);