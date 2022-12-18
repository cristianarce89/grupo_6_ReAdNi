CREATE TABLE color
(
idColor INT PRIMARY KEY NOT NULL AUTO_INCREMENT,
name varchar(50) NOT NULL
);

CREATE TABLE market
(
idMarket INT PRIMARY KEY NOT NULL AUTO_INCREMENT,
name varchar(50) NOT NULL,
id_colors INT NOT NULL,
FOREIGN KEY (id_colors) REFERENCES color(idColor)
);

CREATE TABLE category
(
idCategory INT PRIMARY KEY NOT NULL AUTO_INCREMENT,
name varchar(10) NOT NULL,
id_markets INT NOT NULL,
FOREIGN KEY (id_markets) REFERENCES market(idMarket)
);

CREATE TABLE city
(
idCity INT PRIMARY KEY NOT NULL AUTO_INCREMENT,
name varchar(50) NOT NULL
);

CREATE TABLE size
(
idSize INT PRIMARY KEY NOT NULL AUTO_INCREMENT,
number INT(3) NOT NULL
);

CREATE TABLE product
(
idProduct INT PRIMARY KEY NOT NULL AUTO_INCREMENT,
name varchar(50) NOT NULL,
ranking INT(1) NOT NULL,
price INT NOT NULL,
discounts INT NOT NULL,
id_markets INT NOT NULL,
FOREIGN KEY (id_markets) REFERENCES market(idMarket),
id_categories INT NOT NULL,
FOREIGN KEY (id_categories) REFERENCES category(idCategory),
id_sizes INT NOT NULL,
FOREIGN KEY (id_sizes) REFERENCES size(idSize)
);

CREATE TABLE product_size
(
idProduct_size INT PRIMARY KEY NOT NULL AUTO_INCREMENT,
id_products INT NOT NULL,
FOREIGN KEY (id_products) REFERENCES product(idProduct),
id_sizes INT NOT NULL,
FOREIGN KEY (id_sizes) REFERENCES size(idSize)
);

CREATE TABLE user
(
idUser INT PRIMARY KEY NOT NULL AUTO_INCREMENT,
name varchar(50) NOT NULL,
email VARCHAR(50) NOT NULL,
cellphone INT(10) NOT NULL,
address VARCHAR(50) NOT NULL,
id_cities INT NOT NULL,
FOREIGN KEY (id_cities) REFERENCES city(idCity)
);

CREATE TABLE user_product
(
idUser_product INT PRIMARY KEY NOT NULL AUTO_INCREMENT,
id_products INT NOT NULL,
FOREIGN KEY (id_products) REFERENCES product(idProduct),
id_users INT NOT NULL,
FOREIGN KEY (id_users) REFERENCES user(idUser)
);
