apt-get install mysql -y

mysql

CREATE DATABASE databaseName

CREATE TABLE Pessoas (
	id INT PRIMARY KEY NOT NULL AUTO_INCREMENT,
	name VARCHAR(50),
	lastName VARCHAR(50),
	adress VARCHAR(150),
	city_state VARCHAR(50),
	cowntry VARCHAR(2)
	);