-- 코드 7-22 주문을 전혀 하지 않은 고객을 찾는 쿼리

SELECT p.*
FROM Products AS p
WHERE NOT EXISTS (
    SELECT NULL
    FROM Order_Details AS d
    WHERE p.ProductNumber = d.ProductNumber
    );
