-- Student table 

CREATE TABLE STUDENTS (
    ID NUMBER PRIMARY KEY,
    NAME VARCHAR2(50),
    AGE NUMBER,
    COURSE VARCHAR2(20)
);

---------------------------
--Academic table

CREATE TABLE ACADEMICS(
    ROLL_NO NUMBER PRIMARY KEY,
    STUDENT_ID NUMBER,
    SUBJECT VARCHAR2(30),
    FOREIGN KEY (STUDENT_ID) REFERENCES STUDENTS(ID)
);

------------------------------------------------------
--inserting values in the tables

INSERT INTO STUDENTS VALUES (1, 'Aarav Sharma', 20, 'BTech');
INSERT INTO STUDENTS VALUES (2, 'Priya Mehta', 21, 'BSc');
INSERT INTO STUDENTS VALUES (3, 'Rohit Singh', 22, 'BBA');
INSERT INTO STUDENTS VALUES (4, 'Anjali Verma', 19, 'BTech');
INSERT INTO STUDENTS VALUES (5, 'Karan Patel', 23, 'BCA');
INSERT INTO STUDENTS VALUES (6, 'Neha Joshi', 20, 'BCom');
INSERT INTO STUDENTS VALUES (7, 'Rahul Nair', 21, 'BSc');
INSERT INTO STUDENTS VALUES (8, 'Simran Kaur', 22, 'BBA');
INSERT INTO STUDENTS VALUES (9, 'Aditya Rao', 20, 'BTech');
INSERT INTO STUDENTS VALUES (10, 'Isha Desai', 21, 'BCA');


INSERT INTO ACADEMICS VALUES (101, 1, 'Data Structures');
INSERT INTO ACADEMICS VALUES (102, 2, 'Chemistry');
INSERT INTO ACADEMICS VALUES (103, 3, 'Marketing');
INSERT INTO ACADEMICS VALUES (104, 4, 'Algorithms');
INSERT INTO ACADEMICS VALUES (105, 5, 'Database Systems');
INSERT INTO ACADEMICS VALUES (106, 6, 'Accounting');
INSERT INTO ACADEMICS VALUES (107, 7, 'Biology');
INSERT INTO ACADEMICS VALUES (108, 8, 'Human Resource');
INSERT INTO ACADEMICS VALUES (109, 9, 'Operating Systems');
INSERT INTO ACADEMICS VALUES (110, 11, 'Finance'); -- Student ID 11 doesn't exist

--------------------------------------------------------------------------------------
--DISPLAYING STUDENTS TABLE

SELECT * FROM STUDENTS;

-----------------------------------------------------
--DISPLAYING ACADEMICS TABLE

SELECT * FROM ACADEMICS;

----------------------------------------------------------------------

--// Perform JOIN Queries

-- INNER JOIN – Only matching records from both tables:

SELECT S.ID, S.NAME, S.COURSE, A.SUBJECT
FROM STUDENTS S
INNER JOIN ACADEMICS A ON S.ID = A.STUDENT_ID;

--LEFT JOIN – All students + matching academic subjects:

SELECT S.ID, S.NAME, S.COURSE, A.SUBJECT
FROM STUDENTS S
LEFT JOIN ACADEMICS A ON S.ID = A.STUDENT_ID;

--RIGHT JOIN – All subjects + matching students:

SELECT S.ID, S.NAME, S.COURSE, A.SUBJECT
FROM STUDENTS S
RIGHT JOIN ACADEMICS A ON S.ID = A.STUDENT_ID;

--FULL JOIN – All data from both tables, matched or not:

SELECT S.ID, S.NAME, S.COURSE, A.SUBJECT
FROM STUDENTS S
FULL OUTER JOIN ACADEMICS A ON S.ID = A.STUDENT_ID;
------------------------------------------------------------------------
--TASK PERFORMED BY
--DEBADATTA ROUT
--Intern ID :CT04DN790
--DOMAIN: SQL
--DURATION: 4 WEEKS
--MENTOR : Neela Santhosh

