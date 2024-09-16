CREATE TABLE Enrollments (
    EnrollmentID INT PRIMARY KEY,
	CourseID INT,
    StudentID INT,
    FOREIGN KEY (StudentID) REFERENCES Students(StudentID) ON DELETE CASCADE,
    FOREIGN KEY (CourseID) REFERENCES Courses(CourseID) ON DELETE CASCADE
);