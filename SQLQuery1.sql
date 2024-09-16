INSERT INTO Students (FirstName, LastName, BirthDate, EnrollmentDate, IsActive)
VALUES 
('Peter', 'Pan', '2000-01-15', '2024-01-01', 1),
('Robert', 'De Niro', '1999-03-22', '2024-01-01', 1),
('Alice', 'Cooper', '2001-07-30', '2024-01-01', 1);

INSERT INTO Courses (CourseName, Credits)
VALUES 
('Mathematics', 3),
('Physics', 4),
('Chemistry', 3);

INSERT INTO Enrollments (StudentID, CourseID)
VALUES 
(1, 1),
(1, 2), 
(2, 2), 
(2, 3), 
(3, 1); 

DELETE FROM Students WHERE StudentID = 1;

SELECT * FROM Enrollments;

UPDATE Courses
SET Credits = 5
WHERE CourseName = 'Mathematics';

SELECT s.StudentID, s.FirstName, s.LastName
FROM Students s
JOIN Enrollments e ON s.StudentID = e.StudentID
JOIN Courses c ON e.CourseID = c.CourseID
WHERE c.CourseName = 'Physics';