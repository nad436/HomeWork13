CREATE TABLE Students (
    StudentID INT PRIMARY KEY,
    LastName NVARCHAR(50),
    BirthDate DATE,
    EnrollmentDate DATE,
    IsActive BIT
);

GO
CREATE NONCLUSTERED INDEX IX_LastName ON Students(LastName);