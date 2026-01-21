DROP DATABASE IF EXISTS Youtube_simplified;
DROP SCHEMA IF EXISTS Youtube_simplified;
CREATE SCHEMA IF NOT EXISTS Youtube_simplified;
USE Youtube_simplified;

DROP TABLE IF EXISTS User;
CREATE TABLE User (
    User_id INT AUTO_INCREMENT,
    e_mail VARCHAR(30) NOT NULL UNIQUE,
    Password VARCHAR(30) NOT NULL,
    Username VARCHAR(20) NOT NULL UNIQUE,
    Date_of_birth DATE NOT NULL,
    Sex ENUM('M', 'F', 'Other'),
    Country VARCHAR(20),
    Postal_code INT,
    PRIMARY KEY (User_id)
);

DROP TABLE IF EXISTS Channel;
CREATE TABLE Channel (
    Channel_id INT AUTO_INCREMENT,
    Name VARCHAR(20) NOT NULL UNIQUE,
    Description VARCHAR(255),
    Creation_date DATETIME NOT NULL,
    Creator_id INT NOT NULL,
    PRIMARY KEY (Channel_id),
    FOREIGN KEY (Creator_id) REFERENCES User(User_id)
);

DROP TABLE IF EXISTS Subscription;
CREATE TABLE Subscription (
    User_id INT,
    Channel_id INT,
    Subscription_date DATETIME,
    PRIMARY KEY (User_id, Channel_id),
    FOREIGN KEY (User_id) REFERENCES User(User_id),
    FOREIGN KEY (Channel_id) REFERENCES Channel(Channel_id)
);

DROP TABLE IF EXISTS Video;
CREATE TABLE Video (
    Video_id INT AUTO_INCREMENT,
    Title VARCHAR(20) NOT NULL UNIQUE,
    Description VARCHAR(255),
    Size_byte BIGINT,
    Video_filename VARCHAR(30),
    Video_duration_ms BIGINT,
    Thumbnail VARCHAR(255),
    n_views BIGINT DEFAULT 0,
    n_likes BIGINT DEFAULT 0,
    n_dislikes BIGINT DEFAULT 0,
    Video_state ENUM('Public', 'Hidden', 'Private'),
    Creator_id INT NOT NULL,
    Creation_date DATETIME NOT NULL,
    PRIMARY KEY (Video_id),
    FOREIGN KEY (Creator_id) REFERENCES User(User_id)
);

DROP TABLE IF EXISTS Tag;
CREATE TABLE Tag (
    Tag_id INT AUTO_INCREMENT,
    Name VARCHAR(20) NOT NULL UNIQUE,
    PRIMARY KEY (Tag_id)
);

DROP TABLE IF EXISTS Tag_Video;
CREATE TABLE Tag_Video (
    Tag_id INT,
    Video_id INT,
    PRIMARY KEY (Tag_id, Video_id),
    FOREIGN KEY (Tag_id) REFERENCES Tag(Tag_id),
    FOREIGN KEY (Video_id) REFERENCES Video(Video_id)
);

DROP TABLE IF EXISTS Video_reaction;
CREATE TABLE Video_reaction (
    Video_id INT,
    User_id INT,
    Reaction_type ENUM('Like', 'Dislike') NOT NULL,
    Reaction_date DATETIME,
    PRIMARY KEY (Video_id, User_id),
    FOREIGN KEY (Video_id) REFERENCES Video(Video_id),
    FOREIGN KEY (User_id) REFERENCES User(User_id)
);

DROP TABLE IF EXISTS Playlist;
CREATE TABLE Playlist (
    Playlist_id INT AUTO_INCREMENT,
    Name VARCHAR(20) NOT NULL,
    Creation_date DATETIME NOT NULL,
    Status ENUM('Public', 'Private') NOT NULL,
    Creator_id INT NOT NULL,
    PRIMARY KEY (Playlist_id),
    FOREIGN KEY (Creator_id) REFERENCES User(User_id)
);

DROP TABLE IF EXISTS Playlist_Video;
CREATE TABLE Playlist_Video (
    Playlist_id INT,
    Video_id INT,
    aggregation_date DATETIME NOT NULL,
    PRIMARY KEY (Playlist_id, Video_id),
    FOREIGN KEY (Playlist_id) REFERENCES Playlist(Playlist_id),
    FOREIGN KEY (Video_id) REFERENCES Video(Video_id)
);

DROP TABLE IF EXISTS Comment;
CREATE TABLE Comment (
    Commnt_id INT AUTO_INCREMENT,
    Text VARCHAR(255),
    Insertion_date DATETIME NOT NULL,
    Video_target INT NOT NULL,
    Creator_id INT NOT NULL,
    PRIMARY KEY (Commnt_id),
    FOREIGN KEY (Video_target) REFERENCES Video(Video_id),
FOREIGN KEY (Creator_id) REFERENCES User(User_id)
);

DROP TABLE IF EXISTS Comment_reaction;
CREATE TABLE Comment_reaction (
    Comment_id INT,
    User_id INT,
    Reaction_type ENUM('Like', 'Dislike') NOT NULL,
    Reaction_date DATETIME,
    PRIMARY KEY (Comment_id,User_id),
    FOREIGN KEY (Comment_id) REFERENCES Comment(Commnt_id),
    FOREIGN KEY (User_id) REFERENCES User(User_id)
)