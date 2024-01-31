------------------Exploratory Data Analysis-------------------------------------------------
--General Questions


--1.Write a query to display member name along with no of times he/she issue books till now
SELECT
M.MEMBER_NAME,
COUNT(B.ISSUE_ID) AS TOTAL_COUNT
FROM MEMBER M INNER JOIN BOOK B
ON(M.MEMBER_ID=B.MEMBER_ID)
GROUP BY M.MEMBER_NAME;

--2.Write a query to display member name along with  no of times he/she paid penalty for book issue
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
