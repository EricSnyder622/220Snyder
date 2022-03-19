CREATE DATABASE school;
USE school;

CREATE TABLE student_address (
   id int NOT NULL UNIQUE AUTO_INCREMENT,
   address varchar(40) NOT NULL,
   town varchar(15),
   zip smallint NOT NULL,
   PRIMARY KEY (id)
);

CREATE TABLE grade (
   id int NOT NULL UNIQUE AUTO_INCREMENT,
   grade_num smallint NOT NULL,
   PRIMARY KEY (id)
);

CREATE TABLE student (
   id int NOT NULL UNIQUE AUTO_INCREMENT,
   firstname varchar(15) NOT NULL,
   lastname varchar(15) NOT NULL,
   PRIMARY KEY (id)
);

CREATE TABLE class (
   id int NOT NULL UNIQUE AUTO_INCREMENT,
   class_name varchar(10) NOT NULL,
   class_subject varchar(10) NOT NULL,
   PRIMARY KEY (id)
);

CREATE TABLE class_roster (
   id int NOT NULL UNIQUE AUTO_INCREMENT,
   class_id int NOT NULL,
   student_id int NOT NULL,
   PRIMARY KEY (id)
);