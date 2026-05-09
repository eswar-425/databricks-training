--Question - 1
SELECT t.student_name,courses.course_name FROM (students LEFT JOIN enrollments
ON students.student_id = enrollments.student_id) AS t
LEFT JOIN courses ON courses.course_id = enrollments.course_id;

--Question - 2
SELECT courses.course_name FROM courses LEFT JOIN enrollments
ON courses.course_id = enrollments.course_id
WHERE enrollments.course_id IS NULL;

--Question - 3
SELECT instructors.instructor_name, courses.course_name FROM instructors LEFT JOIN courses
ON instructors.instructor_id = courses.instructor_id;

--Question - 4
SELECT courses.course_name FROM courses LEFT JOIN instructors
ON courses.instructor_id = instructors.instructor_id
WHERE courses.instructor_id IS NULL;

--Question - 5
SELECT * FROM enrollments RIGHT JOIN students
ON enrollments.student_id = students.student_id;

--Question - 6
SELECT t.student_name FROM (students LEFT JOIN enrollments
ON students.student_id = enrollments.student_id) AS t
LEFT JOIN courses ON courses.course_id = enrollments.course_id
WHERE enrollments.enrollment_id IS NULL;

--Question - 7
SELECT * FROM students FULL OUTER JOIN enrollments
ON students.student_id = enrollments.student_id;

--Question - 8
SELECT courses.course_name FROM courses LEFT JOIN
enrollments ON courses.course_id = enrollments.course_id
WHERE enrollments.course_id IS NULL;

--Question - 9
SELECT * FROM instructors FULL OUTER JOIN courses
ON instructors.instructor_id = courses.instructor_id
WHERE instructors.instructor_id IS NULL;

--Question - 10
SELECT students.student_name,courses.course_name,instructors.instructor_name FROM students FULL OUTER JOIN enrollments
ON students.student_id = enrollments.student_id FULL OUTER JOIN
courses ON enrollments.course_id = courses.course_id FULL OUTER JOIN 
instructors ON instructors.instructor_id = courses.instructor_id; 

--BONUS CHALLENGE
SELECT * FROM students CROSS JOIN courses;