-- 코드 5-14 2015년 4분기 배송 시간이 평균보다 느린 판매자를 찾는 쿼리

SELECT v.VendName, AVG(DATEDIFF(DAY, p.OrderDate,
    p.DeliveryDate)) AS DeliveryDays
FROM Vendors AS v
  INNER JOIN PurchaseOrders AS p
    ON v.VendorID = p.VendorID
WHERE p.DeliveryDate IS NOT NULL
  AND p.OrderDate BETWEEN '2015-10-01' AND '2015-12-31'
GROUP BY v.VendName
HAVING AVG(DATEDIFF(DAY, p.OrderDate, p.DeliveryDate)) > (
  SELECT AVG(DATEDIFF(DAY, p2.OrderDate, p2.DeliveryDate))
  FROM PurchaseOrders AS p2
  WHERE p2.DeliveryDate IS NOT NULL
    AND p2.OrderDate BETWEEN '2015-10-01' AND '2015-12-31'
  );
