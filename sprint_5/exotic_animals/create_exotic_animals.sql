CREATE DATABASE exotic_animals;

USE exotic_animals;

CREATE TABLE animal (
	id INT NOT NULL,
    family_id INT NOT NULL,
    species VARCHAR(50) NOT NULL,
    diet_id INT(2),
    dangerous INT(2),
    size INT,
    description VARCHAR(140),
    average_lifespan INT(4),
    lifespan_unit VARCHAR(7)
);

CREATE TABLE size (
	id INT NOT NULL,
    size VARCHAR(12),
    description VARCHAR(90),
    CONSTRAINT psize PRIMARY KEY (id)
);
CREATE TABLE diet (
	id INT NOT NULL,
    diet_type VARCHAR(20) NOT NULL,
    description VARCHAR(140)
);

CREATE TABLE food_type (
	id INT NOT NULL,
    diet_id INT,
    food_name VARCHAR(50) NOT NULL,
    description VARCHAR(140)
);

CREATE TABLE family (
	id INT NOT NULL,
    family VARCHAR(10) NOT NULL
);

CREATE TABLE toxin (
	id INT NOT NULL AUTO_INCREMENT,
    toxin_name VARCHAR(50),
    symptoms VARCHAR(140),
    CONSTRAINT ptoxin PRIMARY KEY (id)
);

CREATE TABLE disease (
	id INT NOT NULL,
    disease_name VARCHAR(20) NOT NULL,
    carriers VARCHAR(140),
    description VARCHAR(140),
    symptoms VARCHAR(140)
);

CREATE TABLE susceptible_to (
	id INT NOT NULL,
    causative_agent_id INT NOT NULL,
    causative_agent_type VARCHAR(20) NOT NULL,
    animal_id INT NOT NULL,
    severity VARCHAR(140)
);

CREATE TABLE plant (
	id INT NOT NULL,
    plant_name VARCHAR(50) NOT NULL,
    habitat_id INT,
    diet_id INT,
    toxin_id INT,
    description VARCHAR(450)
);

CREATE TABLE habitat_type (
	id INT NOT NULL,
    habitat VARCHAR(40) NOT NULL,
    description VARCHAR(300)
);

CREATE TABLE habitat (
	id INT NOT NULL AUTO_INCREMENT,
    animal_id INT NOT NULL,
    habitat_id INT NOT NULL,
    CONSTRAINT phabitat PRIMARY KEY (id)
    );
    
CREATE TABLE danger (
    id INT NOT NULL AUTO_INCREMENT,
    description VARCHAR(50) NOT NULL,
    notes VARCHAR(200),
    CONSTRAINT pdanger PRIMARY KEY (id)
);

ALTER TABLE animal
ADD PRIMARY KEY (id);

ALTER TABLE diet
ADD PRIMARY KEY (id);

ALTER TABLE food_type
ADD PRIMARY KEY (id);

ALTER TABLE family
ADD PRIMARY KEY (id);

ALTER TABLE disease
ADD PRIMARY KEY (id);

ALTER TABLE susceptible_to
ADD PRIMARY KEY (id);

ALTER TABLE plant
ADD PRIMARY KEY (id);

ALTER TABLE habitat_type
ADD PRIMARY KEY (id);

ALTER TABLE `exotic_animals`.`size` 
CHANGE COLUMN `id` `id` INT(11) NOT NULL AUTO_INCREMENT COMMENT '' ;

ALTER TABLE `exotic_animals`.`animal` 
CHANGE COLUMN `id` `id` INT(11) NOT NULL AUTO_INCREMENT COMMENT '' ;

ALTER TABLE `exotic_animals`.`diet` 
CHANGE COLUMN `id` `id` INT(11) NOT NULL AUTO_INCREMENT COMMENT '' ;

ALTER TABLE `exotic_animals`.`disease` 
CHANGE COLUMN `id` `id` INT(11) NOT NULL AUTO_INCREMENT COMMENT '' ;

ALTER TABLE `exotic_animals`.`family` 
CHANGE COLUMN `id` `id` INT(11) NOT NULL AUTO_INCREMENT COMMENT '' ;

ALTER TABLE `exotic_animals`.`food_type` 
CHANGE COLUMN `id` `id` INT(11) NOT NULL AUTO_INCREMENT COMMENT '' ;

ALTER TABLE `exotic_animals`.`plant` 
CHANGE COLUMN `id` `id` INT(11) NOT NULL AUTO_INCREMENT COMMENT '' ;

ALTER TABLE `exotic_animals`.`susceptible_to` 
CHANGE COLUMN `id` `id` INT(11) NOT NULL AUTO_INCREMENT COMMENT '' ;

ALTER TABLE `exotic_animals`.`toxin` 
CHANGE COLUMN `id` `id` INT(11) NOT NULL AUTO_INCREMENT COMMENT '' ;