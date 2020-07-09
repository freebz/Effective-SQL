-- 코드 5-7 GROUPING SETS대신 단순한 GROUP BY 사용

SELECT Color, NULL AS Dimension, SUM(Quantity)
FROM Inventory
GROUP BY Color
UNION
SELECT NULL, Dimension, SUM(Quantity)
FROM Inventory
GROUP BY Dimension
UNION
SELECT NULL, NULL, SUM(Quantity)
FROM Inventory;
