-- 코드 5-3 잘못 사용된 GROUP BY 절

SELECT ColumnA, ColumnB
FROM Table1 GROUP BY ColumnA + ColumnB;

SELECT ColumnA + 상수 + ColumnB
FROM Table1 GROUP BY ColumnA + ColumnB;
