-- 코드 4-23 특정 일자의 로그 메시지를 보는 두 번째 쿼리

SELECT L.LogUserID, L.Logger, L.LogLevel, L.LogMessage
FROM ProgramLogs AS L
WHERE L.LogDate = CONVERT(datetime, '2016-07-04', 120);
