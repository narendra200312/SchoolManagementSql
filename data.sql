USE student_management;

-- Insert students
INSERT INTO students (first_name, last_name, email, date_of_birth) VALUES
('Rahul', 'Sharma', 'rahul.sharma@example.com', '2002-05-10'),
('Ananya', 'Reddy', 'ananya.reddy@example.com', '2001-09-21'),
('Vikram', 'Patel', 'vikram.patel@example.com', '2003-01-15'),
('Sneha', 'Verma', 'sneha.verma@example.com', '2002-12-02');

-- Insert courses
INSERT INTO courses (course_name, course_code, credits) VALUES
('Database Management Systems', 'DBMS101', 4),
('Data Structures', 'DS201', 4),
('Operating Systems', 'OS301', 3),
('Computer Networks', 'CN401', 3);

-- Insert enrollments
INSERT INTO enrollments (student_id, course_id, enrollment_date, grade) VALUES
(1, 1, '2024-07-01', 'A'),
(1, 2, '2024-07-01', 'B'),
(2, 1, '2024-07-02', 'A'),
(2, 3, '2024-07-02', 'B'),
(3, 2, '2024-07-03', 'C'),
(4, 4, '2024-07-04', NULL);
