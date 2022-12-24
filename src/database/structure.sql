CREATE TABLE `data-readni`.`product` (
  `idProduct` INT NOT NULL AUTO_INCREMENT,
  `name` VARCHAR(50) NOT NULL,
  `description` VARCHAR(100) NOT NULL,
  `ranking` INT(1) NOT NULL,
  `priceAnt` INT NOT NULL,
  `price` INT NOT NULL,
  `discount` INT(3) NOT NULL,
  `market` VARCHAR(10) NOT NULL,
  `color` VARCHAR(20) NOT NULL,
  `category` VARCHAR(10) NOT NULL,
  `size` INT(2) NOT NULL,
  `imagen` VARCHAR(100) NOT NULL,
  PRIMARY KEY (`idProduct`));

CREATE TABLE `data-readni`.`category` (
  `idCategory` INT NOT NULL AUTO_INCREMENT,
  `name` VARCHAR(100) NOT NULL,
  `id_product` INT NULL,
  PRIMARY KEY (`idCategory`));

ALTER TABLE `data-readni`.`category` 
ADD INDEX `fk_id_product_idx` (`id_product` ASC) VISIBLE;
;
ALTER TABLE `data-readni`.`category` 
ADD CONSTRAINT `fk_id_product`
  FOREIGN KEY (`id_product`)
  REFERENCES `data-readni`.`product` (`idProduct`)
  ON DELETE NO ACTION
  ON UPDATE NO ACTION;

CREATE TABLE `data-readni`.`color` (
  `idColor` INT NOT NULL AUTO_INCREMENT,
  `name` VARCHAR(15) NOT NULL,
  PRIMARY KEY (`idColor`));

CREATE TABLE `data-readni`.`size` (
  `idSize` INT NOT NULL AUTO_INCREMENT,
  `number` INT(2) NOT NULL,
  PRIMARY KEY (`idSize`));


CREATE TABLE `data-readni`.`market` (
  `idMarket` INT NOT NULL AUTO_INCREMENT,
  `name` VARCHAR(10) NOT NULL,
  `id_products` INT NOT NULL,
  `id_colors` INT NOT NULL,
  `id_sizes` INT NOT NULL,
  PRIMARY KEY (`idMarket`),
  INDEX `fk_id_products_idx` (`id_products` ASC) VISIBLE,
  INDEX `fk_id_colors_idx` (`id_colors` ASC) VISIBLE,
  INDEX `fk_id_sizes_idx` (`id_sizes` ASC) VISIBLE,
  CONSTRAINT `fk_id_products`
    FOREIGN KEY (`id_products`)
    REFERENCES `data-readni`.`product` (`idProduct`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_id_colors`
    FOREIGN KEY (`id_colors`)
    REFERENCES `data-readni`.`color` (`idColor`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_id_sizes`
    FOREIGN KEY (`id_sizes`)
    REFERENCES `data-readni`.`size` (`idSize`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION);

CREATE TABLE `data-readni`.`product_color` (
  `idProduct_color` INT NOT NULL AUTO_INCREMENT,
  `id_product` INT NOT NULL,
  `id_color` INT NOT NULL,
  PRIMARY KEY (`idProduct_color`),
  INDEX `fk_id_productColor_product_idx` (`id_product` ASC) VISIBLE,
  INDEX `fk_id_productColor_color_idx` (`id_color` ASC) VISIBLE,
  CONSTRAINT `fk_id_productColor_product`
    FOREIGN KEY (`id_product`)
    REFERENCES `data-readni`.`product` (`idProduct`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_id_productColor_color`
    FOREIGN KEY (`id_color`)
    REFERENCES `data-readni`.`color` (`idColor`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION);

CREATE TABLE `data-readni`.`product_size` (
  `idProduct_size` INT NOT NULL AUTO_INCREMENT,
  `id_product` INT NOT NULL,
  `id_size` INT NOT NULL,
  PRIMARY KEY (`idProduct_size`),
  INDEX `fk_productSize_product_idx` (`id_product` ASC) VISIBLE,
  INDEX `fk_productSize_size_idx` (`id_size` ASC) VISIBLE,
  CONSTRAINT `fk_productSize_product`
    FOREIGN KEY (`id_product`)
    REFERENCES `data-readni`.`product` (`idProduct`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_productSize_size`
    FOREIGN KEY (`id_size`)
    REFERENCES `data-readni`.`size` (`idSize`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION);

CREATE TABLE `data-readni`.`user_product` (
  `idUser_Product` INT UNSIGNED NOT NULL,
  `id_user` INT NOT NULL,
  `id_product` INT NOT NULL,
  PRIMARY KEY (`idUser_Product`),
  INDEX `fk_productSize_product_idx` (`id_product` ASC) VISIBLE,
  INDEX `fk_userProduct_user_idx` (`id_user` ASC) VISIBLE,
  CONSTRAINT `fk_userProduct_product`
    FOREIGN KEY (`id_product`)
    REFERENCES `data-readni`.`product` (`idProduct`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_userProduct_user`
    FOREIGN KEY (`id_user`)
    REFERENCES `data-readni`.`user` (`idUser`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION);

INSERT INTO `data-readni`.`product` (`name`, `description`, `ranking`, `priceAnt`, `price`, `discount`, `market`, `color`, `category`, `size`, `imagen`) VALUES ('Tennis la maravilla del mundo version 1', 'son los mejores tennis fabricados con ultima tecnologia.', '5', '1500000', '1450000', '2', 'reebok', 'azules', 'hombre', '39', 'https://i.postimg.cc/wxSMpF0t/blue.png');
INSERT INTO `data-readni`.`product` (`name`, `description`, `ranking`, `priceAnt`, `price`, `discount`, `market`, `color`, `category`, `size`, `imagen`) VALUES ('Tennis la maravilla del mundo version 2', 'son los mejores tennis fabricados con ultima tecnologia', '4', '180000', '150000', '5', 'adidas', 'rosadis', 'mujer', '37', 'https://i.postimg.cc/WpDzCx6L/pink.png');
INSERT INTO `data-readni`.`product` (`name`, `description`, `ranking`, `priceAnt`, `price`, `discount`, `market`, `color`, `category`, `size`, `imagen`) VALUES ('Tennis la maravilla del mundo version 3', 'son los mejores tennis fabricados con ultima tecnologia', '3', '120000', '100000', '5', 'nike', 'amarillos', 'niños', '34', 'https://i.postimg.cc/Fs3RscBT/yellow.png');

INSERT INTO `data-readni`.`category` (`name`, `id_product`) VALUES ('hombres', '1');
INSERT INTO `data-readni`.`category` (`name`, `id_product`) VALUES ('mujeres', '2');
INSERT INTO `data-readni`.`category` (`name`, `id_product`) VALUES ('niños', '3');

INSERT INTO `data-readni`.`color` (`name`) VALUES ('azul');
INSERT INTO `data-readni`.`color` (`name`) VALUES ('rosado');
INSERT INTO `data-readni`.`color` (`name`) VALUES ('amarillo');

INSERT INTO `data-readni`.`size` (`number`) VALUES ('25');
INSERT INTO `data-readni`.`size` (`number`) VALUES ('26');
INSERT INTO `data-readni`.`size` (`number`) VALUES ('27');
INSERT INTO `data-readni`.`size` (`number`) VALUES ('28');
INSERT INTO `data-readni`.`size` (`number`) VALUES ('29');
INSERT INTO `data-readni`.`size` (`number`) VALUES ('30');
INSERT INTO `data-readni`.`size` (`number`) VALUES ('31');
INSERT INTO `data-readni`.`size` (`number`) VALUES ('32');
INSERT INTO `data-readni`.`size` (`number`) VALUES ('33');
INSERT INTO `data-readni`.`size` (`number`) VALUES ('34');
INSERT INTO `data-readni`.`size` (`number`) VALUES ('35');
INSERT INTO `data-readni`.`size` (`number`) VALUES ('36');
INSERT INTO `data-readni`.`size` (`number`) VALUES ('37');
INSERT INTO `data-readni`.`size` (`number`) VALUES ('38');
INSERT INTO `data-readni`.`size` (`number`) VALUES ('39');
INSERT INTO `data-readni`.`size` (`number`) VALUES ('40');
INSERT INTO `data-readni`.`size` (`number`) VALUES ('41');
INSERT INTO `data-readni`.`size` (`number`) VALUES ('42');
INSERT INTO `data-readni`.`size` (`number`) VALUES ('43');
INSERT INTO `data-readni`.`size` (`number`) VALUES ('44');

INSERT INTO `data-readni`.`user` (`name`, `email`, `cellphone`, `address`) VALUES ('juliana quimbay', 'juliLaMejor@gmail.com', '3212345678', 'cra 9 N 8 37');
INSERT INTO `data-readni`.`user` (`name`, `email`, `cellphone`, `address`) VALUES ('fabio cruz', 'cruz.fabio@gmail.com', '3214567890', 'cra 3 N 4 99');
INSERT INTO `data-readni`.`user` (`name`, `email`, `cellphone`, `address`) VALUES ('david diaz', 'diaz.david@gmail.com', '3215678901', 'cll 15 N 9 28');
INSERT INTO `data-readni`.`user` (`name`, `email`, `cellphone`, `address`) VALUES ('cristian arce', 'arce.cristian@susuerte.com', '3216789012', 'cra 4 N 37 95');

INSERT INTO `data-readni`.`user_product` (`id_user`, `id_product`) VALUES ('4', '1');
INSERT INTO `data-readni`.`user_product` (`id_user`, `id_product`) VALUES ('1', '2');
INSERT INTO `data-readni`.`user_product` (`id_user`, `id_product`) VALUES ('2', '3');

INSERT INTO `data-readni`.`product_color` (`id_product`, `id_color`) VALUES ('1', '1');
INSERT INTO `data-readni`.`product_color` (`id_product`, `id_color`) VALUES ('2', '2');
INSERT INTO `data-readni`.`product_color` (`id_product`, `id_color`) VALUES ('3', '3');

INSERT INTO `data-readni`.`market` (`name`, `id_products`, `id_colors`, `id_sizes`) VALUES ('reebok', '1', '1', '1');
INSERT INTO `data-readni`.`market` (`name`, `id_products`, `id_colors`, `id_sizes`) VALUES ('adidas', '2', '2', '2');
INSERT INTO `data-readni`.`market` (`name`, `id_products`, `id_colors`, `id_sizes`) VALUES ('nike', '3', '3', '3');

