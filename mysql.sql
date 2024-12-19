CREATE DATABASE Cinema;

USE cinema;


     
INSERT into MOVIES (movie_id ,title,release_time,genre,language,duration_time,rating,director_id)  values
 (132,"Jalsa",2002,"romance","Telugu",120,2,241),
 (100,"pokiri",2007,"thriller","Telugu",120,3,101),
 (401,"Attarntiki Daredi",2012,"Action","Telugu",120,2,241);
     
 show tables;

select * from movies;


drop table directors;

show databases;
drop database cinema ;

/* arthimetic */

USE MOVIES;
CREATE TABLE  BOX_OFFICE(movie_id INT, BUDEGT BIGINT, COLLECTION BIGINT);

INSERT INTO BOX_OFFICE (movie_id,BUDEGT,COLLECTION)  VALUES 
							(121,278464,646224),
                            (125,67346732,6326731),
                            (862,67426,6247662);

SELECT MOVIE_ID, COLLECTION-BUDEGT AS PROFIT_OR_LOSS FROM  BOX_OFFICE;                           
                            

CREATE TABLE TOPPERS(NAME VARCHAR(100), MARKS INT NOT NULL, CITY VARCHAR(150) NOT NULL,STATE VARCHAR(100));

INSERT INTO TOPPERS VALUES ("VAZID",89,"NELLORE","ANDHRA PRADESH"),
                   ("KARTHIK",99,"CHENNAI","TAMIL NADU"),
                   ("SNIGH",59,"AMRITSAR","PUNJAB"),
                   ("GOWDA",69,"BANGLORE","KARNAKATA"),
                   ("VENKAT",39,"NELLORE","ANDHRA PRADESH");
                   
 SELECT * FROM TOPPERS 
  ORDER BY MARKS asc;
  
SELECT NAME FROM TOPPERS 
 WHERE  CITY = "NELLORE" AND MARKS= 99;
 
 SELECT * FROM TOPPERS
 WHERE MARKS(MARKS<70);
 
/*/AGRRIGATE FUNCTIONS*/

CREATE TABLE MOBILE(NAME VARCHAR(100), BRAND_NAME VARCHAR(50) UNIQUE, PRICE BIGINT);

INSERT INTO MOBILE (NAME,BRAND_NAME,PRICE) VALUES ("IQ Z6","IQOO",12342),
												("NORD 2","ONE PLUS ",33300),
                                                ("IPHONE 15","IPHONE ",52000),
                                                ("A 13 ","SAMSUNG",10000),
                                                ("POCO M3","POCO",1342);

select  NAME,PRICE from MOBILE
ORDER BY PRICE desc;

SELECT NAME,BRAND_NAME FROM MOBILE 
ORDER BY BRAND_NAME ASC;

DROP TABLE MOBILE;

/*/AGRRIGATE FUNCTIONS*/
/*COUNT,MAX,MIN,AVG,SUM*/

SELECT NAME,MAX(PRICE) FROM MOBILE
GROUP BY price;

SELECT NAME,MIN(PRICE) FROM MOBILE
GROUP BY NAME ASC;

SELECT NAME,AVG(PRICE) FROM MOBILE;

SELECT SUM(PRICE) FROM MOBILE;

DROP DATABASE PAYMENT ;







                                                

       
     
     
     

     
     
     
                     

