-- 코드 4-22 특정 일자의 로그 메시지를 보는 첫 번째 쿼리

SELECT L.LogUserID, L.Logger, L.LogLevel, L.LogMessage
FROM ProgramLogs AS L
WHERE L.LogDate = CAST('7/4/2016' AS datetime);
