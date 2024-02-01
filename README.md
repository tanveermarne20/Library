![Sample Image](https://petapixel.com/assets/uploads/2017/04/119_074_New-York-Public-Library-Reading-Room_NY-2009-BG.jpg)


# Library-Management-Data-Analysis--SQL-Project
## About
We are analysing Library Management data to identify high-performing Member and understand Member behavior. The primary objective is to enhance and optimize management strategies. 

## Purposes of the Project
The main goal of this project is to gain understanding from Walmart's sales data, exploring the various factors that influence sales across different branches.

## About Data
This project's data was obtained from the Kaggle.
The data contains 3 tables 
| Column            | Description                                   | Data Type        |
|-------------------|-----------------------------------------------|------------------|
| book_id        | Particular book id                            | VARCHAR(30)      |
| book_title     | Particular book title                         | VARCHAR(5)       |
| author         | Name of Author                                | VARCHAR(30)      |
| edition        | Edition of book                               | VARCHAR(30)      |
| category       | Category of book                              | VARCHAR(10)      |
| bookcopies     | Number of copies available                     | NUMBER(3)     |
| cost_per_book  | Cost of single book                           | NUMBER(4)     |


| Column            | Description                                   | Data Type        |
|-------------------|-----------------------------------------------|------------------|
| member_id          | Particular member id                           | VARCHAR(30)      |
| member_name        | Particular member name                         | VARCHAR(5)       |
| age                | Age of member                                  | VARCHAR(30)      |
| gender             | Gender of member                               | NUMBER(2)      |
| address                 | Address of member                         | VARCHAR(10)      |
| membership_start_date   | Membership start date                     | Date    |
| membership_end_date     | Membership end date                       | Date    |



| Column            | Description                                   | Data Type        |
|-------------------|-----------------------------------------------|------------------|
| issue_id          | Particular member id                           | VARCHAR(30)      |
| book_id            | Particular Book id                            | VARCHAR(5)       |
| member_id           | Particular  member id                      | VARCHAR(30)      |
| issue_date           | Issue date                                | Date      |
| return_date          | Return date                               | Date      |
| quantity             | Total quantity                          | NUMBER(4)    |
| status               | Status                                  | VARCHAR2(40) |



## Analysis List:

1.	Product Analysis

> Perform an analysis on the data to gain insights into different product lines, determine the top-performing product lines, and identify areas for improvement in other product lines.

2.	Sales Analysis
   
> The objective of this analysis is to address the inquiry regarding the sales trends of the product. The outcomes of this analysis can assist in evaluating the efficiency of each applied sales strategy in the business and determining necessary modifications to increase sales.

3.	Customer Analysis

> This analysis is focused on identifying various customer segments, understanding purchasing trends, and evaluating the profitability associated with each of these customer segments.

## Approach Used
***1.	Data Wrangling***

During this initial phase, the data is examined to detect any NULL or missing values, and strategies for data replacement are implemented to address and substitute these values effectively.
- Build a database
- Create a table and insert the data.
- Select columns with null values in them. Null values are not present in our database because, in creating the tables, NOT NULL was specified for each field, effectively filtering out any null values.

***2.	Feature Engineering***

This will help use generate some new columns from existing ones.
- Add a new column named time_of_day to give insight of sales in the Morning, Afternoon and Evening. This will help answer the question on which part of the day most sales are made.
- Add a new column named day_name that contains the extracted days of the week on which the given transaction took place (Mon, Tue, Wed, Thur, Fri). This will help answer the question on which week of the day each branch is busiest.
- Add a new column named month_name that contains the extracted months of the year on which the given transaction took place (Jan, Feb, Mar). Help determine which month of the year has the most sales and profit.

***3.  Exploratory Data Analysis (EDA)***

Conducting exploratory data analysis is essential to address the project's listed questions and objectives.

## Business Questions to Answer
1.Write a query to display member name along with no of times he/she issue books till now

2.Write a query to display member name along with  no of times he/she paid penalty for book issue

3.Write a query to display details of members M167 & M107 that which category book they issued in year 2021

4.Write a query to display total no of books and their cost

5.Write a query to display details of those members wo paid penalty more than 3 times sor far.

6.Write a query to display details of those members who issued book in feb 2021 but not return;

7.Write a query to display who are the members of library but never issued book

8.Write a query to display how many women left membership in 2021

9.Write a query to display how many senior citizen (age>60) join Membership in last year?

10.Write a query to display every month year wise penalty received


### Generic Questions

### Product Analysis

### Sales Analysis

### Customer Analysis

