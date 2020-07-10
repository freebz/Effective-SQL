-- 코드 7-19 SQL Server의 다른 시스템 테이블로 테이블과 뷰 목록 가져오기

SELECT name, type_desc
FROM sys.tables
UNION
SELECT name, type_desc
FROM sys.views;
