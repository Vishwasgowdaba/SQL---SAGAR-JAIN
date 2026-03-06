CREATE TABLE Departments
(
    DepartmentID INT IDENTITY(1,1) PRIMARY KEY,
    DepartmentName VARCHAR(50) NOT NULL
);
 
CREATE TABLE Students
(
    StudentID INT IDENTITY(1,1) PRIMARY KEY,
    RollNo INT UNIQUE,
    StudentName VARCHAR(100),
    Gender VARCHAR(10),
    DepartmentID INT,
    FOREIGN KEY (DepartmentID) REFERENCES Departments(DepartmentID)
);
 
CREATE TABLE Subjects
(
    SubjectID INT IDENTITY(1,1) PRIMARY KEY,
    SubjectName VARCHAR(100),
    Semester INT
);
 
 
CREATE TABLE StudentMarks
(
    MarkID INT IDENTITY(1,1) PRIMARY KEY,
    StudentID INT,
    SubjectID INT,
    Marks INT,
    FOREIGN KEY (StudentID) REFERENCES Students(StudentID),
    FOREIGN KEY (SubjectID) REFERENCES Subjects(SubjectID)
);
 