-- 코드 4-8 검색형 CASE 표현식 예제

-- (성별 및 결혼 상태에 따라 인사말 생성)
CASE WHEN Students.Gender = 'M' THEN 'Mr.'
  WHEN Students.MaritalStatus = 'S' THEN 'Ms.'
  ELSE 'Mrs.' END

-- (제품 판매량에 따른 판매 등급 평가)
SELECT Products.ProductNumber, Products.ProductName,
CASE WHEN
   (SELECT SUM(QuantityOrdered)
    FROM Order_Details
    WHERE Order_Details.ProductNumber =
      Products.ProductNumber) <= 200
  THEN 'Poor'
  WHEN
   (SELECT SUM(QuantityOrdered)
    FROM Order_Details
    WHERE Order_Details.ProductNumber =
      Products.ProductNumber) <= 500
  THEN 'Average'
  WHEN
   (SELECT SUM(QUANTITYORDERED)
    FROM Order_Details
    WHERE Order_Details.ProductNumber =
      Products.ProductNumber) <= 1000
  THEN 'Good'
  ELSE 'Excellent' END
FROM Products;

-- (직위에 따라 급여 인상 계산)
CASE Staff.Title
  WHEN 'Instructor'
  THEN ROUND(Salary * 1.05, 0)
  WHEN 'Associate Professor'
  THEN ROUND(Salary * 1.04, 0)
  WHEN 'Professor' THEN ROUND(Salary * 1.035, 0)
  ELSE Salary END
