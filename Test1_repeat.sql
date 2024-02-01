------------------Exploratory Data Analysis-------------------------------------------------
--General Questions
SELECT *FROM MEMBER;
SELECT *FROM book;
SELECT *FROM BOOK_ISSUE_DETAILS;
--1.Write a query to display member name along with no of times 
--he/she issue books till now
SELECT 
M.MEMBER_NAME,
COUNT(B.ISSUE_ID) AS TOTAL_NUMBER
FROM MEMBER M LEFT JOIN BOOK_ISSUE_DETAILS B
ON(M.MEMBER_ID=B.MEMBER_ID)
GROUP BY M.MEMBER_NAME;


--2.Write a query to display member name along with  no of times he/she paid penalty for book issue
SELECT 
M.MEMBER_NAME,
COUNT(B.PENALTY_IF_ANY) AS TOTAL_COUNT
FROM MEMBER M LEFT JOIN BOOK_ISSUE_DETAILS B
ON(M.MEMBER_ID=B.MEMBER_ID)
GROUP BY M.MEMBER_NAME;

--3.Write a query to display details of members M167 & M107 
--that which category book they issued in year 2021
SELECT 
M.MEMBER_NAME,
B.ISSUE_DATE,
C.CATEGORY
FROM MEMBER M LEFT JOIN BOOK_ISSUE_DETAILS B
ON(M.MEMBER_ID=B.MEMBER_ID)
JOIN BOOK C ON (B.BOOK_ID=C.BOOK_ID)
WHERE EXTRACT (YEAR FROM B.ISSUE_DATE)=2021
AND M.MEBER_ID='M107' AND M.MEMBER_ID='M167';

--4.Write a query to display total no of books and their cost
SELECT 
COUNT(BOOK_ID) AS TOTAL_COUNT,
SUM(BOOKCOPIES * COST_PER_BOOK) AS TOTAL_COST
FROM BOOK;

--5.Write a query to display details of those members wo paid penalty
--  more than 3 times sor far.
SELECT 
M.MEMBER_NAME,
B.PENALTY_IF_ANY,
COUNT(B.PENALTY_IF_ANY) AS CNT
FROM MEMBER M LEFT JOIN BOOK_ISSUE_DETAILS B
ON (M.MEMBER_ID=B.MEMBER_ID)
WHERE B.PENALTY_IF_ANY IS NOT NULL
GROUP BY M.MEMBER_NAME,
B.PENALTY_IF_ANY 
HAVING COUNT(B.PENALTY_IF_ANY)>3;


--6.Write a query to display details of those members who issued book in 
-- feb 2021 but not return;
SELECT 
M.MEMBER_NAME,
B.ISSUE_DATE
FROM MEMBER M LEFT JOIN BOOK_ISSUE_DETAILS B
ON(M.MEMBER_ID=B.MEMBER_ID)
WHERE B.ISSUE_DATE LIKE '%-02-21'
AND
B.RETURN_DATE IS NULL;


--7.Write a query to display who are the members of library but never issued book
SELECT 
M.MEMBER_NAME,
B.ISSUE_DATE
FROM MEMBER M LEFT JOIN BOOK_ISSUE_DETAILS B
ON(M.MEMBER_ID=B.MEMBER_ID)
WHERE B.ISSUE_DATE IS NULL;

--8.Write a query to display how many women left membership in 2021
SELECT 
MEMBER_NAME,
GENDER,
COUNT(MEMBER_ID)
FROM MEMBER
WHERE UPPER(GENDER)='F' AND 
EXTRACT( YEAR FROM MEMBERSHIP_END_DATE)=21
GROUP BY MEMBER_NAME,
GENDER;

SELECT COUNT(*)
FROM MEMBER
WHERE TO_CHAR(membership_end_date,'YYYY') = '2021'
AND GENDER = 'F';


--9.Write a query to display how many senior citizen (age>60) join Membership
--in last year?
SELECT COUNT(*)
FROM MEMBER M 
WHERE AGE > 60
AND TO_CHAR(m.membership_start_date,'YYYY') =
TO_CHAR(ADD_MONTHS(SYSDATE,-12),'YYYY');


--10.Write a query to display every month year wise penalty received
SELECT
TO_CHAR(RETURN_DATE,'MON-YYYY'),
COUNT(PENALTY_IF_ANY)
FROM book_issue_details
GROUP BY TO_CHAR(RETURN_DATE,'MON-YYYY');

