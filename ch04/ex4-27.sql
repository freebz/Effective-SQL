-- 코드 4-27 사용자 입력으로 제공되는 끝 일자 개선

WHERE L.LogDate >=
    CONVERT(datetime, @startDate, 120)
  AND L.LogDate <
    CONVERT(datetime, DATEADD(DAY, 1, @endDate), 120);
