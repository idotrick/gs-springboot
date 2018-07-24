CREATE DATABASE IF NOT EXISTS tremorvideodb;

ALTER DATABASE tremorvideodb
  DEFAULT CHARACTER SET utf8
  DEFAULT COLLATE utf8_general_ci;

GRANT ALL PRIVILEGES ON petclinic.* TO pc@localhost IDENTIFIED BY 'pc';

CREATE TABLE USERS IF NOT EXISTS vets (
	ID INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
	FIRST_NAME VARCHAR(50),
	LAST_NAME VARCHAR(50),
	BIODATA VARCHAR(10000), 
	EMAIL VARCHAR(100),
	USER_TYPE_ID INTEGER,
	JOB_RESPONSIBILITY_DESC VARCHAR(100),
	ADMIN_ACCESS_CODE VARCHAR(100),
	DATE_OF_BIRTH DATE,
	INDEX(FIRST_NAME),
	INDEX(LAST_NAME),
	INDEX(EMAIL),
	INDEX(ADMIN_ACCESS_CODE)) engine=InnoDB;