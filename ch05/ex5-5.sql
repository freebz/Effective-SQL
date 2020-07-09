-- 코드 5-5 CUBE를 사용한 쿼리

SELECT Color, Dimension, SUM(Quantity)
FROM Inventory
GROUP BY CUBE (Color, Dimension);
