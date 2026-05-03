-- =========================================
-- STUDENT MARK MANAGEMENT SYSTEM
-- =========================================
					
					
TABLE STRUCTURE (DDL):

STEP 1: CREATE A STUDENTS TABLE 

	SQL>	CREATE TABLE STUDENTS (
		STUDENT_ID INT PRIMARY KEY,
		NAME VARCHAR(50),
		GENDER CHAR(1),
		DOB DATE,
		DEPARTMENT VARCHAR(20),
		JOINING_YEAR INT);
	
DISCRIBE THE TABLE STRUCTURE 
	
	SQL> DESC STUDENTS;
	 NAME                                      Null?    Type
	 ----------------------------------------- -------- ----------------------------
	 STUDENT_ID                                NOT NULL NUMBER(38)
	 NAME                                               VARCHAR2(50)
	 GENDER                                             CHAR(1)
	 DOB                                                DATE
	 DEPARTMENT                                         VARCHAR2(20)
	 JOINING_YEAR                                       NUMBER(38)

STEP 2: CREATE A SUBJECTS TABLE

	SQL> CREATE TABLE SUBJECTS (
	  2  SUBJECT_ID INT PRIMARY KEY,
	  3  NAME VARCHAR(50),
	  4  MAX_MARKS INT,
	  5  PASS_MARKS INT);

	Table created.
	
	
	SQL> DESC SUBJECTS
	 NAME                                      Null?    Type
	 ----------------------------------------- -------- ----------------------------
	 SUBJECT_ID                                NOT NULL NUMBER(38)
	 NAME                                               VARCHAR2(50)
	 MAX_MARKS                                          NUMBER(38)
	 PASS_MARKS                                         NUMBER(38)

STEP 3: CREATE A EXAMS TABLE

	SQL> CREATE TABLE EXAMS(
	  2  EXAM_ID INT PRIMARY KEY,
	  3  EXAM_NAME VARCHAR(50),
	  4  EXAM_DATE DATE,
	  5  CLASS VARCHAR(10));
	  
	SQL> DESC EXAMS
	
	 NAME                                      Null?    Type
	 ----------------------------------------- -------- ----------------------------
	 EXAM_ID                                   NOT NULL NUMBER(38)
	 EXAM_NAME                                          VARCHAR2(50)
	 EXAM_DATE                                          DATE
	 CLASS                                              VARCHAR2(10)
	 
STEP 4: CREATE A RESULTS TABLE

	SQL> CREATE TABLE RESULTS(
	  2  RESULT_ID INT PRIMARY KEY,
	  3  STUDENT_ID INT REFERENCES STUDENTS(STUDENT_ID),
	  4  EXAM_ID INT REFERENCES EXAMS(EXAM_ID),
	  5   SUBJECT_ID INT REFERENCES SUBJECTS(SUBJECT_ID),
	  6   MARKS INT);
	  
	SQL> DESC RESULTS;
	 NAME                                      Null?    Type
	 ----------------------------------------- -------- ----------------------------
	 RESULT_ID                                 NOT NULL NUMBER(38)
	 STUDENT_ID                                         NUMBER(38)
	 EXAM_ID                                            NUMBER(38)
	 SUBJECT_ID                                         NUMBER(38)
	 MARKS                                              NUMBER(38)

-- =========================================
-- SAMPLE DATA INSERTION
-- =========================================

STEP 5: INSERT DATA IN STUDENTS TABLE

	INSERT INTO STUDENTS VALUES (1, 'SARA', 'F', TO_DATE('2002-05-12', 'YYYY-MM-DD'), 'CSE', 2020);
	INSERT INTO STUDENTS VALUES (2, 'PRIYA', 'F', TO_DATE('2001-08-23', 'YYYY-MM-DD'), 'ECE', 2020);
	INSERT INTO STUDENTS VALUES (3, 'RAJI', 'M', TO_DATE('2003-01-15', 'YYYY-MM-DD'), 'MECH', 2021);
	INSERT INTO STUDENTS VALUES (4, 'Sneha', 'F', TO_DATE('2002-11-30', 'YYYY-MM-DD'), 'CSE', 2021);
	INSERT INTO STUDENTS VALUES (5, 'Vikram', 'M', TO_DATE('2001-07-04', 'YYYY-MM-DD'), 'CIVIL', 2020);
	INSERT INTO STUDENTS VALUES (6, 'ABINAYA', 'F', TO_DATE('2003-03-19', 'YYYY-MM-DD'), 'ECE', 2021);
	INSERT INTO STUDENTS VALUES (7, 'Karthik', 'M', TO_DATE('2002-09-08', 'YYYY-MM-DD'), 'CSE', 2022);
	INSERT INTO STUDENTS VALUES (8, 'Divya', 'F', TO_DATE('2001-12-25', 'YYYY-MM-DD'), 'MECH', 2020);
	INSERT INTO STUDENTS VALUES (9, 'SWETHA', 'F', TO_DATE('2003-06-17', 'YYYY-MM-DD'), 'CIVIL', 2022);
	INSERT INTO STUDENTS VALUES (10, 'Meera', 'F', TO_DATE('2002-04-02', 'YYYY-MM-DD'), 'ECE', 2022);
	
	COMMIT;

STEP 6: INSERT DATA IN SUBJECTS TABLE

	INSERT INTO SUBJECTS VALUES (1, 'TAMIL', 100, 35);
	INSERT INTO SUBJECTS VALUES (2, 'ENGLISH', 100, 35);
	INSERT INTO SUBJECTS VALUES (3, 'MATHS', 100, 35);
	INSERT INTO SUBJECTS VALUES (4, 'IOT', 100, 35);
	INSERT INTO SUBJECTS VALUES (5, 'Computer Science', 100, 35);
	INSERT INTO SUBJECTS VALUES (6, 'Electronics', 100, 35);
	INSERT INTO SUBJECTS VALUES (7, 'Mechanics', 100, 35);
	INSERT INTO SUBJECTS VALUES (8, 'Civil Engineering', 100, 35);
	INSERT INTO SUBJECTS VALUES (9, 'Data Structures', 100, 35);
	INSERT INTO SUBJECTS VALUES (10, 'Networks', 100, 35);
	
	COMMIT;

STEP 7: INSERT DATA IN EXAMS TABLE

	INSERT INTO EXAMS VALUES (1, 'Mid Term 1', TO_DATE('2024-02-10', 'YYYY-MM-DD'), '2nd');
	INSERT INTO EXAMS VALUES (2, 'Mid Term 2', TO_DATE('2024-04-15', 'YYYY-MM-DD'), '2nd');
	INSERT INTO EXAMS VALUES (3, 'Final Exam', TO_DATE('2024-06-20', 'YYYY-MM-DD'), '2nd');
	INSERT INTO EXAMS VALUES (4, 'Mid Term 1', TO_DATE('2024-02-12', 'YYYY-MM-DD'), '4th');
	INSERT INTO EXAMS VALUES (5, 'Mid Term 2', TO_DATE('2024-04-18', 'YYYY-MM-DD'), '4th');
	INSERT INTO EXAMS VALUES (6, 'Final Exam', TO_DATE('2024-06-25', 'YYYY-MM-DD'), '4th');
	INSERT INTO EXAMS VALUES (7, 'Mid Term 1', TO_DATE('2024-02-14', 'YYYY-MM-DD'), '6th');
	INSERT INTO EXAMS VALUES (8, 'Mid Term 2', TO_DATE('2024-04-20', 'YYYY-MM-DD'), '6th');
	INSERT INTO EXAMS VALUES (9, 'Final Exam', TO_DATE('2024-06-28', 'YYYY-MM-DD'), '6th');
	INSERT INTO EXAMS VALUES (10, 'Supplementary', TO_DATE('2024-08-05', 'YYYY-MM-DD'), '2nd');
	
	COMMIT;

STEP 8: INSERT DATA IN RESULTS TABLE

	INSERT INTO RESULTS VALUES (1, 1, 1, 5, 88);
	INSERT INTO RESULTS VALUES (2, 2, 1, 6, 75);
	INSERT INTO RESULTS VALUES (3, 3, 2, 7, 62);
	INSERT INTO RESULTS VALUES (4, 4, 1, 5, 91);
	INSERT INTO RESULTS VALUES (5, 5, 3, 8, 55);
	INSERT INTO RESULTS VALUES (6, 6, 2, 6, 78);
	INSERT INTO RESULTS VALUES (7, 7, 4, 9, 85);
	INSERT INTO RESULTS VALUES (8, 8, 3, 7, 48);
	INSERT INTO RESULTS VALUES (9, 9, 5, 8, 33);
	INSERT INTO RESULTS VALUES (10, 10, 4, 10, 70);
	
	COMMIT;

-- =========================================
-- SAMPLE QUERY: RANKING
-- =========================================

STEP 9: FILTER THE RECODES
		 Q1: Student Report Card — pivot with CASE WHEN

	 SELECT S.NAME, S.JOINING_YEAR,
       MAX(CASE WHEN SUB.NAME='TAMIL' THEN R.MARKS END) AS TAMIL,
       MAX(CASE WHEN SUB.NAME='ENGLISH' THEN R.MARKS END) AS ENGLISH,
       MAX(CASE WHEN SUB.NAME='MATHS' THEN R.MARKS END) AS MATHS,
      MAX(CASE WHEN SUB.NAME='COMPUTER SCIENCE' THEN R.MARKS END) AS CS,
       MAX(CASE WHEN SUB.NAME='IOT' THEN R.MARKS END) AS IOT,
       SUM(R.MARKS) AS TOTAL,
       ROUND(AVG(R.MARKS),2) AS PERCENTAGE
       FROM STUDENTS S
      JOIN RESULTS R ON S.STUDENT_ID = R.STUDENT_ID
      JOIN SUBJECTS SUB ON R.SUBJECT_ID=SUB.SUBJECT_ID
      WHERE R.EXAM_ID=2
    GROUP BY S.NAME, S.JOINING_YEAR
    ORDER BY TOTAL DESC;


	
NAME                                               JOINING_YEAR      TAMIL    ENGLISH      MATHS         CS        IOT      TOTAL PERCENTAGE
-------------------------------------------------- ------------ ---------- ---------- ---------- ---
ABINAYA                                                    2021                                                                78         78
RAJI                                                       2021                                                                62         62
    

STEP 10: FILTER RECORDS
		 -- Q2: Class rank using Window Functions

	SQL> SELECT S.NAME,
  2  SUM(R.MARKS) AS TOTAL,
  3  RANK() OVER (ORDER BY SUM(R.MARKS) DESC) AS CLASS_RANK,
  4  DENSE_RANK() OVER (ORDER BY SUM(R.MARKS) DESC) AS DENSE_RANK,
  5  PERCENT_RANK() OVER (ORDER BY SUM(R.MARKS) DESC) AS PERCENTILE
  6  FROM STUDENTS S
  7  JOIN RESULTS R ON S.STUDENT_ID = R.STUDENT_ID
  8  WHERE R.EXAM_ID = 2 
  9  GROUP BY S.NAME;


NAME                                                    TOTAL CLASS_RANK DENSE_RANK PERCENTILE
-------------------------------------------------- ---------- ---------- ---------- ----------
ABINAYA                                                    78          1          1          0
RAJI                                                       62          2          2          1

STEP 11: FILTER THE RECODES
			-- Q3: SUBJECT-wise pass/fail count


SQL>  SELECT SUB.NAME AS SUBJECT,
  2     SUM(CASE WHEN R.MARKS>=SUB.PASS_MARKS THEN 1 ELSE 0 END) AS PASSED,
  3     SUM(CASE WHEN R.MARKS< SUB.PASS_MARKS THEN 1 ELSE 0 END) AS FAILED
  4     FROM RESULTS R
  5     JOIN SUBJECTS SUB ON R.SUBJECT_ID=SUB.SUBJECT_ID
  6     WHERE R.EXAM_ID=2
  7    GROUP BY SUB.NAME;

SUBJECT                                                PASSED     FAILED
-------------------------------------------------- ---------- ----------
Electronics                                                 1          0
Mechanics                                                   1          0


SQL>  SELECT SUB.NAME AS SUBJECT,
  2     SUM(CASE WHEN R.MARKS>=SUB.PASS_MARKS THEN 1 ELSE 0 END) AS PASSED,
  3     SUM(CASE WHEN R.MARKS< SUB.PASS_MARKS THEN 1 ELSE 0 END) AS FAILED
  4     FROM RESULTS R
  5     JOIN SUBJECTS SUB ON R.SUBJECT_ID=SUB.SUBJECT_ID
  6  WHERE R.EXAM_ID = 3
  7  GROUP BY SUB.NAME;


SUBJECT                                                PASSED     FAILED
-------------------------------------------------- ---------- ----------
Civil Engineering                                           1          0
Mechanics                                                   1          0
	  
STEP 12: FILTER THE RECORDS 
		-- Q4: Improvement from Mid Term to Final


SQL> SELECT S.NAME,
  2  SUM(CASE WHEN R.EXAM_ID=1 THEN R.MARKS END) AS MID_TERM_TOTAL,
  3  SUM(CASE WHEN R.EXAM_ID=2 THEN R.MARKS END) AS FINAL_TOTAL,
  4  SUM(CASE WHEN R.EXAM_ID=2 THEN R.MARKS END),
  5  SUM(CASE WHEN R.EXAM_ID=1 THEN R.MARKS END) AS IMPROVEMENT
  6  FROM STUDENTS S
  7  JOIN RESULTS R ON S.STUDENT_ID = R.STUDENT_ID
  8  GROUP BY S.NAME
  9  ORDER BY IMPROVEMENT DESC;


NAME                                               MID_TERM_TOTAL FINAL_TOTAL SUM(CASEWHENR.EXAM_ID=2THENR.MARKSEND) IMPROVEMENT
-------------------------------------------------- -------------- ----------- ----------------------
Karthik
ABINAYA                                                                    78                                     78
Meera
SWETHA
RAJI                                                                       62                                     62
Divya
Vikram
Sneha                                                          91                                                             91
SARA                                                           88                                                             88
PRIYA                                                          75                                                             75

10 rows selected.


STEP 13: FILTER THE RECODES
		-- Q5: GENDER-wise average per SUBJECT

SQL> SELECT SUB.NAME AS SUBJECT,
  2  ROUND(AVG(CASE WHEN S.GENDER='M' THEN R.MARKS END),2) AS MALE_AVG,
  3  ROUND(AVG(CASE WHEN S.GENDER='F' THEN R.MARKS END),2) AS FEMALE_AVG
  4  FROM RESULTS R
  5  JOIN STUDENTS S ON R.STUDENT_ID = S.STUDENT_ID
  6  JOIN SUBJECTS SUB ON R.SUBJECT_ID = SUB.SUBJECT_ID
  7  WHERE R.EXAM_ID = 2
  8  GROUP BY SUB.NAME;

SUBJECT                                              MALE_AVG FEMALE_AVG
-------------------------------------------------- ---------- ----------
Electronics                                                           78
Mechanics                                                  62

SQL>  SELECT SUB.NAME AS SUBJECT,
  2   ROUND(AVG(CASE WHEN S.GENDER='M' THEN R.MARKS END),2) AS MALE_AVG,
  3   ROUND(AVG(CASE WHEN S.GENDER='F' THEN R.MARKS END),2) AS MALE_AVG
  4   FROM RESULTS R
  5   JOIN STUDENTS S ON R.STUDENT_ID = S.STUDENT_ID
  6   JOIN SUBJECTS SUB ON R.SUBJECT_id = SUB.SUBJECT_id
  7  WHERE R.EXAM_ID = 3
  8  GROUP BY SUB.NAME;

SUBJECT                                              MALE_AVG FEMALE_AVG
-------------------------------------------------- ---------- ----------
Civil Engineering                                          55
Mechanics                                                             48
