-- 코드 5-2 올바른 GROUP BY 절 사용

SELECT ColumnA, ColumnB
FROM Table1 GROUP BY ColumnA, ColumnB;

SELECT ColumnA + ColumnB
FROM Table1 GROUP BY ColumnA, ColumnB;

SELECT ColumnA + ColumnB
FROM Table1 GROUP BY ColumnA + ColumnB;

SELECT ColumnA + ColumnB + 상수
FROM Table1 GROUP BY ColumnA, ColumnB;

SELECT ColumnA + ColumnB + 상수
FROM Table1 GROUP BY ColumnA + ColumnB;

SELECT ColumnA + 상수 + ColumnB
FROM Table1 GROUP BY ColumnA, ColumnB;
