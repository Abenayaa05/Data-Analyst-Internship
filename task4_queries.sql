
-- 1. Create payments table
CREATE TABLE payments (
    transaction_id VARCHAR(10) PRIMARY KEY,
    payment_date DATE,
    student_id VARCHAR(10),
    course_id VARCHAR(10),
    amount_paid INTEGER
);

-- 2. View all data
SELECT * FROM payments;

-- 3. View payments by a specific student
SELECT * FROM payments
WHERE student_id = '22S001';

-- 4. View payments above 5000
SELECT * FROM payments
WHERE amount_paid > 5000;

-- 5. Sort payments by date
SELECT * FROM payments
ORDER BY payment_date ASC;

-- 6. Sort by highest amount first
SELECT * FROM payments
ORDER BY amount_paid DESC;

-- 7. Total paid by each student
SELECT student_id, SUM(amount_paid) AS total_paid
FROM payments
GROUP BY student_id;

-- 8. Total revenue per course
SELECT course_id, SUM(amount_paid) AS total_course_revenue
FROM payments
GROUP BY course_id;

-- 9. Highest amount in a single transaction
SELECT *
FROM payments
WHERE amount_paid = (
    SELECT MAX(amount_paid) FROM payments
);

-- 10. Payments greater than average amount
SELECT *
FROM payments
WHERE amount_paid > (
    SELECT AVG(amount_paid) FROM payments
);

-- 11. Create students table
CREATE TABLE students (
    student_id VARCHAR(10) PRIMARY KEY,
    student_name VARCHAR(50)
);

INSERT INTO students VALUES
('22S001', 'Aarya'),
('22S002', 'Ravi'),
('22S003', 'Meena');

-- 12. Create courses table
CREATE TABLE courses (
    course_id VARCHAR(10) PRIMARY KEY,
    course_name VARCHAR(50)
);

INSERT INTO courses VALUES
('22C02', 'Python Basics'),
('22C09', 'Data Structures'),
('22C12', 'SQL for Beginners'),
('22C15', 'Web Development');

-- 13. Join payments with students
SELECT p.transaction_id, s.student_name, p.amount_paid
FROM payments p
INNER JOIN students s ON p.student_id = s.student_id;

-- 14. Join payments with courses
SELECT p.transaction_id, c.course_name, p.amount_paid
FROM payments p
INNER JOIN courses c ON p.course_id = c.course_id;

-- 15. Create a view for total paid per student
CREATE VIEW student_payment_summary AS
SELECT student_id, SUM(amount_paid) AS total_paid
FROM payments
GROUP BY student_id;

-- 16. Use the created view
SELECT * FROM student_payment_summary;

-- 17. Create indexes to optimize performance
CREATE INDEX idx_student_id ON payments(student_id);
CREATE INDEX idx_course_id ON payments(course_id);
