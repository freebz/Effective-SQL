-- 코드 5-6 GROUPING SETS를 사용한 쿼리

SELECT Color, Dimension, SUM(Quantity)
FROM Inventory
GROUP BY GROUPING SETS ((Color), (Dimension), ());
