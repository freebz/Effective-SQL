-- 코드 1-1 원래 데이터를 반환하는 SQL

SELECT st.SealesID, c.CustFirstName, c.CustLastName, c.Address,
  c.City, c.Phone, st.PurchaseDate, m.ModelYear, m.Model,
  e.SalesPerson
FROM SalesTransactions st
  INNER JOIN Customers c
    ON c.CustomerID = st.CustomerID
  INNER JOIN Employees e
    ON e.EmployeeID = st.SalesPersonID
  INNER JOIN AutomobileModels m
    ON m.ModelID = st.ModelID;
