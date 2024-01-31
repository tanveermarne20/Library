------------------Exploratory Data Analysis-------------------------------------------------

--General Questions
SELECT * FROM BOOK;
SELECT * FROM MEMBER;
SELECT * FROM BOOK_ISSUE_DETAILS;


--1.Write a query to display member name along with no of times he/she issue books till now
SELECT
M.MEMBER_NAME,
COUNT(B.ISSUE_ID) AS TOTAL_COUNT
FROM MEMBER M INNER JOIN BOOK B
ON(M.MEMBER_ID=B.MEMBER_ID)
GROUP BY M.MEMBER_NAME;



--2.Write a query to display member name along with  no of times he/she paid penalty for book issue



--3.


--4.Write a query to display total no of books and their cost
SELECT 
  COUNT(BOOK_ID) AS TOTAL_COUNT,
  SUM(BOOKCOPIES * COST_PER_BOOK) AS TOTAL_COST
FROM BOOK;


--5.Write a query to display details of those members wo paid penalty
--  more than 3 times sor far.



--6.Write a query to display details of those members who issued book in 
-- feb 2021 but not return;


--8.Write a query to display how many women left membership in 2021
SELECT 
MEMBER_NAME,
COUNT(MEMBER_ID) AS TOTAL_COUNT
FROM MEMBER
WHERE UPPER(GENDER)='F' AND
MEMBERSHIP_END_DATE LIKE '%-%-2021'
GROUP BY MEMBER_NAME;




--Creating Table BOOK
CREATE TABLE BOOK(
 BOOK_ID NUMBER PRIMARY KEY,
 BOOK_TITLE VARCHAR2(50),
 AUTHOR VARCHAR2(50),
 EDITION VARCHAR2(50),
 CATEGORY VARCHAR2(50),
 BOOKCOPIES NUMBER(3),
 COST_PER_BOOK NUMBER(4)
);

--INSERTING DETAILS IN BOOK
INSERT INTO BOOK(
BOOK_ID ,BOOK_TITLE ,AUTHOR ,EDITION ,CATEGORY ,BOOKCOPIES,COST_PER_BOOK )
VALUES(1,'Automobile Engineeering','Dr.JM Robert','1:1:2','Technical',15,250);


INSERT INTO BOOK(
BOOK_ID ,BOOK_TITLE ,AUTHOR ,EDITION ,CATEGORY ,BOOKCOPIES,COST_PER_BOOK )
VALUES(2,'Python For DS','Prof.Adam Whilley','11.2','Technical',20,360);


INSERT INTO BOOK(
BOOK_ID ,BOOK_TITLE ,AUTHOR ,EDITION ,CATEGORY ,BOOKCOPIES,COST_PER_BOOK )
VALUES(3,'Learn Python Easily ','Prof Mathew Austin','3','',30,700);


INSERT INTO BOOK(
BOOK_ID ,BOOK_TITLE ,AUTHOR ,EDITION ,CATEGORY ,BOOKCOPIES,COST_PER_BOOK )
VALUES(4,'Great history of India','Dr.Seema Bakshi','5.6','Literature',14,640);



--Creating Table MEMBER
CREATE TABLE MEMBER(
 MEMBER_ID VARCHAR2(10) PRIMARY KEY,
 MEMBER_NAME VARCHAR2(50),
 AGE NUMBER(2),
 GENDER VARCHAR2(3),
 ADDRESS VARCHAR2(70),
 MEMBERSHIP_START_DATE DATE,
 MEMBERSHIP_END_DATE DATE
);

--INSERTING ROWS IN MEMBER
INSERT INTO MEMBER
VALUES('M101','Atish Rana',32,'M','Keshavnagar,Pune','17-06-2018',null);
INSERT INTO MEMBER
VALUES('M102','Amol Salunkhe',36,'M','Hadapsar,Pune','23-12-2021',null);
INSERT INTO MEMBER
VALUES('M103','Riya Tomar',41,'F','Mundhawa,Pune','22-04-2015','29-06-2022');
INSERT INTO MEMBER
VALUES('M104','Jagdish Patil',20,'M','Kharadi,Pune','01-06-2019',null);





--Creating Table BOOK_ISSUE_DETAILS
CREATE TABLE BOOK_ISSUE_DETAILS (
  ISSUE_ID NUMBER(6) PRIMARY KEY,
  BOOK_ID NUMBER(3),
  MEMBER_ID VARCHAR2(10),
  ISSUE_DATE DATE,
  RETURN_DATE DATE,
  QUANTITY NUMBER(4),
  STATUS VARCHAR2(50),
  PENALTY_IF_ANY VARCHAR2(70),
  CONSTRAINT FK_BOOK_ID FOREIGN KEY (BOOK_ID) REFERENCES BOOK(BOOK_ID),
  CONSTRAINT FK_MEMBER_ID FOREIGN KEY (MEMBER_ID) REFERENCES MEMBER (MEMBER_ID)
);




--INSERTING ROWS INTO BOOK_ISSUE_DETAILS
INSERT INTO BOOK_ISSUE_DETAILS
VALUES(10001,1,'M106','12-02-2021','20-02-2021',1,'Return with Penalty',200);


INSERT INTO BOOK_ISSUE_DETAILS
VALUES(10002,2,'M103','21-02-2022','29-01-2022',1,,'Return',0);


INSERT INTO BOOK_ISSUE_DETAILS
VALUES(10003,10,'M101','02-02-2021','02-01-2021',1,,'Return',0);


INSERT INTO BOOK_ISSUE_DETAILS
VALUES(10004,5,'M111','11-01-2021','',1,NULL,'Not Return Yet',0);


INSERT INTO BOOK_ISSUE_DETAILS
VALUES(10005,1,'M109','04-01-2021','',1,'16-01-2021','Return with Penalty',130);