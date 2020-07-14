-- 코드 9-23 월과 에이전트별 전체 계약 금액 계산

SELECT a.AgtFirstName, a.AgtLastName,
  MONTH(e.StartDate) AS ContractMonth
  SUM(e.ContractPrice) AS TotalContractValue
FROM Agents AS a
  INNER JOIN Engagements AS e
    ON a.AgentID = e.AgentID
WHERE YEAR(e.StartDate) = 2015
GROUP BY a.AgtFirstName, a.AgtLastName, MONTH(e.StartDate);
