create database ums;

use ums;

create table users(
user_id INT auto_increment PRIMARY KEY ,
user_name VARCHAR(225),
password VARCHAR(225) ,
role VARCHAR(100),
first_name VARCHAR(225) ,
last_name VARCHAR(225) ,
email VARCHAR(225),
phone_number VARCHAR(100)
);

drop table users;

SHOW TABLES;

select * from users;

SET SQL_SAFE_UPDATES = 0;


create table department(
department_id INT auto_increment PRIMARY KEY ,
department_name VARCHAR(225),
department_location VARCHAR(225) ,
department_hod VARCHAR(225) 
);

select * from department;

INSERT INTO department (department_name, department_location, department_hod)
VALUES('Computer Science ', 'SVU-MCA BUILDING', 'Dr.John Smith');


-- Create the course table

CREATE TABLE course (
  course_id INT AUTO_INCREMENT PRIMARY KEY,
  course_code VARCHAR(225),
  course_name VARCHAR(225),
  department_id INT,
  FOREIGN KEY (department_id) REFERENCES department(department_id)
);

select * from course;

-- Insert courses for the Computer Science department

INSERT INTO course (course_code, course_name, department_id)
VALUES
  ('BCS101', 'Bachelor of Computer Science (BCS)', 1),
  ('MCA501', 'Master of Computer Applications (MCA)', 1),
  ('CSE201', 'Computer Science and Engineering (CSE)', 1),
  ('MSC301', 'Master of Science (M.Sc) in Computer Science', 1),
  ('PHD601', 'Ph.D. in Computer Science', 1);

select * from course;
-- Create the subjects table

CREATE TABLE subjects (
  subject_id INT AUTO_INCREMENT PRIMARY KEY,
  subject_code VARCHAR(100),
  subject_name VARCHAR(225),
  course_id INT,
  FOREIGN KEY (course_id) REFERENCES course(course_id)
);

show tables;
drop table subjects;

select * from subjects;

-- Insert subjects for each course
-- BCS course subjects

INSERT INTO subjects (subject_code,subject_name, course_id)
VALUES
  ('BCS001','Introduction to Programming', 1),
  ('BCS002','Data Structures', 1),
  ('BCS003','Algorithms', 1),
  ('BCS004','Computer Architecture', 1);
  
-- MCA course subjects

INSERT INTO subjects (subject_code,subject_name, course_id)
VALUES
  ('MCA001','Software Development Lifecycle', 2),
  ('MCA002','Software Testing', 2),
  ('MCA003','Design Patterns', 2),
  ('MCA004','Software Project Management', 2);

-- CSE course subjects

INSERT INTO subjects (subject_code,subject_name, course_id)
VALUES
  ('CSE001','Data Structures and Algorithms', 3),
  ('CSE002','Algorithm Analysis', 3),
  ('CSE003','Advanced Programming', 3),
  ('CSE004','Algorithms in Operating Systems', 3);

-- MSC course subjects

INSERT INTO subjects (subject_code,subject_name, course_id)
VALUES
  ('MSC001','Artificial Intelligence', 4),
  ('MSC002','Machine Learning', 4),
  ('MSC003','Neural Networks', 4),
  ('MSC004','Natural Language Processing', 4);

-- PHD course subjects

INSERT INTO subjects (subject_code,subject_name, course_id)
VALUES
  ('PHD001','Research Methodology', 5),
  ('PHD002','Thesis Writing', 5),
  ('PHD003','Computer Science Research', 5),
  ('PHD004','Seminar Presentation', 5);



select * from subjects;

-- User Course Registrations Table:

CREATE TABLE student_registrations (
  registration_id INT AUTO_INCREMENT PRIMARY KEY,
  student_id INT,
  course_id INT,
  course_code VARCHAR(100),
  course_name VARCHAR(200),
  registration_date DATE,
  FOREIGN KEY (student_id) REFERENCES students(student_id),
  FOREIGN KEY (course_id) REFERENCES courses(course_id)
);



