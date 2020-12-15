--------------------------------------CREATION PART-----------------------------
---CREATING A TABLE

drop table ict_2020.links ;

CREATE TABLE ict_2020.links (
   link_id serial PRIMARY KEY,
   title VARCHAR (512) NOT NULL,
   url VARCHAR (1024) NOT null 
);



---select operation
select * from ict_2020.links l ;


--drop table			(DATA WILL LOSS)
drop table ict_2020.links ;


---drop table if exists		(DATA WILL LOSS)
drop table if exists ict_2020.links ;


--add a new column in existing table   (DATA WILL NOT LOSS)
ALTER TABLE ict_2020.links
ADD COLUMN active boolean;



---recheck the table
select * from ict_2020.links l ;


---REMOVE THE ACTIVE COLUMN
ALTER TABLE ict_2020.links 
DROP COLUMN active;




---recheck the table
select * from ict_2020.links l ;


--To change the name of the title column to link_title,
ALTER TABLE ict_2020.links 
RENAME COLUMN title TO link_title;




---recheck the table
select * from ict_2020.links l ;



--add a new column in existing table   (DATA WILL NOT LOSS)
ALTER TABLE ict_2020.links 
ADD COLUMN target VARCHAR(10);




---recheck the table
select * from ict_2020.links l ;



---SET A DEFAULT VALUE FOR TARGER TABLE
ALTER TABLE ict_2020.links 
ALTER COLUMN target
SET DEFAULT '_blank';



---recheck the table
select * from ict_2020.links l ;


------------------------INSERTION PART--------------------------------

INSERT INTO ict_2020.links (link_title, url)
VALUES('PostgreSQL Tutorial','https://www.postgresqltutorial.com/');



---recheck the table
select * from ict_2020.links l ;


INSERT INTO ict_2020.links (link_title, url,target)
VALUES('ICT 2020','https://www.ict.com/','TEST');




INSERT INTO ict_2020.links (link_title, url,target)
values ('ICT 2019','https://www.ict.com/','SKY'),
		('ICT 2018','https://www.ict.com/','RUN');
	
	


---recheck the table
select * from ict_2020.links l ;


------------------------UPDATE PART--------------------------------

---update all rows value of a column
update ict_2020.links dsd set target = 'Sky Blue';


---recheck the table
select * from ict_2020.links l ;



---update specific row value of a column
update ict_2020.links ll set target = 'Sky Red' where link_id = 3;

update ict_2020.links ll set target = 'Navy Blue' where link_id in (1,4);   --- Recommanded

update ict_2020.links ll set target = 'White Blue' where link_id = 1 or link_id = 4; -- ---Not Recommanded




---recheck the table
select * from ict_2020.links l ;


---If want to show data serially according to link_id (ascending order)
select * from ict_2020.links l order by link_id asc;


---If want to show data serially according to link_id (descending order)
select * from ict_2020.links l order by link_id desc ;



---If want to show data serially according to link_title (ascending order)
select * from ict_2020.links l order by l.link_title asc;






------------------------DELETE PART--------------------------------

--All data will be deleted
delete from ict_2020.links ;



--delete specific row
delete from ict_2020.links where link_id = 3;



---Checking
select * from ict_2020.links l order by link_id asc;










