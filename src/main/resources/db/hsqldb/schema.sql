DROP TABLE USERS IF EXISTS;

CREATE TABLE USERS (       
	ID INTEGER IDENTITY PRIMARY KEY,
	FIRST_NAME VARCHAR(50),
	LAST_NAME VARCHAR(50),
	BIODATA VARCHAR(10000), 
	EMAIL VARCHAR(100),
	USER_TYPE_ID INTEGER,
	JOB_RESPONSIBILITY_DESC VARCHAR(100),
	ADMIN_ACCESS_CODE VARCHAR(100),
	DATE_OF_BIRTH DATE,
);
CREATE INDEX user_first_name ON USERS (FIRST_NAME);
CREATE INDEX user_last_name ON USERS (LAST_NAME);