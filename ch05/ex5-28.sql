-- 코드 5-28 단일 쿼리에서COUNT()를 여러 개 사용한 쿼리

SELECT COUNT(*) AS TotalRows,
  COUNT(CustomerID) AS TotalOrdersWithCustomers,
  COUNT(EmployeeID) AS TotalOrdersWithEmployees,
  COUNT(DISTINCT CustomerID) AS TotalUniqueCustomers,
  COUNT(CASE WHEN OrderTotal > 1000
    THEN CustomerID END) AS TotalLargeOrders,
  COUNT(DISTINCT CASE WHEN OrderTotal > 1000
    THEN CustomerID END) AS TotalUniqueCust_LargeOrders
FROM OrdersTable;
