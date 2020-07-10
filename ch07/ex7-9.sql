-- 코드 7-9 현재 오라클 데이터베이스 세션에서 가장 최근의 실행 계획 표시

SELECT * FROM TABLE(dbms_xplan.display)
