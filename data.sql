INSERT INTO admin(email, password, is_admin) VALUES(
  ("admin@gmail.com", md5("admin#123"), true )
);

INSERT INTO movie(title, overview, vote_average, posterpath, backdrop_path, release_date, runtime, popularity ) VALUES(
  (
    "Pulp Fiction",
    "The lives of two mob hitmen, a boxer, a gangster and his wife, and a pair of diner bandits intertwine in four tales of violence and redemption.",
    8.8,
    "https://i.pinimg.com/736x/f0/01/3c/f0013ca4a05245afde43e0eaa7d1a2ce.jpg",
    "https://i.pinimg.com/736x/43/70/21/437021bcb7bf907304d792753c703084.jpg",
    1994,
    154,
    2300000
  ),
  (
    "Dead Poets Society",
    "Maverick teacher John Keating returns in 1959 to the prestigious New England boys' boarding school where he was once a star student, using poetry to embolden his pupils to new heights of self-expression.",
    8.1,
    "https://i.pinimg.com/736x/5a/fb/d1/5afbd1962d1360b2114227d918335439.jpg",
    "",
    1989,
    128,
    589000
  ),
  (
    "A Separation",
    "A married couple are faced with a difficult decision - to improve the life of their child by moving to another country or to stay in Iran and look after a deteriorating parent who has Alzheimer's disease.",
    8.3,
    "https://i.pinimg.com/736x/b7/ee/54/b7ee54b0a236e4aa88f7fca786153a20.jpg",
    "",
    2011,
    123,
    270000
  ),
  (
    "Eternal Sunshine of the Spotless Mind",
    "When their relationship turns sour, a couple undergoes a medical procedure to have each other erased from their memories forever.",
    8.3,
    "https://i.pinimg.com/736x/7d/6d/0e/7d6d0e163f18299c1bccb18edce7f3f5.jpg",
    "",
    2004,
    108,
    1100000
  )
);

INSERT INTO director(name) VALUES (
  ("Quentin Tarantino"),
  ("Peter Weir"),
  ("Asghar Farhadi"),
  ("Michel Gondry")
);

INSERT INTO genre(name) VALUES(
  ("Crime"),
  ("Drama"),
  ("Romance")
);

INSERT INTO payment_method(name) VALUES(
  ("BCA"),
  ("BRI"),
  ("Dana"),
  ("Gopay"),
  ("OVO"),
  ("VISA")
);

INSERT INTO users(fullname, email, password, phone) VALUES(
  ("faisal", "faisal@mail.co", "fsl1919", 0811223344)
);

INSERT into transactions(buyer_fullname, buyer_email, buyer_phone, cinema, location, amount) VALUES(
  ("Rizki", "rizki@mail.co", 081247284, "ebv.id", 50000),
);

INSERT INTO transaction_detail(seat) VALUES(
  ('A12', 'A13')
);
