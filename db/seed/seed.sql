DROP DATABASE IF EXISTS mitch_imdb;
CREATE DATABASE mitch_imdb;
\c mitch_imdb;

CREATE TABLE directors (
    director_id SERIAL PRIMARY KEY,
    name VARCHAR,
    description VARCHAR
);

CREATE TABLE films (
    film_id SERIAL PRIMARY KEY,
    title VARCHAR,
    year_of_release INT,
    rating FLOAT NOT NULL DEFAULT 0,
    duration INT DEFAULT 0
);

CREATE TABLE actors (
    actor_id SERIAL PRIMARY KEY,
    name VARCHAR
);


INSERT INTO films (title, year_of_release, rating,duration) VALUES 
('Jurrasic Park',1994,0,120),
('BIG',1993,0,120),
('Inception',2010,0,120),
('Eternal Sunshine of the Spotless mind',2008,0,90),
('Lord of the Rings',2002,0,90),
('The Truman Show',1997,0,100),
('Titanic',1997,0,110),
('E.T.',1993,0,130),
('Catch me if you can',2001,0,95),
('The Dark Knight',2008,9.1,70),
('Inception',2010,9.0,80),
('We need to talk about Kevin',2006,8.9,100),
('Awakenings',1990,7.2,90);