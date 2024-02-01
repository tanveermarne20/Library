Library Management System

Overview

This project is a Library Management System that helps in organizing 
and managing books, members, and book issuance details in a library.
The system comprises three main tables:
`BOOK`, `MEMBER`, and `BOOK_ISSUE_DETAILS`.

Tables

1. **BOOK Table:**
    - `BOOK_ID` (Primary Key): Unique identifier for each book.
    - `BOOK_TITLE`: Title of the book.
    - `AUTHOR`: Author of the book.
    - `EDITION`: Edition information of the book.
    - `CATEGORY`: Category to which the book belongs.
    - `BOOKCOPIES`: Number of copies available.
    - `COST_PER_BOOK`: Cost per book.

2. **MEMBER Table:**
    - `MEMBER_ID` (Primary Key): Unique identifier for each member.
    - `MEMBER_NAME`: Name of the member.
    - `AGE`: Age of the member.
    - `GENDER`: Gender of the member.
    - `ADDRESS`: Address of the member.
    - `MEMBERSHIP_START_DATE`: Date when the membership started.
    - `MEMBERSHIP_END_DATE`: Date when the membership ends.

3. **BOOK_ISSUE_DETAILS Table:**
    - `ISSUE_ID` (Primary Key): Unique identifier for each book issuance.
    - `BOOK_ID` (Foreign Key): References the `BOOK_ID` in the BOOK table.
    - `MEMBER_ID` (Foreign Key): References the `MEMBER_ID` in the MEMBER table.
    - `ISSUE_DATE`: Date when the book was issued.
    - `RETURN_DATE`: Date when the book is expected to be returned.
    - `QUANTITY`: Number of books issued.
    - `STATUS`: Current status of the book issuance.
    - `PENALTY_IF_ANY`: Penalty details, if any.

Getting Started

To use or contribute to this project, follow the steps below:

Prerequisites

- Make sure you have Oracle Database installed.
- Create the necessary tables using the provided SQL scripts.
