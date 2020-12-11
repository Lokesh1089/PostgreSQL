CREATE SCHEMA school;
SET search_path TO school;
CREATE TABLE students(
rollNo INTEGER PRIMARY KEY,
sname VARCHAR(15),	
class_teacher_id INT	
);
CREATE TABLE teachers(
teacher_id INT PRIMARY KEY,
tname VARCHAR(20),
dept_id INT
);
CREATE TABLE departments(
dept_id INT PRIMARY KEY,
dname VARCHAR(20),
dlocation VARCHAR(20)	
);

ALTER TABLE students ADD FOREIGN KEY  (class_teacher_id) REFERENCES teachers(teacher_id);
ALTER TABLE teachers ADD FOREIGN KEY (dept_id) REFERENCES departments(dept_id);
ALTER TABLE students ADD COLUMN subject VARCHAR(25);
ALTER TABLE teachers ADD COLUMN Salary INT ;
TRUNCATE TABLE students;


INSERT INTO departments VALUES(1,'Tamil','GF32');
INSERT INTO departments VALUES(2,'English','GF');
INSERT INTO departments VALUES(3,'Maths','TF2');
INSERT INTO departments VALUES(4,'Science','FF1');
INSERT INTO departments VALUES(5,'Social','FF1');

SELECT * FROM departments;

INSERT INTO teachers VALUES(101,'Venba',1);
INSERT INTO teachers VALUES(102,'Priya',4);
INSERT INTO teachers VALUES(103,'Kumaran',5);
INSERT INTO teachers VALUES(104,'Vaishnavi',3);
INSERT INTO teachers VALUES(105,'Sathish',2);
INSERT INTO teachers VALUES(106,'Parthiban',4);
INSERT INTO teachers VALUES(107,'Tamilselvi',1);
INSERT INTO teachers VALUES(108,'Karthika',2);
INSERT INTO teachers VALUES(109,'Prabha',4);
INSERT INTO teachers VALUES(110,'Vidhya',5);
UPDATE teachers 
SET Salary = 15000
WHERE teacher_id = 107;



INSERT INTO students VALUES(1,'Aravind',101,'Tamil');
INSERT INTO students VALUES(2,'Abi',107,'Tamil');
INSERT INTO students VALUES(3,'Cheliyan',102,'Science');
INSERT INTO students VALUES(4,'Deva',103,'Social');
INSERT INTO students VALUES(5,'Elavarasan',110,'Social');
INSERT INTO students VALUES(6,'Farook',105,'English');
INSERT INTO students VALUES(7,'Govind',104,'Maths');
INSERT INTO students VALUES(8,'Raj',104);
INSERT INTO students VALUES(9,'Ram',104);

SELECT * FROM students;
SELECT * FROM teachers;

DELETE FROM students WHERE rollNo = 7;
DELETE FROM students WHERE class_teacher_id = 110;
DELETE FROM teachers WHERE teacher_id = 110;

DELETE FROM students WHERE rollNo = 10;
DELETE FROM students WHERE rollNo = 11;


UPDATE teachers 
SET tname = 'Priyadarshini'
WHERE teacher_id = 102;

UPDATE students 
SET sname = 'Abinaya'
WHERE rollNo = 2;

UPDATE students 
SET sname = 'Farook Abdulla'
WHERE rollNo = 6;

SELECT sname , tname , class_teacher_id
FROM students, teachers
WHERE class_teacher_id = teacher_id;

SELECT tname , teachers.dept_id
FROM teachers, departments
WHERE teachers.dept_id =  departments.dept_id;

SELECT DISTINCT dept_id
FROM teachers;

SELECT DISTINCT sname 
FROM students;

SELECT DISTINCT class_teacher_id 
FROM students;

SELECT sname , class_teacher_id 
FROM students WHERE class_teacher_id IN( SELECT teacher_id FROM teachers WHERE dept_id = 4) ;

SELECT tname, teacher_id 
FROM teachers WHERE NOT EXISTS 
(SELECT class_teacher_id 
 FROM students 
 WHERE students.class_teacher_id = teachers.teacher_id);
 
 
SELECT tname, teacher_id 
FROM teachers WHERE EXISTS 
(SELECT class_teacher_id 
 FROM students 
 WHERE students.class_teacher_id = teachers.teacher_id);
 
 SELECT tname , dept_id
 FROM teachers
 WHERE dept_id = 4 ;
 
 SELECT sname , subject 
 FROM students 
 WHERE subject LIKE '%Tamil%';
 
 SELECT * FROM students
 WHERE subject LIKE '%Social%';
 
 SELECT sname FROM students
 WHERE sname LIKE '____';
 
 SELECT * FROM teachers
 WHERE tname LIKE '______';
 
 SELECT * FROM teachers 
 WHERE tname LIKE '%a';
 
 SELECT * FROM teachers 
 WHERE tname LIKE 'K%';
 
 SELECT * FROM teachers 
 WHERE salary BETWEEN 15000 AND 20000;
 
 SELECT * FROM teachers 
 WHERE teacher_id BETWEEN 106 AND 110;
 
 SELECT sname FROM students 
 WHERE rollNo BETWEEN 3 AND 5;
 
 SELECT tname , salary , salary *1.5 AS AfterIncreament 
 FROM teachers WHERE teachers.dept_id = ( SELECT departments.dept_id 
 FROM departments
 WHERE dname LIKE '%Tamil%');
 
 SELECT tname , salary , salary*2 AS AfteRIncreament 
 FROM teachers WHERE teachers.dept_id = (SELECT departments.dept_id 
									   FROM departments
									   WHERE dname = 'Maths');
 -- IS NULL
 
 SELECT * FROM students 
 WHERE subject IS NULL;
 
 SELECT * FROM students 
 WHERE subject IS NOT NULL;
 
 -- MIN , MAX , AVG FUNCTIONS
 
 SELECT MIN(salary) FROM teachers;
 SELECT MAX(salary) FROM teachers;
 SELECT AVG(salary) FROM teachers;
 
 SELECT MIN(salary), MAX(salary),AVG(salary)
 FROM teachers;

 
 --COUNT, DISTINCT, ORDER BY,GROUP BY , LIMIT , HAVING ,OFFSET, FETCH
 
  
 SELECT COUNT(*) FROM students;
 
 SELECT COUNT (*) FROM teachers;
 
 SELECT COUNT(DISTINCT salary) FROM teachers;
 
SELECT tname, salary FROM teachers 
ORDER BY salary;
 
SELECT * FROM teachers 
ORDER BY salary DESC;

SELECT sname FROM students 
ORDER BY sname DESC;

SELECT * FROM students 
ORDER BY class_teacher_id;
 
SELECT sname, class_teacher_id FROM students 
GROUP BY class_teacher_id , sname;

SELECT dept_id, COUNT(*)
FROM teachers
GROUP BY dept_id;

SELECT class_teacher_id, COUNT(*)
FROM students
GROUP BY class_teacher_id;

SELECT  subject FROM students
GROUP BY subject;

SELECT teachers.dept_id, teachers.tname
FROM teachers, students
WHERE students.class_teacher_id = teachers.teacher_id 
GROUP BY teachers.dept_id, teachers.tname
HAVING count(*)>1;

SELECT tname, salary
FROM teachers 
GROUP BY teachers.salary, tname
HAVING salary > 20000;

SELECT sname, subject 
FROM students
GROUP BY subject , sname
HAVING subject = 'Tamil';

SELECT * FROM students 
LIMIT 3;

SELECT * FROM teachers 
LIMIT 5 ;

SELECT * FROM students OFFSET 4 
LIMIT 2 ;

SELECT dname , dept_id
FROM departments 
OFFSET 2 LIMIT 3 ;

SELECT tname , teacher_id 
FROM teachers 
OFFSET 6 LIMIT 2;

SELECT * FROM students FETCH FIRST 4 ROWS ONLY; 

SELECT * FROM teachers FETCH FIRST 5 ROWS ONLY;

SELECT * FROM students FETCH FIRST 3 ROWS ONLY;

-- JOINS

SELECT sname ,class_teacher_id, teachers.teacher_id
FROM students 
RIGHT JOIN teachers ON teacher_id = class_teacher_id;

SELECT class_teacher_id,teachers.teacher_id , sname,tname 
FROM students 
LEFT JOIN teachers ON class_teacher_id = teacher_id;

SELECT class_teacher_id , teacher_id , sname, tname  
FROM teachers
INNER JOIN students ON class_teacher_id = teacher_id; 

SELECT sname , tname 
FROM teachers 
FULL JOIN students ON teacher_id = class_teacher_id ;

-- VIEWS

CREATE VIEW student_subject_teacher
AS SELECT sname,subject,tname
FROM students , teachers 
WHERE class_teacher_id = teacher_id ;

SELECT * FROM student_subject_teacher;

CREATE VIEW teacher_departName
AS SELECT dname,tname
FROM departments,teachers
WHERE teachers.dept_id = departments.dept_id;

SELECT * FROM teacher_departName;

DROP VIEW teacher_departName;

-- STORED PROCEDURE

CREATE TABLE tab1(a INT);
CREATE TABLE tab2(b INT);
CREATE TABLE tab3(c INT);

CREATE PROCEDURE insert_values(X INT, Y INT , Z INT)
LANGUAGE SQL
AS $$
INSERT INTO tab1 VALUES(X);
INSERT INTO tab2 VALUES(Y);
INSERT INTO tab3 VALUES(Z);
$$;

CALL insert_values(5,6,7);
CALL insert_values(11,22,33);

SELECT * FROM tab1;
SELECT * FROM tab2;
SELECT * FROM tab3;

CREATE PROCEDURE insert_teachers(tid INT, tname VARCHAR(20),did INT, salary INT)
LANGUAGE SQL
AS $$

INSERT INTO teachers VALUES(tid , tname,did , salary);
$$ ;

CALL insert_teachers(111,'Mullai','3',25000 );
CALL insert_teachers(112,'Rajesh',2,18500);

SELECT * FROM teachers;

CREATE PROCEDURE delete_teacher(tid INT)
LANGUAGE SQL
AS $$
DELETE FROM teachers
WHERE teacher_id = tid ;
$$;

CALL delete_teacher(111);
CALL delete_teacher(112);

CREATE TABLE audit(s_id INT NOT NULL,  entry_date TEXT NOT NULL);

CREATE OR REPLACE FUNCTION studentlogfunc() RETURNS TRIGGER AS $student_table$
BEGIN 
INSERT INTO audit(s_id, entry_date) VALUES(new.rollNo, CURRENT_TIMESTAMP );
RETURN NEW ;
END;

$student_table$ LANGUAGE PLPGSQL; 
CREATE TRIGGER student_trigger AFTER INSERT ON students FOR EACH ROW EXECUTE PROCEDURE studentlogfunc();

INSERT INTO students VALUES(10,'Varun',101,'Tamil');
INSERT INTO students VALUES(11,'Pavithra',104,'Maths');

SELECT * FROM audit;

-- DATA CONTRO; LANGUAGE(DCL)

GRANT SELECT ON tab1 TO PUBLIC;

GRANT INSERT ON students TO PUBLIC;

REVOKE INSERT ON departments FROM PUBLIC;

REVOKE INSERT ON students FROM PUBLIC ;

INSERT INTO tab1 VALUES(2);
INSERT INTO tab1 VALUES(3);
INSERT INTO tab1 VALUES(4);
INSERT INTO tab1 VALUES(5);
INSERT INTO tab1 VALUES(6);
INSERT INTO tab1 VALUES(7);
INSERT INTO tab1 VALUES(8);
INSERT INTO tab1 VALUES(9);
INSERT INTO tab1 VALUES(10);

SELECT * FROM tab1;


-- TRANSACTION CONTROL LANGUAGE (TCL)
BEGIN;
DELETE FROM tab1 
WHERE a > 5 ;

ROLLBACK;

BEGIN;
DELETE FROM tab1 
WHERE a > 5 ;
COMMIT;

ROLLBACK;

SELECT * FROM tab1;


-- UUID EXTENSION


SELECT * FROM pg_available_extensions;

CREATE EXTENSION IF NOT EXISTS "uuid-ossp";

SELECT uuid_generate_v4();





