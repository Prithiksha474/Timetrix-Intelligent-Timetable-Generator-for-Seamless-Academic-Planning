Timetrix: Intelligent Timetable Generator for Seamless Academic Planning

Overview
Timetrix Technologies is a web-based application designed to automate the generation of academic timetables. It aims to simplify the complex process of scheduling courses, staff, and rooms by leveraging intelligent algorithms to produce conflict-free schedules. This system provides a user-friendly interface for inputting constraints and a robust backend to process and store the generated timetables.

Key Features
Automated Timetable Generation: Generates timetables based on available courses, staff, and rooms.
Database Integration: Stores and retrieves scheduling data using MySQL, ensuring data persistence.
Randomized Timetable Creation (Basic): Includes a basic random generation function to create initial timetable structures.
Constraint Satisfaction Problem (CSP) Function (Under Development): A placeholder for a more sophisticated CSP algorithm, hinting at future conflict resolution capabilities.
Genetic Algorithm (GA) Function (Under Development): A placeholder for a Genetic Algorithm implementation, demonstrating the potential for optimization based on fitness evaluation and mutation.
Simple Web Interface: A straightforward HTML/CSS/JavaScript frontend allows users to trigger timetable generation and view results.
RESTful API: Provides endpoints for fetching courses, staff, and generating timetables.
Technologies Used
The project is built with a combination of modern web technologies:

Backend:
Node.js: JavaScript runtime for the server-side logic and API.
Express.js: Web framework for Node.js, handling routing and middleware.
MySQL: Relational database for storing all academic data (courses, staff, rooms, timetables).
mysql npm package: Node.js driver for MySQL.
cors npm package: Middleware for enabling Cross-Origin Resource Sharing.

Frontend:
HTML5: Structure of the web pages.
CSS3: Styling and responsiveness.
JavaScript: Client-side scripting for interactive elements and API calls.

Database Schema
The project uses the following tables in the timetable_generator database:

courses: Stores information about available courses.
CREATE TABLE IF NOT EXISTS courses (
    id INT AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(100) NOT NULL
);

staff: Stores information about academic staff members.
CREATE TABLE IF NOT EXISTS staff (
    id INT AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(100) NOT NULL
);

rooms: Stores information about available rooms/classrooms.
CREATE TABLE IF NOT EXISTS rooms (
    id INT AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(100) NOT NULL
);

timings: Stores predefined time slots.
CREATE TABLE IF NOT EXISTS timings (
    id INT AUTO_INCREMENT PRIMARY KEY,
    time_slot VARCHAR(50) NOT NULL
);

staff_courses: A junction table linking staff to the courses they can teach.
CREATE TABLE IF NOT EXISTS staff_courses (
    id INT AUTO_INCREMENT PRIMARY KEY,
    course_id INT,
    staff_id INT,
    FOREIGN KEY (course_id) REFERENCES courses(id),
    FOREIGN KEY (staff_id) REFERENCES staff(id)
);

timetable: Stores the generated timetable entries.
CREATE TABLE IF NOT EXISTS timetable (
    id INT AUTO_INCREMENT PRIMARY KEY,
    day VARCHAR(20) NOT NULL,
    period INT NOT NULL,
    course_name VARCHAR(100) NOT NULL,
    staff_name VARCHAR(100) NOT NULL,
    room_name VARCHAR(100) NOT NULL
);

Getting Started
Follow these instructions to set up and run the Timetrix Technologies application locally.

Prerequisites
Node.js (LTS version recommended)
MySQL Server
Installation

-->Clone the repository
-->Install Node.js dependencies:
Navigate to the project root where package.json is located and run:
npm install
-->Set up the MySQL Database:
Log in to your MySQL server (e.g., mysql -u root -p).

-->Create the database:
CREATE DATABASE timetable_generator;
USE timetable_generator;
Run the provided SQL schema to create tables and insert sample data. You'll need to combine the CREATE TABLE and INSERT INTO statements into a single .sql file (e.g., database_setup.sql).

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

-- Create Rooms Table
CREATE TABLE IF NOT EXISTS rooms (
    id INT AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(100) NOT NULL
);

-- Create Timings Table (if not already existing)
CREATE TABLE IF NOT EXISTS timings (
    id INT AUTO_INCREMENT PRIMARY KEY,
    time_slot VARCHAR(50) NOT NULL
);

-- Create Timetable Table
CREATE TABLE IF NOT EXISTS timetable (
    id INT AUTO_INCREMENT PRIMARY KEY,
    day VARCHAR(20) NOT NULL,
    period INT NOT NULL,
    course_name VARCHAR(100) NOT NULL,
    staff_name VARCHAR(100) NOT NULL,
    room_name VARCHAR(100) NOT NULL
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
Update Database Credentials: Open server.js (or your main backend file) and update the MySQL connection details, especially the password, to match your setup:

JavaScript

const db = mysql.createConnection({
    host: 'localhost',
    user: 'root',
    password: 'YOUR_MYSQL_PASSWORD', // <-- Update this line
    database: 'timetable_generator'
});

Run the Backend Server:
From the project root, execute:

node server.js
You should see Server started on http://localhost:3001 and MySQL connected in your console.

Open the Frontend:
Open the index.html file in your web browser. You can typically do this by double-clicking the file or by navigating to its path in your browser.

Usage
Ensure the backend server is running (node server.js).
Open index.html in your web browser.
On the web page, you will find an input field labeled "Enter Room/Class Name:".
Enter any room name (e.g., "IT A", "IT B", etc.) from your rooms table.
Click the "Generate Timetable" button.
The application will make an API call to your backend, which will then generate a timetable (currently using a basic random assignment) and display it on the page.
Note on Algorithm Implementation:
The provided backend includes conceptual functions for Constraint Satisfaction Problem (CSP) and Genetic Algorithm (GA) based timetable generation (CSPGenerateTimetable and GeneticAlgorithmTimetable). While these functions outline the structure for more advanced scheduling, the current /generate-timetable endpoint primarily uses a simpler, randomized approach to populate the timetable. Further development would integrate these advanced algorithms for conflict-free and optimized scheduling.

Project Structure
server.js: The main backend file containing the Express.js server, MySQL connection, and API endpoints.
index.html: The frontend HTML file with embedded CSS and JavaScript for the user interface.
database_setup.sql (or similar, containing the schema and sample data): SQL script for setting up the database.

If you have a suggestion that would make this better, please fork the repo and create a pull request. 

Contact
Prithiksha S R / https://www.linkedin.com/in/prithikshasr/
