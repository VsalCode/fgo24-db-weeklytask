# Database & PostgreSQL Weekly Task

This project demonstrated how to create ERD with Schema Database with PostgreSQL for latest weelytask app / Cinevo: Movie Ticket Booking App built in with React JS

### ERD Cinevo: Movie Ticket Booking App

```mermaid
erDiagram
  direction LR

  admin ||--o{ movie : "manages"
  admin {
    int id PK
    string email
    string password
    boolean is_admin
  }

  movie ||--o{ movie_genres : "has"
  movie ||--o{ movie_directors : "has"
  movie ||--o{ movie_casts : "has"
  movie ||--o{ transactions : "purchased"
  movie {
    int id PK
    string title
    string overview
    int vote_average
    string poster_path
    string backdrop_path
    string release_date
    int runtime
    int popularity
    int admin_id FK
  }

  movie_genres }o--|| genre : "categorized"
  movie_genres {
    int id PK
    int movie_id FK
    int genre_id FK
  }

  genre {
    int id PK
    string name
  }

  movie_directors }o--|| director : "directed by"
  movie_directors {
    int id PK
    int movie_id FK
    int director_id FK
  }

  director {
    int id PK
    string name
  }

  movie_casts }o--|| cast : "acts by"
  movie_casts {
    int id PK
    int movie_id FK
    int cast_id FK
  }

  cast {
    int id PK
    string name
  }
 
  transactions {
    int id PK
    string buyer_fullname
    string buyer_email
    int buyer_phone
    string cinema
    string location
    timestamp date
    timestamp time
    int amount
    int user_id FK
    int movie_id FK
    int transaction_detail FK 
    int payment_method_id FK
  }

  transaction_detail }o--|| transactions: "contains"
  transaction_detail {
    int id PK
    string seat
  }

  payment_method }o--|| transactions: "contains"
  payment_method {
    string id PK
    string name
  }

  user ||--o{ transactions : "makes"
  user ||--o{ session : "has"
  user {
    int id PK
    string fullname
    string email
    string password
    int phone
  }

  session {
    int id PK
    string user_id FK
    timestamp created_at
  }
```
