 Insert admin
INSERT INTO admin (email, password) VALUES 
('admin@cinevo.com', md5('admin123') );

 Insert payment methods
INSERT INTO payment_method (name) VALUES 
('BRI'),
('BCA'),
('Mandiri'), 
('OVO'),
('DANA'),
('GoPay');

 Insert genres
INSERT INTO genres (name) VALUES 
('Action'),
('Adventure'),
('Comedy'),
('Drama'),
('Horror'),
('Romance'),
('Sci-Fi'),
('Thriller'),
('Animation'),
('Documentary');

 Insert directors
INSERT INTO directors (name) VALUES 
('Christopher Nolan'),
('Steven Spielberg'),
('Martin Scorsese'),
('Quentin Tarantino'),
('James Cameron');

 Insert casts
INSERT INTO casts (name) VALUES 
('Leonardo DiCaprio'),
('Robert Downey Jr.'),
('Scarlett Johansson'),
('Tom Hanks'),
('Meryl Streep'),
('Brad Pitt'),
('Jennifer Lawrence'),
('Will Smith');

 Insert users
INSERT INTO users (fullname, email, password, phone) VALUES 
('John Doe', 'john.doe@email.com', 'hashed_password', '+6281234567890'),
('Jane Smith', 'jane.smith@email.com', 'hashed_password', '+6281234567891'),
('Bob Wilson', 'bob.wilson@email.com', 'hashed_password', '+6281234567892');

INSERT INTO movie (title, overview, vote_average, poster_path, backdrop_path, release_date, runtime, popularity, admin_id) VALUES 
('Inception', 'A thief who steals corporate secrets through the use of dream-sharing technology...', 9, 'https://i.pinimg.com/736x/43/9a/1c/439a1c4583a953c26b63d08a1d832f53.jpg', 'https://i.pinimg.com/736x/a5/b5/b9/a5b5b93fea8d2040860e94eb3e768152.jpg', '2010-07-16', 148, 100, 1),
('The Dark Knight', 'Batman begins his fight against crime in Gotham City...', 9, 'https://i.pinimg.com/736x/89/ee/d1/89eed179fdfab9dd116f31a3e12bb188.jpg', 'https://i.pinimg.com/736x/89/ee/d1/89eed179fdfab9dd116f31a3e12bb188.jpg', '2008-07-18', 152, 95, 1);

INSERT INTO movie_genres (movie_id, genre_id) VALUES 
(1, 1), (1, 7), (1, 8), 
(2, 1), (2, 4), (2, 8); 

INSERT INTO movie_directors (movie_id, director_id) VALUES 
(1, 1), 
(2, 1); 

INSERT INTO movie_casts (movie_id, cast_id) VALUES 
(1, 1), (1, 2), 
(2, 1), (2, 4); 

INSERT INTO transactions (customer_fullname, customer_email, customer_phone, amount, cinema, location, show_time, show_date, users_id, movie_id, payment_method_id) VALUES 
('John Doe', 'john.doe@email.com', '+6281234567890', 50000.00, 'ebv.id', 'Jakarta', '19:30', '2025-06-25', 1, 1, 1);

INSERT INTO transaction_details (seat, transaction_id) VALUES 
('A1', 1),
('A2', 1);

INSERT INTO session (users_id, expires_at) VALUES 
(1, CURRENT_TIMESTAMP + INTERVAL '24 hours'),
(2, CURRENT_TIMESTAMP + INTERVAL '24 hours');