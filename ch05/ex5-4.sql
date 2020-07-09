-- 코드 5-4 ROLLUP을 사용한 쿼리

SELECT Color, Dimension, SUM(Quantity)
FROM Inventory
GROUP BY ROLLUP (Color, Dimension);
