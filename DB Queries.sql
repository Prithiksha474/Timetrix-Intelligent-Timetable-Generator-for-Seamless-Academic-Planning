-- Create Courses Table
CREATE TABLE IF NOT EXISTS courses (
    id INT AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(100) NOT NULL
);

-- Create Staff Table
CREATE TABLE IF NOT EXISTS staff (
    id INT AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(100) NOT NULL
);

-- Create Staff Courses Table
CREATE TABLE IF NOT EXISTS staff_courses (
    id INT AUTO_INCREMENT PRIMARY KEY,
    course_id INT,
    staff_id INT,
    FOREIGN KEY (course_id) REFERENCES courses(id),
    FOREIGN KEY (staff_id) REFERENCES staff(id)
);

-- Insert sample data into courses
INSERT INTO courses (name) VALUES 
('Artificial Intelligence'), 
('Compiler Engineering'), 
('Web Technology'), 
('Ethical Hacking'), 
('Hospital Waste Management'), 
('Embedded System and Internet of Things'),
('Web Technology Lab'), 
('IoT Lab'), 
('Mini Project Lab'), 
('Coding Lab'), 
('Library'), 
('Seminar');

-- Insert sample data into staff
INSERT INTO staff (name) VALUES 
('Mrs. Rekha'), 
('Dr. Rajan'), 
('Mrs. Sivaranjani'), 
('Dr. E. Thenmozhi'), 
('Mrs. R. Dharani'), 
('Dr. Sridharan'), 
('Mrs. Muthulakshmi'), 
('Mrs. Mary Rexcy Asha'), 
('Dr. K. Tamilarasi'), 
('Mrs. Priyadharshini'), 
('Mrs. Sumathi'), 
('Mrs. J. Benitha Christinal'), 
('Dr. Karunkuzhali'), 
('Mr. V. Kandasamy'), 
('Ms. Smitha Mol'), 
('Dr. Vijayakumar');

-- Insert sample data into rooms
INSERT INTO rooms (name) VALUES 
('IT A'), 
('IT B'), 
('IT C'), 
('IT D'), 
('IT E'), 
('IT F');

-- Insert sample data into timings
INSERT INTO timings (time_slot) VALUES 
('08:00 - 08:50'), 
('08:50 - 09:40'), 
('09:40 - 10:30'), 
('10:45 - 11:40'), 
('11:40 - 12:40'), 
('01:15 - 01:55'), 
('01:55 - 02:30'), 
('02:30 - 03:15');

-- Insert sample data into staff_courses
INSERT INTO staff_courses (course_id, staff_id) VALUES
(1, 1), (1, 2),
(2, 3), (2, 4),
(3, 5), (3, 6), (3, 7),
(4, 8), (4, 9),
(5, 10), (5, 11),
(6, 12), (6, 13),
(7, 5), (7, 6), (7, 7),
(8, 12), (8, 13),
(9, 5), (9, 14), (9, 10),
(10, 3), (10, 4),
(11, 15), (11, 11),
(12, 16), (12, 10);
