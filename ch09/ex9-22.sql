-- 코드 9-22 달력을 반환하는 SQL

SELECT d.FullDate,
  a.ApptDescription,
CAST(A.ApptStartDate AS datetime) + CAST(A.ApptStartTime AS datetime)
AS ApptStart,
CAST(A.ApptEndDate AS datetime) + CAST(A.ApptEndTime AS datetime) AS
ApptEnd
FROM DimDAte AS d
  LEFT JOIN Appointments AS a
    ON d.FullDate = a.ApptStartDate
ORDER BY d.FullDate;
