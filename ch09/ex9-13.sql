-- 코드 9-13 몇 가지 날짜 함수를 사용한 쿼리

SELECT DATENAME(weekday, o.OrderDate) AS OrderDateWeekDay,
  o.OrderDate,
  DATENAME(weekday, o.ShipDate) AS ShipDateWeekDay,
  o.ShipDate,
  DATEDIFF(day, o.OrderDate, o.ShipDate) AS DeliveryLead
FROM Orders AS o
WHERE o.OrderDate >=
    DATEADD(month, -2,
      DATEFROMPARTS(YEAR((GETDATE()), MONTH(GETDATE()), 1))
  AND o.OrderDate <
    DATEFROMPARTS(YEAR(GETDATE()), MONTH(GETDATE()), 1);
