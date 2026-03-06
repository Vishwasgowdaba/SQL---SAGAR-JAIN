CREATE PROCEDURE GetStudentReport
AS
BEGIN
 
SELECT 
    s.RollNo,
    s.StudentName,
    d.DepartmentName AS Department,
    COUNT(sm.SubjectID) AS TotalSubjects,
    SUM(sm.Marks) AS TotalMarks,
    AVG(sm.Marks) AS AverageMarks,
    MAX(sm.Marks) AS HighestMarks,
    MIN(sm.Marks) AS LowestMarks
 
FROM Students s
JOIN Departments d
ON s.DepartmentID = d.DepartmentID
 
JOIN StudentMarks sm
ON s.StudentID = sm.StudentID
 
GROUP BY
s.RollNo,
s.StudentName,
d.DepartmentName
 
END
 
 
EXEC GetStudentReport;  
