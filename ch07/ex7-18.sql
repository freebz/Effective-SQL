-- 코드 7-18 SQL Server의 시스템 테이블로 테이블과 뷰 목록 가져오기

SELECT name, type_desc
FROM sys.objects
WHERE type_desc IN ('USER_TABLE', 'VIEW');
