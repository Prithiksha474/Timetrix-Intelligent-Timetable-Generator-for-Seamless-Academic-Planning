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
The project uses the following tables in the timetable_generator database as given in DB Queries file.

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
Run the provided SQL schema to create tables and insert sample data. You'll need to combine the CREATE TABLE and INSERT INTO statements into a single .sql file (e.g., DB Queries).

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
