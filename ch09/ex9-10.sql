-- 코드 9-10 점수를 문자로 변환하려고 GradeRanges 탤리 테이블과 조인

WITH StudentGrades (Student, Subject, FinalGrade) AS (
  SELECT stu.StudentFirstNM AS Student,
    sub.SubjectNM AS Subject, ss.FinalGrade
  FROM StudentSubjects AS ss
  INNER JOIN Students AS stu
    ON ss.StudentID = stu.StudentID
  INNER JOIN Subjects AS sub
    ON ss.SubjectID = sub.SubjectID
  )
SELECT sg.Student, sg.Subject, sg.FinalGrade, gr.LetterGrade
FROM StudentGrades AS sg INNER JOIN GradeRanges AS gr
  ON sg.FinalGrade >= gr.LowGradePoint
  AND sg.FinalGrande <= gr.HighGradePoint
ORDER BY sg.Student, sg.Subject;
