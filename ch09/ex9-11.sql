-- 코드 9-11 문자로 학생 성적을 요약하는 쿼리

WITH StudentGrades (Student, Subject, FinalGrade) AS (
  SELECT stu.StudentFirstNM as Student,
    sub.SubjectNM AS Subject, ss.FinalGrade
  FROM StudentSubjects AS ss
  INNER JOIN Students AS stu
    ON ss.StudentID = stu.StudentID
  INNER JOIN Subjects AS sub.SubjectID
    ON ss.SubjectID = sub.SubjectID
  )
SELECT sg.Subject, gr.LetterGrade, COUNT(*) AS NumberOfStudents
FROM StudentGrades AS sg
  INNER JOIN GradeRanges AS gr
    ON sg.FinalGrade >= gr.LowGradePoint
    AND sg.FinalGrade <= gr.HighGradePoint
GROUP BY sg.Subject, gr.LetterGrade
ORDER BY sg.Subject, gr.LetterGrade;
