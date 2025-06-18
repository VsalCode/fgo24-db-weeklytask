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

  movie ||--o{ movie_genre : "has"
  movie ||--o{ movie_director : "has"
  movie ||--o{ movie_cast : "has"
  movie ||--o{ transaction : "purchased"
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

  movie_genre {
    int id PK
    int movie_id FK
    int genre_id FK
  }

  genre ||--o{ movie_genre : "categorized"
  genre {
    int id PK
    string name
  }

  movie_director {
    int id PK
    int movie_id FK
    int director_id FK
  }

  director ||--o{ movie_director : "directs"
  director {
    int id PK
    string name
  }

  movie_cast {
    int id PK
    int movie_id FK
    int cast_id FK
  }

  cast ||--o{ movie_cast : "acts"
  cast {
    int id PK
    string name
  }

  transaction {
    int id PK
    int movie_id FK
    int history_booking_id FK
  }

  history_booking ||--o{ transaction : "contains"
  history_booking {
    int id PK
    string cinema
    string location
    timestamp date
    timestamp time
    int amount
    string seat
    is_paid boolean
    string payment_method
    int user_id FK
  }

  user ||--o{ history_booking : "makes"
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