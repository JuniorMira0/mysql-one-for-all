artist_iddate_historyDROP DATABASE IF EXISTS SpotifyClone;

CREATE DATABASE SpotifyClone;

CREATE TABLE SpotifyClone.plan(
	id INT PRIMARY KEY AUTO_INCREMENT,
	plan_name VARCHAR(20) UNIQUE NOT NULL,
	price DECIMAL(3,2) NOT NULL
) ENGINE=InnoDB;

CREATE TABLE SpotifyClone.users(
	id INT PRIMARY KEY AUTO_INCREMENT,
    user_name VARCHAR(100) NOT NULL,
    age INT NOT NULL,
    plan_id INT NOT NULL,
    signature_date DATE NOT NULL,
    FOREIGN KEY (plan_id) REFERENCES plan(id)
) ENGINE=InnoDB;

CREATE TABLE SpotifyClone.artists(
	id INT PRIMARY KEY AUTO_INCREMENT,
    artist_name VARCHAR(100) NOT NULL
) ENGINE=InnoDB;

CREATE TABLE SpotifyClone.albums(
	id INT PRIMARY KEY AUTO_INCREMENT,
    album_name VARCHAR(150) NOT NULL,
    album_release INT NOT NULL,
    artist_id INT NOT NULL,
    FOREIGN KEY (artist_id) REFERENCES artists(id)
) ENGINE=InnoDB;

CREATE TABLE SpotifyClone.songs(
	id INT PRIMARY KEY AUTO_INCREMENT,
    track VARCHAR(150) NOT NULL,
    min_length INT NOT NULL,
    album_id INT NOT NULL,
    FOREIGN KEY (album_id) REFERENCES albums(id)
) ENGINE=InnoDB;

CREATE TABLE SpotifyClone.history(
	id INT NOT NULL UNIQUE AUTO_INCREMENT,
    date_history DATETIME NOT NULL DEFAULT NOW(),
    user_id INT NOT NULL,
    track_id INT NOT NULL,
    CONSTRAINT PRIMARY KEY (id, user_id, track_id),
    FOREIGN KEY (user_id) REFERENCES users(id),
    FOREIGN KEY (track_id) REFERENCES songs(id)   
) ENGINE=InnoDB;

CREATE TABLE SpotifyClone.following(
	id INT NOT NULL UNIQUE AUTO_INCREMENT,
    user_id INT NOT NULL,
    artist_id INT NOT NULL,
    CONSTRAINT PRIMARY KEY (id, user_id, artist_id),
    FOREIGN KEY (user_id)  REFERENCES users(id),
    FOREIGN KEY (artist_id) REFERENCES artists(id)
)  ENGINE=InnoDB;