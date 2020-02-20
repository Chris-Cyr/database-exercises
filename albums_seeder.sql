USE codeup_test_db;

DROP TABLE IF EXISTS albums;

CREATE TABLE albums (
    album_id INT UNSIGNED NOT NULL AUTO_INCREMENT,
    artist VARCHAR(80) NOT NULL,
    album  VARCHAR(80) NOT NULL,
    released VARCHAR(10),
    genre VARCHAR(100) NOT NULL,
    total_certified_copies FLOAT UNSIGNED NOT NULL,
    claimed_sales FLOAT UNSIGNED NOT NULL,
    refs INT UNSIGNED NOT NULL,
    PRIMARY KEY (album_id)
);

INSERT INTO albums (artist, album, released, genre, total_certified_copies, claimed_sales, refs)
VALUES ('Michael Jackson', 'Thriller', 1982, 'pop', 47.3, 66, 4);