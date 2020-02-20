CREATE DATABASE IF NOT EXISTS codeup_test_db;
USE codeup_test_db;
DROP TABLE IF EXISTS albums;
CREATE TABLE IF NOT EXISTS albums(
                                     id INT UNSIGNED NOT NULL AUTO_INCREMENT,
                                     artist_name VARCHAR(80) NOT NULL,
                                     record_name  VARCHAR(80) NOT NULL,
                                     release_date VARCHAR(10),
                                     sales FLOAT UNSIGNED NOT NULL,
                                     genre VARCHAR(100) NOT NULL,
                                     PRIMARY KEY (id)
);
DESCRIBE albums;
# add a row of data
INSERT INTO albums( artist_name, record_name, release_date, sales, genre) values (
                                                                                     'Eagles',
                                                                                     'Hotel California',
                                                                                     '1987',
                                                                                     30,
                                                                                     'rock'
                                                                                 );
SELECT * from albums;