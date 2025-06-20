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

  genres {
    int id PK
    string name
  }

  movie_genres }o--|| genres : "categorized"
  movie_genres {
    int movie_id PK, FK
    int genre_id PK, FK
  }

  directors {
    int id PK
    string name
  }

  movie_directors }o--|| directors : "directed by"
  movie_directors {
    int movie_id PK, FK
    int director_id PK, FK
  }

  casts {
    int id PK
    string name
  }

  movie_casts }o--|| casts : "acts by"
  movie_casts {
    int movie_id PK, FK
    int cast_id PK, FK
  }

  transaction_details }o--|| transactions: "contains"
  transaction_details {
    int id PK
    string seat
  }

  payment_method }o--|| transactions: "contains"
  payment_method {
    string id PK
    string name
  }
 
  transactions {
    int id PK
    string customer_fullname
    string customer_email
    int customer_phone
    int amount
    string cinema
    string location
    timestamp time
    timestamp date
    int users_id FK
    int movie_id FK
    int transaction_details FK 
    int payment_method_id FK
  }

  users ||--o{ transactions : "makes"
  users ||--o{ session : "has"
  users {
    int id PK
    string fullname
    string email
    string password
    int phone
  }

  session {
    int id PK
    string users_id FK
    timestamp created_at
  }
```