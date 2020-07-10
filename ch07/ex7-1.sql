-- 코드 7-1 DB2에서 실행 계획 테이블 생성

CALL SYSPROC.SYSINSTALLOBJECTS('EXPLAIN', 'C',
    CAST(NULL AS varchar(128)), CAST(NULL AS varchar(128)))
