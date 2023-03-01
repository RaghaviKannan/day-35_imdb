DROP DATABASE IF EXISTS imdb;

CREATE DATABASE imdb;

USE imdb;

CREATE TABLE Movies(
    Movie_id INT NOT NULL PRIMARY KEY,
    Movie_Name VARCHAR(30) NOT NULL,
    Movie_Description TEXT NOT NULL,
    Release_Date DATE,
    Run_time INT
);

CREATE TABLE Genres(
    Genre_Id INT NOT NULL PRIMARY KEY,
    Genre_Name VARCHAR(30)
);

CREATE TABLE Media (
  Media_Id INT PRIMARY KEY,
  Movie_Id INT,
  Media_type ENUM('video', 'image') NOT NULL,
  File_Path VARCHAR(255)
);

CREATE TABLE Movie_Genre(
    Movie_Id INT,
    Genre_Id INT
);

CREATE TABLE Review(
    Movie_Id INT,
    User_Id INT,
    Rating INT,
    Review TEXT
);

CREATE TABLE User(
    User_Id INT,
    User_Name VARCHAR(50)
);

CREATE TABLE Artist(
    Artist_Id INT,
    Artist_Name VARCHAR(50)
);

CREATE TABLE Skill(
    Skill_Id INT,
    Skill_Name VARCHAR(50)
);

CREATE TABLE Artist_skills(
    Artist_Id INT,
    Skill_Id INT
);

CREATE TABLE Role(
    Role_Id INT,
    Role_Name VARCHAR(50)
);

CREATE TABLE Artist_roles(
    Artist_Id INT,
    Role_Id INT,
    Movie_Id INT
);
