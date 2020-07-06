-- 코드 4-26 특정 일자의 로그 메시지를 볼 때 추천하는 쿼리

SELECT L.LogUserID, L.Logger, L.LogLevel, L.LogMessage
FROM ProgramLogs AS L
WHERE L.LogDate >= CONVERT(datetime, '2016-07-04', 120)
  AND L.LogDate < CONVERT(datetime, '2016-07-05', 120);
