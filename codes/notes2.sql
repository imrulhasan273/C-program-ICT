
------------------------------------
--------------------Managing Tables
------------------------------------


--Create table
DROP TABLE IF EXISTS "binary".links;

CREATE TABLE "binary".links 
(
   link_id serial PRIMARY KEY,
   title VARCHAR (512) NOT NULL,
   url VARCHAR (1024) NOT NULL
);

select * from "binary".links;


--Add new Column
ALTER TABLE "binary".links
ADD COLUMN active boolean;

select * from "binary".links;


--Drop A Column
ALTER TABLE "binary".links 
DROP COLUMN active;

select * from "binary".links;


---Rename Column
ALTER TABLE "binary".links 
RENAME COLUMN title TO link_title;

select * from "binary".links;



---Change Dtype of Column
ALTER TABLE "binary".links  
ALTER COLUMN url TYPE text;

ALTER TABLE "binary".links  
ALTER COLUMN url TYPE varchar;

select * from "binary".links;



--Add new Column
ALTER TABLE "binary".links 
ADD COLUMN target VARCHAR(10);

select * from "binary".links;



---Set Default Value
ALTER TABLE "binary".links 
ALTER COLUMN target
SET DEFAULT '_blank';

select * from "binary".links;



---Change Table Name
DROP TABLE IF EXISTS "binary".urls;

ALTER TABLE "binary".links 
RENAME TO urls;

select * from "binary".urls;


---INSERTION
INSERT INTO "binary".urls(link_title,url) 
VALUES('PostgreSQL','https://www.postgresqltutorial.com/');

select * from "binary".urls;


---Truncate Table (Removes All Data Except Table Structure)
TRUNCATE TABLE "binary".urls;

select * from "binary".urls;
