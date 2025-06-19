-- Active: 1750128805513@@127.0.0.1@5432@postgres
CREATE TABLE admin (
  id SERIAL PRIMARY KEY,
  email VARCHAR(100),
  password VARCHAR(100),
  is_admin BOOLEAN
);

CREATE TABLE movie (
    id SERIAL PRIMARY KEY,
    title VARCHAR(255),
    overview VARCHAR(500),
    vote_average DECIMAL(10, 1),
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
  genre_id BIGINT REFERENCES genre(id),
  movie_id BIGINT REFERENCES movie(id)
);

CREATE TABLE director (
  id SERIAL PRIMARY KEY,
  name VARCHAR(100)
);

CREATE TABLE movie_directors (
  id SERIAL PRIMARY KEY,
  movie_id BIGINT REFERENCES movie(id),
  director_id BIGINT REFERENCES director(id)
);

CREATE TABLE transaction_detail (
  id SERIAL PRIMARY KEY,
  seat VARCHAR(100)
);

CREATE TABLE payment_method (
  id SERIAL PRIMARY KEY,
  name VARCHAR(100)
);

CREATE TABLE users (
  id SERIAL PRIMARY KEY,
  fullname VARCHAR(100),
  email VARCHAR(100),
  password VARCHAR(100),
  phone BIGINT
);

CREATE TABLE transactions (
  id SERIAL PRIMARY KEY,
  buyer_fullname VARCHAR(100),
  buyer_email VARCHAR(100),
  buyer_phone INT,
  cinema VARCHAR(100),
  location VARCHAR(255),
  date TIMESTAMP DEFAULT now(),
  time TIMESTAMP DEFAULT now(),
  amount BIGINT,
  user_id BIGINT REFERENCES users(id),
  movie_id BIGINT REFERENCES movie(id),
  trx_detail_id BIGINT REFERENCES transaction_detail(id),
  payment_method_id BIGINT REFERENCES payment_method(id)
);

CREATE TABLE session (
  id SERIAL PRIMARY KEY,
  user_id BIGINT REFERENCES users(id),
  created_at TIMESTAMP DEFAULT now()
);

DROP TABLE admin;
DROP TABLE movie;
DROP TABLE genre;
DROP TABLE movie_genres;
DROP TABLE director;
DROP TABLE movie_directors;
DROP TABLE transaction_detail;
DROP TABLE payment_method;
DROP TABLE users;
DROP TABLE transactions;
DROP TABLE session;