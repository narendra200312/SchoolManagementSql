USE student_management;

-- 1. List all students
SELECT * FROM students;

-- 2. List all courses
SELECT * FROM courses;

-- 3. List students with the courses they are enrolled in (JOIN)
SELECT 
    s.student_id,
    s.first_name,
    s.last_name,
    c.course_name,
    e.enrollment_date,
    e.grade
FROM enrollments e
JOIN students s ON e.student_id = s.student_id
JOIN courses c ON e.course_id = c.course_id
ORDER BY s.student_id, c.course_name;

-- 4. Count number of students in each course
SELECT 
    c.course_name,
    COUNT(e.student_id) AS total_students
FROM courses c
LEFT JOIN enrollments e ON c.course_id = e.course_id
GROUP BY c.course_id, c.course_name
ORDER BY total_students DESC;

-- 5. Find courses with no enrollments
SELECT 
    c.course_name
FROM courses c
LEFT JOIN enrollments e ON c.course_id = e.course_id
WHERE e.course_id IS NULL;

-- 6. Find top 1 course by number of enrollments
SELECT 
    c.course_name,
    COUNT(e.student_id) AS total_students
FROM courses c
JOIN enrollments e ON c.course_id = e.course_id
GROUP BY c.course_id, c.course_name
ORDER BY total_students DESC
LIMIT 1;
