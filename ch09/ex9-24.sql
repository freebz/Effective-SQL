-- 코드 9-24 표준 SQL로 월별 계약 합계를 계산하고 피버팅하는 쿼리

SELECT a.AgtFirstName, a.AgtLastName,
  YEAR(e.StartDate) AS ContractYear,
  SUM(CASE WHEN MONTH(e.StartDate) = 1
  	THEN e.ContractPrice
      END) AS January,
  SUM(CASE WHEN MONTH(e.StartDate) = 2
  	THEN e.ContractPrice
      END) AS February,
  SUM(CASE WHEN MONTH(e.StartDate) = 3
  	THEN e.ContractPrice
      END) AS March,
  SUM(CASE WHEN MONTH(e.StartDate) = 4
  	THEN e.ContractPrice
      END) AS April,
  SUM(CASE WHEN MONTH(e.StartDate) = 5
  	THEN e.ContractPrice
      END) AS May,
  SUM(CASE WHEN MONTH(e.StartDate) = 6
  	THEN e.ContractPrice
      END) AS June,
  SUM(CASE WHEN MONTH(e.StartDate) = 7
  	THEN e.ContractPrice
      END) AS July,
  SUM(CASE WHEN MONTH(e.StartDate) = 8
  	THEN e.ContractPrice
      END) AS August,
  SUM(CASE WHEN MONTH(e.StartDate) = 9
  	THEN e.ContractPrice
      END) AS September,
  SUM(CASE WHEN MONTH(e.StartDate) = 10
  	THEN e.ContractPrice
      END) AS October,
  SUM(CASE WHEN MONTH(e.StartDate) = 11
  	THEN e.ContractPrice
      END) AS November,
  SUM(CASE WHEN MONTH(e.StartDate) = 12
  	THEN e.ContractPrice
      END) AS December
FROM Agents AS a
  LEFT JOIN (
    SELECT en.AgentID, en.StartDate, en.ContractPrice
    FROM Engagements AS en
    WHERE en.StartDate >= '2015-01-01'
      AND en.StartDate < '2016-01-01'
    ) AS e
    ON a.AgentID = e.AgentID
GROUP BY AgtFirstName, AgtLastName, YEAR(e.StartDate);
