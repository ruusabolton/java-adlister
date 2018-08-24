use adlister_db;


-- create database if not exists adlister_db;
--
-- show databases;
--
--
-- create user 'bill'@'localhost' identified by 'pass123';
--
-- grant all on adlister_db.* to bill@localhost;
--
-- create table users(id INT UNSIGNED NOT NULL AUTO_INCREMENT,
--     username VARCHAR(50) NOT NULL,
--     email VARCHAR(25) NOT NULL,
--     password VARCHAR(25) NOT NULL
--     PRIMARY KEY (id)
--     );
--
-- create table ads(
--     id INT UNSIGNED NOT NULL AUTO_INCREMENT
--     user_id INT UNSIGNED NOT NULL,
--     title VARCHAR(25) NOT NULL,
--     description VARCHAR(250) NOT NULL
--     PRIMARY KEY (id)
--     FOREIGN KEY (user_id) REFERENCES users(id)
--  );

# insert into users (username, email, password)
#   VALUES
#     ("bill1", "bill@gmail.com", "bill123");


alter user 'bill'@'localhost' identified by 'bill123';