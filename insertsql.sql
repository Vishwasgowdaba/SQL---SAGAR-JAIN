INSERT INTO Departments (DepartmentName)
VALUES 
('ECE'),
('CSE'),
('ME'),
('EEE');

INSERT INTO Subjects (SubjectName, Semester)
VALUES
('Physics',1),
('Electronics',5),
('Electronics',6),
('Physics',2),
('Data Structures',2);



INSERT INTO Students (RollNo, StudentName, Gender, DepartmentID)
VALUES
(1,'Amit','Male',1),
(2,'Sagar','Male',1),
(3,'Riya','Female',2),
(4,'Neha','Female',2),
(5,'Karan','Male',3),
(6,'Anjali','Female',4),
(7,'Rahul','Male',1),
(8,'Priya','Female',2),
(9,'Vikas','Male',3),
(10,'Sneha','Female',4);
 
 
INSERT INTO StudentMarks (StudentID, SubjectID, Marks)
VALUES
(1,1,65),
(2,2,90),
(3,3,35),
(4,4,78),
(5,5,99),
(6,1,70),
(7,2,65),
(8,3,80),
(9,4,70),
(10,5,55);