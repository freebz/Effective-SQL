-- 코드 4-25 특정 일자의 로그 메시지를 보는 네 번째 쿼리

SELECT L.LogUserID, L.Logger, L.LogLevel, L.LogMessage
FROM ProgramLogs AS L
WHERE L.LogDate BETWEEN CONVERT(datetime, '2016-07-04', 120)
  AND CONVERT(datetime, '2016-07-04 23:59:59.999', 120);
