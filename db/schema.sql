DROP DATABASE IF EXISTS burgers_db;
CREATE DATABASE burgers_db;

USE burgers_db;

CREATE TABLE burgers(
  id INT NOT NULL AUTO_INCREMENT,
  burger_name VARCHAR (32) NOT NULL,
  devoured BOOLEAN NOT NULL,
  date DATETIME default CURRENT_TIMESTAMP,
  PRIMARY KEY (id)
);

INSERT INTO burgers (burger_name, devoured) VALUES ("Cheese Burger", true), ("Hamburger", false), ("Chili Cheese Burger", true);
