-- 코드 9-9 Student Grades 데이터를 요약하는 쿼리

WITH StudentGrades (Student, Subject, FinalGrade) AS (
  SELECT stu.StudentFirstNM AS Student,
    sub.SubjectNM AS Subject, ss.FinalGrade
  FROM StudentSubjects AS ss
  INNER JOIN Students AS stu
    ON ss.StudentID = stu.StudentID
  INNER JOIN Subjects AS sub
    ON ss.SubjectID = sub.SubjectID
  )
SELECT Subject, FinalGrade, COUNT(*) AS NumberOfStudents
FROM StudentGrades
GROUP BY Subject, FinalGrade
ORDER BY Subject, FinalGrade;
