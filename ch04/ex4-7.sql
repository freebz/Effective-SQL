-- 코드 4-7 단순형 CASE 표현식 예제

-- (코드를 단어로 치환하는 예제 두 개)
CASE Students.Gender
  WHEN 'M'
    THEN 'Male'
    ELSE 'Female' END

CASE Students.Gender
  WHEN 'M' THEN 'Male'
  WHEN 'F' THEN 'Female'
  ELSE 'Unknown' END

-- (섭씨 읽기를 화씨로변환)
CASE Readings.Measure
  WHEN 'C'
    THEN (Temperature * 9 / 5) + 32
    ELSE Temperature
END

-- (고객 등급을 기준으로 할인율 반환)
CASE (SELECT Customers.Rating FROM Customers
    WHERE Customers.CustomerID = Orders.CustomerID)
  WHEN 'A' THEN 0.10
  WHEN 'B' THEN 0.05
  ELSE 0.00 END
